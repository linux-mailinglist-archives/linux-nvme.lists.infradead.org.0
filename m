Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AE5756A0
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyK/8NA6UnWZsvGCeBxV0I3Xg0MazwE3gsD5vl9CaAA=; b=Qn5YMxsajszyiN
	tAnFcY1fhDAJgJlpaX3j8nVdbn45cOIkMCn6X9k7xV6ZpBa9L+Y+KGoT5noMrwETkOQP/skwttD5X
	b0ZNai9oMNL/d9cQORWB8ydgOu+4Fzq4FVZxz7lFoS179YFXmB/eqoQfBN5YgzWaYQlTzA91Z1+N8
	KtcvhULdiQDjtEPcdi59dL8P4OCxwep/jGjpB6eBa4jLYE/LD/N9DPsG+6TY+OIIh0yyRRnh05su0
	oAkKXkclENx5tnI6BYLW42zBSLgC26SeX4AjFx+cG2Sas/6xHCD8icQ5faSzNm8vyisSyueznyOqK
	ZNCL+aL8TRw8g/q+KtRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiCb-00016B-Gm; Thu, 25 Jul 2019 18:10:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiCS-00015r-7H
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:10:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B9FB218F0;
 Thu, 25 Jul 2019 18:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564078243;
 bh=x+ORaQJeKgS3j+rdkVUxb78f2fEXbMS5Q2oS/qDLRjw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k2WeOieaFmoBq89MT9udtoPLN34+nsgmch91w02bA4td9R4/cEQgRmb7lZhWMKW1A
 l5E5M61NIfcaDSZmsX37Wv5yAHX5Z7sMH2djshb0kxmJJL84DUzaGilW0Pbc17ey6w
 pJsVMG1J1e8yqgwBOfIg8z9YWW7vfgCEpiGsOkWQ=
Date: Thu, 25 Jul 2019 20:10:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190725181041.GB32305@kroah.com>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_111044_286939_7B7D2415 
X-CRM114-Status: GOOD (  21.53  )
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
> 
> This is very similar to blkdev_get_by_path() that lets regular NVMe-OF
> obtain the struct block_device from a path.
> 
> I didn't think this would be all that controversial.
> 
> > What is "NVMe-OF passthru"?  Why does a char device node have anything
> > to do with NVMe?
> 
> NVME-OF passthru is support for NVME over fabrics to directly target a
> regular NVMe controller and thus export an entire NVMe device to a
> remote system. We need to be able to tell the kernel which controller to
> use and IMO a path to the device file is the best way as it allows us to
> support symlinks created by udev.

open() in userspace handles symlinks just fine, what crazy interface
passes a string to try to find a char device node that is not open()?

And why do you need a char device at all anyway?  Is this just the
"normal" nvme controller's character device node?

> > We have way too many ways to abuse cdevs today, my long-term-wish has
> > always been to clean this interface up to make it more sane and unified,
> > and get rid of the "outliers" (all created at the time for a good
> > reason, that's not the problem.)  But to add "just one more" seems
> > really odd to me.
> 
> Well it doesn't seem all that much like an outlier to me.

Everyone is special, just like everyone else :)

Seriously, as no one else has ever needed this, you are an outlier.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
