Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DBFD2D64
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 17:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Om41gwyfDtW6bpJHXj6M33i8WoHcd3nE+Oay8Y4mee8=; b=YekFZk9gNv7Zfh
	l/1gR7jMtEXap2Iq1BLiSp7OyXeAWDy4tSMdwcbxBGUN4ehOOzlul1JYfW+QNWF78JSne/7jiGiSp
	pomZ40DsC1rU4u35v8AHRWV9wa4PDn+CaAGJWo6CmKkPOnorpWf9qPg0+BWprOMnHiZRd6mfR71yU
	+QrfKM4Vn6/JO7GWeOBKYFgEbzM09Mcm9dte9kcteoOz6etI2HAn956r9VMoA/bVjSZoRG6z3RtQ2
	n9O1KCKVAYN17nneOPtdHudpEsbkO8dF6/9sN9Xv5v3oigkCiPFdCIuNPG0BGPkU9nxFcXzZSEEqN
	lvg+YnVWHXBjc/t8TvKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIa9W-0007Ex-8x; Thu, 10 Oct 2019 15:14:54 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIa9R-0007EX-Az
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 15:14:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9221368C65; Thu, 10 Oct 2019 17:14:44 +0200 (CEST)
Date: Thu, 10 Oct 2019 17:14:44 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH] nvme-tcp: Remove access to sk->sk_ll_usec
Message-ID: <20191010151444.GA638@lst.de>
References: <20191010150622.reqmasxgavug4amm@linutronix.de>
 <20191010150719.GA617@lst.de> <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010151023.gru6fhrhy7gxxwye@linutronix.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_081449_524044_1FE3563D 
X-CRM114-Status: GOOD (  11.29  )
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

On Thu, Oct 10, 2019 at 05:10:23PM +0200, Sebastian Andrzej Siewior wrote:
> On 2019-10-10 17:07:19 [+0200], Christoph Hellwig wrote:
> > The changelog doesn't match the patch, which just removes the assignment
> > unconditionally.
> 
> I said that it has to be behind CONFIG_.* _but_ shouldn't be needed due
> to the setsockopt() thingy. Isn't this working? If not I can put it
> behind the ifdef. Be aware that the setsockopt() returns an error if
> this polling is not available.

I didn't really understand that comment, or how it applies to the
nvme code, given that it never calls setsockopt with SO_BUSY_POLL.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
