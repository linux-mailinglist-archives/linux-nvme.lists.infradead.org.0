Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099461C70AD
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 14:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJWlnpt2vgFteO7pkki+HrrxUk9Phi+N7c6RmBWY/3g=; b=ib1a4hRf3IszEv
	HWvTLNLJ/zm4v3fg7vlbjChKKn2dEjhN6p4JdWPmv46kzgEGsvHoBseGlrlW0e2NsV0ySTgmBkmwp
	AwkP1wbid4ld6HDhpl5ioRv+IMbp/xxUeTpjpyy/XF6MYeVXB8Q0Pq/anxupRVefDAQUK9UTPaVGV
	eo28omTFNI2/L8Wl9kJeq8p6UON+iaMJ//tTGIdRpqX47bQ1V8u9Mq2o9XDE2nKEz/an1nrgtWU12
	asOdoNDrhuAjnEuR1ewTLRtm81xseFbrwjdFbOUOevz3nu7+WzGhWmayI4to8T6EUNjl/SKxs4M3a
	TSlmdv566mYa1Y5qCQjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJS9-0002j8-QA; Wed, 06 May 2020 12:47:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJS4-0002ij-0D
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 12:47:05 +0000
Received: from C02WT3WMHTD6 (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA03E206DD;
 Wed,  6 May 2020 12:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588769223;
 bh=VHzu0MBUtdgucXSH6sLfvHaP5Lh1OhKZu5LBcxBkhZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iZaSTh0z6ETMG0odXB+F/r3N9aEL8oMnXBbsqiwLlEcR1IzLtE70a4BRYRB4gGd7x
 /0zoL0w9GBqBouuT6tJRD2usIxKK/X3LjMNw9GsYSPAy8OPXoG4Ikb2G4/42dNlwwz
 mCJNGixSlnX5yXbTzm/wvWBPd1Bi6cpz8H+wGfWI=
Date: Wed, 6 May 2020 06:47:01 -0600
From: Keith Busch <kbusch@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200506124701.GA54933@C02WT3WMHTD6>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_054704_086625_286E8E93 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@fb.com, sagi@grimberg.me, Alexey Dobriyan <adobriyan@gmail.com>,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:03:35PM +0100, John Garry wrote:
> On 29/02/2020 05:53, Keith Busch wrote:
> > On Fri, Feb 28, 2020 at 09:45:19PM +0300, Alexey Dobriyan wrote:
> > >   static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
> > >   {
> > > -	if (nvmeq->cq_head == nvmeq->q_depth - 1) {
> > > +	if (++nvmeq->cq_head == nvmeq->q_depth) {
> 
> I figure momentarily nvmeq->cq_head may transition to equal nvmeq->q_depth
> and then to 0, which causes an out-of-bounds access here:
> 
> static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
> {
> 	return (le16_to_cpu(nvmeq->cqes[nvmeq->cq_head].status) & 1) ==
> 			nvmeq->cq_phase;
> }

Thanks for the notice, your analysis sounds correct to me.

Ideally we wouldn't let the irq check happen while the threaded
handler is running, but that is a bit risky to introduce at this
point. I'm okay with reverting to fix this issue.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
