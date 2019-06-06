Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D51F374B3
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 14:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=340+yJTE8juGT+1GmBNz3n68d4FZjuDO3oaVOtsojZA=; b=rpM8ur3DlidmTS
	mvkBUIPZyPRNZPRaZktjDFrOGfS+njfWJVU1QdLerIQBgiQIO3pyuc7XpvRhsx+3IA1Td+I1DEs+B
	OP746G2/3vtY5GJI+OzNv4Mx+V605eEDe1X2iAx3fAOfprmwKNB0cc3IsQZgzKqsJaR81FSqMEXlK
	Jx/zusMBQBnuboUmDnULZ3jUcbH8Law/bpbhjq7VHzxiLzIHveryE5btSGCSArENBHN9eCQpoiAP+
	bc3Ds8zH5A7zqd3IyKguEAQMG7dUNdCLaaslWlPjdhGW8fLeGjaL8cgrICWRVWMollbOMnjMHy6MR
	cior2RfkajPx4aHLJQ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrzd-0005BV-6i; Thu, 06 Jun 2019 12:59:45 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrzX-0005Ad-7J
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 12:59:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id y57so2482596qtk.4
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 05:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pcms2hpiozX31D6cP+b+pcEmPCGLaGYLU1hDb/Ksv08=;
 b=MkdX75Ny9LXeEDd7M2ULnDHXydpfH/hamtC61IJll/djUvPjzu3CL4xNMlr5cz6Q5w
 guXxPdUF+9pLJqSbeFYaU0ImdK+8nAij30U0KPUu6/8BURnKFaQs0UmduUvDZSZvS3t9
 KBmMub0KUG4Vu/RcFYW7BchKnUQlRyD5eB/hRcBQ502FwMXpWw81+Pu+hLi173/AjDI5
 NP7He53xnoEtj8xoDotmmQb52tCLcvzr3zPzMDREz/bS8CoABsqvoL1RwTYigpnE7jWm
 Us4tLj2+XhGrNSs+5OFv+xlEHIunotlG5e2WVBNFLJZ98kl/iklZykxEmFHo7iATuPWe
 rK7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pcms2hpiozX31D6cP+b+pcEmPCGLaGYLU1hDb/Ksv08=;
 b=tPD0JGd5z29Kx0aqKvBSKLKuGRa0tsDWZ5g9rmxY1zPrSPtZ7YmUXGV3wCVHCku7M7
 I2jdLAeDwHnDKmQzOGGLgPurWjsJ86xqVea7ZW6brGG32khQTwBaYZPKOmIn35eCXJ9a
 elPJpmcI5lseLWhiu1HdJ1J0Gi5e2gc0wmF1AXPBDePfnQY5eusJkHF6uXF7qHuZLxHG
 YnWorqMfsxptCsbMq9mrcYtvewn6uNnHM5DrKEX3m8iHnzm7u/ZHxHUqiu5y6jnpp/X4
 8VGl2gFmoRWymZ7x1mE2ljVyaT5/tb9rWRu+b2RY/5sc9nRUpFfyhBGhcQ+Z2rC151de
 C7LA==
X-Gm-Message-State: APjAAAXnJCuT/HpIu8p/lhNiG2UN7pRSuCeDezhlmPH/hM2CuFA/49DH
 rXG91Nq0fQLknSdI0KiLjw4bjQ==
X-Google-Smtp-Source: APXvYqyDJboU1GnyolHbPy9u8JPHRKlv/ujxxO2lQHi1JZVZmAE4fxPsnUgZOrHcZM/zPgtxL88Vqg==
X-Received: by 2002:ac8:7a87:: with SMTP id x7mr32060230qtr.215.1559825976661; 
 Thu, 06 Jun 2019 05:59:36 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id f67sm934787qtb.68.2019.06.06.05.59.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 05:59:35 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hYrzT-00057B-B5; Thu, 06 Jun 2019 09:59:35 -0300
Date: Thu, 6 Jun 2019 09:59:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
Message-ID: <20190606125935.GA17373@ziepe.ca>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de>
 <20190605202235.GC3273@ziepe.ca> <20190606062441.GB26745@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606062441.GB26745@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055939_674533_FB26FD3F 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 MPT-FusionLinux.pdl@broadcom.com, megaraidlinux.pdl@broadcom.com,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 08:24:41AM +0200, Christoph Hellwig wrote:
> On Wed, Jun 05, 2019 at 05:22:35PM -0300, Jason Gunthorpe wrote:
> > On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> > > This ensures all proper DMA layer handling is taken care of by the
> > > SCSI midlayer.
> > 
> > Maybe not entirely related to this series, but it looks like the SCSI
> > layer is changing the device global dma_set_max_seg_size() - at least
> > in RDMA the dma device is being shared between many users, so we
> > really don't want SCSI to make this value smaller.
> > 
> > Can we do something about this?
> 
> We could do something about it as outlined in my mail - pass the
> dma_params explicitly to the dma_map_sg call.  But that isn't really
> suitable for a short term fix and will take a little more time.

Sounds good to me, having every dma mapping specify its restrictions
makes a lot more sense than a device global setting, IMHO.

In RDMA the restrictions to build a SGL, create a device queue or
build a MR are all a little different.

ie for MRs alignment of the post-IOMMU DMA address is very important
for performance as the MR logic can only build device huge pages out
of properly aligned DMA addresses. While for SGLs we don't care about
this, instead SGLs usually have the 32 bit per-element length limit in
the HW that MRs do not.

> Until we've sorted that out the device paramter needs to be set to
> the smallest value supported.

smallest? largest? We've been setting it to the largest value the
device can handle (ie 2G)

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
