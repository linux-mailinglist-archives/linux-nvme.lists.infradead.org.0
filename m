Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E674757F6
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGxcjbMRlOyZ1+uCPvNWwXEqUrBo0tPHScVG+pd9WDE=; b=SFHCNleegCZw7Z
	BCM/OwkoqWGBeWFv/YmDBat40/7toBsP9p4ygDpDZ36/6cuYHcve1kLh+Ao4foH7kFTmHwrKTDe/P
	qWAQn9St3Ty7pnohi8pPf48fwiVNpVTtrkUyKWJrcED8Unbml4XkOxxpV9GuUyszsTWtG5LbdD9oA
	iuPxGfiaPmBRBU7Qaa50x0RfnQavald1aCvuZUGyXk5Z0aqxcsEjwoP+rhuWH2MIY+qKgImQ2PcUH
	Hpmhv6KsTqdHrTVFoES3GrH3bG3J7cog4JBHibd07uEsxUTgFbpyInl5tYkRuyaKACShGZE61k33G
	LMMKjza+oWdW0B0OChgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjVS-0005ep-N6; Thu, 25 Jul 2019 19:34:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjVK-0005e8-Fj
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:34:19 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1FDC218EA;
 Thu, 25 Jul 2019 19:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564083257;
 bh=XmYuwxHf0VVKO+yWC7+GNQPhvgKyB5pGg9W5noBtV5A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d3PTiS9N52mYF5DGcUuY4yOnuzZS4zliBNIktBb8T/57DhVRGzhaH7j5HmmWgnryx
 C9l2UR21v5CIglf+hjNiv28E1LxVTEO0pmbHVRsvvVILqePuJLvSGSQ2VGdYSU4UX3
 7o7ICHpuPnOeHJyd0e42GVoe16EdvBsM6kt32IU8=
Date: Thu, 25 Jul 2019 21:34:15 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725193415.GA12117@kroah.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
 <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123418_549005_29390E5E 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 12:02:30PM -0700, Sagi Grimberg wrote:
> 
> > > > > Why do you have a "string" within the kernel and are not using the
> > > > > normal open() call from userspace on the character device node on the
> > > > > filesystem in your namespace/mount/whatever?
> > > > 
> > > > NVMe-OF is configured using configfs. The target is specified by the
> > > > user writing a path to a configfs attribute. This is the way it works
> > > > today but with blkdev_get_by_path()[1]. For the passthru code, we need
> > > > to get a nvme_ctrl instead of a block_device, but the principal is the same.
> > > 
> > > Why isn't a fd being passed in there instead of a random string?
> > 
> > I wouldn't know the answer to this but I assume because once we decided
> > to use configfs, there was no way for the user to pass the kernel an fd.
> 
> That's definitely not changing. But this is not different than how we
> use the block device or file configuration, this just happen to need the
> nvme controller chardev now to issue I/O.

So, as was kind of alluded to in another part of the thread, what are
you doing about permissions?  It seems that any user/group permissions
are out the window when you have the kernel itself do the opening of the
char device, right?  Why is that ok?  You can pass it _any_ character
device node and away it goes?  What if you give it a "wrong" one?  Char
devices are very different from block devices this way.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
