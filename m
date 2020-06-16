Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8891FA929
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 08:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+52uZ7Qawzrb8fjCp1N+tK/D3W/Qc3ctISyrJfzKioc=; b=BX+MWPAgZfHHDL
	cgxMlhJIF9foBCjqW5UyJiefUC993s2Ty7oth0fMPTQ5oP331fsvnnmBtBk2AffwRMeb+/WSTCBIm
	3T2odY7Co0Nh6YDykHoEn0IwYRze0TxDkA1h8TLe8KFN0PoJHdSOdsYXwCZGsWT8RNK/6Ry+1I7Hr
	M7g5thtPS6CzC9cBS9sB/DlHEwG3Rody+QT0xTs6yOQfn7bWj2bPKKAFwKmBmW8/0Qf3aLdui3oN9
	kxt4jjpQ53QE6zutBya9LIla6da+Kl5ZQofLxfr3XJgxhfkTu2JwDyG8LsOlHz4y4xXu1+5J3XMW1
	YNzejEZNdtFj3Pl9CuMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5TF-0002Ne-0e; Tue, 16 Jun 2020 06:53:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5TA-0002N3-Tz
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 06:53:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 29E7568AEF; Tue, 16 Jun 2020 08:53:13 +0200 (CEST)
Date: Tue, 16 Jun 2020 08:53:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: Quirk for Samsung PM1733 controllers
Message-ID: <20200616065312.GA17250@lst.de>
References: <1592262742-103431-1-git-send-email-christopher.walker@gmail.com>
 <20200615234208.GA520528@dhcp-10-100-145-180.wdl.wdc.com>
 <CAFD1iUqfki3O9HibUiy4hiYYwp-MEN+3ZogYfe8MUgdd2YZEqA@mail.gmail.com>
 <20200616002306.GB520528@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616002306.GB520528@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_235317_111048_769846F3 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@fb.com, linux-nvme@lists.infradead.org, hch@lst.de,
 Chris Walker <christopher.walker@gmail.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 05:23:06PM -0700, Keith Busch wrote:
> Okay, so it's one of those types of nvme controllers that report "ready"
> then only return "not ready" error status for an arbitrary amount of
> time. The technical committee is considering how to get rid of this
> arbitrary wait, either with existing mechanisms or something new. We'll
> have to wait to see how they decide.
> 
> In the meantime for drives behaving like this, the quirk delay should
> have come *after* nvme_wait_ready() rather than before since namespace
> readiness happens after controller ready. The currently existing quirks
> appear to be wrongly applied to most of the controllers using them.
> AFAIK, only one controller ever existed that actually needs the delay
> before wait_ready().

I think we could increase the number of retries to something larger than
nvme_max_retries for Inquiry in general to handle these controllers.
We'll still need some reasonable upper bound, though.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
