Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7AA16F477
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 01:43:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AH2xB4XlYb8KGxACKzwP9o5p6upDqKgdJ3qfnV80mCs=; b=XcP655OenfLCPX
	Ig89cpc8P5OkyOq7rzb+/agkpRgzt/+LuHdKHxSgrQgqCf9Fc+vL9M7db6YhOeVG9mKql83082rMo
	UoQKmHOlLr8TuW9pZjggydYQHD2UHKRNptD88Z7yXX7B+rO23yAT774vouw6BUDp9AVLPPtFHNrkY
	4egbKMKD1L66n1lkmAMzFt4+4vC3b42YjblyDXk6spRL7fBxcv/1WpeAkPnvlNMptLCNVV8zDpdGr
	T/4p+AFiM0nMARbxEk0FgNOOuPx/jePi2ihzTIScwXcKlNhSxZRvf4iHiKgcVvQww/su2bSBMqktl
	fmW254kQEHmpZX+/UB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6knQ-0000gg-Ib; Wed, 26 Feb 2020 00:43:28 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6knN-0000gP-0l; Wed, 26 Feb 2020 00:43:25 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/2] nvme-tcp: move send failure to nvme_tcp_try_send
Date: Tue, 25 Feb 2020 16:43:23 -0800
Message-Id: <20200226004324.10694-1-sagi@grimberg.me>
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

Consolidate the request failure handling code to where
it is being fetched (nvme_tcp_try_send).

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 11a7c26f8573..221a5a59aa06 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1027,8 +1027,15 @@ static int nvme_tcp_try_send(struct nvme_tcp_queue *queue)
 	if (req->state == NVME_TCP_SEND_DDGST)
 		ret = nvme_tcp_try_send_ddgst(req);
 done:
-	if (ret == -EAGAIN)
+	if (ret == -EAGAIN) {
 		ret = 0;
+	} else if (ret < 0) {
+		dev_err(queue->ctrl->ctrl.device,
+			"failed to send request %d\n", ret);
+		if (ret != -EPIPE && ret != -ECONNRESET)
+			nvme_tcp_fail_request(queue->request);
+		nvme_tcp_done_send_req(queue);
+	}
 	return ret;
 }
 
@@ -1059,21 +1066,10 @@ static void nvme_tcp_io_work(struct work_struct *w)
 		int result;
 
 		result = nvme_tcp_try_send(queue);
-		if (result > 0) {
+		if (result > 0)
 			pending = true;
-		} else if (unlikely(result < 0)) {
-			dev_err(queue->ctrl->ctrl.device,
-				"failed to send request %d\n", result);
-
-			/*
-			 * Fail the request unless peer closed the connection,
-			 * in which case error recovery flow will complete all.
-			 */
-			if ((result != -EPIPE) && (result != -ECONNRESET))
-				nvme_tcp_fail_request(queue->request);
-			nvme_tcp_done_send_req(queue);
-			return;
-		}
+		else if (unlikely(result < 0))
+			break;
 
 		result = nvme_tcp_try_recv(queue);
 		if (result > 0)
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
