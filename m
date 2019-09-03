Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F35A6395
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 10:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XItco4aMt+YYJC4RO26/jOqmOzjMlBQvpfSh/cBmU3Y=; b=ROOpkziMCP06o4
	3L2FMS1C9yCWlWvVmpJcBWr9p0MIosqpWdc9l+PdTNe0jk/p/FamZ63XYCUOf1J+NuuO4JxsMlXSA
	mFKDqdSS1xe7ehQgIj+cRptryA2TZHWFauH2o08yv91ClrFKhCSAiR240H5el43YMZGlpvUbmGmkB
	+as0T0lfXQAtO3PIzdxvk5U3hXKeG9Qz3FM6YMitNeCjhyJwVCyeA6ehaJYy09xn20aiYhdBw0Gue
	oAYZ5JlnEBvvVANaksuSSqTQsl82WiROxavxy1dVa/AXsgpWIdzNESi1d8hSHaOvwcXL4FmHbJ86S
	XnKLt4kh3DRnYDDvB31w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53tj-0007rI-NC; Tue, 03 Sep 2019 08:10:43 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53tY-0007qp-Nm
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 08:10:34 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i53t4-0002J5-HG; Tue, 03 Sep 2019 10:10:02 +0200
Date: Tue, 3 Sep 2019 10:09:57 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <20190903072848.GA22170@ming.t460p>
Message-ID: <alpine.DEB.2.21.1909031000460.1880@nanos.tec.linutronix.de>
References: <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
 <20190828110633.GC15524@ming.t460p>
 <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
 <20190828135054.GA23861@ming.t460p>
 <alpine.DEB.2.21.1908281605190.23149@nanos.tec.linutronix.de>
 <20190903033001.GB23861@ming.t460p>
 <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
 <20190903063125.GA21022@ming.t460p>
 <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_011032_918963_62F4CD7B 
X-CRM114-Status: GOOD (  12.07  )
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 John Garry <john.garry@huawei.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-scsi@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 3 Sep 2019, Ming Lei wrote:
> Scheduler can do nothing if the CPU is taken completely by handling
> interrupt & softirq, so seems not a scheduler problem, IMO.

Well, but thinking more about it, the solution you are proposing is more a
bandaid than anything else.

If you look at the networking NAPI mechanism. It handles that situation
gracefully by:

  - Disabling the interrupt at the device level

  - Polling the device in softirq context until empty and then reenabling
    interrupts

  - In case the softirq handles more packets than a defined budget it
    forces the softirq into the softirqd thread context which also
    allows rescheduling once the budget is completed.

With your adhoc workaround you handle one specific case. But it does not
work at all when an overload situation occurs in a case where the queues
are truly per cpu simply. Because then the interrupt and the thread
affinity are the same and single CPU targets and you replace the interrupt
with a threaded handler which runs by default with RT priority.

So instead of hacking something half baken into the hard/softirq code, why
can't block do a budget limitation and once that is reached switch to
something NAPI like as a general solution?

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
