Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840635235E
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 08:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TeHhfHIuLNtVHbbGrrBS/hcfsqWwX3vbrHwavVbImY=; b=dpXoXs7/CeLsJh
	xtxLULDQz05wSO68GgZIsQBkZ1dn4hDqNLXQGiw55/LtBkXLhrq2C7wCmcDExnzG3WOKkdyNHaQbh
	q8WRBd5WUhiCqu82McImPBwZD8Ur0xxzjI/+fgK/QK6C+1GK5oaUZz+b3PoZ6MpMCdRfIauFHZOFb
	VnuDh52xHiAKqG9AoJuO3Q8G/5DgrTEZLYhmpcLayhuOCh6Y7QHIwOKJtDvietnFvY1/Vox1vT3KO
	eWCpdbMAXHkr59cjm34YjdtfcUQuyH+2GAg34r/UZ1sM9ldt7VPjK5bPkMtNvPr55aKO6dEPwjKd+
	O38Co742pTuu7MuSK0kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfeix-0000uL-GG; Tue, 25 Jun 2019 06:14:35 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfeib-0000je-MP
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 06:14:15 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hfei9-0005PW-9o; Tue, 25 Jun 2019 08:13:45 +0200
Date: Tue, 25 Jun 2019 08:13:44 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous
 affinity set
In-Reply-To: <20190625021411.GD23777@ming.t460p>
Message-ID: <alpine.DEB.2.21.1906250811150.32342@nanos.tec.linutronix.de>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
 <alpine.DEB.2.21.1906241740320.32342@nanos.tec.linutronix.de>
 <20190625021411.GD23777@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_231414_345588_49E49BA1 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 Weiping Zhang <zhangweiping@didiglobal.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, minwoo.im.dev@gmail.com, Tejun Heo <tj@kernel.org>,
 cgroups@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MIng,

On Tue, 25 Jun 2019, Ming Lei wrote:
> On Mon, Jun 24, 2019 at 05:42:39PM +0200, Thomas Gleixner wrote:
> > On Mon, 24 Jun 2019, Weiping Zhang wrote:
> > 
> > > The driver may implement multiple affinity set, and some of
> > > are empty, for this case we just skip them.
> > 
> > Why? What's the point of creating empty sets? Just because is not a real
> > good justification.
> 
> Patch 5 will add 4 new sets for supporting NVMe's weighted round robin
> arbitration. It can be a headache to manage so many irq sets(now the total
> sets can become 6) dynamically since size of anyone in the new 4 sets can
> be zero, so each particular set is assigned one static index for avoiding
> the management trouble, then empty set will be seen by
> irq_create_affinity_masks().
> 
> So looks skipping the empty set makes sense because the API will become
> easier to use than before.

That makes sense, but at least some of that information wants to be in the
change log and not some uninformative description of what the patch does.

I was not Cc'ed on the rest of the patches so I had exactly zero context.

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
