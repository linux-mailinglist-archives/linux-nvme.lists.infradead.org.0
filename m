Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0BE756AD
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjuqHa5dUDu97Idx634zsgFyX2zIUN1wtyU0BGWYYs0=; b=ePvPBrkCKGuVSG
	bBxP1dQ/yltCt6tcCqGvJpsWHaj+/w3uhrT+/LsjWmW95B7XAysGl4dsMx2ODZXyZ8BJoA4pWzAjz
	DjazelmoMKf3QdO7CMR5OuX5nmtGbga0XWNiItr0QMgAGvAejVcu/tVlZDPvzxELOF4WTE1iatYYK
	Z5bJFVzMQmBN3YqDHjkxZ9uLnzT4GEttZ3+Zqns/6/E18BZ5BAyX9sBF1n6oE7+cknVNLCBv6JlKG
	uX4Y/3wIPAWTlkSpY/drnTT0fpZmZME7o91nxwhudLgvTaTzHFJQSbLLay6Swq/coK24CgH1D1KuQ
	PuJF7S12ON2IceynXhvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiI2-00035L-Ps; Thu, 25 Jul 2019 18:16:30 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiHs-000352-Nv
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:16:22 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqiHh-0002Rr-E3; Thu, 25 Jul 2019 12:16:10 -0600
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725181041.GB32305@kroah.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <824d6fd3-56ff-7b69-9e0a-52198a2f4184@deltatee.com>
Date: Thu, 25 Jul 2019 12:16:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725181041.GB32305@kroah.com>
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
X-CRM114-CacheID: sfid-20190725_111621_104567_1902FC78 
X-CRM114-Status: GOOD (  15.89  )
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



On 2019-07-25 12:10 p.m., Greg Kroah-Hartman wrote:
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
>>
>> This is very similar to blkdev_get_by_path() that lets regular NVMe-OF
>> obtain the struct block_device from a path.
>>
>> I didn't think this would be all that controversial.
>>
>>> What is "NVMe-OF passthru"?  Why does a char device node have anything
>>> to do with NVMe?
>>
>> NVME-OF passthru is support for NVME over fabrics to directly target a
>> regular NVMe controller and thus export an entire NVMe device to a
>> remote system. We need to be able to tell the kernel which controller to
>> use and IMO a path to the device file is the best way as it allows us to
>> support symlinks created by udev.
> 
> open() in userspace handles symlinks just fine, what crazy interface
> passes a string to try to find a char device node that is not open()?

configfs. Which I'm stuck with seeing nvme-of already uses that for
configuration and I don't think that's going to change...

> And why do you need a char device at all anyway?  Is this just the
> "normal" nvme controller's character device node?

Yes.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
