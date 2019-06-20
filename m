Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EBF4D49D
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 19:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X3LywsAnr4QyzXGVKAVzvsyTIMkDybJynJ/ya4IQqs=; b=RXKPT+LfhDmyFk
	WDsPR547kJSv+8J0Ar0dbvOU8pFw+FGshtyySPK5fFxmpL6ac9K9vr4GD5qPvLwjizksmRWIFIF1W
	r4yUmlck27Fi77YKTQ0opSsMZtTiphqUVhXccAG+knvJq1sLAUOr4NIXuddKtdF58sdo3c3ne6UlQ
	QZSHDSoOIibNgQRVakb04U/5zbKfrIW/a0z/u0bJbrdAFh/cvONs0MWWdsWoXKrHQNEH5uLdipi+w
	p5X0fky/J6Hs0RuMCsU/Oba+JRxoct0DE60v7IRbn6Xk2e9ejZl37t5Tf93VI9hL6tOa6Qy35XNTM
	S05p1y5R9EpRmP2E++ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0b1-0003bx-Hp; Thu, 20 Jun 2019 17:11:35 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0aa-0003Pf-08
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 17:11:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id m29so3985717qtu.1
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 10:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B/Z1xHhYAjAI7ioTCGgFoDOmi7PSKcfXMaUReB0Dr1o=;
 b=iDKiiByf/rCLVBiwQKacZOEFqluND5l/Q7B8xuyrYYiT8npctI6tkA6bd5Z3+X6WXJ
 7gP3l17z5AQNjEKoghc1QQGWYYTQhxhcX9yGx54PMvjgvEHZEh7JKLlg64yxdauLIkD6
 PlX1F93t1CtWxQ8kNNXs9JCH7/Ycn3pW7NdVjaUwoeBrG9xILQAk6iI0m+ngDTRaz0n2
 KHM4oMsjPmMO77I7PU4GywcSoyfCFebua5oLxUE6W85UfxNuyOXg7jsaASQUndU7XOUT
 zN203NLRIh3JOjlN2kSuwATpWhmPazDPI0SbRVShwbgeM2SVzNCO4ifAlBXeUKKBuJD+
 jaDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B/Z1xHhYAjAI7ioTCGgFoDOmi7PSKcfXMaUReB0Dr1o=;
 b=LWdXCAXIahGO+AxCt9lbJs4uSyZ7T7k5UrnSpCbuD7aQx3/y2PCxy2EL01B3Y4Khpq
 6wIx4ZBvs0xApyvwpFvlJOE5w+Ui8upyGAcGzBomllUc3n2Pn2mOhMXzXnzEsQNFsfip
 P/9mz2Heaw71Sw0J8tCPOB0qG0oIW+AWHP9QKfuP8GIuxfEPfSv1Qda8cMpiqOX78jD/
 XWrmZTymz289WYx3RmXfiV/U+6PMYHGYsDtuhcgDW6MX/0SE9zzTyR+tnH10OYXYO26q
 Xu8pz2HuQjaa9Zb6nK2L7ypxejX9x4gLI9NwlPzmIhUcs6M12rOi/Bhe6LApfqCfgmcM
 c7og==
X-Gm-Message-State: APjAAAV5WCUyALpul3Vz5YIO+ihxeBcqC3C6ta1VuSRHriE/ugWJSFW6
 0yMYPQCjrfntiw0COu70Rl2KeA==
X-Google-Smtp-Source: APXvYqwc2iwZPScenX0v4jDBGu4RdLUTLz2n8sdXn8hwtd0G64nXQQ8UGnDbXfC6MHvJ9vTLmjr9lQ==
X-Received: by 2002:ac8:2e5d:: with SMTP id s29mr105147696qta.70.1561050666885; 
 Thu, 20 Jun 2019 10:11:06 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id t29sm152221qtt.42.2019.06.20.10.11.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 10:11:06 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1he0aX-0005SU-RR; Thu, 20 Jun 2019 14:11:05 -0300
