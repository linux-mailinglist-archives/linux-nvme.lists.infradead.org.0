Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F87E8D8A8
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 19:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9Im0wxKRf/dq+vav4dZLkMv0RJ+tBOTpVsv/iAWEdA=; b=OYJFhpZ8gYdui8
	yY/xd6ZAsUlHIpzRqxywKcI64Z1q4o1p3dyGIBS97TjM00g48X/N7n+5qwU832Bgm7DmL2AF+JoEM
	5f7rxeJEn4VN+pzcYpi6cCb9SoOWOdhwxu6k/oPaaAlT/fSRO5VqYVLs5lBl9VJ+Iwd93MsGkOpmL
	K7sB418evP+qEHJjA8zXN4VsRvg2pGczFGdi/iQtD3KzX6fPXTrme+zwr9DsMW9Rto4yh24lGdtlQ
	HG+iGUxBO0LLsPKOcNSJF421UkQiT1qkNJTFZQiP8EI8LBI2Zh9YFD2EMKZ67YzkWWGDE2w8OauDd
	obalBDWZDMTnOezJ0frw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwd2-0003Gi-AH; Wed, 14 Aug 2019 17:00:04 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwcs-0003GL-Fx
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 16:59:56 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hxwck-0007a8-0b; Wed, 14 Aug 2019 10:59:47 -0600
To: Max Gurtovoy <maxg@mellanox.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-4-logang@deltatee.com>
 <9bb2966a-0d7c-a492-7628-37916a941cfb@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <f83cacb8-de44-05b9-dfbc-73e1d5ed02e2@deltatee.com>
Date: Wed, 14 Aug 2019 10:59:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9bb2966a-0d7c-a492-7628-37916a941cfb@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com,
 axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 maxg@mellanox.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v7 03/14] nvmet: add return value to
 nvmet_add_async_event()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_095954_870894_17429147 
X-CRM114-Status: GOOD (  12.32  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-08-14 8:26 a.m., Max Gurtovoy wrote:
> 
> On 8/2/2019 2:45 AM, Logan Gunthorpe wrote:
>> From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
>>
>> Change the return value for nvmet_add_async_event().
>>
>> This change is needed for the target passthru code to generate async
>> events.
> 
> As a stand alone commit it's not clear what is the purpose of it.
> 
> Please add some extra explanation in the commit message.
> 
> Also better to use integer as return value if the return value should
> reflect return code.

Thanks for the Review, Max. I'll queue up these changes for v8.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
