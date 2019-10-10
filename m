Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213A8D2D42
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KRInSWVbRNFsJy8M/y4GS6XK2OAnVtftKkpq6g2+/lE=; b=ZuPCLogNuykGmi
	NvVUeXXqRtQ2Ba77XuYklb1aBAEamuh8Am090OgxGxl+hU56ISGj7ofQse7ktHygM412XKy2TtTAk
	O0ge7HTLP5PyOZXBATriEXwZhwDqfldudBjeYvv6VbDII6qMWMsz72lSWZHFxZ4rMIs1b5UMi8SOJ
	/bJP+7ip8YfcS56pcbV8zQwKrrLj3xebQr77f6VCrFviwmJL99M+gu39E70gOIOhjzzdrWtyIJz7+
	VdG8YJ+jYJn3qs3Qb0Cq8oTZ7wSZfEjscjIWBtIH1y2MtCg7TWWTCXjnoSGyeC2EborMmFE9kPcKw
	71OB0AKlDpcOJItVltTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIa1O-0004sl-W7; Thu, 10 Oct 2019 15:06:30 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIa1J-0004sF-QK
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:06:27 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iIa1G-0003gF-CH; Thu, 10 Oct 2019 17:06:22 +0200
Date: Thu, 10 Oct 2019 17:06:22 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-tcp: Remove access to sk->sk_ll_usec
Message-ID: <20191010150622.reqmasxgavug4amm@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_080625_998451_3CA5F49D 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 tglx@linutronix.de, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The access to sk->sk_ll_usec should be hidden behind
CONFIG_NET_RX_BUSY_POLL.
This shouldn't be required because this can also be set via
	setsockopt(,, SO_BUSY_POLL, &one, )

Remove access to sk_ll_usec behind CONFIG_NET_RX_BUSY_POLL.

Fixes: 1a9460cef5711 ("nvme-tcp: support simple polling")
Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
---
 drivers/nvme/host/tcp.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 385a5212c10f1..dbad6327e84bc 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1386,7 +1386,6 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	queue->sock->sk->sk_data_ready = nvme_tcp_data_ready;
 	queue->sock->sk->sk_state_change = nvme_tcp_state_change;
 	queue->sock->sk->sk_write_space = nvme_tcp_write_space;
-	queue->sock->sk->sk_ll_usec = 1;
 	write_unlock_bh(&queue->sock->sk->sk_callback_lock);
 
 	return 0;
-- 
2.23.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
