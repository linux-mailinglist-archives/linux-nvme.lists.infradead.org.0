Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A9910F906
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 08:41:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cc4Q7HMgFz4iH+L34vr7B0G4or6Vm7LhjLwsl57O4Zg=; b=F7LoQ93Gry7J3C
	XBQoBkp5N5QgEVtuFJtf1ubHILJXPSp+6YPdlrFuhqvz2AuHieUIS8FJ12KJKmZhyLroV70Fx1IyH
	RL7D0ODpufvZKVx/CHOfdogU6zDDHM8UBzZHcI7ViIqAbOVjL3aA8ue6gTmnix0K4rhcyKgVoktxh
	fqCJmLz9PPApmX+d0LJlyBpXL02Po7Sxfn/d78f6Y+mqw412yiCToJIdm+tbtKi3H2kltDXQwHkYR
	pfbGDfCqEw0/F7zcgM6GH71hPzhvX60c7Rm2zLyrYL2xT6iLw5nd1JstGbM99LSQyN1tMBdsLNnmw
	4h/9YSqXe0CyKne4LJPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2o4-00058Y-Pq; Tue, 03 Dec 2019 07:41:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2nq-0004z8-FJ
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 07:40:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2023C68BFE; Tue,  3 Dec 2019 08:40:56 +0100 (CET)
Date: Tue, 3 Dec 2019 08:40:55 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191203074055.GC23881@lst.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191129094640.6fq6wcxmfi4fwnlw@linutronix.de>
 <20191129162719.GA47681@C02WT3WMHTD6.lpcnextlight.net>
 <20191129170545.axnykbrabigzcghs@linutronix.de>
 <20191130170222.GA5273@redsun51.ssa.fujisawa.hgst.com>
 <20191202170538.juq745vddzsouufb@linutronix.de>
 <20191202171239.GA8547@lst.de>
 <20191202180659.GB21650@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202180659.GB21650@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234058_676733_2BD77501 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-nvme@lists.infradead.org, ming.lei@redhat.com, helgaas@kernel.org,
 tglx@linutronix.de, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 03:06:59AM +0900, Keith Busch wrote:
> On Mon, Dec 02, 2019 at 06:12:39PM +0100, Christoph Hellwig wrote:
> > That's why I had the previous idea of one irq thread per cpu that
> > is assigned to the irq.  We'd have to encode a relative index into
> > the hardirq handler return value which we get from bits encoded in
> > the NVMe command ID, but that should be doable.  At that point we
> > shouldn't need the cond_resched.  I can try to hack that up, but
> > I'm not an expert on the irq thread code.
> 
> I'm curious how you intend to implement this. We can't have two threads
> operating on the same CQ at the same time since they have to reap the
> CQ sequentially, so the threads can't selectively choose which entries it
> handles in a queue with mixed encoded CPUs.

True.

> Perhaps we can have just one completion thread call
> smp_call_function_single_async() with the encoded CPU?

Well, blk-mq can do just that for us from blk_mq_complete_request.

> But sadly, I recall we've observed broken controllers break when a
> command id exceeds the queue-depth, and encoding CPUs in the command id
> would do that. Hardware ruins our purity...

Sigh..

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
