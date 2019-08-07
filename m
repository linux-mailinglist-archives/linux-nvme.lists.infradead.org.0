Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A99384BDD
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 14:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNgn5mymf79mG9xHo/LcMeaFpc+mWEEiIEhw/HiIkVw=; b=FmewSDvnQhUMPt
	OjXanZdVJPVOomhQT5jpyzcWv7rq6pVSzRdll+oXKcM6fBtVo0ZiMlg4qQigKgmCr1hQ4kyoaGHBH
	N/H465z2oaArXwUGzH0Uce0lQFdyw263y5I4XO5IvVNxLKRW/TByCYm4mnbstOLS4sHwENm1tmJpQ
	wEQWWqtSe5/BfeHgLkEjBMpCbghEOkRMIkVNHxOZZTtEA/dnyiWiLek0S6kXujGZuzHat+2ivPue7
	3VEv6x4S8PHC9HAXRDQtNPiFCx/LLJ3+Ybxs4m3OzKKtFz2VSnDdrJhn1NY8+SqJ826HHKK6Z3asl
	YmBKHa88y8tan4kcMqlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLHk-0003NO-5l; Wed, 07 Aug 2019 12:43:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLHU-0003MO-DU
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 12:43:05 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 820C821E6A;
 Wed,  7 Aug 2019 12:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565181783;
 bh=DSOqHZKzfxJCZQfOS8mvVgo1QbtlO3rC0sbZdySkgik=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QhtpjOYeSpO9C1DJpFn99mKnBiMif6GrpQHf6lp9Pdd4gFfXvvrZHGDpYLqD9+J5Z
 mDscs4/7yqUvRNrD3ene0kDil0UPhZNmqa5Yfc0wvno1BiDoJQJR/K1/9+BL5D9GTC
 BUHo3tTuGvyKWOoP4kgc+ImwkG0E4+bjNllLpA7o=
Date: Wed, 7 Aug 2019 07:43:01 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 13/14] PCI/P2PDMA: No longer require no-mmu for host
 bridge whitelist
Message-ID: <20190807124259.GX151852@google.com>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-14-logang@deltatee.com>
 <20190807055958.GC6627@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807055958.GC6627@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054304_477406_B17619E1 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Jason Gunthorpe <jgg@mellanox.com>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 07:59:58AM +0200, Christoph Hellwig wrote:
> no-mmu sounds stange, as we use that for linux ports without paging
> hardware.  I think an "io" got lost somewhere..

I had already changed the subject to

  PCI/P2PDMA: Allow IOMMU for host bridge whitelist

but certainly open to better suggestions.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
