Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B5CAC298
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 00:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WCuXkb+7m/XsAcpieQ6SjzipF2UeASeQhnlEZ33ybE=; b=QOVOS9qH2jbT+E
	hkhkYnsEejS3keINryorzV+3AhYU85ofMoRPsmvs9z/yU0Sq8mW+11XKFOTzvB2d7NV51C/5NZwvg
	elCfa8hMHC5i8f3E5e8tH4dJ9/MbfpsDt95whfcpF85Upw+H8dPS581ZBvlaZUJWsfRIM29SaUahc
	RW29BmlY5DvgzBUyV0pDjQMRuqT0qzcuur6xvzdq0U5M7s4ekxMZtNGf23/7YCZAq6EQsJ2kctukt
	7ce+HmhkoXe+59YiCjsOMCBmiizatMD5tlBUmZweKcWR4HBn9lqQ/s+p7GA4ZVQ0SuHfxH8Iikv18
	mMk1UF7X33c+2NiJZAJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Mp0-00033X-2a; Fri, 06 Sep 2019 22:35:14 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Mol-00031c-ET
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 22:35:00 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:34:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="190955919"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Sep 2019 15:34:55 -0700
Date: Fri, 6 Sep 2019 16:25:55 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190906222555.GB4260@localhost.localdomain>
References: <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <20190906141858.GA3953@localhost.localdomain>
 <CY4PR21MB0741091795CEE3D4624977CFCEBA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190906221920.GA12290@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906221920.GA12290@ming.t460p>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_153459_499952_E509F299 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 John Garry <john.garry@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 06:19:21AM +0800, Ming Lei wrote:
> On Fri, Sep 06, 2019 at 05:50:49PM +0000, Long Li wrote:
> > >Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
> > >
> > >Why are all 8 nvmes sharing the same CPU for interrupt handling?
> > >Shouldn't matrix_find_best_cpu_managed() handle selecting the least used
> > >CPU from the cpumask for the effective interrupt handling?
> > 
> > The tests run on 10 NVMe disks on a system of 80 CPUs. Each NVMe disk has 32 hardware queues.
> 
> Then there are total 320 NVMe MSI/X vectors, and 80 CPUs, so irq matrix
> can't avoid effective CPUs overlapping at all.

Sure, but it's at most half, meanwhile the CPU that's dispatching requests
would naturally be throttled by the other half who's completions are
interrupting that CPU, no?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
