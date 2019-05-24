Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77AD52A128
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 00:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGiLRK4lwAQERRi//40TgLKTnpkELelWEL4ZswCLxcI=; b=D0sqo79xpH7vBV
	VLREKosvKr7MBJtlQ92TaxgIbLnw25NMrtIra3LTRKE4UjjXfQBMAGFbJUS+GvqY4x33CNPMelhAt
	mrUHuoxI/qFShPoNU5gUzIjURuzbzvo4/dkqgPcHoZrbeAyejMrdUvcBotjbGwpg/15JXeQnXu/xs
	X0u5z7ViDejYA/M0kR3QvPOM4QnJqP2jI0TN4jRCET+44jMyu8J2d5xOsajNv/eu6IHiLhC6tYllW
	sVWOLVL0yzYRfmGOJ8BtXuyxCA8NbL7LxjAVm8ps/wRV3wId4DlLRkWeHdRmFndQAT3CzWTvaVqzA
	r9Ba6hnJT0vwgk/eLi8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUIeu-0000k1-V6; Fri, 24 May 2019 22:27:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUIep-0000jE-Od
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 22:27:25 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 786DF21848;
 Fri, 24 May 2019 22:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558736841;
 bh=SDoIvluJch9/n7yS60HKo4yatPF0jkw/bEYV06KPYVM=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=St9heaFc1DBQI4jtZg82szDgH3oHDso9H4ueTv1e3yw8VjnbQ68w00gU6ToxklC1J
 NMLfhfeMdLwB4zP+yqchvWdqMGG5CFEZil6VqhXwtuyqZPtknjvFGZLTr9JEzeR4rr
 SkpHSrHEZeyhx1MyGGtorXkeliIVadoW0Gkygj2k=
Date: Sat, 25 May 2019 00:27:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [5.2-rc1 regression]: nvme vs. hibernation
In-Reply-To: <20190524154429.GE15192@localhost.localdomain>
Message-ID: <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_152723_822508_B740F8EE 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 24 May 2019, Keith Busch wrote:

> > Something is broken in Linus' tree (4dde821e429) with respec to 
> > hibernation on my thinkpad x270, and it seems to be nvme related.
> > 
> > I reliably see the warning below during hibernation, and then sometimes 
> > resume sort of works but the machine misbehaves here and there (seems like 
> > lost IRQs), sometimes it never comes back from the hibernated state.
> > 
> > I will not have too much have time to look into this over weekend, so I am 
> > sending this out as-is in case anyone has immediate idea. Otherwise I'll 
> > bisect it on monday (I don't even know at the moment what exactly was the 
> > last version that worked reliably, I'll have to figure that out as well 
> > later).
> 
> I believe the warning call trace was introduced when we converted nvme to
> lock-less completions. On device shutdown, we'll check queues for any
> pending completions, and we temporarily disable the interrupts to make
> sure that queues interrupt handler can't run concurrently.

Yeah, the completion changes were the primary reason why I brought this up 
with all of you guys in CC.

> On hibernation, most CPUs are offline, and the interrupt re-enabling
> is hitting this warning that says the IRQ is not associated with any
> online CPUs.
> 
> I'm sure we can find a way to fix this warning, but I'm not sure that
> explains the rest of the symptoms you're describing though.

It seems to be more or less reliable enough for bisect. I'll try that on 
monday and will let you know.

Thanks,

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
