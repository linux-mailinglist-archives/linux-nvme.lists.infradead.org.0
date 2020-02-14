Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3594615E0E4
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 17:16:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX2UgWe64f0AHOqnPfY9jC2ImQ7UpwLzrZYemXcz07A=; b=hW2GIyrf7lwoph
	JBE3BYIqmCl7C3FPVpipANYCNY5dyJlKtgDSffHhy+Go3T9OwFZjQEEfypmyc2XJ5a2CLTOdcXbCZ
	J36dXdiFO0yxxly9+9yAjDeg5JOLB34YtUtWvfi1YpFag4BM8TKQ4GxBmvCkjxtmILRb0+GkM6VSt
	OFYG3uKDfKUkQCGhPp6j4cwFGE/rt/oDsCCKABN1e2D+axkZuVznDO3bfbdPXXVinxU2vae6eVaTD
	briI0zF1JsQ4uJxlAf/gSOCF0cBrE2bbhOi3Qps80MdPKTnj7hksiFinCxrlK2Lg1HXQ+SIWUKKO2
	bt0fghPVFUvVoRscRSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ddZ-0008Jt-BO; Fri, 14 Feb 2020 16:16:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dNj-000558-Uw
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 15:59:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A114024654;
 Fri, 14 Feb 2020 15:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695995;
 bh=9Ctd1fmVcttbjX+dX5w5TzwYoyTQbQ9VFRC0ZOZZ1FI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=F+xLyT3YmmqNaFNt0PMyTiwKfpxI2FV8VMfbqiDCrAYgVk6WVFjguYqW2NSiaqZIC
 +vAVKwaACAucY3bk9Tkb2Vn/LanSfsaA8XHM7PNfuI6Z7i0ilAsqLbpnR27WDJvxzP
 9WCIN9GEg94ggBV79sdfZAhE6g38nFTKb5w28FRI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 515/542] nvme-pci: remove nvmeq->tags
Date: Fri, 14 Feb 2020 10:48:27 -0500
Message-Id: <20200214154854.6746-515-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075956_112644_BFDFF7B9 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Sasha Levin <sashal@kernel.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit cfa27356f835dc7755192e7b941d4f4851acbcc7 ]

There is no real need to have a pointer to the tagset in
struct nvme_queue, as we only need it in a single place, and that place
can derive the used tagset from the device and qid trivially.  This
fixes a problem with stale pointer exposure when tagsets are reset,
and also shrinks the nvme_queue structure.  It also matches what most
other transports have done since day 1.

Reported-by: Edmund Nadolski <edmund.nadolski@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 23 ++++++++---------------
 1 file changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 365a2ddbeaa76..da392b50f73e7 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -167,7 +167,6 @@ struct nvme_queue {
 	 /* only used for poll queues: */
 	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
 	volatile struct nvme_completion *cqes;
-	struct blk_mq_tags **tags;
 	dma_addr_t sq_dma_addr;
 	dma_addr_t cq_dma_addr;
 	u32 __iomem *q_db;
@@ -376,29 +375,17 @@ static int nvme_admin_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
 
 	WARN_ON(hctx_idx != 0);
 	WARN_ON(dev->admin_tagset.tags[0] != hctx->tags);
-	WARN_ON(nvmeq->tags);
 
 	hctx->driver_data = nvmeq;
-	nvmeq->tags = &dev->admin_tagset.tags[0];
 	return 0;
 }
 
-static void nvme_admin_exit_hctx(struct blk_mq_hw_ctx *hctx, unsigned int hctx_idx)
-{
-	struct nvme_queue *nvmeq = hctx->driver_data;
-
-	nvmeq->tags = NULL;
-}
-
 static int nvme_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
 			  unsigned int hctx_idx)
 {
 	struct nvme_dev *dev = data;
 	struct nvme_queue *nvmeq = &dev->queues[hctx_idx + 1];
 
-	if (!nvmeq->tags)
-		nvmeq->tags = &dev->tagset.tags[hctx_idx];
-
 	WARN_ON(dev->tagset.tags[hctx_idx] != hctx->tags);
 	hctx->driver_data = nvmeq;
 	return 0;
@@ -948,6 +935,13 @@ static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
 		writel(head, nvmeq->q_db + nvmeq->dev->db_stride);
 }
 
+static inline struct blk_mq_tags *nvme_queue_tagset(struct nvme_queue *nvmeq)
+{
+	if (!nvmeq->qid)
+		return nvmeq->dev->admin_tagset.tags[0];
+	return nvmeq->dev->tagset.tags[nvmeq->qid - 1];
+}
+
 static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 {
 	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
@@ -972,7 +966,7 @@ static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 		return;
 	}
 
-	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
+	req = blk_mq_tag_to_rq(nvme_queue_tagset(nvmeq), cqe->command_id);
 	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
 	nvme_end_request(req, cqe->status, cqe->result);
 }
@@ -1572,7 +1566,6 @@ static const struct blk_mq_ops nvme_mq_admin_ops = {
 	.queue_rq	= nvme_queue_rq,
 	.complete	= nvme_pci_complete_rq,
 	.init_hctx	= nvme_admin_init_hctx,
-	.exit_hctx      = nvme_admin_exit_hctx,
 	.init_request	= nvme_init_request,
 	.timeout	= nvme_timeout,
 };
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
