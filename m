Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AD815BB06
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 09:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BXtk85OpScKuRzP9La6RnSPTh/r9MCVilyPiyAUSTE=; b=Xayv+rX6OUCOKL
	1Z+ALR740iYTEiTVhJW4M6kDTPbmzm6JPD8ttF9ieO/o1qBciRK7wWCD68zxOn+aiZUWP1k5HNpyS
	xEkL7QccWmPsWrrzz2JtcMaXBwFnteZBcPYQLnDF1yEbi2DlWu6QjTsUnQKrY8qF9VJ38ib6MIJd+
	6zI67Rm48vJF0xjagXeAfWlBvwE1w1sE9+Wfn4zg0oUsDkzVR8IjlGPI4kdLcrF6BwDZifmNKLc4J
	dSuOorkXTMzVtguH2xQebfTcHDMu7w7bw3qFy3v7ZEG7WYJIFZrIxCcCDfuO4YIfBL12AMTC6gAy1
	Zaq5iw1o/C7krxURCK3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AEP-0003h4-St; Thu, 13 Feb 2020 08:52:21 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AEL-0003gj-CD
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 08:52:18 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 00:52:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="257106175"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 13 Feb 2020 00:52:14 -0800
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1j2AEJ-0015nW-Kd; Thu, 13 Feb 2020 10:52:15 +0200
Date: Thu, 13 Feb 2020 10:52:15 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH v1 2/2] nvme-pci: Convert to PCI_VDEVICE() macro for
 Apple devices
Message-ID: <20200213085215.GX10400@smile.fi.intel.com>
References: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
 <20200212103220.80680-2-andriy.shevchenko@linux.intel.com>
 <20200212173901.GB5708@lst.de>
 <20200212203418.GW10400@smile.fi.intel.com>
 <20200212204000.GA6343@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212204000.GA6343@redsun51.ssa.fujisawa.hgst.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_005217_426089_BD83F87D 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

On Thu, Feb 13, 2020 at 05:40:00AM +0900, Keith Busch wrote:
> On Wed, Feb 12, 2020 at 10:34:18PM +0200, Andy Shevchenko wrote:
> > On Wed, Feb 12, 2020 at 06:39:01PM +0100, Christoph Hellwig wrote:
> > > On Wed, Feb 12, 2020 at 12:32:19PM +0200, Andy Shevchenko wrote:
> > > > Like for Intel devices use PCI_VDEVICE() macro to describe
> > > > Apple devices.
> > > 
> > > This actually makes the code longer
> > 
> > I didn't get this. How? The code is for sure shorter.
> 
> What metric are we using? The diff stat says longer.

I actually read *the code*. Blank lines and comments are being added for better
grouping.

Since you cut off the patch itself I can't simple point out what exactly has
been done.

>   drivers/nvme/host/pci.c | 15 +++++++++------
>   1 file changed, 9 insertions(+), 6 deletions(-)

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
