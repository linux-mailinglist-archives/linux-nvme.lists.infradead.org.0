Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764B89773A
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 12:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=isfuJRRa1e955ozXvVN7efs6uhrUfJJEHGbizJNE/8c=; b=jmyaMBWKYQGum0
	3OmAubBE5KPzCY83+MuG1vHT4ueil6syBkz6GjrRBVaA8ZESb5kkhJ24KdiMVlJEtR9MA96fd9sQX
	/TZBsG5ohrB1rWedqEPqtTWChCnf+qr2hw5yrmACIFdUcxo5VCxCOztV/THRrI+1++Kp7m7J+BvIb
	t2EfTReFvYiLEU56rDJ672P/rqXQ4JTqb+wumLClVxXxRQeIj5kgw0/I5/GgWofTSUSwIhl1+XpTx
	vFUGCukY5VwKbOSRmb3oKE3HAnX9WBf/SqDS8un0S0sYCzDtV9yHczaPqA399kT1cDuEZOFzds/YT
	nBaiV8KyGWDFK56FibUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NxR-0003UN-3b; Wed, 21 Aug 2019 10:35:13 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NxD-0003U8-0z; Wed, 21 Aug 2019 10:34:59 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C6F0E305F65;
 Wed, 21 Aug 2019 12:34:24 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 6B6B720A21FCB; Wed, 21 Aug 2019 12:34:56 +0200 (CEST)
Date: Wed, 21 Aug 2019 12:34:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 1/3] sched: define a function to report the number of
 context switches on a CPU
Message-ID: <20190821103456.GY2349@hirez.programming.kicks-ass.net>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-2-git-send-email-longli@linuxonhyperv.com>
 <20190820093827.GF2332@hirez.programming.kicks-ass.net>
 <CY4PR21MB0741F33BBC800C0774CB8C15CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CY4PR21MB0741F33BBC800C0774CB8C15CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
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

On Wed, Aug 21, 2019 at 08:20:48AM +0000, Long Li wrote:
> >>>Subject: Re: [PATCH 1/3] sched: define a function to report the number of
> >>>context switches on a CPU
> >>>
> >>>On Mon, Aug 19, 2019 at 11:14:27PM -0700, longli@linuxonhyperv.com
> >>>wrote:
> >>>> From: Long Li <longli@microsoft.com>
> >>>>
> >>>> The number of context switches on a CPU is useful to determine how
> >>>> busy this CPU is on processing IRQs. Export this information so it can
> >>>> be used by device drivers.
> >>>
> >>>Please do explain that; because I'm not seeing how number of switches
> >>>relates to processing IRQs _at_all_!
> 
> Some kernel components rely on context switch to progress, for example
> watchdog and RCU. On a CPU with reasonable interrupt load, it
> continues to make context switches, normally a number of switches per
> seconds. 

That isn't true; RCU is perfectly fine with a single task always running
and not making context switches, and so is the watchdog.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
