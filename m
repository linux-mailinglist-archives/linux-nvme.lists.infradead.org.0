Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AAC1191DA
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 21:25:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aD2ta5+citT+6j3qksMV7Ho9stamWJ7KYGgF+4l/bNk=; b=rdKWWagf1H8ypg
	zL28AUbFGOZ1MznWB3oGYxAkVV/rxV2nmkOPJ1QQnPICFQjyjbscgbN9JlamA31FPyq5ViQ6MU6p5
	hB2MDaP8vCy5/H0MIrBc9mlGgdOHp39oKPrYMvSceBAfIcOksIm4cAw9ccfCIKLd60huDIQzXd3MN
	ehvvdTbo7f/o9TPgSleMbF7G4eMT9WJT4bt4xKzI2q+1Uw70Apaw1u8U27TPF1sV4qnUjV3LuLgRR
	glnJ29VL8Y6Drgu3Ttak2DPLxmHMzlDT0CUPAaE7HZAuhHthtJsWcYEntKjyyxHpypGic1jNN650k
	qTFzM2mlTeSUPCDvDStQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iem4N-0006pg-3Z; Tue, 10 Dec 2019 20:25:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iem4I-0006op-N9
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 20:25:15 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C555A20652;
 Tue, 10 Dec 2019 20:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576009513;
 bh=SUQ85xb1XOIniNeF8X5DL1svC3TrKcV45o9aw6jIMMk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wubz8KRMnFBXFOC9cBapdMkNlfmn3nkVj3wg7M4JFTP1OyyPXuyQSAitFmjdjUvmX
 /DP3zHPxWhiK2EnpWQ9DEzofC+axGeKWSZHz5A0rdQJtLkeCm01fXKSuhBetn7RDdX
 1LKLPed3Xo9bZCLfxp/sO1g05nmtIUwFsoUM0IVM=
Date: Wed, 11 Dec 2019 05:25:06 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
Message-ID: <20191210202506.GA26810@redsun51.ssa.fujisawa.hgst.com>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
 <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d55a705-6a43-5b47-166c-5d2b458fd6a5@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_122514_778511_A48F94F0 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bigeasy@linutronix.de, hch@lst.de, tglx@linutronix.de,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 12:00:07PM -0800, Sagi Grimberg wrote:
> 
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index a0138e3ca0b9..e415fadf7331 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -1055,6 +1055,10 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
> >   	if (!nvme_cqe_pending(nvmeq))
> >   		return IRQ_NONE;
> > +	nvme_irq(irq, data);
> > +	if (!nvme_cqe_pending(nvmeq))
> > +		return IRQ_HANDLED;
> > +
> 
> Question Keith,
> 
> If I have say 24 (or more) devices with a queue mapped to a cpu, and we
> happen to just reap in the primary handler for all devices, all the time,
> are we safe from cpu lockup?

I can't readily test that scenario, but I'm skeptical a workload
can keep the primary handler running without ever seeing it return
IRQ_WAKE_THREAD. If that is really a problem, we can mitigate it by
limiting the number of CQEs the primary handler may process.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
