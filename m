Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE5ED5C19
	for <lists+linux-nvme@lfdr.de>; Mon, 14 Oct 2019 09:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ivuXiYy6qzVeH6jcEaKVRWPgpRJ/eEKrG7P74HLi28=; b=B7KJ+5+nlLqeqX
	tZbMVAjR4ZS0XcdH4AaV9gtPXCIYlrXGe5fJIWtzLMiTQgAEg6ko2LvvoaK9q2D141x32mBUckoBz
	IUTL6Wu4CBSznB8shyMY5iAjtIcp3GuQGeES8cM+wMJfvWsP51/+KVEGLgcbeAsRjDezXc8w/zmCE
	ayxx2pGVeurYuRp60ZzV7IvUbfNZEtyr+TNSYhanUPrgmCh52FMe2Xz6MO/lPJC1GGLuaYYkAU+cu
	XMt4BHWJh1S6z4/uqMCHpgWDdwYYBzId6TDXEmJZ3E24fGxyKtQB1+ePb1kYFDc6QZAtpwUz5lxoi
	RTn7mIWxqlgZuP+YFKmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJubH-0001HE-A9; Mon, 14 Oct 2019 07:17:03 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJub8-0001Gj-9W
 for linux-nvme@lists.infradead.org; Mon, 14 Oct 2019 07:16:55 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8EE8B68CFC; Mon, 14 Oct 2019 09:16:51 +0200 (CEST)
Date: Mon, 14 Oct 2019 09:16:51 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v2] nvme-tcp: Initialize sk->sk_ll_usec only with
 NET_RX_BUSY_POLL
Message-ID: <20191014071651.GC10081@lst.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de> <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
 <20191010151444.GA638@lst.de> <20191010152924.jlr53aunkj7de5js@linutronix.de>
 <20191010152958.GA1057@lst.de>
 <20191010153411.6uetttizkto6rv65@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010153411.6uetttizkto6rv65@linutronix.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_001654_480380_E4C47C7C 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>, tglx@linutronix.de,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 05:34:12PM +0200, Sebastian Andrzej Siewior wrote:
> The access to sk->sk_ll_usec should be hidden behind
> CONFIG_NET_RX_BUSY_POLL like the definition of sk_ll_usec.
> 
> Put access to ->sk_ll_usec behind CONFIG_NET_RX_BUSY_POLL.
> 
> Fixes: 1a9460cef5711 ("nvme-tcp: support simple polling")
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
