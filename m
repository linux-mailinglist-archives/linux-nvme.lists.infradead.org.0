Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19175BC3
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 01:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQs8luqrCA25Q8cI0P5d8J84g7Z5YCvbm3ddXTPWGgE=; b=fhz2TDYoxJCk9+
	P3SfHmCXN5hI6c7dKFn3FyrOadG0o+uxr0aSCha3KGU3cHz/u5prMdN0jaM9evaHedkyIAIfuh9aA
	7noLpakcu1FJzTxNGwTL77McDafL/QB+2K+B9qh60xkXjVgs1Ivy8X03xYmcx6uP4JkztxFLhbk1b
	2eRILf+FI3g1u0ENGu34/IYiQkR5xVp2MHVtl96Zg1lMdia/Oe8mqT+FNirU8Wqlz8AdwQrdU4bed
	QmbXO/5MjMa6JfOMebILqhz7J8m1J1d311kMFn6Pvg/xGuLzAcYBYMBgutB/32XrUEGC2MBs3LguH
	OzIGHJGFWpGDzeUCONRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqnc8-0007Uc-8j; Thu, 25 Jul 2019 23:57:36 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqnbz-0007MO-B6
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 23:57:28 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hqnZe-0004a0-QJ; Thu, 25 Jul 2019 23:55:02 +0000
Date: Fri, 26 Jul 2019 00:55:02 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725235502.GJ1131@ZenIV.linux.org.uk>
References: <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
 <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_165727_386442_E24B732B 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
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
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 01:24:22PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 1:11 p.m., Matthew Wilcox wrote:
> > On Thu, Jul 25, 2019 at 12:05:29PM -0700, Sagi Grimberg wrote:
> >>
> >>>>> NVMe-OF is configured using configfs. The target is specified by the
> >>>>> user writing a path to a configfs attribute. This is the way it works
> >>>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
> >>>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
> >>>>
> >>>> Why isn't a fd being passed in there instead of a random string?
> >>>
> >>> I suppose we could echo a string of the file descriptor number there,
> >>> and look up the fd in the process' file descriptor table ...
> >>
> >> Assuming that there is a open handle somewhere out there...
> 
> Yes, that would be a step backwards from an interface. The user would
> then need a special process to open the fd and pass it through configfs.
> They couldn't just do it with basic bash commands.

First of all, they can, but... WTF not have filp_open() done right there?
Yes, by name.  With permission checks done.  And pick your object from the
sodding struct file you'll get.

What's the problem?  Why do you need cdev lookups, etc., when you are
dealing with files under your full control?  Just open them and use
->private_data or whatever you set in ->open() to access the damn thing.
All there is to it...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
