Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB24D2DBE
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:30:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trOUZGejMWi0poMbx2dN5Ju7IfTNfLZwTGMnVX2uRag=; b=rAaj4whUK0puKX
	i70USyptVy5MHjHjED1Xu7gQFZFPZ2d1rNCFoqprqv0N/57dfX7m16vb3PU4p5MNmrs9aqred0pxe
	Tv6/YF48KPZkwh9UNTlsssIOqaalru9EjXD4Mb8haLZZtLMfWKxMV8H/ASWyhMrMkeASH6J1hOwY9
	VD7HWV6LoESkqj3q/VdfUvRJJ4hfyAiIR5QEFRpO6+SefHDI11+q5oTHd+CzppOdq3FdNqtB33kze
	GsyiSsgq8SaJf1MEU7QDUErQUHXmaAk0197Phg7uz6vV/mlBN4uapJ2tjHLiTJavO5CkL5OQWN37K
	bxbOE/Y7t+j4zdXt16Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaOK-0005pk-40; Thu, 10 Oct 2019 15:30:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIaOA-0005Ns-DY
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:30:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 60C8568C65; Thu, 10 Oct 2019 17:29:58 +0200 (CEST)
Date: Thu, 10 Oct 2019 17:29:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] nvme-tcp: Remove access to sk->sk_ll_usec
Message-ID: <20191010152958.GA1057@lst.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de> <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
 <20191010151444.GA638@lst.de> <20191010152924.jlr53aunkj7de5js@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010152924.jlr53aunkj7de5js@linutronix.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_083002_619259_B4CBA374 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>, tglx@linutronix.de,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 05:29:24PM +0200, Sebastian Andrzej Siewior wrote:
> On 2019-10-10 17:14:44 [+0200], Christoph Hellwig wrote:
> > I didn't really understand that comment, or how it applies to the
> > nvme code, given that it never calls setsockopt with SO_BUSY_POLL.
> 
> So that part of the code is never accessed from userland?

No, the code uses sockets from kernel space.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
