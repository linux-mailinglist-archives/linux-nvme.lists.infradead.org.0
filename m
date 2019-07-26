Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8458775F85
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 09:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0cGzVY5Ir4rQZvilH6ik0wNXHFZx0Q1umE1jA7y/D4=; b=HyqdJd6xlWvnqS
	PbS8c3t/6I3dU6zwiEaqtkPWhnta0qerdPe8WeHzsHv0NmEe36gDEZjfe9mTNc0SAZersEeNR9/rP
	K6LFr8TPGPgsqtA36beM3smycquuP7Ffc9zMBzZ4OM10e3HgSEGl6s+Nk/k/rhj06qUZi/8o5rz21
	tNfHpopcdrsYvpcuCByZWjONupyI2cWeCzgYkb6DzNQcYIgCCJmkyz2A9rr0pK9LV87oWMP9jc9hL
	OP52A5uzb2nzvmcECvj3+PyIPqIeMUnMP4k3a7D+1PndhP3KwOLZxKvhtC2ZEyuoU0HxfrL5bYI8L
	VpLvVuQMPvSZs0sqgarg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquQb-0005E9-Tc; Fri, 26 Jul 2019 07:14:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquQK-0005DB-NT
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 07:13:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAE3D21852;
 Fri, 26 Jul 2019 07:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564125232;
 bh=VrTKOPYQ4HevC0cVrTz5SGKbFtEejWwaJ8pBbPkg/j0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=huB1ORI4N12VUC0fNW6uNLHOn5vLfWYsWaRC+/e3+uBS4MBhu+NXCvAz2Tj+aExM0
 cNbramMdyLsieqUEcwnT0gsWasve8Q33uTxStleFq9aiEtuV/RQT3XsYj9eePkyFpp
 ZqxmsodmlPazTR0Ka52GZ7RJRe8oFIg/+sBS0eWk=
Date: Fri, 26 Jul 2019 09:13:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
Message-ID: <20190726071349.GA16265@kroah.com>
References: <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <20190725190024.GD30641@bombadil.infradead.org>
 <27943e06-a503-162e-356b-abb9e106ab2e@grimberg.me>
 <20190725191124.GE30641@bombadil.infradead.org>
 <425dd2ac-333d-a8c4-ce49-870c8dadf436@deltatee.com>
 <20190725235502.GJ1131@ZenIV.linux.org.uk>
 <7f48a40c-6e0f-2545-a939-45fc10862dfd@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7f48a40c-6e0f-2545-a939-45fc10862dfd@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_001352_783647_E8174E42 
X-CRM114-Status: GOOD (  18.58  )
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 09:29:40PM -0700, Sagi Grimberg wrote:
> 
> > > > > > > > NVMe-OF is configured using configfs. The target is specified by the
> > > > > > > > user writing a path to a configfs attribute. This is the way it works
> > > > > > > > today but with blkdev_get_by_path()[1]. For the passthru code, we need
> > > > > > > > to get a nvme_ctrl instead of a block_device, but the principal is the same.
> > > > > > > 
> > > > > > > Why isn't a fd being passed in there instead of a random string?
> > > > > > 
> > > > > > I suppose we could echo a string of the file descriptor number there,
> > > > > > and look up the fd in the process' file descriptor table ...
> > > > > 
> > > > > Assuming that there is a open handle somewhere out there...
> > > 
> > > Yes, that would be a step backwards from an interface. The user would
> > > then need a special process to open the fd and pass it through configfs.
> > > They couldn't just do it with basic bash commands.
> > 
> > First of all, they can, but... WTF not have filp_open() done right there?
> > Yes, by name.  With permission checks done.  And pick your object from the
> > sodding struct file you'll get.
> > 
> > What's the problem?  Why do you need cdev lookups, etc., when you are
> > dealing with files under your full control?  Just open them and use
> > ->private_data or whatever you set in ->open() to access the damn thing.
> > All there is to it...
> Oh this is so much simpler. There is really no point in using anything
> else. Just need to remember to compare f->f_op to what we expect to make
> sure that it is indeed the same device class.

That is good, that solves the "/dev/random/" issue I was talking about
earlier as well.

Odds are you all can do the same for the blockdev interface as well.

thanks,

greg k-h

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
