Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD449E3B3
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 11:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpsNmkvTWBTMGi0bn9ZMH94azHSeGF9aNXC+K007zCg=; b=Y14LQFwN/harmB
	egySb7FSjczQGLebn8uA9pqlIemWWuJdnRv0gwAYnSSVhTQfFl9zBO5u0p1fBNYjc63m3hKRmFPGc
	6oeftLi2n5n1y3lUi3nGeEpTbgq4KNyp7n/XOpiLOQdIWw2iX6xkQDMQGocjgPlWV1baykH0m9lKJ
	fKgjmITnPuAuT7VaQgCa4O0SpkNU6kSpXZeXnY3UQ53LUiEBolLJ0tGSb62RTXwYpp+rSQY4G1EbA
	0+Jtw5Vc/IO2bJgJ8hdpx142daVC+N5Dnhnmx+erc3uCE/p4ALQnx1wQSwJRPUA8ESPlDfIHIr2mF
	EJZV/+Du+EyAhmLq2SDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XUA-0004CR-IO; Tue, 27 Aug 2019 09:09:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XTy-00049g-3r
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 09:09:43 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 9A0BB3023080;
 Tue, 27 Aug 2019 09:09:41 +0000 (UTC)
Received: from ming.t460p (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 564985D717;
 Tue, 27 Aug 2019 09:09:31 +0000 (UTC)
Date: Tue, 27 Aug 2019 17:09:27 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Johannes Thumshirn <jthumshirn@suse.de>
Subject: Re: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
Message-ID: <20190827090926.GA30871@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-4-ming.lei@redhat.com>
 <8837ea73-dcf5-801f-f037-267936bd65bc@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8837ea73-dcf5-801f-f037-267936bd65bc@suse.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 27 Aug 2019 09:09:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_020942_197969_9110853F 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 11:06:20AM +0200, Johannes Thumshirn wrote:
> On 27/08/2019 10:53, Ming Lei wrote:
> [...]
> > +		char *devname;
> > +		const struct cpumask *mask;
> > +		unsigned long irqflags = IRQF_SHARED;
> > +		int vector = pci_irq_vector(pdev, nvmeq->cq_vector);
> > +
> > +		devname = kasprintf(GFP_KERNEL, "nvme%dq%d", nr, nvmeq->qid);
> > +		if (!devname)
> > +			return -ENOMEM;
> > +
> > +		mask = pci_irq_get_affinity(pdev, nvmeq->cq_vector);
> > +		if (mask && cpumask_weight(mask) > 1)
> > +			irqflags |= IRQF_RESCUE_THREAD;
> > +
> > +		return request_threaded_irq(vector, nvme_irq, NULL, irqflags,
> > +				devname, nvmeq);
> 
> This will leak 'devname' which gets allocated by kasprintf() a few lines
> above.

It won't, please see pci_free_irq() in which free_irq() returns the
'devname' passed in.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