Date: Thu, 20 Jun 2019 14:11:05 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 20/28] IB/core: Introduce API for initializing a RW
 ctx from a DMA address
Message-ID: <20190620171105.GD19891@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190620161240.22738-21-logang@deltatee.com>
 <20190620164909.GC19891@ziepe.ca>
 <f9186b2b-7737-965f-2dca-25e40e566e64@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f9186b2b-7737-965f-2dca-25e40e566e64@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_101108_041490_FFEE3FA3 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

On Thu, Jun 20, 2019 at 10:59:44AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-06-20 10:49 a.m., Jason Gunthorpe wrote:
> > On Thu, Jun 20, 2019 at 10:12:32AM -0600, Logan Gunthorpe wrote:
> >> Introduce rdma_rw_ctx_dma_init() and rdma_rw_ctx_dma_destroy() which
> >> peform the same operation as rdma_rw_ctx_init() and
> >> rdma_rw_ctx_destroy() respectively except they operate on a DMA
> >> address and length instead of an SGL.
> >>
> >> This will be used for struct page-less P2PDMA, but there's also
> >> been opinions expressed to migrate away from SGLs and struct
> >> pages in the RDMA APIs and this will likely fit with that
> >> effort.
> >>
> >> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> >>  drivers/infiniband/core/rw.c | 74 ++++++++++++++++++++++++++++++------
> >>  include/rdma/rw.h            |  6 +++
> >>  2 files changed, 69 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
> >> index 32ca8429eaae..cefa6b930bc8 100644
> >> +++ b/drivers/infiniband/core/rw.c
> >> @@ -319,6 +319,39 @@ int rdma_rw_ctx_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
> >>  }
> >>  EXPORT_SYMBOL(rdma_rw_ctx_init);
> >>  
> >> +/**
> >> + * rdma_rw_ctx_dma_init - initialize a RDMA READ/WRITE context from a
> >> + *	DMA address instead of SGL
> >> + * @ctx:	context to initialize
> >> + * @qp:		queue pair to operate on
> >> + * @port_num:	port num to which the connection is bound
> >> + * @addr:	DMA address to READ/WRITE from/to
> >> + * @len:	length of memory to operate on
> >> + * @remote_addr:remote address to read/write (relative to @rkey)
> >> + * @rkey:	remote key to operate on
> >> + * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
> >> + *
> >> + * Returns the number of WQEs that will be needed on the workqueue if
> >> + * successful, or a negative error code.
> >> + */
> >> +int rdma_rw_ctx_dma_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
> >> +		u8 port_num, dma_addr_t addr, u32 len, u64 remote_addr,
> >> +		u32 rkey, enum dma_data_direction dir)
> > 
> > Why not keep the same basic signature here but replace the scatterlist
> > with the dma vec ?
> 
> Could do. At the moment, I had no need for dma_vec in this interface.

I think that is because you only did nvme not srp/iser :)

> >> +{
> >> +	struct scatterlist sg;
> >> +
> >> +	sg_dma_address(&sg) = addr;
> >> +	sg_dma_len(&sg) = len;
> > 
> > This needs to fail if the driver is one of the few that require
> > struct page to work..
> 
> Yes, right. Currently P2PDMA checks for the use of dma_virt_ops. And
> that probably should also be done here. But is that sufficient? You're
> probably right that it'll take an audit of the RDMA tree to sort that out.

For this purpose I'd be fine if you added a flag to the struct
ib_device_ops that is set on drivers that we know are OK.. We can make
that list bigger over time.

> > This is not so hard to do, as most drivers are already struct page
> > free, but is pretty much blocked on needing some way to go from the
> > block layer SGL world to the dma vec world that does not hurt storage
> > performance.
> 
> Maybe I can end up helping with that if it helps push the ideas here
> through. (And assuming people think it's an acceptable approach for the
> block-layer side of things).

Let us hope for a clear decision then

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
