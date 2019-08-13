Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFFF8B011
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hDdKFJvgaIkyQjKe6x9jjsG1T1Ivi/NURz81GDGqoyw=; b=AnPLG9OOHuw1R8W7QbWSBzy0P9
	sF0X25NjF+EZfLAo9zjlnfr4HWE8vyS7ZK4OXJbF9ILazQNq5nSRuSr+ql/lgs2Yml39z05NQo//U
	ignlUTWgAlMlLxVcVgvRnsxGjCvDYpwHNfQRyH6ZrLWdG9gDFsteVVm7onxyc2Bg6MEEVbOwP208N
	/gZWi7Q3lgkbLgjGbnkm1CvFgj5sTOIExMdIPEG7f1Z2LNt0fOFDZglvPfestI+XKulPWu7QT7WfL
	wK1+8FsjcHGysfMtXg6s1wQL6/Sr3LT/Hx9mcSvF6JlwTiiDLSv8xiPCQ3fsuTbohkJsmLoCIV3qf
	w1AThtrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQXi-0008RF-OF; Tue, 13 Aug 2019 06:44:26 +0000
Received: from [2601:647:4800:973f:a183:2905:6842:b7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQWQ-0007Z2-4l; Tue, 13 Aug 2019 06:43:06 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v6 5/7] nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR
 send failed
Date: Mon, 12 Aug 2019 23:43:02 -0700
Message-Id: <20190813064304.7344-6-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813064304.7344-1-sagi@grimberg.me>
References: <20190813064304.7344-1-sagi@grimberg.me>
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

Reviewed-by: Hannes Reinecke <hare@suse.com>
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
