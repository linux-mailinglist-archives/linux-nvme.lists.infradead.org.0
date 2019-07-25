Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D4A756DF
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B07T3ldXq3CrEfARokVOWQAMdvej+4pezaGS7QXr8lM=; b=pMLL9kMROSEb/v
	FznIcbeiNVrDNb+GSPiTcijNLhgHicTq4DW7rCLfOc2RMpljgLwmysVInbSU/BE+0yxC2b6Cl8o7G
	gClh4B6Bb+xwN0SZnvX7y3VgIqjWQYGAYOG+LFJ68iOo3axaZDKxdqAdmHIxzCn3PD1i3Id2u7cBy
	LAVjZoprMsg0GlaoIbr3pN0d7iD9Z0ff+grac2dWlumxbfoloOymcTE6Q78u/SrvgEzbgq3tQbmLN
	FX4bAaOHSgugFjvpX4Z+16FwL6V+MfCldBpqt69sC8VeyeNgQgTGwFoPcq5lG9DJ5FyDePqONDqfR
	O3seW/JXMR+m3ElFI4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiSO-00075G-Kf; Thu, 25 Jul 2019 18:27:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiSG-00074v-38
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:27:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11B1E21734;
 Thu, 25 Jul 2019 18:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564079223;
 bh=9oxP8U7mgBf002tZ4PZF1DTXox9G1gTALMrim3Fxlzs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZFiFUxV/mTzC0oYE/9gO+4Kzsb/cAklpqkUhHQk/LwGLxSlItD8NE0NBPPS7Ns0w4
 3ziwO1uqTtc1FkaqiR6f6sxhrnI5VA57r/bWofYojvWM9sxJoi7U4ssXrERo0HvAI2
 qRUSkN4RRXttJU3Jv5n6moYPaH5huZ+n2lotiQE4=
Date: Thu, 25 Jul 2019 20:27:01 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725182701.GA11547@kroah.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_112704_157017_31B3BF94 
X-CRM114-Status: GOOD (  15.79  )
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 12:14:33PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-25 12:08 p.m., Greg Kroah-Hartman wrote:
> > On Thu, Jul 25, 2019 at 11:53:20AM -0600, Logan Gunthorpe wrote:
> >>
> >>
> >> On 2019-07-25 11:40 a.m., Greg Kroah-Hartman wrote:
> >>> On Thu, Jul 25, 2019 at 11:23:21AM -0600, Logan Gunthorpe wrote:
> >>>> cdev_get_by_path() attempts to retrieve a struct cdev from
> >>>> a path name. It is analagous to blkdev_get_by_path().
> >>>>
> >>>> This will be necessary to create a nvme_ctrl_get_by_path()to
> >>>> support NVMe-OF passthru.
> >>>
> >>> Ick, why?  Why would a cdev have a "pathname"?
> >>
> >> So we can go from "/dev/nvme0" (which points to a char device) to its
> >> struct cdev and eventually it's struct nvme_ctrl. Doing it this way also
> >> allows supporting symlinks that might be created by udev rules.
> > 
> > Why do you have a "string" within the kernel and are not using the
> > normal open() call from userspace on the character device node on the
> > filesystem in your namespace/mount/whatever?
> 
> NVMe-OF is configured using configfs. The target is specified by the
> user writing a path to a configfs attribute. This is the way it works
> today but with blkdev_get_by_path()[1]. For the passthru code, we need
> to get a nvme_ctrl instead of a block_device, but the principal is the same.

Why isn't a fd being passed in there instead of a random string?

Seems odd, but oh well, that ship sailed a long time ago for block
devices I guess.

So what do you actually _do_ with that char device once you have it?

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
