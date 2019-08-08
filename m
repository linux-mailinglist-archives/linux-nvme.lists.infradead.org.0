Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A4886730
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 18:35:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZaaHsCod4EF5iRl5N0pY4Bw65tgfJPFG0LwAP8OoIU=; b=fYs3Yjy4Lx9Chn
	gh9sd61HyP6BVIsyriH6ENnF1aIb2P5juLM8mk0clRq9RfIxXipoi3ELbFDmeAH8Oq47MdRSVpTI/
	IXGy8lzpIgmGHMjXgU/9vq3h0T6Xb6g+JxsnhIZfblCuvNjYbPU7bXsylRltN+fnWP32VVyu0z2rs
	7XU92527uyJ1xf2Gaa2k1UctwJo5/TpQv3YBj93uP7n6jixDlt/ig4DSBhXxO+0qZcPcxGDtoSs99
	uhjx+Gd1gzYTiZA14qS/4Zv4UADQGZqcKR92jZRQalAoZBwWDTYc2wqARMEL1Tgds3c0g5MqxO/sc
	sl8HiCF6iq0GRklG4Rfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlNR-0006Jk-Eg; Thu, 08 Aug 2019 16:34:57 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlNL-0006J4-E1
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 16:34:52 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 09:34:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="174895459"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga008.fm.intel.com with ESMTP; 08 Aug 2019 09:34:49 -0700
Date: Thu, 8 Aug 2019 10:32:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH] genirq/affinity: report extra vectors on uneven nodes
Message-ID: <20190808163224.GB27077@localhost.localdomain>
References: <20190807201051.32662-1-jonathan.derrick@intel.com>
 <alpine.DEB.2.21.1908080903360.2882@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908080903360.2882@nanos.tec.linutronix.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_093451_523649_6F951290 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 LKML <linux-kernel@vger.kernel.org>, Jon Derrick <jonathan.derrick@intel.com>,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 09:04:28AM +0200, Thomas Gleixner wrote:
> On Wed, 7 Aug 2019, Jon Derrick wrote:
> > The current irq spreading algorithm spreads vectors amongst cpus evenly
> > per node. If a node has more cpus than another node, the extra vectors
> > being spread may not be reported back to the caller.
> > 
> > This is most apparent with the NVMe driver and nr_cpus < vectors, where
> > the underreporting results in the caller's WARN being triggered:
> > 
> > irq_build_affinity_masks()
> > ...
> > 	if (nr_present < numvecs)
> > 		WARN_ON(nr_present + nr_others < numvecs);
> > 
> > Signed-off-by: Jon Derrick <jonathan.derrick@intel.com>
> > ---
> >  kernel/irq/affinity.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > index 4352b08ae48d..9beafb8c7e92 100644
> > --- a/kernel/irq/affinity.c
> > +++ b/kernel/irq/affinity.c
> > @@ -127,7 +127,8 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >  	}
> >  
> >  	for_each_node_mask(n, nodemsk) {
> > -		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> > +		unsigned int ncpus, v, vecs_to_assign, total_vecs_to_assign,
> > +			vecs_per_node;
> >  
> >  		/* Spread the vectors per node */
> >  		vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
> > @@ -141,14 +142,16 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >  
> >  		/* Account for rounding errors */
> >  		extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
> > +		total_vecs_to_assign = vecs_to_assign + extra_vecs;
> >  
> > -		for (v = 0; curvec < last_affv && v < vecs_to_assign;
> > +		for (v = 0; curvec < last_affv && v < total_vecs_to_assign;
> >  		     curvec++, v++) {
> >  			cpus_per_vec = ncpus / vecs_to_assign;
> >  
> >  			/* Account for extra vectors to compensate rounding errors */
> >  			if (extra_vecs) {
> >  				cpus_per_vec++;
> > +				v++;
> >  				--extra_vecs;
> >  			}
> >  			irq_spread_init_one(&masks[curvec].mask, nmsk,
> > -- 

This looks like it will break the spread to non-present CPUs since
it's not accurately reporting how many vectors were assigned for the
present spread.

I think the real problem is the spread's vecs_per_node doesn't account
which nodes contribute more CPUs than others. For example:

  Node 0 has 32 CPUs
  Node 1 has 8 CPUs
  Assign 32 vectors

The current algorithm assigns 16 vectors to node 0 because vecs_per_node
is calculated as 32 vectors / 2 nodes on the first iteration. The
subsequent iteration for node 1 gets 8 vectors because it has only 8
CPUs, leaving 8 vectors unassigned.

A more fair spread would give node 0 the remaining 8 vectors. This
optimization, however, is a bit more complex than the current algorithm,
which is probably why it wasn't done, so I think the warning should just
be removed.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
