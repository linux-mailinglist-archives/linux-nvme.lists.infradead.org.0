Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA4E6EB55
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tB60eQfdKlFpK21T7My+53v16zYOWZ8+i7GdOTCyANw=; b=Ai6
	lPZ54hb5HgW6Rnj0w1PQa5wVt2teh8i2TS+jmxiGMUfNfx6QCk/JOiVVQy/pTPu00Hgq1nLwjs5pY
	qkp1DFs282HKz8BcjW8cFuxG592o9KFpWztirJ4gVpUjxplh3zAhe2p23W879I4/5927AJwpZHS0n
	OY6X7C8cwaOObNf4dtT6zd3ePDFfUVaPaK8c8WeVacVZQYxrr7zwg3pWmArNloo24eDKogc15S8/i
	nBNpyEmjhuU3fUnPpPMb5Mqm567wcARQa5+16KTUEueKDV7NH1fF6OEWhfujXslhGDegFTIKcqNwh
	eaI95xCdI32lNfc74MUXCiIwNGfg12A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYqX-0001dp-Bo; Fri, 19 Jul 2019 19:47:13 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYq7-0001TC-7d; Fri, 19 Jul 2019 19:46:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-tcp: cleanup nvme_tcp_recv_pdu
Date: Fri, 19 Jul 2019 12:46:46 -0700
Message-Id: <20190719194646.24826-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Can return directly in the switch statement

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 361e4bd6338e..8d4965031399 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -611,23 +611,18 @@ static int nvme_tcp_recv_pdu(struct nvme_tcp_queue *queue, struct sk_buff *skb,
 
 	switch (hdr->type) {
 	case nvme_tcp_c2h_data:
-		ret = nvme_tcp_handle_c2h_data(queue, (void *)queue->pdu);
-		break;
+		return nvme_tcp_handle_c2h_data(queue, (void *)queue->pdu);
 	case nvme_tcp_rsp:
 		nvme_tcp_init_recv_ctx(queue);
-		ret = nvme_tcp_handle_comp(queue, (void *)queue->pdu);
-		break;
+		return nvme_tcp_handle_comp(queue, (void *)queue->pdu);
 	case nvme_tcp_r2t:
 		nvme_tcp_init_recv_ctx(queue);
-		ret = nvme_tcp_handle_r2t(queue, (void *)queue->pdu);
-		break;
+		return nvme_tcp_handle_r2t(queue, (void *)queue->pdu);
 	default:
 		dev_err(queue->ctrl->ctrl.device,
 			"unsupported pdu type (%d)\n", hdr->type);
 		return -EINVAL;
 	}
-
-	return ret;
 }
 
 static inline void nvme_tcp_end_request(struct request *rq, u16 status)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
