Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA823118EA0
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 18:11:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTMmui45OBLWN2ourT31DOApMn39mNxxbBNVA6+SDGQ=; b=rakMOssi1mspzC
	YBQxV1bPopz7yJ2x+0SwAMj8COTL6AtCyFy9w7Q7kMlHJNYzPpZJbaRg2xuUn+lFOVvQXYh4FP/fq
	uWqSwqPfR3GLr81CunUWgQQ4t/w9u7mrXQPEv4TIpw4RVlCGkqnl/k5u4U2SHcgKjXX0z463BWni6
	kceaXs1tgZLJSgT5vG9cbyUFfdrOLqT1bFpFb38K1k1wnCSRwxMffYcX20V37z38zWJFIuL/Hoeva
	S2nuGCZ6ceTyKo/EqU6k/SLm8NrAIGdPcTEZgwEXN77gQKieAeRsErmX+07Dilw48KILJRCOHsBWa
	BFeai0KnhCCNt/o55s3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iej2y-0001NP-W0; Tue, 10 Dec 2019 17:11:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej2u-0001Mn-Kz
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 17:11:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 27EC9AE57;
 Tue, 10 Dec 2019 17:11:35 +0000 (UTC)
Date: Tue, 10 Dec 2019 18:11:34 +0100
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 1/4] nvme/pci: Disable interrupts for threaded handler
Message-ID: <20191210171134.mpuegw5ainp5kmgg@beryllium.lan>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-2-kbusch@kernel.org>
 <20191210151257.2a36ny3yy5tdohda@beryllium.lan>
 <20191210152840.xgpibkzex6mhnmne@linutronix.de>
 <20191210155433.GA4424@redsun51.ssa.fujisawa.hgst.com>
 <20191210164456.mdeff7xepsnw532j@beryllium.lan>
 <20191210165704.GB4424@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210165704.GB4424@redsun51.ssa.fujisawa.hgst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_091136_831458_38F06102 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sagi@grimberg.me, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com, tglx@linutronix.de,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 01:57:04AM +0900, Keith Busch wrote:
> On Tue, Dec 10, 2019 at 05:44:56PM +0100, Daniel Wagner wrote:
> > Sure, I am just a bit confused how IRQ_NONE is used. The comment on
> > nvme_cqe_pending says "We read the CQE phase first to check if the
> > rest of the entry is valid", which I read as "check if we have
> > anything to do" and not "this irq doesn't belong to this queue".
> 
> Those two interpretations sound like the same thing to me. :)

:)

I was confused why 'nothing to do' is then interpreted as IRQ was
routed wrongly.

> The interrupt notifies the driver it has something to do, and reading
> the CQE phase confirms whether or not that's true.

I think the thing I am missing the design idea behind it. I suppose the
IRQ on only fires when previously work was posted.

Sorry for the noise.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
