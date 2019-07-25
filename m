Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EBB7579E
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNj1jSjMTMK6ZrTwZmOAJW5fWA5agwUrev8TKVa4zgA=; b=jElWwfwNzsNZnR
	eJrSgYbHBiuilg48LL15V4oM5ravkTcpVNRQgDBelsTdHGlmResUgK1XFFAMK+KnwYz5ebWdVVKvO
	U3MEuVoqnBajlCwnBzgi95r6LdK+1I4PSpx1MebFsqPW1UhqQokWmp5AgV/8qZsklE1/nJmRsjXON
	OCRruPoRfMEAucuuKXt2LpmC5xVjQcGqLHM21qEM2Xe7+Qj2zs28ZwFKIk7HTwLKhX7prGwAg3F5t
	0T6nkevoIiZ6UoS58mpODiagusVLwEOClQJEhpd95mpJLjTkDJfgCSm8jegPBBs4FhCK2MnZVirBg
	UrBLsRJ0CKwZu3yE47WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqj9K-0005Nr-4Q; Thu, 25 Jul 2019 19:11:34 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hqj9B-0005NS-Ma; Thu, 25 Jul 2019 19:11:25 +0000
Date: Thu, 25 Jul 2019 12:11:25 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725191124.GE30641@bombadil.infradead.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
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
Cc: linux-block@vger.kernel.org,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 12:05:29PM -0700, Sagi Grimberg wrote:
> 
> > > > NVMe-OF is configured using configfs. The target is specified by the
> > > > user writing a path to a configfs attribute. This is the way it works
> > > > today but with blkdev_get_by_path()[1]. For the passthru code, we need
> > > > to get a nvme_ctrl instead of a block_device, but the principal is the same.
> > > 
> > > Why isn't a fd being passed in there instead of a random string?
> > 
> > I suppose we could echo a string of the file descriptor number there,
> > and look up the fd in the process' file descriptor table ...
> 
> Assuming that there is a open handle somewhere out there...

Well, that's how we'd know that the application echoing /dev/nvme3 into
configfs actually has permission to access /dev/nvme3.  Think about
containers, for example.  It's not exactly safe to mount configfs in a
non-root container since it can access any NVMe device in the system,
not just ones which it's been given permission to access.  Right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
