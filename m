Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50E7D56E6
	for <lists+linux-nvme@lfdr.de>; Sun, 13 Oct 2019 18:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p7R3pfv3ZxUc1mhzmcUpLM9D0dbX3RQcbCxqP4q2Qgk=; b=aoObLelX/Z7ZDRzP5quYmcbSc5
	YoQq8p6tuu7QyWeFhz9ipttWp6RYV2y2igP6GpkaPWhSLiJkxzeNtymlutwmPA780rzaOTO3ofNCM
	CIZU3YMzRMuJ7dK3OQ7uv4BTGM/IOhfLpgX0AuG3Lem/r6Kns0fY0CYXFlljoPl7HamOUZduUhyGK
	MHXQ25C99NLEZX+ETnRgaaVJxUxEaane/1rUbgYWuE3LkEMvksba1PgxpaV9OqzUcyQ9Bh19Li31l
	Ti2QufvpyhihfiwHgjANojk/yclKPn5CssJwNoPxP1n+xmyVtXxPzQb1vvWoO4F3dIiKqAv8jPy5k
	zqLDOUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJhBu-0004wG-WC; Sun, 13 Oct 2019 16:57:59 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJhBo-0004u5-Qg
 for linux-nvme@lists.infradead.org; Sun, 13 Oct 2019 16:57:54 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Oct 2019 18:57:39 +0200
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x9DGvdoM005965;
 Sun, 13 Oct 2019 19:57:39 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 sagi@grimberg.me
Subject: [PATCH 1/8] nvme: introduce nvme_is_aen_req function
Date: Sun, 13 Oct 2019 19:57:31 +0300
Message-Id: <1570985858-26805-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
References: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_095753_263788_49996EDB 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com,
 james.smart@broadcom.com, shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

This function improves code readability and reduces code duplication.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/nvme.h   | 5 +++++
 drivers/nvme/host/pci.c    | 3 +--
 drivers/nvme/host/rdma.c   | 4 ++--
 drivers/nvme/host/tcp.c    | 4 ++--
 drivers/nvme/target/loop.c | 4 ++--
 5 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 38a83ef5..912f950 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -445,6 +445,11 @@ static inline void nvme_put_ctrl(struct nvme_ctrl *ctrl)
 	put_device(ctrl->device);
 }
 
+static inline bool nvme_is_aen_req(u16 qid, __u16 command_id)
+{
+	return !qid && command_id >= NVME_AQ_BLK_MQ_DEPTH;
+}
+
 void nvme_complete_rq(struct request *req);
 bool nvme_cancel_request(struct request *req, void *data, bool reserved);
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 78e4038..f8f76a9 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -967,8 +967,7 @@ static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 	 * aborts.  We don't even bother to allocate a struct request
 	 * for them but rather special case them here.
 	 */
-	if (unlikely(nvmeq->qid == 0 &&
-			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
+	if (unlikely(nvme_is_aen_req(nvmeq->qid, cqe->command_id))) {
 		nvme_complete_async_event(&nvmeq->dev->ctrl,
 				cqe->status, &cqe->result);
 		return;
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 4d28016..154fa4e 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1501,8 +1501,8 @@ static void nvme_rdma_recv_done(struct ib_cq *cq, struct ib_wc *wc)
 	 * aborts.  We don't even bother to allocate a struct request
 	 * for them but rather special case them here.
 	 */
-	if (unlikely(nvme_rdma_queue_idx(queue) == 0 &&
-			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH))
+	if (unlikely(nvme_is_aen_req(nvme_rdma_queue_idx(queue),
+				     cqe->command_id)))
 		nvme_complete_async_event(&queue->ctrl->ctrl, cqe->status,
 				&cqe->result);
 	else
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 385a521..124fda6 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -491,8 +491,8 @@ static int nvme_tcp_handle_comp(struct nvme_tcp_queue *queue,
 	 * aborts.  We don't even bother to allocate a struct request
 	 * for them but rather special case them here.
 	 */
-	if (unlikely(nvme_tcp_queue_id(queue) == 0 &&
-	    cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH))
+	if (unlikely(nvme_is_aen_req(nvme_tcp_queue_id(queue),
+				     cqe->command_id)))
 		nvme_complete_async_event(&queue->ctrl->ctrl, cqe->status,
 				&cqe->result);
 	else
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 748a39f..bd1f81f 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -102,8 +102,8 @@ static void nvme_loop_queue_response(struct nvmet_req *req)
 	 * aborts.  We don't even bother to allocate a struct request
 	 * for them but rather special case them here.
 	 */
-	if (unlikely(nvme_loop_queue_idx(queue) == 0 &&
-			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
+	if (unlikely(nvme_is_aen_req(nvme_loop_queue_idx(queue),
+				     cqe->command_id))) {
 		nvme_complete_async_event(&queue->ctrl->ctrl, cqe->status,
 				&cqe->result);
 	} else {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
