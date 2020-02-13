Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB6B15C3EC
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 16:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyMKOOU7qKkobOhjHKHsvcEkNqt++btNaULfhM+S180=; b=F4uQlbAqC3wta5
	kD41T/Yr1c/2PxU5U9upQX4iDbbiV+lRGQGzbJeeVbszkQ/RjQEipAHZkjVqRUuNTnXDbwzhi2MN5
	DPgY/UZAbF5r/x8c6yjJSwep69yvKqPc8zY/Bfw778vJPahWb4W+WlDVp7D61oJUGykzkUddkfjcu
	JZEfmxTCV0lu8wNO2GmVLE4kJAfSFTgHW3TeFBf13w6G5L1WinvfojLIqM86FccrbLFUNILjbQw+V
	7dkiJM08qwjuM3C5NZI6bsumkv6AZtBFpdoNquwzyANzETyTVKTlvt3T7Kd/x9WyawWLqEvEuX0+B
	o4sRBwq3HHV6T4/tBk3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Glt-0000Jq-8j; Thu, 13 Feb 2020 15:51:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Gln-0000JM-N5
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 15:51:16 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C9DB2073C;
 Thu, 13 Feb 2020 15:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581609074;
 bh=hPbEdIOgMXZRnPwtjWjoyg/6z4TPyZVqJ1mvmuDEsnk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OaiiyRaGNXOKKjVlCnjzhVrT9esLEpzGH5oWw8VXiqdpcQ/QUZoWbJM3Q+qXOFp4B
 reveBUtXw46zbDquKU2YYN57cWGAMiU072smBxnCgqjZnRrqsUDofM3Vqu8wr/l4Rj
 NpDu1DOegg64/HVGbO/3Fr6TOJNw7YTgGuKzBnZY=
Date: Fri, 14 Feb 2020 00:51:07 +0900
From: Keith Busch <kbusch@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 2/2] nvme-pci: Convert to PCI_VDEVICE() macro for
 Apple devices
Message-ID: <20200213155107.GA7634@redsun51.ssa.fujisawa.hgst.com>
References: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
 <20200212103220.80680-2-andriy.shevchenko@linux.intel.com>
 <20200212173901.GB5708@lst.de>
 <20200212203418.GW10400@smile.fi.intel.com>
 <20200212204000.GA6343@redsun51.ssa.fujisawa.hgst.com>
 <20200213085215.GX10400@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213085215.GX10400@smile.fi.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075115_776120_FB059653 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Leif Liddy <leif.liddy@gmail.com>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 10:52:15AM +0200, Andy Shevchenko wrote:
> On Thu, Feb 13, 2020 at 05:40:00AM +0900, Keith Busch wrote:
> > On Wed, Feb 12, 2020 at 10:34:18PM +0200, Andy Shevchenko wrote:
> > > On Wed, Feb 12, 2020 at 06:39:01PM +0100, Christoph Hellwig wrote:
> > > > On Wed, Feb 12, 2020 at 12:32:19PM +0200, Andy Shevchenko wrote:
> > > > > Like for Intel devices use PCI_VDEVICE() macro to describe
> > > > > Apple devices.
> > > > 
> > > > This actually makes the code longer
> > > 
> > > I didn't get this. How? The code is for sure shorter.
> > 
> > What metric are we using? The diff stat says longer.
> 
> I actually read *the code*. Blank lines and comments are being added for better
> grouping.
> 
> Since you cut off the patch itself I can't simple point out what exactly has
> been done.

Well, including it here would be irrelevant to "the code is for sure
shorter" when we can empirically measure *that* point. I'm not the one
who made this about long vs short in the first place, but if you want
to switch the discussion to the content, then great. I personally value
clarity over brevity anyway.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
