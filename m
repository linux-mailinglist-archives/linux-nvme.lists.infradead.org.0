Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A741F6DEA
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jun 2020 21:19:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zDp3wtGqUrFJ4MslK1qyS4oU/yqHBnUqdIH+iZZN1w=; b=fEMYU3J3f3tpsI
	+BlcHitv1GdlUt3yRhPoROQ/jFzgDX+6CkoHVhZQsmXQqANQolnYtBI46kKA1DejTPI6R82nDgkdl
	xczxE/IcTC8losqHRjvGEoeFKm/a6vAFKG3Y5nEgO7/ddSDUSXovUO1ErkJvitBjGCEfsvdnoqfc1
	ReM5cEoljb6PtLiva0P+fGJYAZkmy2Y+OONauslzrvRte60g/QCCCqDYDzb9kyeOhQjVXpzIHzGnZ
	Gtmxbk00RXFUIMLp6SFf9Schvq9bk05TPFTj46TUmIA34rn98V5tmMyOH/NSXblKHbCAQOvPet9kP
	WwrCLFxAH6BbysGLm/kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjSjk-0006rc-Ek; Thu, 11 Jun 2020 19:19:40 +0000
Received: from ale.deltatee.com ([204.191.154.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjSjf-0006rA-Sc
 for linux-nvme@lists.infradead.org; Thu, 11 Jun 2020 19:19:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Iul3mhrear09phmCu8JOZ2yhnz8/T9YMeSEnL8Miao0=; b=Y1cJBAK8vNbryfPIus+U/Dma8B
 i9banNR5DsvyXjk4Tsu/Pdq2z1YMAZRkMwetYqGGCELrWYoUbzaurNF4w2d6qpznr/8sbiZjCZNUv
 S28/T6ox5aly2VhOIDJuARkPfJZMx6RxbyjwuFGLQwV/wAOFDo8rWC+JPzfnwT3wD4ZvQKQXia7fb
 jZn2LBT+g9zg28zvTzs5/kF+WNn6DazAyCLruKhMp14UK2xCMPFPzL02MbywHPyWkSblTtH4ffFSW
 w4PHDUQG+ZZO1TbwkzKyS+2kpivcHW2f2U7kXrM65CQhtJKG2gKUWF3K5GtqXY9Puab32WEnRZkUK
 o4AsM/dw==;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4]
 helo=[192.168.0.10])
 by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <logang@deltatee.com>)
 id 1jjSjV-0004uU-IV; Thu, 11 Jun 2020 13:19:26 -0600
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
References: <20200514172253.6445-1-logang@deltatee.com>
 <BYAPR04MB4965CEDB8E3AE4B7F4C527AF86800@BYAPR04MB4965.namprd04.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <973eb071-45ad-26f1-17d0-325d637a9750@deltatee.com>
Date: Thu, 11 Jun 2020 13:19:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB4965CEDB8E3AE4B7F4C527AF86800@BYAPR04MB4965.namprd04.prod.outlook.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: sbates@raithlin.com, maxg@mellanox.com, axboe@fb.com,
 kbusch@kernel.org, sagi@grimberg.me, hch@lst.de,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaitanya.Kulkarni@wdc.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v13 0/9] nvmet: add target passthru commands support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_121935_971012_7F0EB7D4 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2020-06-11 1:16 p.m., Chaitanya Kulkarni wrote:
> On 5/14/20 10:23 AM, Logan Gunthorpe wrote:
>> This is v13 of the passthru patchset which is mostly a resend of v12
>> with Sagi's reviewed-by tags collected.
>>
>> Below, I'll reiterrate some points I made previously that haven't been
>> responded to:
>>
>> I don't think cloning the ctrl_id or the subsysnqn is a good idea.
>> I sent an email trying to explain why here[1] but there was no response.
>> In short, I think cloning the ctrl_id will break multipathing over
>> fabrics and copying the subsysnqn only has the effect of breaking
>> loopback; the user can always copy the underlying subsysnqn if it
>> makes sense for their overall system.
>>
>> I maintain overriding the CMIC bit in the ctrl id is necessary to
>> allow multipath over fabrics even if the underlying device did
>> not support multipath.
>>
>> I also think the black list for admin commands is appropriate, and I
>> added it based on Sagi's feedback[2]. There are plenty of commands that
>> may be dangerous like firmware update and format NVM commands, and NS
>> attach commands won't work out of the box because we don't copy the
>> ctrl_id. It seems like there's more commands to be careful of than ones
>> that are that are obviously acceptable. So, I think the prudent course
>> is blacklisting by default until someone has a usecase and can show
>> the command is safe seems and makes sense. For our present use cases,
>> the identify, log page and vendor specific commands are all that we
>> care about.
>>
>> A git branch is available here and is based on v5.7-rc5:
>>
>> https://github.com/sbates130272/linux-p2pmem  nvmet_passthru_v13
>>
>> [1]https://lore.kernel.org/linux-block/247eca47-c3bc-6452-fb19-f7aa27b05a60@deltatee.com/
>> [2]https://lore.kernel.org/linux-block/e4430207-7def-8776-0289-0d58689dc0cd@grimberg.me/
>>
>> --
>>
>> v13 Changes:
>>    1. Rebased onto v5.7-rc5
>>    2. Collected Sagi's Reviewed-by tags
> 
> Are you planning to send V14 based on nvme-5.9 branch ?
> 

I don't have any plans to yet, but I certainly can. I usually wait until
after the merge window to resend. I can certainly look at rebasing onto
nvme-5.9 for next time.

Logan

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
