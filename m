Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEB41DBF7A
	for <lists+linux-nvme@lfdr.de>; Wed, 20 May 2020 22:02:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJY3/C8iRdV0EGkCQkKXZ9U+Ez7b2gPfiZvOi1RvooA=; b=pONf/Diexcy2F+
	mn5/XDZw/18FJA0biXnDLeZVyO7wf+jJV7e3eprs/YUx1TOpAW66Za6yQr5Yb1BLRt+dZSXLFuBD1
	BPpdcpMr9HCProVpqyO8+XumhGu0eTpAiI1D3q0e1CYwlIFQVlgnBHDGvqYQZwinQVX3NlfKYWAZf
	E7VYpEC9rkoJD9frBdHpfLRkXTCCgU3MenfUQwUQdN+2eoruvSlTkuBjXDnIRPD2j1ufZ4h8AGKFG
	OyTO/KcM38x20JRN7WsuBxRszikxgCWe69gDmTgLLh8KIuqCSjqSYcRwLBwXwOAqNYxoRbKYRLNuF
	hAOgDOFXUnVkSK3U+xJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbUun-0002Zj-O4; Wed, 20 May 2020 20:02:09 +0000
Received: from [2001:4bb8:188:1506:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbUpk-0003er-B6; Wed, 20 May 2020 19:56:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH 33/33] net: remove kernel_setsockopt
Date: Wed, 20 May 2020 21:55:09 +0200
Message-Id: <20200520195509.2215098-34-hch@lst.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200520195509.2215098-1-hch@lst.de>
References: <20200520195509.2215098-1-hch@lst.de>
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Eric Dumazet <edumazet@google.com>, linux-nvme@lists.infradead.org,
 linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, cluster-devel@redhat.com,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org, Neil Horman <nhorman@tuxdriver.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 Vlad Yasevich <vyasevich@gmail.com>, linux-kernel@vger.kernel.org,
 Jon Maloy <jmaloy@redhat.com>, Ying Xue <ying.xue@windriver.com>,
 ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

No users left.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/net.h |  2 --
 net/socket.c        | 31 -------------------------------
 2 files changed, 33 deletions(-)

diff --git a/include/linux/net.h b/include/linux/net.h
index 74ef5d7315f70..e10f378194a59 100644
--- a/include/linux/net.h
+++ b/include/linux/net.h
@@ -303,8 +303,6 @@ int kernel_connect(struct socket *sock, struct sockaddr *addr, int addrlen,
 		   int flags);
 int kernel_getsockname(struct socket *sock, struct sockaddr *addr);
 int kernel_getpeername(struct socket *sock, struct sockaddr *addr);
-int kernel_setsockopt(struct socket *sock, int level, int optname, char *optval,
-		      unsigned int optlen);
 int kernel_sendpage(struct socket *sock, struct page *page, int offset,
 		    size_t size, int flags);
 int kernel_sendpage_locked(struct sock *sk, struct page *page, int offset,
diff --git a/net/socket.c b/net/socket.c
index 81a98b6cbd087..976426d03f099 100644
--- a/net/socket.c
+++ b/net/socket.c
@@ -3624,37 +3624,6 @@ int kernel_getpeername(struct socket *sock, struct sockaddr *addr)
 }
 EXPORT_SYMBOL(kernel_getpeername);
 
-/**
- *	kernel_setsockopt - set a socket option (kernel space)
- *	@sock: socket
- *	@level: API level (SOL_SOCKET, ...)
- *	@optname: option tag
- *	@optval: option value
- *	@optlen: option length
- *
- *	Returns 0 or an error.
- */
-
-int kernel_setsockopt(struct socket *sock, int level, int optname,
-			char *optval, unsigned int optlen)
-{
-	mm_segment_t oldfs = get_fs();
-	char __user *uoptval;
-	int err;
-
-	uoptval = (char __user __force *) optval;
-
-	set_fs(KERNEL_DS);
-	if (level == SOL_SOCKET)
-		err = sock_setsockopt(sock, level, optname, uoptval, optlen);
-	else
-		err = sock->ops->setsockopt(sock, level, optname, uoptval,
-					    optlen);
-	set_fs(oldfs);
-	return err;
-}
-EXPORT_SYMBOL(kernel_setsockopt);
-
 /**
  *	kernel_sendpage - send a &page through a socket (kernel space)
  *	@sock: socket
-- 
2.26.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
