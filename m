Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611CE1900E1
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 23:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xfup5aAL2mWEULiWuxdYQI+0LX208xRBlEEqVp6EtJA=; b=N3WCzgeNeZnJnS
	pPoDIggKbXFybVhkHqhP284CUoGioJ4GrS3ff47h3s6KGh4Hhg3X55qhhiQtoCrOsL7ntJO+7P+Ho
	VoXgrw920tTgaX0JliQzmQsOCfkVIXzwwUpZw9fRchJ3uTjYIt+kH1nrVqU9A4W+BQqVkcN0jhmr8
	AqKbsr211ziHug0vCgXm7ZL3iMulgmmc4FmMl5cIY2V5QF/VWzvvkBJpr6JYQbWK4LqnDDxB1ZRbh
	kg4MwOYOhU6HtPMNyV+ShJ4S6/01dBtwBw4uaymRMZH/vWQJ0+udQAIVKmOnmQMejtm7x54xJPRdY
	s9MHC1jQ5iLgx3OKtuVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVDS-0001cZ-LW; Mon, 23 Mar 2020 22:06:38 +0000
Received: from [2601:647:4802:9070:45a4:15de:f2dc:1149]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVDP-0001bh-3f; Mon, 23 Mar 2020 22:06:35 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: [PATCH] nvme-tcp: fix possible crash in write_zeroes processing
Date: Mon, 23 Mar 2020 15:06:30 -0700
Message-Id: <20200323220630.14900-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We cannot look at blk_rq_payload_bytes without first checking
that the request has a mappable physical segments first (e.g.
blk_rq_nr_phys_segments(rq) != 0) and only then to take the
request payload bytes. This caused us to send a wrong sgl to
the target or even dereference a non-existing buffer in case
we actually got to the data send sequence (if it was in-capsule).

Reported-by: Tony Asleson <tasleson@redhat.com>
Suggested-by: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 11e10fe1760f..b545a9e96327 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -177,16 +177,14 @@ static inline bool nvme_tcp_async_req(struct nvme_tcp_request *req)
 static inline bool nvme_tcp_has_inline_data(struct nvme_tcp_request *req)
 {
 	struct request *rq;
-	unsigned int bytes;
 
 	if (unlikely(nvme_tcp_async_req(req)))
 		return false; /* async events don't have a request */
 
 	rq = blk_mq_rq_from_pdu(req);
-	bytes = blk_rq_payload_bytes(rq);
 
-	return rq_data_dir(rq) == WRITE && bytes &&
-		bytes <= nvme_tcp_inline_data_size(req->queue);
+	return rq_data_dir(rq) == WRITE && req->data_len &&
+		req->data_len <= nvme_tcp_inline_data_size(req->queue);
 }
 
 static inline struct page *nvme_tcp_req_cur_page(struct nvme_tcp_request *req)
@@ -2182,7 +2180,9 @@ static blk_status_t nvme_tcp_map_data(struct nvme_tcp_queue *queue,
 
 	c->common.flags |= NVME_CMD_SGL_METABUF;
 
-	if (rq_data_dir(rq) == WRITE && req->data_len &&
+	if (!blk_rq_nr_phys_segments(rq))
+		nvme_tcp_set_sg_null(c);
+	else if (rq_data_dir(rq) == WRITE &&
 	    req->data_len <= nvme_tcp_inline_data_size(queue))
 		nvme_tcp_set_sg_inline(queue, c, req->data_len);
 	else
@@ -2209,7 +2209,8 @@ static blk_status_t nvme_tcp_setup_cmd_pdu(struct nvme_ns *ns,
 	req->data_sent = 0;
 	req->pdu_len = 0;
 	req->pdu_sent = 0;
-	req->data_len = blk_rq_payload_bytes(rq);
+	req->data_len = blk_rq_nr_phys_segments(rq) ?
+				blk_rq_payload_bytes(rq) : 0;
 	req->curr_bio = rq->bio;
 
 	if (rq_data_dir(rq) == WRITE &&
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
