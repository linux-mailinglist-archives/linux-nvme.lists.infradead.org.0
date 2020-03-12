Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 749F31828F2
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 07:26:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v65iA42WsmjrflnXXE5crw2Ga1u8jeSYPhECRoA7IqA=; b=pWlrMMZiI21O32
	XyT2B9xWWLOGkVLjgxtrex/dVvLxTVZD3WiUqTvnD9tKuL5xCUPJx0fLSoNNPSrvG0dgRXb2zZjOH
	ycQHcwhc9yq8Vt4fFII6a0SZhYu41s/CQI/KYUD71/XgR8NbF8g1GxnMdbdlAZkpwAwYbqTjFe3lD
	5x0ayeMBXt/gzuXzmigYnGqgtEAA0llROqgZ4KE9/Z0AExHJvPDIJYxzwGXrph3/B1jiwVe0jtKJQ
	lgXizFoPFmtjgnPk/PgI+cgxjEhadIWHOpf4aVrxBi/H0Yg6v1ozt5zEA+2KVXhqzjTC5B+QKucW1
	azS/JBxq4QkEj5Tftu2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHIF-0002bv-Qm; Thu, 12 Mar 2020 06:26:07 +0000
Received: from [2601:647:4802:9070:c47a:8519:9343:83b8]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHIC-0002be-PT; Thu, 12 Mar 2020 06:26:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvmet-tcp: optimize tcp stack TX when data digest is used
Date: Wed, 11 Mar 2020 23:26:03 -0700
Message-Id: <20200312062603.2572-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200312062603.2572-1-sagi@grimberg.me>
References: <20200312062603.2572-1-sagi@grimberg.me>
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
Cc: Keith Busch <kbusch@kernel.org>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If we have a 4-byte data digest to send to the wire, but we
have more data to send, set MSG_MORE to tell the stack
that more is coming.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index e5d000f12059..372739221c50 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -628,7 +628,7 @@ static int nvmet_try_send_r2t(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 	return 1;
 }
 
-static int nvmet_try_send_ddgst(struct nvmet_tcp_cmd *cmd)
+static int nvmet_try_send_ddgst(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 {
 	struct nvmet_tcp_queue *queue = cmd->queue;
 	struct msghdr msg = { .msg_flags = MSG_DONTWAIT };
@@ -638,6 +638,9 @@ static int nvmet_try_send_ddgst(struct nvmet_tcp_cmd *cmd)
 	};
 	int ret;
 
+	if (!last_in_batch && cmd->queue->send_list_len)
+		flags |= MSG_MORE;
+
 	ret = kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
 	if (unlikely(ret <= 0))
 		return ret;
@@ -678,7 +681,7 @@ static int nvmet_tcp_try_send_one(struct nvmet_tcp_queue *queue,
 	}
 
 	if (cmd->state == NVMET_TCP_SEND_DDGST) {
-		ret = nvmet_try_send_ddgst(cmd);
+		ret = nvmet_try_send_ddgst(cmd, last_in_batch);
 		if (ret <= 0)
 			goto done_send;
 	}
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
