Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E4E756C3
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAl0ANbsEstjdropOCvctdZP5qix1x69GZ2M9Y1D+LQ=; b=nLy9u13VuvzVJ3
	ojOgp0Tx0XadBBZOeiABPT6Xp2ybAEr7q2ESTVOgVMS30hTqmtNRQUGjPEZSo34lIn19bO+RBjVht
	+4xS4pd1ONxpuybNElCERnbaBvCiwGB5pKNrHr91zRMUf1xGXs/UEkUHBT0saceB6tg5T/EgM+cEA
	eiMjrrgoq8MYnp1SUnU9pbGFG7EL0c5KE3WxC5iDmxNLOvpbkMsmCoojy+sMLa5FqowoLj2rkPJWP
	mwqYGeQDwxN4VSm1yAGliUZdbkLwTRHffs6WZfuqG+B3RWXJyQNYkKzg0m2hcAg5uCKBOO7JjhrwY
	35nZ5NCVFTHBQuEvCJvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqiMG-0005A1-8G; Thu, 25 Jul 2019 18:20:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqiLz-00055V-3d
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:20:36 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqiLv-0002Vc-S5; Thu, 25 Jul 2019 12:20:32 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <20190718225132.5865-1-logang@deltatee.com>
 <20190718225132.5865-2-logang@deltatee.com>
 <c52f80b1-e154-b11f-a868-e3209e4ccb2d@grimberg.me>
 <6deea9e7-ff3c-e115-b2f2-8914df0b6da7@deltatee.com>
 <dd287560-2cb3-28ab-c22d-fe9f3682c609@grimberg.me>
 <021b5195-9a09-4cc2-064f-940ada9cf764@deltatee.com>
 <b501f53b-48e9-87a3-9023-8597ed1efc6d@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <25f1903e-2ef1-8dbb-c08b-5dd0d44ba2d2@deltatee.com>
Date: Thu, 25 Jul 2019 12:20:31 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b501f53b-48e9-87a3-9023-8597ed1efc6d@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: hch@lst.de, axboe@fb.com, kbusch@kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] nvme-core: Fix deadlock when deleting the ctrl while
 scanning
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_112035_561689_901FFFBF 
X-CRM114-Status: GOOD (  11.49  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:16 p.m., Sagi Grimberg wrote:
> 
>> Hey,
>>
>> Sorry for the delay.
>>
>> I tested your patch and it does work. Do you want me to send your change
>> as a full patch? Can I add your signed-off-by?
> 
> I have a patch ready with a proper comment in place. I can send it
> out... Can I get your tested-by and reported-by?

Yup. I can retest once you send the patch and I'll send a test-by then.
For now you can add my reported-by:

Reported-by: Logan Gunthorpe <logang@deltatee.com>

Note: I had to modify your original patch a fair bit so it compiled with
multipath disabled.

Logan



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
