Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D40183380
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 15:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeXf3MwnXzrNpKrbbwQWgNanbGkMxmbs05WOymLwLV4=; b=HEQW5V738vAeaE
	fYxyzRyD7Qeuev20FzS30s3d31bEMevuc7FcCvMs4SnEjSL9diardXYlKG8lpvwkllKz9bfOgKgt8
	KDSRoxS2dDquvp44aQOx4gNMINGiS1zPAsPhoOfcaJ5ddWDhpi+hjkn9kslxJcyszGzmDp7lQfLSS
	gog6vd2nQzXxzBaLdhVulv2niYp8Zq4Zd6uTTU9IDFksvTLz7ajGaxBekROYvToxu4nGzMtCTmCcZ
	+7A1uZ+AfRuQ3x2TbCqI1GPSCh2gI2xeKQ/pSmsB5m2q/nP+zcnt/8wFl0Cn3dT/nc2D9lCRs77NJ
	eQIjkW1An6+aEqWz9oSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCP3t-0000T8-P8; Thu, 12 Mar 2020 14:43:49 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCP3o-0000Rw-Vz
 for linux-nvme@lists.infradead.org; Thu, 12 Mar 2020 14:43:46 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 07:43:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; d="scan'208";a="246391848"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga006.jf.intel.com with ESMTP; 12 Mar 2020 07:43:38 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jCP3k-0090m7-Jt; Thu, 12 Mar 2020 16:43:40 +0200
Date: Thu, 12 Mar 2020 16:43:40 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v1] asm-generic: Provide generic
 {get,put}_unaligned_{l,b}e24()
Message-ID: <20200312144340.GV1922688@smile.fi.intel.com>
References: <20200312113941.81162-1-andriy.shevchenko@linux.intel.com>
 <20200312140542.GA17152@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312140542.GA17152@lst.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_074345_079910_562A675D 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Arnd Bergmann <arnd@arndb.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Keith Busch <kbusch@kernel.org>, linux-scsi@vger.kernel.org,
 bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 03:05:42PM +0100, Christoph Hellwig wrote:
> On Thu, Mar 12, 2020 at 01:39:41PM +0200, Andy Shevchenko wrote:
> > There are users in kernel that duplicate {get,put}_unaligned_{l,b}e24()
> > implementation. Provide generic helpers once for all.
> 
> I have a vague memory of Bart sending a patch like this a while ago,
> adding him to verify my theory.

Thanks!

> Also is there any good to have this in asm-generic/ vs linux/?

For now on it is least invasive. asm-generic/unaligned is a cross point for all
unaligned accessor helpers, since we here do byteshift approach for all
possible variants, I don't see any other header suitable. Or are you talking
about something like linux/unaligned/24bit.h -> #include <...> here?

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
