Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9179010696E
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 11:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=408OUFcDcU7+6lNlbN4h3dxjIAQuFbIDFAzmjOd2xoA=; b=LJuebzRoiraxxl
	EuZ6wtSTAXaOZy3SUSYEjCjzh5Ua5eBy4Bxrf+QcJhrV2Zxz7SWh14IruBT4FUtC97rAiVA9vC/NM
	1VYYB25KxdwTuHHluXFIZQd/xfPskn/h3/072nXNr0BAbWY0Qx4PA7cmcGVO+xq9sVhPEjTdC+SpZ
	OgeDV0hnLZ3kajZhL+xnmIW3f43Pw2to81J6EXiZwupvyKx0Ve+YIr6lwLGSbSy+5tMgGpMAwF3yg
	c+ekeuuYQ57ps11f1jaTfdfnuuxGXXOKB34tsov2mE9kyutQggjQ1fJq5pwpuDtJbHvY/obOfhC27
	2wNLd/nhxjadakJORhGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5k6-0004nD-Sc; Fri, 22 Nov 2019 10:00:46 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5hF-0000Js-H6
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 09:57:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 794F968BFE; Fri, 22 Nov 2019 10:57:43 +0100 (CET)
Date: Fri, 22 Nov 2019 10:57:43 +0100
From: Christoph Hellwig <hch@lst.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191122095743.GA21087@lst.de>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191121031154.GJ24548@ming.t460p> <20191121061431.GA22886@lst.de>
 <20191121074643.GB4755@ming.t460p>
 <20191121154531.GB17852@redsun51.ssa.fujisawa.hgst.com>
 <20191122094457.GA23632@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122094457.GA23632@ming.t460p>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015749_729414_1CB7301F 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Keith Busch <kbusch@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 05:44:57PM +0800, Ming Lei wrote:
> > Can this default coalescing setting be turned off with a "set feature"
> > command?
> > 
> 
> At default, 'get feature -f 0x8' shows zero, and nothing changes after
> running 'set feature -f 0x8 -v 0'.
> 
> BTW, soft lockup from another Samsung NVMe can be fixed by this patch
> too. I am confirming if the Samsung NVMe applies aggressive interrupt
> coalescing too.

I think we are missing up a few things here, and just polling the
completion queue from submission context isn't the right answer for
either.

The aggressive interrupt coalescing and resulting long run times of
the irq handler really just means we need to stop processing them from
hard irq context at all.  NVMe already has support for threaded
interrupts and we need to make that the default (and possibly even
the only option).  At that point we can do a cond_resched() in this
handler to avoid soft lockups.

The next problem is drivers with less completion queues than cpu cores,
as that will still overload the one cpu that the interrupt handler was
assigned to.  A dumb fix would be a cpu mask for the threaded interrupt
handler that can be used for round robin scheduling, but that probably
won't help with getting good performance.  The other idea is to use
"virtual" completion queues.  NVMe allows free form command ids, so
we could OR an index for the relative cpu number inside this queue
into the command id and and then create one interrupt thread for
each of them.  Although I'd like to hear from Thomas on what he thinks
of multiple threads per hardirq first.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
