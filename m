Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F279EB20
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 16:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB9hoEy2GB7i6tdoyMgZGeQXxfkcxEReiQW6/cAnBVI=; b=YGQRJGErPyjr9j
	td8ODayY5RMUYyVKI5ekDXOBYW/JVkj8guFcXfliokMN6iuyplBv56VTqCZhmskJBir8JxTWW0E8q
	tNTWwNSWZSLfQvwt+amxYrnMXvPLFsAJ5AJAGY+RULrFbLBlvNit5Q7X5SK+OmfeXUNA33MvEHceS
	KlLPYVUlcIo6IDWXCHf/qmzhsLZQ8tFRWc35hiSKyAY0TUANh5CskwgsmYoamB7U30FIls+zv9kGH
	soUcqdccGxq+8QlCYalCgD18bVxMHSNextWa2XgClmOQQRxHVCgc+EBtvsD3DMGdFuzTpn1JOcLJ4
	SYA0mXUhSPeuPS1eG6tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ca1-0002Oy-IN; Tue, 27 Aug 2019 14:36:17 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cZu-0002O4-Fc
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 14:36:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:36:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="197319834"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 27 Aug 2019 07:36:08 -0700
Date: Tue, 27 Aug 2019 08:34:21 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
Message-ID: <20190827143421.GA23091@localhost.localdomain>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
 <8837ea73-dcf5-801f-f037-267936bd65bc@suse.de>
 <20190827090926.GA30871@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827090926.GA30871@ming.t460p>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_073610_534092_A47AB75B 
X-CRM114-Status: GOOD (  13.08  )
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
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Johannes Thumshirn <jthumshirn@suse.de>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 05:09:27PM +0800, Ming Lei wrote:
> On Tue, Aug 27, 2019 at 11:06:20AM +0200, Johannes Thumshirn wrote:
> > On 27/08/2019 10:53, Ming Lei wrote:
> > [...]
> > > +		char *devname;
> > > +		const struct cpumask *mask;
> > > +		unsigned long irqflags = IRQF_SHARED;
> > > +		int vector = pci_irq_vector(pdev, nvmeq->cq_vector);
> > > +
> > > +		devname = kasprintf(GFP_KERNEL, "nvme%dq%d", nr, nvmeq->qid);
> > > +		if (!devname)
> > > +			return -ENOMEM;
> > > +
> > > +		mask = pci_irq_get_affinity(pdev, nvmeq->cq_vector);
> > > +		if (mask && cpumask_weight(mask) > 1)
> > > +			irqflags |= IRQF_RESCUE_THREAD;
> > > +
> > > +		return request_threaded_irq(vector, nvme_irq, NULL, irqflags,
> > > +				devname, nvmeq);
> > 
> > This will leak 'devname' which gets allocated by kasprintf() a few lines
> > above.
> 
> It won't, please see pci_free_irq() in which free_irq() returns the
> 'devname' passed in.

Only if request_threaded_irq() doesn't return an error.

I think you should probably just have pci_irq_get_affinity() take a flags
argument, or make a new function like __pci_irq_get_affinity() that
pci_irq_get_affinity() can call with a default flag.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
