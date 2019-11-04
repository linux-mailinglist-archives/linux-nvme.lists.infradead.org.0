Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E536EEE3C1
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 16:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk6TLtfZUU97QXO7lDjDJeD/bOAEwnf8xXHAPnZhAmc=; b=mZeAxHimlXL0G/
	FyDyn2kb2QxwGBjt/DiFV0bejzzs8xP+kNBs6UnohkXChwJ1QkNSeKico4YoBV5cYvFtGymHqHJO2
	KwC0JxLozan2s1iYTc86GoDhF1Vm/MX4vALJ0YQvb5bdzxkxj7vi5GX1HUPRtlEIztWtIUsRuj45F
	Lwm5faae6DCD+R5wd/l0n+dEe3WOlF4Ns90czJ7iDiGIZRyG1rGyUCaemqv5dap5HMtUNA68wrHbb
	SwxR3/IXNDCtbth9Ce6IfiQM2zSUwRGbwxNFZedR241Fdjfo6ionmrKY/KGp73ky+KAci1xtAENVS
	yg6IvIl5ABWPqo8VC9vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReIJ-0002b7-ND; Mon, 04 Nov 2019 15:29:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReIE-0002a3-FI
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 15:29:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 396F668BFE; Mon,  4 Nov 2019 16:29:17 +0100 (CET)
Date: Mon, 4 Nov 2019 16:29:16 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
Message-ID: <20191104152916.GB17050@lst.de>
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
 <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
 <871357470.90297451.1572879417091.JavaMail.zimbra@kalray.eu>
 <20191104150151.GA26808@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104150151.GA26808@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072922_659254_33C51BDE 
X-CRM114-Status: GOOD (  16.11  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Marta Rybczynska <mrybczyn@kalray.eu>,
 Charles Machalow <csm10495@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 12:01:51AM +0900, Keith Busch wrote:
> On Mon, Nov 04, 2019 at 03:56:57PM +0100, Marta Rybczynska wrote:
> > ----- On 4 Nov, 2019, at 15:51, Charles Machalow csm10495@gmail.com wrote:
> > 
> > > For this one yes, UAPI size changes. Though I believe this IOCTL
> > > hasn't been in a released Kernel yet (just RC). Technically it may be
> > > changeable as a fix until the next Kernel is released. I do think its
> > > a useful enough
> > > change to warrant a late fix.
> > 
> > The old one is in UAPI for years. The new one is not yet, right. I'm OK
> > to change the new structure. To have compatibility you would have to use
> > the new structure (at least its size) in the user space code. This is
> > what you'd liek to do?
> 
> Charles is proposing only to modify the recently introduced 64-bit ioctl
> struct without touching the existing 32 bit version. He just wanted the
> lower 32-bits of the 64-bit result to occupy the same space as the 32-bit
> ioctl's result. That space in the 64-bit version is currently occupied
> by an implicit struct padding.

Except on 32-bit x86, which does not have the padding.  Which is why
the current layout is so bad, as it breaks 32-it x86 compat.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
