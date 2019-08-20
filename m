Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D8595967
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 10:26:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+uAn+v2JW3kssFYkOO1HJAWcWEBEX9hYLdg/C2RLAs=; b=S87XLcFC4MAG66
	OQ+RuowoRF4GQh1zTEAA/R4r5xEvAgKKrK/TDQbQ9rwQYHjrHcmuDze24In/VpgCvZg9NrmCsyInK
	4PzgVZl9iday/W5/rfguZahsQki/5pTzb1TMX5nxvBApBaIMwk4Z3IpCEWJmIsYKo7IdYA5/8/CLW
	l328+v+dau9doWhoSwt0w7tAKh7UbIOdcitXb3zt4tk8XMP8OJnCC7C2eUrFaEH9OP7k/nw3k4w//
	zwBZFhIW8lPLusMT3fJ/3kJA0R92iWKnIFXmvW7JE/2X0mT84auoDYG7JjUGTa9kwCtVynmuMSUU2
	xqSWLDpci9OifwW2kjbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzTG-00052E-Tj; Tue, 20 Aug 2019 08:26:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzT1-00051b-Sp
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 08:26:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id e8so1822861wme.1
 for <linux-nvme@lists.infradead.org>; Tue, 20 Aug 2019 01:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iKEgXsaZBb/YCND5t1KYTz/egS4PVDxIgI7teEb3ZVY=;
 b=gUxZ5m5R+J9KkZtmTbJbeoKhALYY0BXOQpA62gdGh7oGOhHrSvK6A4dkiLBrCthxfW
 cLVcP7zFwBZY+oI3GFeT+amQBp0Vmz6FMj8JH4jlBPKcoyzO+lwkHz4uSNt664DmOZ/H
 fxBA4GMSsNTCJlI30ufNmQJ9et6lQHTcLFKZOoOO1NxfpraopNIAchWM92L7cYP+fcay
 PnPO1qKmbVZAxApaqJDO8fObLd5ey2r7tg6c2fwC5W0b9TpGknA1NhVQhTMeIVjZ4v00
 YZWJuWtbfMFfXLgmjYNVFJz5e7SRLu3sDvXOw9MIvp2oAr4Ag+QUABNgp9TYbLJ4qmHf
 iiBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iKEgXsaZBb/YCND5t1KYTz/egS4PVDxIgI7teEb3ZVY=;
 b=ckDoMy48XPsLOWTgquoObvk2nNdjw8/S619zt7tUwRtylHKDVZMbESkjzHO8zV0KJe
 pIenI5ROOn32eWrRlOoZ4s8u0EMOETB9Ro2JaOdc0RCijX6H9ugdpvc5p4ZatmbAfRfR
 ClBwdBzP9fZLzFb4r80gNV5sLaRftRmY/HM6Sr+LnkXOFkQdxA2QhRD5kq/N/CeArTim
 IKjrZjXQOKFIhHfwXljlQ6I5SV16dN5RX2Z2WsVaIfkpPUe0zIYjJkrGcU6yviJUAVBt
 +b5KtMVsciCLjqeKEGy8IwxLsAykjbpCe7tGbCkf9okTV49+20/UItvjdh5SydX0fhAy
 Lu6g==
X-Gm-Message-State: APjAAAUlAYyKrln/x1pqQQn1KAJU0xjSSb0L9eYzVHKGeneC8grpaiEC
 9ipeOjRFljBMU7FnOCtQ0/4m1Ow7eHoyk6w6cxc=
X-Google-Smtp-Source: APXvYqyJjqjhoNihgnyi7oHEnuV+8LCHW4txggAiWNfWs/GpXlRyY7nincPH3loeNx0KJ9NjXAp/aRjtSrorrzqvtMA=
X-Received: by 2002:a1c:a985:: with SMTP id
 s127mr24086524wme.163.1566289569347; 
 Tue, 20 Aug 2019 01:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
In-Reply-To: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
From: Ming Lei <tom.leiming@gmail.com>
Date: Tue, 20 Aug 2019 16:25:57 +0800
Message-ID: <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
To: longli@linuxonhyperv.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_012611_935511_13932F85 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 2:14 PM <longli@linuxonhyperv.com> wrote:
>
> From: Long Li <longli@microsoft.com>
>
> This patch set tries to fix interrupt swamp in NVMe devices.
>
> On large systems with many CPUs, a number of CPUs may share one NVMe hardware
> queue. It may have this situation where several CPUs are issuing I/Os, and
> all the I/Os are returned on the CPU where the hardware queue is bound to.
> This may result in that CPU swamped by interrupts and stay in interrupt mode
> for extended time while other CPUs continue to issue I/O. This can trigger
> Watchdog and RCU timeout, and make the system unresponsive.
>
> This patch set addresses this by enforcing scheduling and throttling I/O when
> CPU is starved in this situation.
>
> Long Li (3):
>   sched: define a function to report the number of context switches on a
>     CPU
>   sched: export idle_cpu()
>   nvme: complete request in work queue on CPU with flooded interrupts
>
>  drivers/nvme/host/core.c | 57 +++++++++++++++++++++++++++++++++++++++-
>  drivers/nvme/host/nvme.h |  1 +
>  include/linux/sched.h    |  2 ++
>  kernel/sched/core.c      |  7 +++++
>  4 files changed, 66 insertions(+), 1 deletion(-)

Another simpler solution may be to complete request in threaded interrupt
handler for this case. Meantime allow scheduler to run the interrupt thread
handler on CPUs specified by the irq affinity mask, which was discussed by
the following link:

https://lore.kernel.org/lkml/e0e9478e-62a5-ca24-3b12-58f7d056383e@huawei.com/

Could you try the above solution and see if the lockup can be avoided?
John Garry
should have workable patch.

Thanks,
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
