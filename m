Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C3675824
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zPoAK8qEmRYXjeFbERkl/uyT7c7HPSkBFzX0jqJdL0=; b=K6mUaR9YOz8qUS
	yrAlMwnKTAr2zN6u0Wlt15lIr/CmA199c6mc/zadiCcFke0nNCbkkm9XCKkAxBrQLGZmya+fZYGyC
	xmarkx/sUczJvWjLfsR5XBD//a5yr0Zc7pWefbRBclkgC74BEkAFqjzqs/pc+KjkR8Cq5voWAGnE0
	4Jpgo4mvf+sUPj8AF3KhstfIdHGISxYbU9prv7TXOsTVdaR6KM8u1lbbsO65GpV85OMCn/y77luaN
	kjsmzaAVUpMHVohd5PAUOUJ1+2sfwI8S4OjXeLBRJ/PtkE9VSml5I7nTG2cNlFzlVYGil2qdlk0ZF
	eBYLiu9qhz1xJvndYU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjcP-0001BK-D2; Thu, 25 Jul 2019 19:41:37 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjcF-0001B1-Gj
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:41:29 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqjc6-0004BV-00; Thu, 25 Jul 2019 13:41:18 -0600
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sagi Grimberg <sagi@grimberg.me>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
 <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
 <20190725180816.GA32305@kroah.com>
 <da0eacb7-3738-ddf3-8c61-7ffc61aa41f4@deltatee.com>
 <20190725182701.GA11547@kroah.com>
 <a3262a7f-b78e-05ba-cda3-a7587946bd91@deltatee.com>
 <5951e0f5-cc90-f3de-0083-088fecfd43bb@grimberg.me>
 <20190725193415.GA12117@kroah.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <77a3e81d-2542-6782-0fc1-1d25bcc75598@deltatee.com>
Date: Thu, 25 Jul 2019 13:41:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725193415.GA12117@kroah.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: viro@zeniv.linux.org.uk, sbates@raithlin.com,
 maxg@mellanox.com, Chaitanya.Kulkarni@wdc.com, axboe@fb.com, kbusch@kernel.org,
 hch@lst.de, linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me,
 gregkh@linuxfoundation.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 02/16] chardev: introduce cdev_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_124127_881342_EE271722 
X-CRM114-Status: GOOD (  20.80  )
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
Cc: Jens Axboe <axboe@fb.com>, Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 1:34 p.m., Greg Kroah-Hartman wrote:
> On Thu, Jul 25, 2019 at 12:02:30PM -0700, Sagi Grimberg wrote:
>>
>>>>>> Why do you have a "string" within the kernel and are not using the
>>>>>> normal open() call from userspace on the character device node on the
>>>>>> filesystem in your namespace/mount/whatever?
>>>>>
>>>>> NVMe-OF is configured using configfs. The target is specified by the
>>>>> user writing a path to a configfs attribute. This is the way it works
>>>>> today but with blkdev_get_by_path()[1]. For the passthru code, we need
>>>>> to get a nvme_ctrl instead of a block_device, but the principal is the same.
>>>>
>>>> Why isn't a fd being passed in there instead of a random string?
>>>
>>> I wouldn't know the answer to this but I assume because once we decided
>>> to use configfs, there was no way for the user to pass the kernel an fd.
>>
>> That's definitely not changing. But this is not different than how we
>> use the block device or file configuration, this just happen to need the
>> nvme controller chardev now to issue I/O.
> 
> So, as was kind of alluded to in another part of the thread, what are
> you doing about permissions?  It seems that any user/group permissions
> are out the window when you have the kernel itself do the opening of the
> char device, right?  Why is that ok?  You can pass it _any_ character
> device node and away it goes?  What if you give it a "wrong" one?  Char
> devices are very different from block devices this way.

Well the permission question is no different from the block-device case
we already have. The user has to be root to configure a target so it has
access to the block/char device. Containers and NVMe-of are really not
designed to mix and would take a lot of work to make this make any sense
(And that's way out of scope of what I'm trying to do here and doesn't
change the need for a the cdev_get_by_path()).

If the user specifies a non-nvme char device, it is rejected by the code
in nvme_ctrl_get_by_path() when it compares the fops. See patch 4.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
