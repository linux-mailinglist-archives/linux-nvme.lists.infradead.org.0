Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE357564D
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RXf9wHE93dLAr9fmdhF8jyO9SviUZqH6V21pPu49gzg=; b=dHqEZoz2YDwoGJ
	bMPjrgzxQnM3Ewzho6YD6Oo0THcdp+O+s9eyk/b7R4T+Alfxjxr76yZNibWSrj3vkSrzRGwAHQeeE
	NsoNbBJ8wfm12KGOKEavifMY6FVP5zqGeWn/uu/25jnmkgsmFGeukf6WNoaqgFcEnm5pbFYwhTs7G
	E5B1J7IxGgphDxO7txBkf6c/HKA0NMH21Pp5w19aFX9xC7J0iLZNHxU5kTmFKmBJ/HcnhM9uIU6X5
	Tbmz2vgRm1AI4lb7vmRwIgxo1sytg5Twk0RIe4K4ZN9blpDZDMiz/MBXE94Ot1rMvQgcgVYdt09KJ
	/3IyFEd+t+OjUwmL1hlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhw4-0002VX-Gz; Thu, 25 Jul 2019 17:53:48 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhvu-0002VD-E2
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:53:40 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqhvg-0001pD-6S; Thu, 25 Jul 2019 11:53:25 -0600
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-3-logang@deltatee.com>
 <20190725174032.GA27818@kroah.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <682ff89f-04e0-7a94-5aeb-895ac65ee7c9@deltatee.com>
Date: Thu, 25 Jul 2019 11:53:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725174032.GA27818@kroah.com>
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
X-CRM114-CacheID: sfid-20190725_105338_818325_B7517F98 
X-CRM114-Status: GOOD (  15.46  )
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



On 2019-07-25 11:40 a.m., Greg Kroah-Hartman wrote:
> On Thu, Jul 25, 2019 at 11:23:21AM -0600, Logan Gunthorpe wrote:
>> cdev_get_by_path() attempts to retrieve a struct cdev from
>> a path name. It is analagous to blkdev_get_by_path().
>>
>> This will be necessary to create a nvme_ctrl_get_by_path()to
>> support NVMe-OF passthru.
> 
> Ick, why?  Why would a cdev have a "pathname"?

So we can go from "/dev/nvme0" (which points to a char device) to its
struct cdev and eventually it's struct nvme_ctrl. Doing it this way also
allows supporting symlinks that might be created by udev rules.

This is very similar to blkdev_get_by_path() that lets regular NVMe-OF
obtain the struct block_device from a path.

I didn't think this would be all that controversial.

> What is "NVMe-OF passthru"?  Why does a char device node have anything
> to do with NVMe?

NVME-OF passthru is support for NVME over fabrics to directly target a
regular NVMe controller and thus export an entire NVMe device to a
remote system. We need to be able to tell the kernel which controller to
use and IMO a path to the device file is the best way as it allows us to
support symlinks created by udev.

> We have way too many ways to abuse cdevs today, my long-term-wish has
> always been to clean this interface up to make it more sane and unified,
> and get rid of the "outliers" (all created at the time for a good
> reason, that's not the problem.)  But to add "just one more" seems
> really odd to me.

Well it doesn't seem all that much like an outlier to me.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
