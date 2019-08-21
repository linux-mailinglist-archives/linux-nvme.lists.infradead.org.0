Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3499773C
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 12:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5QELSBoa2Qz9y4mLNNue6SMDnJTHGfxUMs8KCp74vU=; b=pxXc4IPwRqF/VU
	5HZdzDxv8OarjvjtmgsauQlaik7gmQtJrz+6xvcKIiiUWQMxJLOqegAK9BBHZ9+e9tvfD4Go81ebo
	c0pm2Pf3J+76WYBPa2sW+GKGIHB3kr4+/sxoPG+WTA3Csrs/MyS+2w6AaxdBo2XmoWs8hGnd4Qsy/
	liZ2lcnvUXQsDmSC3ZL8RxY4MB2O+PAFSbWJacHiUjDmNsTM8+c8xtmk8pTmiKqn/nR9g3PjWGkrr
	utgiQckVn0kjLXoUSM8ryroXjsP3KNWvQEaOjvf9ngn7qIILcfTWBfrcUpgr3Np1v1ytxDXtLYopo
	nzbwW1C65YxrHSt5Xbcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NyS-00055L-V5; Wed, 21 Aug 2019 10:36:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NyK-00055C-Kt
 for linux-nvme@bombadil.infradead.org; Wed, 21 Aug 2019 10:36:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tldozir3hxCrQJu+NVCjOH2d97IbRf87LUeutIb5FiQ=; b=jG6t86WOSVCNMaVwDWUGZo2pL
 Ux37bTeG8CrV32myBhFEv6CAH0d1zEmj6bsdXlLKCMfo4PsBCY/kXY+3hIfnoHgFB7BnfsPY3YpZW
 T/qnYlRnJFfK3Ou2KHD4WUZHLvabb6fjd5IIPNtTx9bTcFh/QA0iIGizeimXpkSFCa1WUAcDhuvLT
 0m1oSxXBLjxmVcRiou6DBmxgGvSmUJ/22qCssvX0UctgH2YjM8y4tgDQSjRoXryTPPm7E7qoEJpsE
 WlXxCBlGpbdUpzaDiN3UHGzAhq1k1esOrDfvAqMkpgbXUEEPgFph7zDVq0mNX4etitjxggI83Jlzq
 YP5WL3Sjw==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NyD-00052V-Ae; Wed, 21 Aug 2019 10:36:01 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D351D306B81;
 Wed, 21 Aug 2019 12:35:27 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 7EE1F20A21FCB; Wed, 21 Aug 2019 12:35:59 +0200 (CEST)
Date: Wed, 21 Aug 2019 12:35:59 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 3/3] nvme: complete request in work queue on CPU with
 flooded interrupts
Message-ID: <20190821103559.GZ2349@hirez.programming.kicks-ass.net>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
 <20190820095240.GH2332@hirez.programming.kicks-ass.net>
 <CY4PR21MB0741A817BEB880C8DC526ECFCEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR21MB0741A817BEB880C8DC526ECFCEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 08:37:55AM +0000, Long Li wrote:
> >>>Subject: Re: [PATCH 3/3] nvme: complete request in work queue on CPU
> >>>with flooded interrupts
> >>>
> >>>On Mon, Aug 19, 2019 at 11:14:29PM -0700, longli@linuxonhyperv.com
> >>>wrote:
> >>>> From: Long Li <longli@microsoft.com>
> >>>>
> >>>> When a NVMe hardware queue is mapped to several CPU queues, it is
> >>>> possible that the CPU this hardware queue is bound to is flooded by
> >>>> returning I/O for other CPUs.
> >>>>
> >>>> For example, consider the following scenario:
> >>>> 1. CPU 0, 1, 2 and 3 share the same hardware queue 2. the hardware
> >>>> queue interrupts CPU 0 for I/O response 3. processes from CPU 1, 2 and
> >>>> 3 keep sending I/Os
> >>>>
> >>>> CPU 0 may be flooded with interrupts from NVMe device that are I/O
> >>>> responses for CPU 1, 2 and 3. Under heavy I/O load, it is possible
> >>>> that CPU 0 spends all the time serving NVMe and other system
> >>>> interrupts, but doesn't have a chance to run in process context.
> >>>
> >>>Ideally -- and there is some code to affect this, the load-balancer will move
> >>>tasks away from this CPU.
> >>>
> >>>> To fix this, CPU 0 can schedule a work to complete the I/O request
> >>>> when it detects the scheduler is not making progress. This serves multiple
> >>>purposes:
> >>>
> >>>Suppose the task waiting for the IO completion is a RT task, and you've just
> >>>queued it to a regular work. This is an instant priority inversion.
> 
> This is a choice. We can either not "lock up" the CPU, or finish the I/O on time from IRQ handler. I think throttling only happens in extreme conditions, which is rare. The purpose is to make the whole system responsive and happy.

Can you please use a sane MUA.. this is unreadable garbage.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
