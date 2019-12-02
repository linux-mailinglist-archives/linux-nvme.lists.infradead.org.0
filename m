Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4BA10E43B
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 02:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9RMimBgVoZO3HNJ7g5YxJJYlU1jEXzfhEThtJONGlo=; b=SWNvpV+o5XTph8
	zuBzPbAdOPfBR0borep7YUWZkOGnmfLpZD1wMsZOcF9PFR0VOtD9cRHt3YGMiFB+DELkO6yQJrsBo
	H1KyLYRtDUWU/urR0Q4u9rokkpWIF9im4PCjVEcrl7ItNtivAdvrLvvZCw6+C8lYqkxbgtWU7If1f
	kw/e4n36ZsPFzCmjWmj/2LgF7GljUrol3NZyNp1vO6/LGE/UzKZHLHIVbmsMPGrL2fLIz5e7YD1hI
	w9PlzGg996zoq9FkG2WYW5diGDzinMqLMfKf5DwSMlyhDqo7875+myLLzaHLA1HZp8FHWcGXGHw7A
	FKM+8KnzJEjyZXWBtTGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaXr-00022k-U1; Mon, 02 Dec 2019 01:30:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaXn-00022D-BM
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 01:30:32 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B2A620881;
 Mon,  2 Dec 2019 01:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575250230;
 bh=/HPGD8Nd5BxXWoI/ah3d3DR1HJDDJ7cw8ffGCo0zEHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s8rLkkuQb3QMUdAjl4PFvTBdie3H5RclHPp5Pqsbka2XAEc1RaX2vzrGD5Ijvmj5U
 MFMJj2D9Lmg1w/VaSYBkl1/0kJqrHhwHRpNhb0Wmd7SH12nE2J+aulWjvHeZqdCeq1
 ZTny4Hzo/v7op/9Fk+gk4dQK+K17tX+gfgDkQvZM=
Date: Sun, 1 Dec 2019 18:30:28 -0700
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191202013027.GA5732@keith-busch>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <20191129091302.bngxlcsbexiktqbk@linutronix.de>
 <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
 <20191202011031.GA24512@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202011031.GA24512@ming.t460p>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_173031_411019_12EE2F2D 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, helgaas@kernel.org,
 hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 09:10:31AM +0800, Ming Lei wrote:
> 
> Even without this issue, threaded irq has other issue, such as, IO
> latency is increased obviously.

Sure, I was working on something for this. I think we can have the
primary handler complete the cq once and return IRQ_HANDLED if the
queue is empty after. If new completions are still pending, then it
can return IRQ_WAKE_THREAD. This should also allow us to remove the
nvme.use_threaded_interrupts parameter since this should get the best
of both.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
