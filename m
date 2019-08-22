Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E889A049
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 21:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vXPos0LM9MB8uvj1BuAN4rPvit9qq0GLngrkXtMPwc=; b=lNvITUcEp4M085
	vyQMos/PhIl9tls/BHL4RMa7K6PSV12EOvScWJ48eVrHEJPUYrFbt05Vvd3KxKOydNUg1+lECnRWU
	Bm7RQIiofUexC5L+fAtE2oenxjJGObnrRvqlXv7gFxSc8GkdrFDPK4Q1Gvry2guiTf57gbqWU5t15
	mcM2cphBkLl/qbILZhGOcJPWaqHA10ahyymHge8RUGrMKpKzZTBzOvLZzaW3zSI5SbA+1qzDgzYmW
	gas+4r1pM7STZHX8WdH608E4yDsbhPwECo0Br38QrMMSFLmzVccFEQs+0JLB7r2kSwhJiPw4qycrg
	2KtXxkj061UyzGcABP1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0sy6-00052W-71; Thu, 22 Aug 2019 19:41:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0sxv-00051w-0j
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 19:41:48 +0000
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230]
 helo=[192.168.11.155])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1i0sxm-0002GA-Tu; Thu, 22 Aug 2019 13:41:39 -0600
To: Sagi Grimberg <sagi@grimberg.me>, Max Gurtovoy <maxg@mellanox.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
 <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
 <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
 <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
 <b0921c72-93f1-f67a-c4b3-31baeb1c39cb@grimberg.me>
 <b352c7f1-2629-e72f-9c85-785e0cf7c2c1@mellanox.com>
 <24e2ddd0-4b2a-8092-cf91-df8c0fb482e5@grimberg.me>
 <e4430207-7def-8776-0289-0d58689dc0cd@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <5e53b732-5c33-c331-0c77-d52d5075306a@deltatee.com>
Date: Thu, 22 Aug 2019 13:41:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <e4430207-7def-8776-0289-0d58689dc0cd@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: hch@lst.de, kbusch@kernel.org, axboe@fb.com,
 sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com, linux-fsdevel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, maxg@mellanox.com, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_124147_391892_5C2D8BAF 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-08-22 1:17 p.m., Sagi Grimberg wrote:
> 
>>>>> I don't understand why we don't limit a regular ctrl to single
>>>>> access and we do it for the PT ctrl.
>>>>>
>>>>> I guess the block layer helps to sync between multiple access in
>>>>> parallel but we can do it as well.
>>>>>
>>>>> Also, let's say you limit the access to this subsystem to 1 user,
>>>>> the bdev is still accessibly for local user and also you can create
>>>>> a different subsystem that will use this device (PT and non-PT ctrl).
>>>>>
>>>>> Sagi,
>>>>>
>>>>> can you explain the trouble you meant and how this limitation solve
>>>>> it ?
>>>>
>>>> Its different to emulate the controller with all its admin
>>>> commands vs. passing it through to the nvme device.. (think of
>>>> format nvm)
>>>>
>>>>
>>>>
>>> we don't need to support format command for PT ctrl as we don't
>>> support other commands such create_sq/cq.
>>
>> That is just an example, basically every command that we are not aware
>> of we simply passthru to the drive without knowing the implications
>> on a multi-host environment..
> 
> If we were to change the logic of nvmet_parse_passthru_admin_cmd to
> have the default case do nvmet_parse_admin_cmd, and only have
> the vendor-specific space opcodes do nvmet_passthru_execute_cmd
> then I could not see at the moment how we can break a multi-host
> export...

That makes sense. I'll make that change and resend a v8 next week.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
