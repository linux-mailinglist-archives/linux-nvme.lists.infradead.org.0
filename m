Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4B66864F
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 11:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IRdo8LKwgRGPFHCB7g9MAwY8oTSLL3REeVed7JRh+g=; b=tkDCNl6CkWTB+O
	YD+PcK9qZvxoYok/VepfvvZNI7Pt4NWGOsmokIn+c9TYjgf6NDoH31tS8W3Plqs60LhjaCQYPK2Fu
	s8TUC9W3fhaMl1GE7hogAAXFBKj2AdE70t+cN6g5nmBGyOG8SGySzfr1CiC6GbWnibWkdo6wtvhft
	H2BjRABiFeupA9lCSGoW6LV6OQoc+J4D8WYc/XI2UlPkfTIgNvM9S7Sq7VDkgLH8Yr+1SyhC/VWfN
	/Up0s5uh69pgrCAu43fhMg8GTk9zv/Br87JU1RxI/85o+AULrvlUy3bd1gy3+PT1ECCWcsmQwd9r8
	Mqd4VRqyg5fCgAhs4t5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmxHO-0002pw-MR; Mon, 15 Jul 2019 09:28:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmxHE-0002pc-Sz
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 09:28:10 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE24085376;
 Mon, 15 Jul 2019 09:28:07 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.62])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 09B10608CD;
 Mon, 15 Jul 2019 09:28:05 +0000 (UTC)
Message-ID: <4caeb954b2fa91445e02bac7ac9610ca886b4dd8.camel@redhat.com>
Subject: Re: [PATCH] nvme: Add support for Apple 2018+ models
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Christoph Hellwig
 <hch@lst.de>
Date: Mon, 15 Jul 2019 12:28:05 +0300
In-Reply-To: <25c3813ab1c2943658d7e79756803801b14a34db.camel@kernel.crashing.org>
References: <71b009057582cd9c82cff2b45bc1af846408bcf7.camel@kernel.crashing.org>
 <20190715081041.GB31791@lst.de>
 <c088cb27f99adbcc1f8faf8e86167903f11593b8.camel@kernel.crashing.org>
 <25c3813ab1c2943658d7e79756803801b14a34db.camel@kernel.crashing.org>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Mon, 15 Jul 2019 09:28:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_022808_973786_0EF8E242 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Mon, 2019-07-15 at 19:03 +1000, Benjamin Herrenschmidt wrote:
> On Mon, 2019-07-15 at 18:43 +1000, Benjamin Herrenschmidt wrote:
> > On Mon, 2019-07-15 at 10:10 +0200, Christoph Hellwig wrote:
> > > > +	/*
> > > > +	 * Apple 2018 and latter variant has a few issues
> > > > +	 */
> > > > +	NVME_QUIRK_APPLE_2018			= (1 << 10),
> > > 
> > > We try to have quirks for the actual issue, so this should be one quirk
> > > for the irq vectors issues, and another for the sq entry size.  Note that
> > > NVMe actually has the concept of an I/O queue entry size (IOSQES in the
> > > Cc register based on values reported in the SQES field in Identify
> > > Controller.  Do these controllers report anything interesting there?
> > 
> > Ah good to know, I'll dig.
> 
> Interesting... so SQES is 0x76, indicating that it supports the larger
> entry size but not that it mandates it.
> 
> However, we configure CC:IOSQES with 6 and the HW fails unless we have
> the 128 bytes entry size.
> 
> So the HW is bogus, but we can probably sort that by doing a better job
> at fixing up SQES in the identify on the Apple HW, and then actually
> using it for the SQ.
> 
> I checked and CC is 0x00460001 so it takes our write of "6" fine. I
> think they just ignore the value.
> 
> How do you want to proceed here ? Should I go all the way at attempting
> to honor sqes "mandatory" size field (and quirk *that*) or just I go
> the simpler way and stick to shift 6 unless Apple ?
> 
> If I go the complicated path, should I do the same with cq size
> (knowing that no known HW has a non-4 mandatory size there and we don't
> know of a HW bug... yet).
> 
> Cheers,
> Ben.
> 

To be honest, the spec explicitly states that minimum submission queue entry size is 64 
and minimum completion entry size should be is 16 bytes for NVM command set:

"Bits 3:0 define the required (i.e., minimum) Submission Queue Entry size when
using the NVM Command Set. This is the minimum entry size that may be used.
The value is in bytes and is reported as a power of two (2^n). The required value
shall be 6, corresponding to 64."

"Bits 3:0 define the required (i.e., minimum) Completion Queue entry size when using
the NVM Command Set. This is the minimum entry size that may be used. The value
is in bytes and is reported as a power of two (2^n). The required value shall be 4,
corresponding to 16."

Pages 136/137, NVME 1.3d.

In theory the spec allows for non NVM IO command set, and for which the sq/cq entry sizes can be of any size,
as indicated in SQES/CQES and set in CC.IOCQES/CC.IOSQES, but than most of the spec won't apply to it.


Also FYI, values in CC (IOCQES/IOSQES) are for I/O queues, which kind of implies that admin queue,
should always use the 64/16 bytes entries, although I haven't found any explicit mention of that.

Best regards,
	Maxim Levitsky



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
