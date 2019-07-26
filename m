Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97C677413
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 00:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJYxGriL+E/vDpnK9o5xXVtzcchi83yu7vx9ENBu9Qg=; b=rSbvV1aYEn9adS
	pohJaQTsBBOmjH6qrpjyEAGmhAakBpMHpoZ48dQ2stnapmXBYh1qPeDFpABZzFtGjBLJ4kejq4UxS
	tvvSsjRDf0v/pWWScer8Gq9ItKDfLbF7j5elerHGtgERzArGpydnla2NA1LcsrbeGdV7EHq2Qea61
	5dr32lqbRVO2nh2EW1Yirt8WHUqnmzCmgmQrcXYYU6JJtooy9vaE3O9GnMiuNWovEEAem6HvZ9Oxo
	vs/js/MFp0kdYA3F5G/GxREb18BUVpEsXs6AiH/TRdb6Bp1Nh0hBxFhXDM26KwMLYSBk676syPWHN
	hJ6624IanX6XBNz3W7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8qM-0002Q1-Lw; Fri, 26 Jul 2019 22:37:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8qD-0002PJ-KW
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 22:37:35 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hr8q5-0001Wp-HP; Fri, 26 Jul 2019 16:37:26 -0600
To: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190725172335.6825-1-logang@deltatee.com>
 <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
 <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
 <175fa142-4815-ee48-82a4-18eb411db1ae@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <76f617b9-1137-48b6-f10d-bfb1be2301df@deltatee.com>
Date: Fri, 26 Jul 2019 16:37:22 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <175fa142-4815-ee48-82a4-18eb411db1ae@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com,
 Chaitanya.Kulkarni@wdc.com, axboe@fb.com, kbusch@kernel.org, hch@lst.de,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, hare@suse.de,
 sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_153733_718293_120E1EC0 
X-CRM114-Status: GOOD (  20.12  )
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-26 4:21 p.m., Sagi Grimberg wrote:
>> I don't think it necessarily makes sense for the target subsynqn and the
>> target's device nqn to be the same. It would be weird for a user to want
>> to use the same device and a passed through device (through a loop) as
>> part of the same subsystem. That being said, it's possible for the user
>> to use the subsysnqn from the passed through device for the name of the
>> subsys of the target. I tried this and it works except for the fact that
>> the device I'm passing through doesn't set id->cmic.
> 
> I don't see why should the subsystem nqn should be the same name. Its
> just like any other nvmet subsystem, just happens to have a nvme
> controller in the backend (which it knows about). No reason to have
> the same name IMO.

Agreed.

>>> Similarly: how do you propose to handle multipath devices?
>>> Any NVMe with several paths will be enabling NVMe multipathing
>>> automatically, presenting you with a single multipathed namespace.
>>> How will these devices be treated?
>>
>> Well passthru works on the controller level not on the namespace level.
>> So it can't make use of the multipath handling on the target system.
> 
> Why? if nvmet is capable, why shouldn't we support it?

I'm saying that passthru is exporting a specific controller and submits
commands (both admin and IO) straight to the nvme_ctrl's queues. It's
not exporting an nvme_subsys and I think it would be troublesome to do
so; for example, if the target receives an admin command which ctrl of
the subsystem should it send it to? There's also no userspace handle for
a given subsystem we'd maybe have to use the subsysnqn.

>> The one case that I think makes sense to me, but I don't know how if we
>> can handle, is if the user had a couple multipath enabled controllers
>> with the same subsynqn
> 
> That is usually the case, there is no multipathing defined across NVM
> subsystems (at least for now).
> 
>> and wanted to passthru all of them to another
>> system and use multipath on the host with both controllers. This would
>> require having multiple target subsystems with the same name which I
>> don't think will work too well.
> 
> Don't understand why this is the case?
> 
> AFAICT, all nvmet needs to do is:
> 1. override cimc
> 2. allow allocating multiple controllers to the pt ctrl as long as the
> hostnqn match.
> 3. answer all the ana stuff.

But with this scheme the host will only see one controller and then the
target would have to make decisions on which ctrl to send any commands
to. Maybe it could be done for I/O but I don't see how it could be done
correctly for admin commands.

And from the hosts perspective, having cimc set doesn't help anything
because we've limited the passthru code to only accept one connection
from one host so the host can only actually have one route to this
controller.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
