Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C62B50C45
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 15:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/A5ECWK1ZRpl5z5Tv5zWQxexYt+Qo8QKJITr8cB1wE=; b=uJPAxqWRwhZYEh
	x8fR2A96J8Zga/QwHUv8TOtyGAqbHVv9LOcNt8eGfdiLqZp1R15vYvTVJFRWs67lkf9FLa1Zi4Uod
	J2jchZP1zAonz7tjofQpCCoszVG8EBAP3TLsO4UyQlstsSKtABQANdwirwmxlwGSKjeU8sDg6rkBy
	WanJwqw8pkGpBU1FbZtFio0Uku6YrudcpXPvWk4zcInUWuvwUc6OPo/50BJteOC/syEw6gceDUChU
	xCszns4klDX5Nvmhqp44aKmKfiovMeFlwbJ5HnXNFoNMeYyH4Hk8ZCgGhvASYUurKDgE+ZmPcGwLF
	nDCl6Yg58fcy8GSBg/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPJF-0000is-CC; Mon, 24 Jun 2019 13:47:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPIz-0000hd-EN
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 13:46:47 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so12859486wmj.3
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 06:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fHFQYC4IHk3DGA5SJeJSRcnBstbORPkvgUXGBQflcbU=;
 b=dy6wSAbb5K7xDqB+qIUCmnIAgBnIXnelPM2aUTAgaGv7Z/NwA+zSpgAUfMS9EKnB/+
 +jj7JCp465Y0rsmu4RcnTqmWLrwgYq05636vIGBfDYDKB9piVBgk3sYP3vO8O80X5Ppi
 gXr/EmPgtc+YIs7rxsHSu+tsA2DF8jL90FXxaqGLvXS7oLANJUDvhJHNsVoOv99U4/mU
 sWnSluDSDrpB/EEW9PGatqncUzFY2NrOlsDe7sfTqvDPc8e8tDQ6fx1eZaoms2T8YD7x
 GUnijP4PW6FidRXywDiiWKdcmqDowPtjb7eRZz0QEhOw0Zj/S4RIfCuqo0pSkTI13xYP
 kC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fHFQYC4IHk3DGA5SJeJSRcnBstbORPkvgUXGBQflcbU=;
 b=TicHtvWTpDb5NilC9Rl52nK3mTTcoqExyDzfZT9ZKr0Y/qNDv/pU9LsiQ3Xqvf8uYK
 7WTK16r4LTmVEbx/G+zDndyNfS4Niu6Wja3VWtjvoJF1oQpxM1dYL5vlOuwktAMFnqcB
 +zoeKh7g+zX3F/QMurbS6LVHaAXiSG0sZ6FTv628ruuFYTNb/X9wVtmax+gdhg8RXLfa
 vm5E+2RUKgqajxYfoGGfk6B+fekydIeYLZCEzm20kYJ9a4ZrlxKWYtEso3ppGXUlcfdx
 CpeJCOc4TbFh6BGjprQCWEqOiF/ipUgf5TOUw/uaytMRmm37/87ckdKMrwPO+modz5P1
 jm3g==
X-Gm-Message-State: APjAAAXhIuMy10y3JSCjjQC2v4e/kFpoD5H7Us0cI6LQGjWr3Ck43rW2
 XWWKsGZ5T6wUSKzXJ7HKzK6AgA==
X-Google-Smtp-Source: APXvYqxH/orChM1UzN6yhkjM24At3V8ziMHSnQNkMtcNe8WEW+S3OTMlvLt8dP4L6baO7ZUaKVoRkg==
X-Received: by 2002:a1c:618a:: with SMTP id v132mr15948959wmb.17.1561384003630; 
 Mon, 24 Jun 2019 06:46:43 -0700 (PDT)
Received: from ziepe.ca ([66.187.232.66])
 by smtp.gmail.com with ESMTPSA id y2sm9626575wrl.4.2019.06.24.06.46.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 06:46:42 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hfPIv-0002E2-9A; Mon, 24 Jun 2019 10:46:41 -0300
Date: Mon, 24 Jun 2019 10:46:41 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624134641.GA8268@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624073126.GB3954@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_064645_633024_4CAB646E 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 09:31:26AM +0200, Christoph Hellwig wrote:
> On Thu, Jun 20, 2019 at 04:33:53PM -0300, Jason Gunthorpe wrote:
> > > My primary concern with this is that ascribes a level of generality
> > > that just isn't there for peer-to-peer dma operations. "Peer"
> > > addresses are not "DMA" addresses, and the rules about what can and
> > > can't do peer-DMA are not generically known to the block layer.
> > 
> > ?? The P2P infrastructure produces a DMA bus address for the
> > initiating device that is is absolutely a DMA address. There is some
> > intermediate CPU centric representation, but after mapping it is the
> > same as any other DMA bus address.
> > 
> > The map function can tell if the device pair combination can do p2p or
> > not.
> 
> At the PCIe level there is no such thing as a DMA address, it all
> is bus address with MMIO and DMA in the same address space (without
> that P2P would have not chance of actually working obviously).  But
> that bus address space is different per "bus" (which would be an
> root port in PCIe), and we need to be careful about that.

Sure, that is how dma_addr_t is supposed to work - it is always a
device specific value that can be used only by the device that it was
created for, and different devices could have different dma_addr_t
values for the same memory. 

So when Logan goes and puts dma_addr_t into the block stack he must
also invert things so that the DMA map happens at the start of the
process to create the right dma_addr_t early.

I'm not totally clear if this series did that inversion, if it didn't
then it should not be using the dma_addr_t label at all, or refering
to anything as a 'dma address' as it is just confusing.

BTW, it is not just offset right? It is possible that the IOMMU can
generate unique dma_addr_t values for each device?? Simple offset is
just something we saw in certain embedded cases, IIRC.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
