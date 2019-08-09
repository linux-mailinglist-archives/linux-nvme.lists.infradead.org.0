Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A1885A9
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 00:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZZ+JwJMQl1T1v5k3mzeTLX/E6pOM5gzFXVqL4pA5gjc=; b=p9BShUOW0wmvVOueoADJWVFQgK
	C1SFgPGcjtVPmdBj1VoUSXe+fzWZeBYtpGXEqCOMc3rH9QjQqXUPw+KolXYyx4tUnfC66T/84FYfI
	tZaT2UiJj9yg5fvEcRv55yjqhYSO1HeMBwg+XxJ9CIIQIhcfwCI2VUvVp1xybmfSSOJeozJE0PUCb
	2bwSjNI4LC6P3TH5T/3sw4gl8n/mPHZh4YkhwA22dRmRC2uYDJ1xMT7M9dk/OlvwHG5YBjPfiXLpP
	BygvPv3hR/nubHmWhkNu9C36oLu5FDbj78AxgC7mAqbVywjIEwhHlWf/zdibUN65zYBrmA7rAYG16
	+1FE/z9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwD8K-0005CH-CY; Fri, 09 Aug 2019 22:13:12 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hwD7R-0004M4-F3; Fri, 09 Aug 2019 22:12:17 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v5 5/7] nvme-tcp: fail command with NVME_SC_HOST_PATH_ERROR
 send failed
Date: Fri,  9 Aug 2019 15:12:09 -0700
Message-Id: <20190809221211.21157-6-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190809221211.21157-1-sagi@grimberg.me>
References: <20190809221211.21157-1-sagi@grimberg.me>
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
