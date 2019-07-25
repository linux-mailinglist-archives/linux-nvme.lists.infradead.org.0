Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8186F75692
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SeoX07LA9zCo5V+dUi/Uvxiry88x4SbuxhXZRmhwqZw=; b=JbbHyAdSI5RFh0
	+tcWjahEjEGjTZMmb/sT0umD/yLlE3P4BKt6IoMJJiJnN/w+yEXFc1Izn/nvK7MKb2hn+1s1ix5OB
	ptW8Eco1Q091N2KbMQqr5tZ8EUIS4rGim7JIP+MufKRFAJU2NDOfLp8mXhorkUZkGH0O3nU5/5Y26
	qGe02syuHWjRC1bgj/wuK4ZjPUdcVvhYg1OKg+iT2V98e0bTG1rTPI/cO7pq4abQKsHxa0xfuiy6M
	gqkZlMEPJ3Ay1q2GG96oAbwT2R8cEtuCipT9qU3dEyT1bPNcAkIabnlLwoG/TLazMdS0vww6+J2Vi
	kM5mf9s+7iNffMfxN6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiAG-0007hq-H1; Thu, 25 Jul 2019 18:08:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiA7-0007hO-AY
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:08:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BE45218F0;
 Thu, 25 Jul 2019 18:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564078098;
 bh=KiiFegUHU5GPihsnRiipJWlk+KirWCXeCrKP7PJ9rpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oA295ozAwbkkLgAao5fN+JRSaJrf6L0LtcY2aIsVs0zCTwQM8QLvcoR8WRWwy1so+
 mwzUu3WkwpFOFBjZRDEAf6HHDVMsAeyHgloYzHJbK820PXzKfUm1RJHEcE0XsUrf/z
 f9CpVOxFp+taewZCX44SLRKoCnk4t3R7S7hi27bY=
Date: Thu, 25 Jul 2019 20:08:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725180816.GA32305@kroah.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_110819_381870_F87F1CF4 
X-CRM114-Status: GOOD (  12.03  )
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

Why do you have a "string" within the kernel and are not using the
normal open() call from userspace on the character device node on the
filesystem in your namespace/mount/whatever?

Where is this random string coming from?  Why is this so special that no
one else has ever needed it?

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
