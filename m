Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81308B9DE
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 15:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5sTvFAbpj0K4kx+zieGYhte0vaZtFFh3tGu/REgn9g=; b=VxeIVoKW9Na31xj+H+KSuhDq28
	AYVDl0PjtdCLTwPk7mwV9xOLKDUzXtlaGj5ODUF1CcwhvXrPS3ncre4sF6xv+rzWwsZxmXx+JfjZo
	3eNiUZgPrsgcNnXFaziZ/wCt/F4dS4ldQJiUrUlr+hi6OneJ4Ma6yADuFAMpPI/saoY5WSFwLpZEA
	3kOER6ZFP183ifi9gpXJnB4frlgFLUQ2li4Dqw4+4cOJGXVVi1UfRY6m4RsZs85y985fIaOsu97tp
	DcGyaSr7+9PWkn7l4p6qy8VZIhPLUHVeuOAl3OC45F4vj0KR1JY6HTwbMXaPatmpUCYXC4smLbgPr
	m7pP+K2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWgs-0005M2-MT; Tue, 13 Aug 2019 13:18:18 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWgG-0004bG-S5
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 13:17:43 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Aug 2019 16:17:33 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7DDHXh1029568;
 Tue, 13 Aug 2019 16:17:33 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 5/5] nvmet-tcp: Add TOS for tcp transport
Date: Tue, 13 Aug 2019 16:17:31 +0300
Message-Id: <1565702251-17198-7-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_061741_349600_77769205 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Set the outgoing packets type of service (TOS) according to the
receiving TOS.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Suggested-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/tcp.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 69b83fa..fdf10ee 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -1410,6 +1410,7 @@ static void nvmet_tcp_state_change(struct sock *sk)
 static int nvmet_tcp_set_queue_sock(struct nvmet_tcp_queue *queue)
 {
 	struct socket *sock = queue->sock;
+	struct inet_sock *inet = inet_sk(sock->sk);
 	struct linger sol = { .l_onoff = 1, .l_linger = 0 };
 	int ret;
 
@@ -1433,6 +1434,16 @@ static int nvmet_tcp_set_queue_sock(struct nvmet_tcp_queue *queue)
 	if (ret)
 		return ret;
 
+	/* Set socket type of service */
+	if (inet->rcv_tos > 0) {
+		int tos = inet->rcv_tos;
+
+		ret = kernel_setsockopt(sock, SOL_IP, IP_TOS,
+				(char *)&tos, sizeof(tos));
+		if (ret)
+			return ret;
+	}
+
 	write_lock_bh(&sock->sk->sk_callback_lock);
 	sock->sk->sk_user_data = queue;
 	queue->data_ready = sock->sk->sk_data_ready;
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
