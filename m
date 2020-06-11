Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4421F70DB
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jun 2020 01:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ej2y35fCiI2dfrTyewESuMhqcbNFZn7JaZ+tHLO+rv4=; b=CjzG6vVRlj4pp9
	0MlSUkve8Fr3bFleHjp7fX7d/9NthqYJy6F/53JE2h+dHzowjdzbncHt7ZdNes0EsRvQbM9gmtic3
	L+MO7zBIfVbyFGxebuk9sPIG27z0F/xLPLdoIzswUDYtZ7sgnrs5se+RcngUq6U1jBr9XilhB5vhT
	16V9UqlDcnvHZhbtzP7SrcXVvKxXH9vKEAdYCXfERq0poXT6A6A0Or0UEFhTqUJIiK12jNGRGhGp3
	7Vyuhm6D5/6nltcFEV5N9pzWShnXnabfeToZIPdrxJz8hBvW1H0et+wT/NmO4hQkbMcKfXubi8oXG
	jlwOsNXhhLIejCeBYYHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWYv-0005A5-RS; Thu, 11 Jun 2020 23:24:45 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWYr-00059K-8O
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 23:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ydIwmO/MULXPi8rtCPZ4Y4iv1RxHiR6w0Bg9uL3/YFM=; b=Dgncx6iPntPq8HtqqejEi5/6VL
 c9GevrXRwO+Gny+oYsMDG38XmZ7bRTG60VEiUx7rvV9NN2AcJLKoOkGlOaN17uY4bOHv0oozYWMca
 r11OeRcaQiojGqYHSWnWcRAAa0NC2nIu70NpFnJFCO05piUq03PtcvcaOHA5bWP3Y3euZTNt3GqcU
 z7Wxr3jJxz+q7XTrbMDoHFX2GiFQWlkIMmwLoAYiK/hQ/IQVwxKkAbNPjiy+wx9SENQmt4OrlSs1K
 jHYXDvwF8fUm0GuS8URSrMn05lhJi5iuw+iEZeCM59WnM1PyDSVuKn3ECVc+Z9X9BDUAWG/EDlVSb
 tiwc8gxw==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjWYh-0001zn-4i; Thu, 11 Jun 2020 17:24:32 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20200514172253.6445-1-logang@deltatee.com>
 <20200514172253.6445-9-logang@deltatee.com>
 <BYAPR04MB496581334E89E2E3086C268286800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <078ffd88-d2f9-bfa1-5a81-97abe0b66653@deltatee.com>
Date: Thu, 11 Jun 2020 17:24:30 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB496581334E89E2E3086C268286800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v13 8/9] nvmet-passthru: Add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_162441_297461_91F92FCE 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 5:13 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> +	if (subsys->ver < NVME_VS(1, 2, 1)) {
>> +		pr_warn("nvme controller version is too old: %d.%d.%d, advertising 1.2.1\n",
> Is it more than 80 char ? can it be ?
>                   pr_warn("nvme controller version is too old: ");
>                   pr_warn("%d.%d.%d, advertising 1.2.1\n",

Splitting printks is a bad idea because they won't necessarily end up in
dmesg right next to each other -- other prints can be interleaved.
Moreover, it breaks any tools that are dealing with kernel logs as
single records (ie through /dev/kmsg). Continuations (or printks without
a trailing "\n") would require using pr_cont() and generally that's
discouraged.

>> +			(int)NVME_MAJOR(subsys->ver),
>> +			(int)NVME_MINOR(subsys->ver),
>> +			(int)NVME_TERTIARY(subsys->ver));
>> +		subsys->ver = NVME_VS(1, 2, 1);
>> +	}
> 
> NVMe blktests are running on QEMU based controller. This will generate 
> warning every-time.

Yup.

> Also, I didn't understand int type cast, I wonder under what condition 
> all these macros will return -ve values since ver of type u64 ?

Yes, I'm not sure what I was thinking when I put in the cast. Probably
better just to prints "%llu". I'll fix this for the next revision.

Thanks,

Logan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
