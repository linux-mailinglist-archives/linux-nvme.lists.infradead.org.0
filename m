Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07781D3E37
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 21:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGAFCTd1UVsxi9iHgdof0yzzqidc5208gP7wAQXoUSY=; b=sdB/JwLTM2E871
	be+A+XWWcVWcxdr7a+c8mH60lxUvXD4lPU0uGn17kkmE7f7MexFT4p8NOkmR2XceZfJPPSzbVuz7e
	kQPfTy8euw0aywv7xTJyy6IHDjAIz84odsyLadJjmEUUmeacZQxLES/Hktvh92nJmGMV5faDkq3Cy
	2C1mizzFiUZO41Ftz2ostyt/Y3EE2wjaU8u3ztejfJZeN/VouvIx0EWH0KIn6loyKjFg8WUHFqKIa
	jnEG+woL1esA8QswTcJopZllFD+GUdtTm6jauT1ZJDLhGEydepgVejCYzljz5yaKPx1O7EfLCcdpf
	z13m10SeYQcf2j6Z5c1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJzb-0000vn-UV; Thu, 14 May 2020 19:58:07 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJzO-0000qA-Ge; Thu, 14 May 2020 19:57:58 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7E265128D325E;
 Thu, 14 May 2020 12:57:52 -0700 (PDT)
Date: Thu, 14 May 2020 12:57:51 -0700 (PDT)
Message-Id: <20200514.125751.2175402701800030395.davem@davemloft.net>
To: David.Laight@ACULAB.COM
Subject: Re: remove kernel_setsockopt and kernel_getsockopt
From: David Miller <davem@davemloft.net>
In-Reply-To: <756758e8f0e34e2e97db470609f5fbba@AcuMS.aculab.com>
References: <20200513062649.2100053-1-hch@lst.de>
 <ecc165c33962d964d518c80de605af632eee0474.camel@perches.com>
 <756758e8f0e34e2e97db470609f5fbba@AcuMS.aculab.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 14 May 2020 12:57:53 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_125754_658005_3F9397B1 
X-CRM114-Status: UNSURE (   4.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marcelo.leitner@gmail.com, linux-nvme@lists.infradead.org,
 edumazet@google.com, target-devel@vger.kernel.org,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, hch@lst.de, cluster-devel@redhat.com,
 kuznet@ms2.inr.ac.ru, linux-block@vger.kernel.org, joe@perches.com,
 kuba@kernel.org, ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 nhorman@tuxdriver.com, yoshfuji@linux-ipv6.org, netdev@vger.kernel.org,
 vyasevich@gmail.com, linux-kernel@vger.kernel.org, jmaloy@redhat.com,
 linux-sctp@vger.kernel.org, ying.xue@windriver.com, ocfs2-devel@oss.oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: David Laight <David.Laight@ACULAB.COM>
Date: Thu, 14 May 2020 08:29:30 +0000

> You need to export functions that do most of the socket options
> for all protocols.

If all in-tree users of this stuff are converted, there is no argument
for keeping these routines.

You seemed to be concerned about out of tree stuff.  If so, that's not
of our concern.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
