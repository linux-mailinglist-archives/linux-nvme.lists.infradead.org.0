Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE2E98FFA
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 11:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j16DK9TpqXYDpQWmoF2Dv0+GRN+6Wj4ZqT1zJfBh37o=; b=RaFYPxW1S3zz6C
	BjG46AyCyr4gH9PCr3WnFxxSJxJAfOvWR6q6NyXIteH4L1N/IXvApI9d/tn4glZ6ar3CaYh04X4+J
	bt2yLwIWy077N8ysAexUcNUSyGD97I6EsxrO0IsZphR/86ezrY8Ws8TYKNMFDAjCiuHWTSWXmDr5r
	gP6AlucrxaOOj3fVHzOG0SEYTdJOSwHw/kyL3ABCZTW/fM/t5dO+RWok31rx7tOe977g2yuOrgoAz
	GlylqsRog96YxJzcOnff2o9muHpOMmVLmLnCGrrmDmdg9+D0cY85vh0Gr8HX61Z3pC5IjfUMpSodj
	fKJO0NwJ/IYug2Oe+nog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jiW-0000rC-Qy; Thu, 22 Aug 2019 09:49:17 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jiA-0000pC-S0
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 09:48:56 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i0jhn-000790-5b; Thu, 22 Aug 2019 11:48:31 +0200
Date: Thu, 22 Aug 2019 11:48:29 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Keith Busch <keith.busch@gmail.com>
Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
In-Reply-To: <CAOSXXT7LVjBqVW14y-pZyUCat3PBPd_nVd_uDahBdhyW+eHmcg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1908221143060.1983@nanos.tec.linutronix.de>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
 <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
 <CY4PR21MB0741D1CD295AD572548E61D1CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190821094406.GA28391@ming.t460p>
 <CY4PR21MB07410E84C8C7C1D64BD7BF41CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190822013356.GC28635@ming.t460p>
 <CAOSXXT7LVjBqVW14y-pZyUCat3PBPd_nVd_uDahBdhyW+eHmcg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_024855_056027_A21DB390 
X-CRM114-Status: GOOD (  17.77  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Ming Lei <tom.leiming@gmail.com>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>,
 Jens Axboe <axboe@fb.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Keith Busch wrote:
> On Wed, Aug 21, 2019 at 7:34 PM Ming Lei <ming.lei@redhat.com> wrote:
> > On Wed, Aug 21, 2019 at 04:27:00PM +0000, Long Li wrote:
> > > Here is the command to benchmark it:
> > >
> > > fio --bs=4k --ioengine=libaio --iodepth=128 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=120 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1
> > >
> >
> > I can reproduce the issue on one machine(96 cores) with 4 NVMes(32 queues), so
> > each queue is served on 3 CPUs.
> >
> > IOPS drops > 20% when 'use_threaded_interrupts' is enabled. From fio log, CPU
> > context switch is increased a lot.
> 
> Interestingly use_threaded_interrupts shows a marginal improvement on
> my machine with the same fio profile. It was only 5 NVMes, but they've
> one queue per-cpu on 112 cores.

Which is not surprising because the thread and the hard interrupt are on
the same CPU and there is just that little overhead of the context switch.

The thing is that this really depends on how the scheduler decides to place
the interrupt thread.

If you have a queue for several CPUs, then depending on the load situation
allowing a multi-cpu affinity for the thread can cause lots of task
migration.

But restricting the irq thread to the CPU on which the interrupt is affine
can also starve that CPU. There is no universal rule for that.

Tracing should tell.

Thanks,

	tglx




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
