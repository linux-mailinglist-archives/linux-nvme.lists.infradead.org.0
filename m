Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36F8685EB
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 11:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6NRv9SFyCT4KDf4cs7lHZU4ioadNGP3NAuSYQLQg4E=; b=V9GCZRWXXB+KC4
	qQl+BNDSEc2U7JzNgYayNQbQS+0D+4NfmfdGwcTSa/vGo/rabqQS+kP5IdRbemRDblxaIvx8l5eb4
	Cbb5bTKbcpM+pyzv3vNCeIoDob9LCpFLV3sSmk1r/TswU1ULYwG2qIOkmgmuGxFx613dip5uow6+S
	27UddcDRlzs3eUr8TYQ2GZTAdmD9HcOI4NN5KOlXZ7UZCIbLo3TE16OMD1TIq6l/9vrR7g80oxt2Y
	cSA29TDBOs1VyVkb0/X3yOcpoItu4m/woJW+fBleHrQGsNzP3Q3t6PMKjK4f8KpABJVysT3mM7E8w
	mLTHAVmaVuaQtEqZ9fUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwtj-0001t0-Ca; Mon, 15 Jul 2019 09:03:52 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwtZ-0001sC-Bt
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 09:03:42 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6F93WuZ025986;
 Mon, 15 Jul 2019 04:03:33 -0500
Message-ID: <25c3813ab1c2943658d7e79756803801b14a34db.camel@kernel.crashing.org>
Subject: Re: [PATCH] nvme: Add support for Apple 2018+ models
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Mon, 15 Jul 2019 19:03:31 +1000
In-Reply-To: <c088cb27f99adbcc1f8faf8e86167903f11593b8.camel@kernel.crashing.org>
References: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
 <20190715081041.GB31791@lst.de>
 <c088cb27f99adbcc1f8faf8e86167903f11593b8.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_020341_559244_F143F336 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-07-15 at 18:43 +1000, Benjamin Herrenschmidt wrote:
> On Mon, 2019-07-15 at 10:10 +0200, Christoph Hellwig wrote:
> > > +	/*
> > > +	 * Apple 2018 and latter variant has a few issues
> > > +	 */
> > > +	NVME_QUIRK_APPLE_2018			= (1 << 10),
> > 
> > We try to have quirks for the actual issue, so this should be one quirk
> > for the irq vectors issues, and another for the sq entry size.  Note that
> > NVMe actually has the concept of an I/O queue entry size (IOSQES in the
> > Cc register based on values reported in the SQES field in Identify
> > Controller.  Do these controllers report anything interesting there?
> 
> Ah good to know, I'll dig.

Interesting... so SQES is 0x76, indicating that it supports the larger
entry size but not that it mandates it.

However, we configure CC:IOSQES with 6 and the HW fails unless we have
the 128 bytes entry size.

So the HW is bogus, but we can probably sort that by doing a better job
at fixing up SQES in the identify on the Apple HW, and then actually
using it for the SQ.

I checked and CC is 0x00460001 so it takes our write of "6" fine. I
think they just ignore the value.

How do you want to proceed here ? Should I go all the way at attempting
to honor sqes "mandatory" size field (and quirk *that*) or just I go
the simpler way and stick to shift 6 unless Apple ?

If I go the complicated path, should I do the same with cq size
(knowing that no known HW has a non-4 mandatory size there and we don't
know of a HW bug... yet).

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
