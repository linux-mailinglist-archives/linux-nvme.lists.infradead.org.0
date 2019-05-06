Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EF514885
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 12:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xslQuVKh6ftDc5N/Uk04j6V3YImRVrLTEocIEDsgViI=; b=ois
	sj4Ofak5iEkEUhviqxNmllPkBDFWbazn2EhmDwMnrtdIIpI6F9/nZQ9TSuQuP/r34d7dML/aMhERN
	1IYgNi0exBnH5WdSZsUjQYT1aFwxmXfJ8yXHT3N99mjSGGHY0UnaRGfbsq58GjZSgXbdtyUituP/9
	51NxAnx3BTupACUcUHJOATXz8wMstV+Cp+EMwD6zQAJ/BWvuMLApF8QiE0+tu6NUy6ku4agbDAwaG
	495Cj38mZPp236LetyMRTnYjzL90BROa8eAhg1gF/LwwZLmqrBoyg8v615aPu2xhFtFnIInPcl3hy
	rp+3iayp6ELCf9/OO2cYOCMFy2aQHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNbAK-0003fS-D6; Mon, 06 May 2019 10:48:12 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNbAE-0003f3-9U
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 10:48:08 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 6 May 2019 13:47:56 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x46Alt0v002117;
 Mon, 6 May 2019 13:47:55 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: hch@lst.de, sagi@grimberg.me, linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-rdma: remove redundant reference between ib_device and
 tagset
Date: Mon,  6 May 2019 13:47:55 +0300
Message-Id: <1557139675-2469-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_034806_741277_EF8BD6E8 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com, dmilburn@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In the past, before adding f41725bb ("nvme-rdma: Use mr pool") commit,
we needed a reference on the ib_device as long as the tagset
was alive, as the MRs in the request structures needed a valid ib_device.
Now, we allocate/deallocate MR pool per QP and consume on demand.

Also remove nvme_rdma_free_tagset function and use blk_mq_free_tag_set
instead, as it unneeded anymore.

This commit also fixes a memory leakage and possible segmentation fault.
When configuring the system with NIC teaming (aka bonding), we use 1
network interface to create an HA connection to the target side. In case
one connection breaks down, nvme-rdma driver will get notification from
rdma-cm layer that underlying address was change and will start error
recovery process. During this process, we'll reconnect to the target
via the second interface in the bond without destroying the tagset.
This will cause a leakage of the initial rdma device (ndev) and miscount
in the reference count of the new created rdma device (new ndev). In
the final destruction (or in another error flow), we'll get a warning
dump from the ib_dealloc_pd that we still have inflight MR's related to
that pd. This happens becasue of the miscount of the reference tag of
the rdma device and causing access violation to it's elements (some
queues are not destroyed yet).

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/rdma.c | 34 +++++-----------------------------
 1 file changed, 5 insertions(+), 29 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 794b08e60acc..40a5a98e4aa1 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -697,15 +697,6 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 	return ret;
 }
 
-static void nvme_rdma_free_tagset(struct nvme_ctrl *nctrl,
-		struct blk_mq_tag_set *set)
-{
-	struct nvme_rdma_ctrl *ctrl = to_rdma_ctrl(nctrl);
-
-	blk_mq_free_tag_set(set);
-	nvme_rdma_dev_put(ctrl->device);
-}
-
 static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 		bool admin)
 {
@@ -744,24 +735,9 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 
 	ret = blk_mq_alloc_tag_set(set);
 	if (ret)
-		goto out;
-
-	/*
-	 * We need a reference on the device as long as the tag_set is alive,
-	 * as the MRs in the request structures need a valid ib_device.
-	 */
-	ret = nvme_rdma_dev_get(ctrl->device);
-	if (!ret) {
-		ret = -EINVAL;
-		goto out_free_tagset;
-	}
+		return ERR_PTR(ret);
 
 	return set;
-
-out_free_tagset:
-	blk_mq_free_tag_set(set);
-out:
-	return ERR_PTR(ret);
 }
 
 static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
@@ -769,7 +745,7 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 {
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
-		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.admin_tagset);
+		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 	}
 	if (ctrl->async_event_sqe.data) {
 		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
@@ -847,7 +823,7 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
 out_free_tagset:
 	if (new)
-		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.admin_tagset);
+		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 out_free_async_qe:
 	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
 		sizeof(struct nvme_command), DMA_TO_DEVICE);
@@ -862,7 +838,7 @@ static void nvme_rdma_destroy_io_queues(struct nvme_rdma_ctrl *ctrl,
 {
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.connect_q);
-		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.tagset);
+		blk_mq_free_tag_set(ctrl->ctrl.tagset);
 	}
 	nvme_rdma_free_io_queues(ctrl);
 }
@@ -903,7 +879,7 @@ static int nvme_rdma_configure_io_queues(struct nvme_rdma_ctrl *ctrl, bool new)
 		blk_cleanup_queue(ctrl->ctrl.connect_q);
 out_free_tag_set:
 	if (new)
-		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.tagset);
+		blk_mq_free_tag_set(ctrl->ctrl.tagset);
 out_free_io_queues:
 	nvme_rdma_free_io_queues(ctrl);
 	return ret;
-- 
2.16.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
