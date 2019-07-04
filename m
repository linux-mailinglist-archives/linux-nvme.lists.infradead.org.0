Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54425F711
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 13:10:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x491eXj+gPDMKJypkSLnqW1/9wMoKig3ZKIMU+7z3A8=; b=Vok
	TyTt1x9MWswNRCZHAgfMzFE5KEqgoPh5r/akhU789r0/mtvQ6GGCQaojVZB2YjlY3ry2U1+tV2m+2
	+D0RHUnuv0ksRT4U/Pu+hWKZtOaw1mmeGaqMXPEQmE5WoMWcuoiT/WMjKBA6pt68UWEdWtQ1q5BI7
	p5SosxZPxItf8t0iGvaUNjmbjZwQ0Q/HD9C0O/rJ18XirUkv4At68EOFxSXQqPajhADEa9rgtA8YO
	vbbCd0gXO0eObsnQG6jX3gV1REI+JJsNiBcY2+3R1itIB3fF52TXo27e4fGInt1ILSOhWSfOs08F9
	Tf9aV/LXCrfg0D68YW6yRNWl/n27Erw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hizd5-0003mA-Ia; Thu, 04 Jul 2019 11:10:19 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hizcr-00037t-At
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 11:10:07 +0000
Received: from localhost (mehrangarh.blr.asicdesigners.com [10.193.185.169])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x64B9bmF027246;
 Thu, 4 Jul 2019 04:09:38 -0700
From: Potnuri Bharat Teja <bharat@chelsio.com>
To: sagi@grimberg.me
Subject: [RFC] nvme-tcp: Use protocol specific operations while reading socket
Date: Thu,  4 Jul 2019 16:39:35 +0530
Message-Id: <20190704110935.1228-1-bharat@chelsio.com>
X-Mailer: git-send-email 2.18.0.232.gb7bd9486b055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_041005_419936_238B322A 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [12.32.117.8 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: bharat@chelsio.com, werner@chelsio.com, nirranjan@chelsio.com,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Using socket specific read_sock() calls instead of directly calling
tcp_read_sock() helps lld module registered handlers if any, to be called
from nvme-tcp host.
This patch therefore replaces the tcp_read_sock() with socket specific
prot_ops.

Signed-off-by: Potnuri Bharat Teja <bharat@chelsio.com>
---
 drivers/nvme/host/tcp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501b9357..6ba667e62b75 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1016,14 +1016,15 @@ static int nvme_tcp_try_send(struct nvme_tcp_queue *queue)
 
 static int nvme_tcp_try_recv(struct nvme_tcp_queue *queue)
 {
-	struct sock *sk = queue->sock->sk;
+	struct socket *sock = queue->sock;
+	struct sock *sk = sock->sk;
 	read_descriptor_t rd_desc;
 	int consumed;
 
 	rd_desc.arg.data = queue;
 	rd_desc.count = 1;
 	lock_sock(sk);
-	consumed = tcp_read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
+	consumed = sock->ops->read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
 	release_sock(sk);
 	return consumed;
 }
-- 
2.18.0.232.gb7bd9486b055


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
