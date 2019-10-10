Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DA4D2D48
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:07:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/0aydaX3semQ/NlagsUM8OKPqUaVVRFK7DG/wP88n4=; b=iws6UIBzO++wfi
	c0LkAi6JhLrP3fYDGsz6JSU7Gax3sFzIqfM9QMRHMJGKKzrKZpU+gzmbMAHgXPzUWRDv/333RBjzf
	QB6IXF9SNs32PngxnD/qkOOz6mQ76CPp82f/2MB/X3NM8weeNK8i2lzGJEq3VyGXiJMzSf1PX498E
	m6LW0fEaHVCYC3e5RcZJ3jEwW+io64QeGn7zoaQ7MgPcMkoNnpRk399mQRSBLZwamQ5X285hKBMwN
	erVGmKKT1w3goHRpwMJCTP8MDdcAeaTPdTBq+S2NRPbJsCvQqMzBlKg3BcpN1bNErAip0r2hiBEVT
	OXYi4KySb0rWns/+2leA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIa2M-000568-9q; Thu, 10 Oct 2019 15:07:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIa2F-00055n-Vb
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:07:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B922368C65; Thu, 10 Oct 2019 17:07:19 +0200 (CEST)
Date: Thu, 10 Oct 2019 17:07:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] nvme-tcp: Remove access to sk->sk_ll_usec
Message-ID: <20191010150719.GA617@lst.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010150622.reqmasxgavug4amm@linutronix.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_080724_163290_F0416C79 
X-CRM114-Status: UNSURE (   7.78  )
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

On Thu, Oct 10, 2019 at 05:06:22PM +0200, Sebastian Andrzej Siewior wrote:
> The access to sk->sk_ll_usec should be hidden behind
> CONFIG_NET_RX_BUSY_POLL.
> This shouldn't be required because this can also be set via
> 	setsockopt(,, SO_BUSY_POLL, &one, )
> 
> Remove access to sk_ll_usec behind CONFIG_NET_RX_BUSY_POLL.

The changelog doesn't match the patch, which just removes the assignment
unconditionally.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
