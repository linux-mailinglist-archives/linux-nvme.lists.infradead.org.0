Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED7363D54
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 23:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gv/CuyTrPTyZ2meoE+7PrQHSkf9Zw5Ta5DxIP3foZEg=; b=k50EvOUEg188rF
	xDixvQSi8GzdLJ7i2bSXxYYFIvDDaKnOVCkt1z5Zm1mBgNwVXLMO+f+MiKx9gcuqTU11Ftt0+YbEK
	zhJdoUKHQb3YLxxrBJDhw+kPf7tlHRL0or1FpkQu/nzgiz/UdejFZWKkXmBvl5sBaHLP4Dv+Wcig8
	BHJ2xs2frsREssFiLtobiRsz8Q1JRBFySevpcDrkNJrEnQVfDNwYACbCzcGPDJZouKCDVZvNupgd/
	BRuOrmnmUPTy96A/NkSDdWG/XEbySIKLEojwOByOAeFdwY/OROshE2NBkEYvoC190acSlt6FuXT7D
	8LvxXnigrSh4eX5BROLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkxfp-0001MR-Fz; Tue, 09 Jul 2019 21:29:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkxfe-0001Lr-Ry
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 21:29:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E0B2468B02; Tue,  9 Jul 2019 23:29:04 +0200 (CEST)
Date: Tue, 9 Jul 2019 23:29:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH v2] nvme: fix multipath crash when ANA desactivated
Message-ID: <20190709212904.GB9636@lst.de>
References: <1575872828.30576006.1562335512322.JavaMail.zimbra@kalray.eu>
 <989987da-6711-0abc-785c-6574b3bb768c@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <989987da-6711-0abc-785c-6574b3bb768c@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_142907_054560_79ABA19B 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: sagi@grimberg.me, Marta Rybczynska <mrybczyn@kalray.eu>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, axboe@fb.com,
 Samuel Jones <sjones@kalray.eu>, Jean-Baptiste Riaux <jbriaux@kalray.eu>,
 kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Jul 06, 2019 at 01:06:44PM +0300, Max Gurtovoy wrote:
>> +	/* check if multipath is enabled and we have the capability */
>> +	if (!multipath)
>> +		return 0;
>> +	if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) != 0))
>
> shouldn't it be:
>
> if (!ctrl->subsys || ((ctrl->subsys->cmic & (1 << 3)) == 0))
>
> or
>
> if (!ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
>
>
> Otherwise, you don't really do any initialization and return 0 in case you have the capability, right ?

Yes.  FYI, my idea how to fix this would be something like:

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a9a927677970..cdb3e5baa329 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -12,11 +12,6 @@ module_param(multipath, bool, 0444);
 MODULE_PARM_DESC(multipath,
 	"turn on native support for multiple controllers per subsystem");
 
-inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
-{
-	return multipath && ctrl->subsys && (ctrl->subsys->cmic & (1 << 3));
-}
-
 /*
  * If multipathing is enabled we need to always use the subsystem instance
  * number for numbering our devices to avoid conflicts between subsystems that
@@ -622,7 +617,7 @@ int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
 	int error;
 
-	if (!nvme_ctrl_use_ana(ctrl))
+	if (!multipath || !ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
 		return 0;
 
 	ctrl->anacap = id->anacap;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 716a876119c8..14eca76bec5c 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -485,7 +485,10 @@ extern const struct attribute_group *nvme_ns_id_attr_groups[];
 extern const struct block_device_operations nvme_ns_head_ops;
 
 #ifdef CONFIG_NVME_MULTIPATH
-bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl);
+static inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
+{
+	return ctrl->ana_log_buf != NULL;
+}
 void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 			struct nvme_ctrl *ctrl, int *flags);
 void nvme_failover_req(struct request *req);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
