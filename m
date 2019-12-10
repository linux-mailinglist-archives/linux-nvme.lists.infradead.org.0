Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4241D118C82
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 16:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRA95MMc3nCUpvRIylfpITqvlSODu/xVfvcEVa9qNBY=; b=erPl0tCFHK0doF
	3XIuTZPuqGN6LCrMhrFIQFi7f5b7/Yie0z+4yBiRYxKAt+8pasIvPeoxwe1Y7GpGTvN9mnOhPndOl
	WoekPNwEoIJJEB85lh1Za9ssyD/QKtlzf6l2ToDGE8sOLr1I1WOJ7vLC49QbTXqRlheWNd3GN+FVb
	Wqe5ZVZRJZ0gmXEPABGF4qfL0wjNvaxQZ3bNQCbTsAeEj0gDZCTrdeCyMoCmms2amcfHPo178iqT9
	calQuUE8k1jXu1E2q37nnmd+peRpxJyzB7pEydoiE7WKkeMalt5qL/e6JJGMQmQgTi3yotDZxbDQ4
	wIp5DQruNDT1W0bd1EwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehRU-0000HT-Qb; Tue, 10 Dec 2019 15:28:52 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehRQ-0000GQ-3a
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 15:28:49 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iehRI-0004tI-MZ; Tue, 10 Dec 2019 16:28:40 +0100
Date: Tue, 10 Dec 2019 16:28:40 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCHv3 1/4] nvme/pci: Disable interrupts for threaded handler
Message-ID: <20191210152840.xgpibkzex6mhnmne@linutronix.de>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-2-kbusch@kernel.org>
 <20191210151257.2a36ny3yy5tdohda@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210151257.2a36ny3yy5tdohda@beryllium.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_072848_290319_AF2F358F 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, ming.lei@redhat.com,
 Keith Busch <kbusch@kernel.org>, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-12-10 16:12:57 [+0100], Daniel Wagner wrote:
> Hi Keith,
> 
> On Tue, Dec 10, 2019 at 02:56:19AM +0900, Keith Busch wrote:
> >  static irqreturn_t nvme_irq_check(int irq, void *data)
> >  {
> >  	struct nvme_queue *nvmeq = data;
> > -	if (nvme_cqe_pending(nvmeq))
> > -		return IRQ_WAKE_THREAD;
> > -	return IRQ_NONE;
> > +
> > +	if (!nvme_cqe_pending(nvmeq))
> > +		return IRQ_NONE;
> 
> IIRC, returning IRQ_NONE tells the irq core code that this is
> an unhandled IRQ. If the core sees too many of them it will print
> 'spurious irq' message. See __handle_irq_event_percpu,
> handle_irq_event_percpu and note_interrupt

This is okay / intended. If nvme_cqe_pending() does not recognise that
this interrupt belongs to that device then it should return IRQ_NONE.

> Thanks,
> Daniel

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
