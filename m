Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A1B758FE
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 22:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hzgr6dWGxTnlIia9C8N0X02o+FLffbs2UkjbMD4zChQ=; b=uSA698Pgl4YgMS
	Wi3uo5MogqySPzQilnqzDaw6EyWLEtfykoxV9ybNBuQC1BV8zXFADSCKf4mcVZwnl+xUrgMq3aupf
	ioPhWkMxNa84YHlkokj7cqLpcBiVn07eM/EZAHv4CJUxKytVQuIFnmKMedZE7eTjrE5p70cdkcIt0
	eWerJ7eAOw5NdHK3ZMyG3GpdqTGSvL5WAH21A83ZRFAg7FEAtRmpttHc+OeYTk1u93xs1ZBk+wUTj
	0goneS2v93/kzvs2MGCsit9JKN8iaMhY9aOIif0+zKa5tFTdeUZYbcXR6t+WVwFRiW7e5W2IrZZFm
	EYgnS6SCem4irEiMOHgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkUR-0007GH-I7; Thu, 25 Jul 2019 20:37:27 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkUI-0007Fx-8R
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 20:37:19 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqkU7-0005Lc-87; Thu, 25 Jul 2019 14:37:08 -0600
To: Keith Busch <kbusch@kernel.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-5-logang@deltatee.com>
 <20190725175023.GA30641@bombadil.infradead.org>
 <da58f91e-6cfa-02e0-dd89-3cfa23764a0e@deltatee.com>
 <20190725195835.GA7317@localhost.localdomain>
 <5dd6a41d-21c4-cf8d-a81d-271549de6763@deltatee.com>
 <20190725203118.GB7317@localhost.localdomain>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3bb266ae-abf3-0146-5d93-e7a600453493@deltatee.com>
Date: Thu, 25 Jul 2019 14:37:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725203118.GB7317@localhost.localdomain>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com,
 Chaitanya.Kulkarni@wdc.com, axboe@fb.com, sagi@grimberg.me, hch@lst.de,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 willy@infradead.org, kbusch@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 04/16] nvme-core: introduce nvme_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_133718_623614_41030F6C 
X-CRM114-Status: GOOD (  15.68  )
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
 linux-block@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 2:31 p.m., Keith Busch wrote:
> On Thu, Jul 25, 2019 at 02:28:28PM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-07-25 1:58 p.m., Keith Busch wrote:
>>> On Thu, Jul 25, 2019 at 11:54:18AM -0600, Logan Gunthorpe wrote:
>>>>
>>>>
>>>> On 2019-07-25 11:50 a.m., Matthew Wilcox wrote:
>>>>> On Thu, Jul 25, 2019 at 11:23:23AM -0600, Logan Gunthorpe wrote:
>>>>>> nvme_get_by_path() is analagous to blkdev_get_by_path() except it
>>>>>> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
>>>>>>
>>>>>> The purpose of this function is to support NVMe-OF target passthru.
>>>>>
>>>>> I can't find anywhere that you use this in this patchset.
>>>>>
>>>>
>>>> Oh sorry, the commit message is out of date the function was actually
>>>> called nvme_ctrl_get_by_path() and it's used in Patch 10.
>>>
>>> Instead of by path, could we have configfs take something else, like
>>> the unique controller instance or serial number? I know that's different
>>> than how we handle blocks and files, but that way nvme core can lookup
>>> the cooresponding controller without adding new cdev dependencies.
>>
>> Well the previous version of the patchset just used the ctrl name
>> ("nvme1") and looped through all the controllers to find a match. But
>> this sucks because of the inconsistency and the fact that the name can
>> change if hardware changes and the number changes. Allowing the user to
>> make use of standard udev rules seems important to me.
> 
> Should we then create a new udev rule for persistent controller
> names? /dev/nvme1 may not be the same controller each time you refer
> to it.

Udev can only create symlinks from /dev/nvme0 to
/dev/nvme-persistent-name and users can do this as they need now. No
changes needed.

My point was if we use the ctrl name (nvme0) as a reference then the
kernel can't make use of these symlinks or anything udev does seeing
that name is internal to the kernel only.

If we use cdev_get_by_path()/nvme_ctrl_get_by_path() then this isn't a
problem as we can open a symlink to /dev/nvme0 without any issues.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
