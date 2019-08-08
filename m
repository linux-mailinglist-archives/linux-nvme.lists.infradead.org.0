Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3566886BF2
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZZ+JwJMQl1T1v5k3mzeTLX/E6pOM5gzFXVqL4pA5gjc=; b=qcMcMGOKDALMlIVa9X6MTTliJP
	48Lo6pYrwt4XZkI+30U9tMjchod9s+LJolNLmXzS1HTPj7l1OYCcH6YCczJCAq8ilOLIZGGsfaapS
	IM6IHDzAlUoEeQ+VM2UQHnV5j3Devnuea8rTx1UUUEyX/Y5vLaFfebC1jdhQL6nLvw/B8zOPFqxh7
	nLCOEVOTyJO/ivx/OMmFTZh3/M0v4GErMfY1/lTrRA5mPnYDZlGBoRxYruAFREUk/cOKU2kFyG+Jg
	ZWWBxKTVX6QZYowciIfHrfnyjz7k0UoNj5/qdiHAFwdqt/Gf2MlWr/kwl5QJRTgXnwFpmiB8nKOWO
	AX+Qbvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpQX-0001xN-Fk; Thu, 08 Aug 2019 20:54:25 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPg-00013b-Ha; Thu, 08 Aug 2019 20:53:32 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 5/7] nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR
 send failed
Date: Thu,  8 Aug 2019 13:53:23 -0700
Message-Id: <20190808205325.24036-6-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
References: <20190808205325.24036-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a more appropriate error status for a transport error
detected by us (the host).

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 2de33c4c5d14..7daf39f31b08 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -842,7 +842,7 @@ static inline void nvme_tcp_done_send_req(struct nvme_tcp_queue *queue)
 
 static void nvme_tcp_fail_request(struct nvme_tcp_request *req)
 {
-	nvme_tcp_end_request(blk_mq_rq_from_pdu(req), NVME_SC_DATA_XFER_ERROR);
+	nvme_tcp_end_request(blk_mq_rq_from_pdu(req), NVME_SC_HOST_PATH_ERROR);
 }
 
 static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
