Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 686FB76F7F
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 19:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gzm+SYJnlzcnolz6qroPS+RJb0znviqz3zzdwJy5uU=; b=as5FP4LMglehIR
	jwH1nWcM5hRpS7Pb4Ui66G+vQBdHS7Ta3DJcXrhx6dhIbsTIhXw+b9+qDOpqUJ5mQ/TObvGT01R9A
	1L4JRhIp4NmceT+qA4s6JxVBV4CL0e1j3z1WgDSrMDgpGEarBzsIPg01a9Vi96ukbDamhIac3YgZ5
	d0Yx/MhYQVWaP2/phofbazOulXmK3RLfApyftyJIcsKMshhIsMmqhseRgq/4u/U7okH586P1kjwIR
	ssrJM//lgnZfLi47XNsF5Ne5/x/xvXEYqENO7tMdhrfRubvSoIaYc4nxJNjXabXlXsuNqM3TrZHrf
	ltht6lqCMzdTlCaBlu4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3hS-0006EZ-Pf; Fri, 26 Jul 2019 17:08:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3hK-0006Dv-Df
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 17:08:04 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hr3h5-0004NW-W6; Fri, 26 Jul 2019 11:07:48 -0600
To: Hannes Reinecke <hare@suse.de>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190725172335.6825-1-logang@deltatee.com>
 <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <8fd8813f-f8e1-2139-13bf-b0635a03bc30@deltatee.com>
Date: Fri, 26 Jul 2019 11:07:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1f202de3-1122-f4a3-debd-0d169f545047@suse.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com,
 Chaitanya.Kulkarni@wdc.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 hch@lst.de, linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org, hare@suse.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v6 00/16] nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_100802_795059_5258B0A6 
X-CRM114-Status: GOOD (  16.22  )
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
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-26 12:23 a.m., Hannes Reinecke wrote:
> How do you handle subsystem naming?
> If you enable the 'passthru' device, the (nvmet) subsystem (and its
> name) is already created. Yet the passthru device will have its own
> internal subsystem naming, so if you're not extra careful you'll end up
> with a nvmet subsystem which doesn't have any relationship with the
> passthru subsystem, making addressing etc ... tricky.
> Any thoughts about that?

Well I can't say I have a great understanding of how multipath works, but...

I don't think it necessarily makes sense for the target subsynqn and the
target's device nqn to be the same. It would be weird for a user to want
to use the same device and a passed through device (through a loop) as
part of the same subsystem. That being said, it's possible for the user
to use the subsysnqn from the passed through device for the name of the
subsys of the target. I tried this and it works except for the fact that
the device I'm passing through doesn't set id->cmic.

> Similarly: how do you propose to handle multipath devices?
> Any NVMe with several paths will be enabling NVMe multipathing
> automatically, presenting you with a single multipathed namespace.
> How will these devices be treated?

Well passthru works on the controller level not on the namespace level.
So it can't make use of the multipath handling on the target system.

The one case that I think makes sense to me, but I don't know how if we
can handle, is if the user had a couple multipath enabled controllers
with the same subsynqn and wanted to passthru all of them to another
system and use multipath on the host with both controllers. This would
require having multiple target subsystems with the same name which I
don't think will work too well.

> Will the multipathed namespace be used for passthru?

Nope.

Honestly, I think the answer is if someone wants to use multipathed
controllers they should use regular NVMe-of as it doesn't really mesh
well with the passthru approach.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
