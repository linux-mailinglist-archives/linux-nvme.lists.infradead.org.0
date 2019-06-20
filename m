Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E52734D428
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FQO6RxLXiDOS4mC9UY6/feysqyUbjq2DZ8Omi/irD0g=; b=NTbzLzjvVDwdy8
	2XuQSo5c57jDRRflj1mjt/9nPylbq3SiX+xZUcisTK+UT7ZcIXbOGL6YYbkWEbpUVYX30RyAGbbxB
	S47HMcHL9pMaRIV5PFslB91N2TSmxrG1sTiOPXwjHeOdBTWH41F3BHhbGK96CpiCS0RsGA8I1FCD1
	Y+1JAQ1I0RnaClSuOhiFoC+YeuC+6hJe8u2SL5+cCigOfTNTSvsYiL7OqGm+EzSt94BCAkdw8m/cn
	WN/Mxs9xaGJz1Q4gHuAbxPhDxwsI/GewLxfurDmhVKpwAdNPqflA7OrE6v28sdRe2PYRrRWQA+bsk
	PuYHcc5yTc8K7y9KXgVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0Fz-0001JZ-TK; Thu, 20 Jun 2019 16:49:51 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0FM-000165-Q1
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:49:15 +0000
Received: by mail-qk1-x742.google.com with SMTP id l128so2391917qke.2
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 09:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=829lbkNVKVvO4IPRXGAwDfDwkNN3afdAsnYF+a2YEsM=;
 b=aJC5IbH09VqJ5L3x0Q2P/vdyGVj04jt+mOrx8MojMr34HRL9FTmxFEg2TQhHifyDZQ
 zJGpxBPdLE71kW8SpPaYQSQWCVmyOhq1uOAmmKBIEN1rx7yhd1GioZ2gCS8hKvWMwuGs
 Ec0/B4GH/O+G+7ljUgQ5LlaF/Bjjq3TqiBOS0/qgjrWpIrW2VurIj26fyeXJYmhMhTCo
 cMW7nwDNhlIjYLXWE1Eg9qDAte24DnQqGNVoJKhyKGoLtKGNEVDUKEx/5jgAMHSIBGBO
 8PMOE7Csa87nMhCTnW03D69d9h7ValFpBP7C4i9r5HRnKMQV1y5wzzjsye3BHTyIMbA9
 DqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=829lbkNVKVvO4IPRXGAwDfDwkNN3afdAsnYF+a2YEsM=;
 b=R9spePwEUsfr35G/LZNSu8Xpu05YGHRz5vsn9tmCtklMJRv0/4LK6/vUe9bGnJDHJP
 Z8Y+5TpRmvQUUkDZwGHhk09iQlWvn2Nt5+ebTTERy5E6DgexaZ7w0xufzwIq3AJgrokl
 +izOyEs9G+s4faCXy3ocNMPgEZSVee7aHjQdvCg/8T0+2lgN35kkCYxfaE3WAkjbCmRy
 krWJjApmWxT1Jtvv+2eOu2S03LDZLiLyrGVpHK1VVU81ZtGxTWtHOdGZJVQCENd0gTyU
 GdicDak6uloXhwqlN8M9Y3nIF/RXIgGLANnykks4gnJj/G6gw2PBaQqdRvEyU66xHlIJ
 hvGw==
X-Gm-Message-State: APjAAAWDSvmwFUd6uXr9l8GZndhr2Vd00z+vXYn9XzV0XSdfZ7yT4SYy
 twjMekUJL931/FOpXf+9qHTgHQ==
X-Google-Smtp-Source: APXvYqw7o+HXcNgbAT7Mxcu/N67Vdjqf/udIRQ32pWb17pSApuDTFWC8DfL+yTMaUbEhp4oKyoolPg==
X-Received: by 2002:ae9:ee17:: with SMTP id i23mr1814457qkg.401.1561049350327; 
 Thu, 20 Jun 2019 09:49:10 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id u7sm94016qta.82.2019.06.20.09.49.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 09:49:09 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1he0FJ-0005H9-BN; Thu, 20 Jun 2019 13:49:09 -0300
Date: Thu, 20 Jun 2019 13:49:09 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 20/28] IB/core: Introduce API for initializing a RW
 ctx from a DMA address
Message-ID: <20190620164909.GC19891@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190620161240.22738-21-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620161240.22738-21-logang@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_094913_587335_E1C1DBB0 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 10:12:32AM -0600, Logan Gunthorpe wrote:
> Introduce rdma_rw_ctx_dma_init() and rdma_rw_ctx_dma_destroy() which
> peform the same operation as rdma_rw_ctx_init() and
> rdma_rw_ctx_destroy() respectively except they operate on a DMA
> address and length instead of an SGL.
> 
> This will be used for struct page-less P2PDMA, but there's also
> been opinions expressed to migrate away from SGLs and struct
> pages in the RDMA APIs and this will likely fit with that
> effort.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>  drivers/infiniband/core/rw.c | 74 ++++++++++++++++++++++++++++++------
>  include/rdma/rw.h            |  6 +++
>  2 files changed, 69 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
> index 32ca8429eaae..cefa6b930bc8 100644
> +++ b/drivers/infiniband/core/rw.c
> @@ -319,6 +319,39 @@ int rdma_rw_ctx_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
>  }
>  EXPORT_SYMBOL(rdma_rw_ctx_init);
>  
> +/**
> + * rdma_rw_ctx_dma_init - initialize a RDMA READ/WRITE context from a
> + *	DMA address instead of SGL
> + * @ctx:	context to initialize
> + * @qp:		queue pair to operate on
> + * @port_num:	port num to which the connection is bound
> + * @addr:	DMA address to READ/WRITE from/to
> + * @len:	length of memory to operate on
> + * @remote_addr:remote address to read/write (relative to @rkey)
> + * @rkey:	remote key to operate on
> + * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
> + *
> + * Returns the number of WQEs that will be needed on the workqueue if
> + * successful, or a negative error code.
> + */
> +int rdma_rw_ctx_dma_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
> +		u8 port_num, dma_addr_t addr, u32 len, u64 remote_addr,
> +		u32 rkey, enum dma_data_direction dir)

Why not keep the same basic signature here but replace the scatterlist
with the dma vec ?

> +{
> +	struct scatterlist sg;
> +
> +	sg_dma_address(&sg) = addr;
> +	sg_dma_len(&sg) = len;

This needs to fail if the driver is one of the few that require
struct page to work..

Really want I want to do is to have this new 'dma vec' pushed through
the RDMA APIs so we know that if a driver is using the dma vec
interface it is struct page free.

This is not so hard to do, as most drivers are already struct page
free, but is pretty much blocked on needing some way to go from the
block layer SGL world to the dma vec world that does not hurt storage
performance.

I am hoping that the biovec dma mapping that CH has talked about will
give the missing pieces.

FWIW, rdma is one of the places that is largely struct page free, and
has few problems to natively handle a 'dma vec' from top to bottom, so
I do like this approach.

Someone would have to look carefully at siw, rxe and hfi/qib to see
how they could continue to work with a dma vec, as they do actually
seem to need to kmap the data they are transferring. However, I
thought they were using custom dma ops these days, so maybe they just
encode a struct page in their dma vec and reject p2p entirely?

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
