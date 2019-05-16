Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5D120B9D
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 17:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAIiT+zzPO0cK38ik8+NCyTeDvKO/QcPF1sdDDsbtBA=; b=EmYiwArKvJafsG
	06Opkh0oqYmz5GVWQMhKhzcjd1kU4TdlUhy54KUbx1DxY1me15fOnCrPoNuSQxirji6Kif25tKvLZ
	tVnpnOe8uEgSP/lLzgeZaCyliNUolIT0y38tOAIL/JaQNzH71S0pIpyshjWVQdhWRGulH14RdSNAZ
	Q9cnAK878HEfpa35uNo94+1B9jwTFrRskpDKlj8TLFQUKJ9oOvzQyQyHMLpasFZksPD+22W0Ub8Or
	e5jaitDaidHCyHsYbMH/SGI8aPAcC4V27a2gcMTSm3CDTF2Eh3CuIPiTketBMBSa3XXLvO0U1FIwQ
	37aCz2nhIUvdYd+MEfmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIhl-0007d4-6X; Thu, 16 May 2019 15:54:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hRIhg-0007cL-DE; Thu, 16 May 2019 15:53:56 +0000
Date: Thu, 16 May 2019 08:53:56 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: Issue with namespace delete
Message-ID: <20190516155356.GA26104@infradead.org>
References: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
 <20190516151130.GB23416@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516151130.GB23416@localhost.localdomain>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: "Busch, Keith" <keith.busch@intel.com>, "Heitke,
 Kenneth" <kenneth.heitke@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 09:11:30AM -0600, Keith Busch wrote:
> You may have avoided this if you send the ioctl through the controller
> char dev rather than the namespace block dev handle.
> 
> I'm not sure what the best way to fix this might be right now.

We could try something like the changes below, although they are
completely untested for now and will need to be split up into
a few patches:


diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a6644a2c3ef7..537cbef5bc4a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1362,9 +1362,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
 {
 #ifdef CONFIG_NVME_MULTIPATH
 	if (disk->fops == &nvme_ns_head_ops) {
+		struct nvme_ns *ns;
+
 		*head = disk->private_data;
 		*srcu_idx = srcu_read_lock(&(*head)->srcu);
-		return nvme_find_path(*head);
+		ns = nvme_find_path(*head);
+		if (!ns)
+			srcu_read_unlock(&(*head)->srcu, *srcu_idx);
+		return ns;
 	}
 #endif
 	*head = NULL;
@@ -1384,8 +1389,6 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
 	case NVME_IOCTL_ID:
 		force_successful_syscall_return();
 		return ns->head->ns_id;
-	case NVME_IOCTL_ADMIN_CMD:
-		return nvme_user_cmd(ns->ctrl, NULL, (void __user *)arg);
 	case NVME_IOCTL_IO_CMD:
 		return nvme_user_cmd(ns->ctrl, ns, (void __user *)arg);
 	case NVME_IOCTL_SUBMIT_IO:
@@ -1395,9 +1398,6 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
 		if (ns->ndev)
 			return nvme_nvm_ioctl(ns, cmd, arg);
 #endif
-		if (is_sed_ioctl(cmd))
-			return sed_ioctl(ns->ctrl->opal_dev, cmd,
-					 (void __user *) arg);
 		return -ENOTTY;
 	}
 }
@@ -1405,16 +1405,30 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
 static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 		unsigned int cmd, unsigned long arg)
 {
+	void __user *argp = (void __user *)arg;
 	struct nvme_ns_head *head = NULL;
+	struct nvme_ctrl *ctrl = NULL;
 	struct nvme_ns *ns;
-	int srcu_idx, ret;
+	int srcu_idx, ret = 0;
 
 	ns = nvme_get_ns_from_disk(bdev->bd_disk, &head, &srcu_idx);
 	if (unlikely(!ns))
-		ret = -EWOULDBLOCK;
+		return -EWOULDBLOCK;
+
+	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd))
+		ctrl = nvme_get_ctrl(ns->ctrl);
 	else
 		ret = nvme_ns_ioctl(ns, cmd, arg);
 	nvme_put_ns_from_disk(head, srcu_idx);
+
+	if (ctrl) {
+		if (cmd == NVME_IOCTL_ADMIN_CMD)
+			return nvme_user_cmd(ctrl, NULL, argp);
+		if (is_sed_ioctl(cmd))
+			return sed_ioctl(ctrl->opal_dev, cmd, argp);
+		nvme_put_ctrl(ctrl);
+	}
+
 	return ret;
 }
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5ff83f..86625767da8b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -405,9 +405,10 @@ static inline void nvme_end_request(struct request *req, __le16 status,
 	blk_mq_complete_request(req);
 }
 
-static inline void nvme_get_ctrl(struct nvme_ctrl *ctrl)
+static inline struct nvme_ctrl *nvme_get_ctrl(struct nvme_ctrl *ctrl)
 {
 	get_device(ctrl->device);
+	return ctrl;
 }
 
 static inline void nvme_put_ctrl(struct nvme_ctrl *ctrl)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
