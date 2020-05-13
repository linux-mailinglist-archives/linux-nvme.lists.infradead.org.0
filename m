Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E62EE1D0423
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 03:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VcP6L/bD7OpTxdBaBmvpEGferv4ksJswAxhIkeZXjjU=; b=SB1xGsUItzNwdc
	nDoIaEZHC12l4qTAurC9yNuRoZoiV5qWY5v8rHYvKxjR88jG8Y2dP9ckw+ozsZ/EBxnlEmUdS0Pop
	GsLkyVOzSeynU0byIBSxTgXl05xCDySg8M+ugYr+pY473eb2qwkacAwqZZZhPV5nKpYudtu2OJeEP
	bB6aLcD5O/MDCvx4TyvkAoGaeexFuzkVOhbLpvFvaTMnVvVbY2bG63jkfCVbLiMqnI//BuT8qIz1N
	FV7H8lZ8RMRGfZRXmEzFi9Z/VdMCFl2ZH++Mv+dyhpoJ/9rt8FXaZQWb8gqEKLJA+GLPJkWu+F96T
	mgm+ws67BmYE9rjM287Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYfmN-000437-LM; Wed, 13 May 2020 01:01:47 +0000
Received: from [2601:647:4802:9070:fd29:b320:9d75:d158]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYfmK-00042q-W2; Wed, 13 May 2020 01:01:45 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH] nvmet-tcp: set MSG_EOR if we send last payload in the batch
Date: Tue, 12 May 2020 18:01:43 -0700
Message-Id: <20200513010143.21681-1-sagi@grimberg.me>
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

when trying to send the pdu data digest, we should set this
flag.

Reported-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 611141f3d328..8d9dd657696b 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -648,6 +648,8 @@ static int nvmet_try_send_ddgst(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 
 	if (!last_in_batch && cmd->queue->send_list_len)
 		msg.msg_flags |= MSG_MORE;
+	else
+		msg.msg_flags |= MSG_EOR;
 
 	ret = kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
 	if (unlikely(ret <= 0))
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
