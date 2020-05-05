Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456241C4DA6
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 07:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDRMeH9rj8JVJy6MLIQ7qQeSe3f4bJHPrMSLdTX8lqI=; b=U60eJffoq22EBP
	CFIMVamToTR3Z20B4rCAWOUCuKnFFcWuONPUCp2Hub5Xte32Rfvhilh5igLeJWtaEI4MEskeugJeA
	tF/EL8OYJHCCQfLTj0zYpxq094/Sxkq2ae8CpNLjM45LEYWkeiQbVqg9ZOgtoOmRDyGz20CusUA91
	DzTyXPPwSRvbrTlaf2Eyn/yGWfSsTHYpGgD27Q7D71jF3Jp1bFrRo//hzUsI+8yGTunJ9t858va0F
	iDajLaCBGPLM2rmpbTxKeStQSEhMqB7fIuxD01a8DbjFKysD89YoBcKqrR8KRltalEobQchp4qI5d
	NjqYFPghGtPz2NPP6gog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVq0D-0002pJ-VM; Tue, 05 May 2020 05:20:21 +0000
Received: from [2601:647:4802:9070:b8cc:5255:a224:4d8b]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpzw-0000uV-K1; Tue, 05 May 2020 05:20:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 2/2] nvmet-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE when we
 have more to send
Date: Mon,  4 May 2020 22:20:02 -0700
Message-Id: <20200505052002.14924-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200505052002.14924-1-sagi@grimberg.me>
References: <20200505052002.14924-1-sagi@grimberg.me>
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
Cc: Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can signal the stack that this is not the last page coming and the
stack can build a larger tso segment, so go ahead and use it.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index f0da04e960f4..c08aec62115e 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -510,7 +510,7 @@ static int nvmet_try_send_data_pdu(struct nvmet_tcp_cmd *cmd)
 
 	ret = kernel_sendpage(cmd->queue->sock, virt_to_page(cmd->data_pdu),
 			offset_in_page(cmd->data_pdu) + cmd->offset,
-			left, MSG_DONTWAIT | MSG_MORE);
+			left, MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST);
 	if (ret <= 0)
 		return ret;
 
@@ -538,7 +538,7 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 		if ((!last_in_batch && cmd->queue->send_list_len) ||
 		    cmd->wbytes_done + left < cmd->req.transfer_len ||
 		    queue->data_digest || !queue->nvme_sq.sqhd_disabled)
-			flags |= MSG_MORE;
+			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 
 		ret = kernel_sendpage(cmd->queue->sock, page, cmd->offset,
 					left, flags);
@@ -585,7 +585,7 @@ static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
 	int ret;
 
 	if (!last_in_batch && cmd->queue->send_list_len)
-		flags |= MSG_MORE;
+		flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 	else
 		flags |= MSG_EOR;
 
@@ -614,7 +614,7 @@ static int nvmet_try_send_r2t(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 	int ret;
 
 	if (!last_in_batch && cmd->queue->send_list_len)
-		flags |= MSG_MORE;
+		flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 	else
 		flags |= MSG_EOR;
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
