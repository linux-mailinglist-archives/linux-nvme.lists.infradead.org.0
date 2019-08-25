Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3399C628
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 22:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFTzQq6vLWrGzi75rYJEzM7NyvgtbcPlFIjHy4EZwmc=; b=eaSEjp9JDUQxdm
	eCEAjS2fvW8TDvn88gVbBlyfMazP3KeqlH8Jhruh0ho7s2ZOEz3jc+0inFXyptS5ukziW3QQiIrAI
	bA9ngtdckwqyYe/ZpPTN6t7w8Z44TbO0ATNTy5ZWfzqo6CyN/2wNMyyVi+Em/CZLvlSR2CYH2J6PC
	dJVFmF5jcUVpvpYfihUX7Ad9VeENax4tt9/H7h9yJarutDeDTdmK4JGHWmGKokWSpWGsx46K77dw4
	hwoi1AqkdLYKHTPzs8QoiwxT3cGMnWyao3hcXn6jzCxss7PGYxJTqLQvz6eYG9e7oJ2O1MOHtmdwO
	y+RvRU8H+xGXcJSU24Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1zZg-0001Sp-TA; Sun, 25 Aug 2019 20:57:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1zZV-0001ST-9V
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 20:57:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CDE8368B05; Sun, 25 Aug 2019 22:57:00 +0200 (CEST)
Date: Sun, 25 Aug 2019 22:57:00 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v8 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190825205700.GA3911@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-8-sagi@grimberg.me> <20190825013813.GC23887@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190825013813.GC23887@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_135709_486017_4825FA87 
X-CRM114-Status: GOOD (  15.68  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

After looking into various revalidate_disk refactoring I think we could
do something simple like this to just ignore the non-fatal errors
(won't apply as is, but you get the idea):


diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 20b96e212754..333ee506d540 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1746,16 +1746,24 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	struct nvme_ctrl *ctrl = ns->ctrl;
 	struct nvme_id_ns *id;
 	struct nvme_ns_ids ids;
-	int ret = 0;
+	int ret;
 
 	if (test_bit(NVME_NS_DEAD, &ns->flags)) {
 		set_capacity(disk, 0);
 		return -ENODEV;
 	}
 
+	/*
+	 * Issue an identify namespace to check for the status of this
+	 * Namespace.  Only fail the function if we got a fatal error back
+	 * from the device, otherwise ignore the error and just move on.
+	 */
 	ret = nvme_identify_ns(ns, ns->head->ns_id, &id);
-	if (ret)
+	if (ret) {
+		if (ret == -ENOMEM || (ret > 0 && !(ret & NVME_SC_DNR)))
+			return 0;
 		return ret;
+	}
 
 	nvme_update_disk_info(disk, id);
 
@@ -1763,10 +1771,10 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	if (!nvme_ns_ids_equal(&ns->head->ids, &ids)) {
 		dev_err(ctrl->device,
 			"identifiers changed for nsid %d\n", ns->head->ns_id);
-		ret = -ENODEV;
+		return -ENODEV;
 	}
 
-	return ret;
+	return 0;
 }
 
 static char nvme_pr_type(enum pr_type type)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
