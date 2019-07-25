Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB26775664
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+52C9/U3qoQqUucWOlqji1FuoKaEkrBCGuN7Y85uPCA=; b=SkymeI2zHNulH7
	9BEVKG/mNHr9pxmgiAQfxJ61euAHkGfynxT7Fi5r18e7AZVGmTnaXgqPKDRXNrKQPADzGFg9DhUla
	n3sRGFkbV5e2/ed/BHGUPCTdw4czBulvCupL01bCTg+14OPMmUVku/uzJkYT5GXaFKukqnNkGpNOb
	orcI8JOnIzZk4HkHVwOcfF/zDE5C3RVravviYRcM4l+1VgJceDmh/eFPUa5PBqbbEEnu8dib86Se8
	yFIywZ7HNq/xu6TtVbcMOI2blagCV5oZt1vvKXyuUhJ1uXhu2205rY/8gBl9/WaLb5LbY6+L0i93S
	p1R3CrGTuhRobk71RYPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqi0o-0004XK-Cp; Thu, 25 Jul 2019 17:58:42 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hqi0g-0004X8-K9; Thu, 25 Jul 2019 17:58:34 +0000
Date: Thu, 25 Jul 2019 10:58:34 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725175834.GB30641@bombadil.infradead.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 11:53:20AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 11:40 a.m., Greg Kroah-Hartman wrote:
> > On Thu, Jul 25, 2019 at 11:23:21AM -0600, Logan Gunthorpe wrote:
> >> cdev_get_by_path() attempts to retrieve a struct cdev from
> >> a path name. It is analagous to blkdev_get_by_path().
> >>
> >> This will be necessary to create a nvme_ctrl_get_by_path()to
> >> support NVMe-OF passthru.
> > 
> > Ick, why?  Why would a cdev have a "pathname"?
> 
> So we can go from "/dev/nvme0" (which points to a char device) to its
> struct cdev and eventually it's struct nvme_ctrl. Doing it this way also
> allows supporting symlinks that might be created by udev rules.

But you're not really trying to go from a string to a chardev.  You're
trying to go from a nvmet_subsys to a chardev.  Isn't there a better
way to link the two somewhere else?

(I must confess that once I would have known the answer to this, but
the NVMe subsystem has grown ridiculously complex and I can no longer
fit it in my head)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
