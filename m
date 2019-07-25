Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72897758E7
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 22:34:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qas51fc/d0kQ9vWdeRJOmmcffjkue4J7ZYjaOJOmuP4=; b=OYlmyFbje//P7q
	Nk3uzRmtTXHtmTMIIF4IR8nBbKzwdt4KIRtJne4Gz+BaKYCh0ZsG2Wru+HA7z0GtSdlqFyPlSxZfJ
	swh0gSCwkyxdQZpOsmDsNKgcIvc5yGMrmna2VQ14DnEF04YSfNlaMHdF6v/hvcwkVPO41fkmo/qSV
	a2XPf30wrJ5k4xqEg+bt2xQS/aJtI2oL1Sw/ZL0JQH4vYzU56IbOrvG2ya/iRJBsGbF0aVLj32gNB
	8CAQeLEHR7dhiDwizn0XEOOZ/Atcs94j//Fw5jJ9TShVEwrHfXW0KNhVqfHlDvFCEUlorKThQR5+E
	+MzxG/eXkZn17ZoXISEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkRQ-0005Xf-A1; Thu, 25 Jul 2019 20:34:20 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkRJ-0005X1-6k
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 20:34:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 13:34:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="345618092"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2019 13:34:11 -0700
Date: Thu, 25 Jul 2019 14:31:18 -0600
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 04/16] nvme-core: introduce nvme_get_by_path()
Message-ID: <20190725203118.GB7317@localhost.localdomain>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-5-logang@deltatee.com>
 <20190725175023.GA30641@bombadil.infradead.org>
 <da58f91e-6cfa-02e0-dd89-3cfa23764a0e@deltatee.com>
 <20190725195835.GA7317@localhost.localdomain>
 <5dd6a41d-21c4-cf8d-a81d-271549de6763@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5dd6a41d-21c4-cf8d-a81d-271549de6763@deltatee.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_133413_260805_BE99D524 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 02:28:28PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 1:58 p.m., Keith Busch wrote:
> > On Thu, Jul 25, 2019 at 11:54:18AM -0600, Logan Gunthorpe wrote:
> >>
> >>
> >> On 2019-07-25 11:50 a.m., Matthew Wilcox wrote:
> >>> On Thu, Jul 25, 2019 at 11:23:23AM -0600, Logan Gunthorpe wrote:
> >>>> nvme_get_by_path() is analagous to blkdev_get_by_path() except it
> >>>> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
> >>>>
> >>>> The purpose of this function is to support NVMe-OF target passthru.
> >>>
> >>> I can't find anywhere that you use this in this patchset.
> >>>
> >>
> >> Oh sorry, the commit message is out of date the function was actually
> >> called nvme_ctrl_get_by_path() and it's used in Patch 10.
> > 
> > Instead of by path, could we have configfs take something else, like
> > the unique controller instance or serial number? I know that's different
> > than how we handle blocks and files, but that way nvme core can lookup
> > the cooresponding controller without adding new cdev dependencies.
> 
> Well the previous version of the patchset just used the ctrl name
> ("nvme1") and looped through all the controllers to find a match. But
> this sucks because of the inconsistency and the fact that the name can
> change if hardware changes and the number changes. Allowing the user to
> make use of standard udev rules seems important to me.

Should we then create a new udev rule for persistent controller
names? /dev/nvme1 may not be the same controller each time you refer
to it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
