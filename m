Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221481AEDCE
	for <lists+linux-nvme@lfdr.de>; Sat, 18 Apr 2020 16:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eCpoqXKLk1YdEmMCFk25HJDjJXozq9xX/8NyNSFXHA=; b=cqrSNuhUfgbNsc
	+hEuB007mb4K5DH/Zf5vdFeYr13NQ3l7O6UjsJnWdC1VATleNpbrm56zj6e8z72AzoxmRiCqCeIFr
	lTMM8cL2MMtMFd+MqPfWs5zwcLmBBzhvGtl+NQLm1MQ2LfMz9UygaYpoutBCMRB/j2I5cuKFeOAsv
	Qav/QvvzSYxVThJA0vFkIjAk6lOtm2Llu3+4UJwb7bAlMNzfVKuxCnfK8WIlKRh9/LKWdc/QfJ8H5
	AUdmImCDZeNerFA+rT9ZCu3oMpIkx5iesImNo/Bo5yBjiZV5n9g3cHedxmw11GVsjR0cPMJXibl3z
	n0G9qho2g53S6H9dFaxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoA2-00018X-Dn; Sat, 18 Apr 2020 14:09:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPo9y-00017z-M5
 for linux-nvme@lists.infradead.org; Sat, 18 Apr 2020 14:09:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31E6F21D82;
 Sat, 18 Apr 2020 14:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587218970;
 bh=emCtJ33z/m5pfLdFAGdxdHQ4439wBNBlCSZF5CWCU9Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IH+DGyfQD04u08upTe0MCmonyMatbTUMTdUUXVtcmxbt3hI0tKhY/4w2doj74SNuI
 eLAWpqVrbtt/z5j03El0LTxmOBkg6j/GVtOZVKElbchprdAKnLuLRlHYINFlgVTBFa
 pKLiS3KEQK8h7VS6AhlKrrK7H4CifdWYOIYvvOt0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 16/75] nvme-tcp: fix possible crash in
 write_zeroes processing
Date: Sat, 18 Apr 2020 10:08:11 -0400
Message-Id: <20200418140910.8280-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418140910.8280-1-sashal@kernel.org>
References: <20200418140910.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_070930_742259_C04E842F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Tony Asleson <tasleson@redhat.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 25e5cb780e62bde432b401f312bb847edc78b432 ]

We cannot look at blk_rq_payload_bytes without first checking
that the request has a mappable physical segments first (e.g.
blk_rq_nr_phys_segments(rq) != 0) and only then to take the
request payload bytes. This caused us to send a wrong sgl to
the target or even dereference a non-existing buffer in case
we actually got to the data send sequence (if it was in-capsule).

Reported-by: Tony Asleson <tasleson@redhat.com>
Suggested-by: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/tcp.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 49d4373b84eb3..00e6aa59954d4 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -164,16 +164,14 @@ static inline bool nvme_tcp_async_req(struct nvme_tcp_request *req)
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
@@ -2090,7 +2088,9 @@ static blk_status_t nvme_tcp_map_data(struct nvme_tcp_queue *queue,
 
 	c->common.flags |= NVME_CMD_SGL_METABUF;
 
-	if (rq_data_dir(rq) == WRITE && req->data_len &&
+	if (!blk_rq_nr_phys_segments(rq))
+		nvme_tcp_set_sg_null(c);
+	else if (rq_data_dir(rq) == WRITE &&
 	    req->data_len <= nvme_tcp_inline_data_size(queue))
 		nvme_tcp_set_sg_inline(queue, c, req->data_len);
 	else
@@ -2117,7 +2117,8 @@ static blk_status_t nvme_tcp_setup_cmd_pdu(struct nvme_ns *ns,
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
