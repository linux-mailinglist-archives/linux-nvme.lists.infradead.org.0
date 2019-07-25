Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6D0756A7
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIH6VpEXg6ahX2eLvhyDhRtrHaId+U2M4BSyWCrH//0=; b=N3cWYqUqosSyLW
	dh+EFoZbZwFgX8lFhUA6+fEDCtSyaCpvGhGFPtulkYMwIDRojD5pkUOB5tAkhPJ9lklYRg1aXqvzd
	wJkZ0cPQ56n+lX8VsvzlMQqSTaR5uz+qwxAEGzOA1tGOC+AjF8cet3EpDW8Vm90mh6KKMwMksBvP3
	RhSpH3IZ+QskRjSjqz5L2DjTLcfUoegwBBgYJCrtEqmaA/s6dKxEqimEFRVS6M0ESbrg+3X78X8aX
	yBKLt5FuXYumvDXiHXj7G7P5T2xptvq5nk5T1WWuTfx/IsDqOYuCbRepxgBZlO7vPXId9jaIeGWyI
	cFdBE9+7bQ2fgaVReMRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiGq-00028k-57; Thu, 25 Jul 2019 18:15:16 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiGc-0001Zi-LJ
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:15:04 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqiGB-0002Q2-AE; Thu, 25 Jul 2019 12:14:36 -0600
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
Date: Thu, 25 Jul 2019 12:14:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725180816.GA32305@kroah.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: viro@zeniv.linux.org.uk, sbates@raithlin.com,
 maxg@mellanox.com, Chaitanya.Kulkarni@wdc.com, axboe@fb.com, kbusch@kernel.org,
 sagi@grimberg.me, hch@lst.de, linux-fsdevel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_111503_037790_9767C4CB 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 2019-07-25 12:08 p.m., Greg Kroah-Hartman wrote:
> On Thu, Jul 25, 2019 at 11:53:20AM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-07-25 11:40 a.m., Greg Kroah-Hartman wrote:
>>> On Thu, Jul 25, 2019 at 11:23:21AM -0600, Logan Gunthorpe wrote:
>>>> cdev_get_by_path() attempts to retrieve a struct cdev from
>>>> a path name. It is analagous to blkdev_get_by_path().
>>>>
>>>> This will be necessary to create a nvme_ctrl_get_by_path()to
>>>> support NVMe-OF passthru.
>>>
>>> Ick, why?  Why would a cdev have a "pathname"?
>>
>> So we can go from "/dev/nvme0" (which points to a char device) to its
>> struct cdev and eventually it's struct nvme_ctrl. Doing it this way also
>> allows supporting symlinks that might be created by udev rules.
> 
> Why do you have a "string" within the kernel and are not using the
> normal open() call from userspace on the character device node on the
> filesystem in your namespace/mount/whatever?

NVMe-OF is configured using configfs. The target is specified by the
user writing a path to a configfs attribute. This is the way it works
today but with blkdev_get_by_path()[1]. For the passthru code, we need
to get a nvme_ctrl instead of a block_device, but the principal is the same.

> Where is this random string coming from?  

configfs

> Why is this so special that no
> one else has ever needed it?

People have needed the same functionality for block devices and
blkdev_get_by_path() has multiple users (iscsi, drbd, nvme-of, etc)
which are doing similar things. Nobody has needed to do the same with a
chardev until we wanted the NVMe-of to support targeting an NVMe
controller which is represented in userspace by a char device.

Logan


[1]
https://elixir.bootlin.com/linux/latest/source/drivers/nvme/target/io-cmd-bdev.c#L15

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
