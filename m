Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301EE1C95C1
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 17:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW3VLdqeqQdJ4coV5bUFivdy4L38MlGKdPE9S4gAawM=; b=NMDx51YKASUkdZ
	Z9cF5I8Qh36qqa2T6oFIdQFC6dQHgvlivDf+xVjodcVlz82IizebHfhFsYrc6km2f3sFBL3hVFeMN
	g5Kl3UVNww9/1kzcJ6v8c0ei7ADNVfuuYCZI2yBs93bXkv+6nzI4ioGSGVzmhtb/45jbFstskaZGH
	dJOJG6Qe7zrLJ0dkBQi/rAjJyi3/pRBLIW1EqHKx78YHMvctonzyCinWO1NvBA5C7NihHMjO+LMq6
	wswuvPDx/uyPZMPdgedzDr0V/6GFTRsu3CSFYpYGVqdnu76bEvkmhFUL2NqyDFfkjgalXB9PQ1lqV
	4sgV8ggoUirWKlOk4WoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWivL-0003IG-8L; Thu, 07 May 2020 15:58:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWivG-00037e-S1
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 15:58:56 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06A1C206B9;
 Thu,  7 May 2020 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588867134;
 bh=iSwmeZRNACn5b5PskYUDHsiL+lhI6FvNeX0rru94Aro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dfw1yO7z2G+BdhHTaxXXWAZ8IqUf6tmqAb1g5YuHyVnLOSinZhAhcR0xPApY/LUZk
 hmHNOjb3XkYQEYViIwAKaKFP6Kl9gW9yUKu6Ni9BTPh3DfS37R8815gWvj85HA9kKh
 a/yIq6w2NtXA/8IWn722fau7SEc/8IS6lp2SRLYk=
Date: Thu, 7 May 2020 08:58:52 -0700
From: Keith Busch <kbusch@kernel.org>
To: Alexey Dobriyan <adobriyan@gmail.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200507155852.GB2621480@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
 <20200506144434.GB54933@C02WT3WMHTD6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506144434.GB54933@C02WT3WMHTD6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085854_923955_8BFED895 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@fb.com, John Garry <john.garry@huawei.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 08:44:34AM -0600, Keith Busch wrote:
> On Wed, May 06, 2020 at 04:24:29PM +0300, Alexey Dobriyan wrote:
> >  static inline void nvme_update_cq_head(struct nvme_queue *nvmeq)
> >  {
> > -	if (++nvmeq->cq_head == nvmeq->q_depth) {
> > +	/*
> > +	 * Can't pre-increment ->cq_head directly.
> > +	 * It must be in [0, ->q_depth) range at all times.
> > +	 */
> > +	u16 tmp = READ_ONCE(nvmeq->cq_head);
> > +	if (++tmp == nvmeq->q_depth) {
> 
> 
> This looks correct too, but there's no need for the READ_ONCE access,
> or the pre-increment:
> 
> 	u16 tmp = nvmeq->cq_head + 1;
>  	if (tmp == nvmeq->q_depth) {

Alexey,

Regardless of the unrelated issues discussing on this thread, would you
like to send a formal patch to fix the out-of-bounds access?

Thanks,
Keith

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
