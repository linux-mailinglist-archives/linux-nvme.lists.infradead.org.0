Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066B35733D
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 23:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8HBmecG1m9jZULccc0orDrN0zBKEgMYA2EoGiHNwmk=; b=aJSDBfVcamgweF
	VPCGU5aMOFe3ffo09sxERXLTLQvhMGmCZX20F6x1xl9GWLkiW9FdHYruJ3G0mP+bsFVTuk5WePt2k
	D5+WXd79csqPUf15jLGEOna+XmJjU1200b4G5kSqr5fGKVBTm0hnU5bFa60pQnx8fFiQ0UJPLEFZm
	j5P2keWlI93Ty1ox7KaJ8ZJ/blvecAbeNnsrBxnbrUd8auqVbzFd6lbaXS60/B6UjU65Jky7heMYV
	lq+pDSTkwOo5KMbeSpvalyicRyeKaYecOIQMW36T0w+zceVEKky/1bKPAc66Xdv2xQPNZsSvr+H+r
	yiFvHCoTVI00jMK/nqPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgF1p-0003yJ-9q; Wed, 26 Jun 2019 21:00:29 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgF1g-0003xK-NX
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 21:00:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so2072735plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 14:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n76JK0suQeeFW6xhcmoHNw4tHnQpupZZOhWEzOjxM6k=;
 b=Bzws5exLVLEQgXXhLhLFWqBVYZgCRHFpKtPyJBjrSzDy5QeDAHSVxsk8YbisLRWP8K
 gyvdK9QMRZC/Q9Lv8BEC1bfZcneBYta/G2rBRALUo6HTzmUqzFrqVSlVj6lxlLP8iVD/
 ItXAUkEnikSxp7rVIR66tj23/0yyoFt6OR9A5zPnz0Zdh0XhP3IFRUqiX6ed1780IoNc
 68xBPq3zg9j1M+eT5Cgt5VQeye7h1DSohOgMQOI97tGEfTRmJRNbHVsgZr/i/ymDA0oA
 rvDhJ0nAfbrM6fDUXFbeFu7iU0ZewvMV7C6xqGI1Z1GztnlgZD3hT6pAeKUwZKjoJnKO
 +dBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n76JK0suQeeFW6xhcmoHNw4tHnQpupZZOhWEzOjxM6k=;
 b=kabm4lnQ2IpsIVaABhHWivls/3sjTnIXRMGabM6bzvMTKLGPoBmqfK7muniWADMEL6
 fwBlzxXODF4mH9x1MrIGpPGFis5hAjzlIa9m+cDumzCxJZpRHzdpqKkNYs+CE8ce+dUq
 TI4QP4MuG18mqydgMZ1YrkATL2iT/bNqmvcOa4MkKH4Q07685vZ6RB4uxdtE0Ol4eBl9
 Q9AM0o/u2o9mj1Tduvusxt1t9JpDf7ZwWJ+xLIBwpeIPjBzLi/3BWscFp7n/K/KazsY2
 jWlTN1X5UG0cSHPdoWcdOw32X+sDwALlllNsw9IQnuHXC++a4HYBwsrR26+wa1/tiEgV
 3jzQ==
X-Gm-Message-State: APjAAAVT/9x78M0skWeMvM8UcLa8sQALnsHDE3B+0BRIK9Uc0kFqH67G
 Deg4PHPmCuk1BxCgi3WpZ7gMAw==
X-Google-Smtp-Source: APXvYqxn58rW6cya64e/DP42Cl4dWDsxuE9ORp8ZfuhKICUjVgykMrFxCwFRYmlyz7x1VeOTA+0fBw==
X-Received: by 2002:a17:902:20b:: with SMTP id 11mr144473plc.78.1561582819849; 
 Wed, 26 Jun 2019 14:00:19 -0700 (PDT)
Received: from ziepe.ca ([148.87.23.38])
 by smtp.gmail.com with ESMTPSA id p27sm134242pfq.136.2019.06.26.14.00.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 14:00:19 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgF1e-0001mN-Hl; Wed, 26 Jun 2019 18:00:18 -0300
Date: Wed, 26 Jun 2019 18:00:18 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190626210018.GB6392@ziepe.ca>
References: <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_140020_770860_3BF704D8 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 26, 2019 at 02:45:38PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-06-26 2:21 p.m., Jason Gunthorpe wrote:
> > On Wed, Jun 26, 2019 at 12:31:08PM -0600, Logan Gunthorpe wrote:
> >>> we have a hole behind len where we could store flag.  Preferably
> >>> optionally based on a P2P or other magic memory types config
> >>> option so that 32-bit systems with 32-bit phys_addr_t actually
> >>> benefit from the smaller and better packing structure.
> >>
> >> That seems sensible. The one thing that's unclear though is how to get
> >> the PCI Bus address when appropriate. Can we pass that in instead of the
> >> phys_addr with an appropriate flag? Or will we need to pass the actual
> >> physical address and then, at the map step, the driver has to some how
> >> lookup the PCI device to figure out the bus offset?
> > 
> > I agree with CH, if we go down this path it is a layering violation
> > for the thing injecting bio's into the block stack to know what struct
> > device they egress&dma map on just to be able to do the dma_map up
> > front.
> 
> Not sure I agree with this statement. The p2pdma code already *must*
> know and access the pci_dev of the dma device ahead of when it submits
> the IO to know if it's valid to allocate and use P2P memory at all.

I don't think we should make drives do that. What if it got CMB memory
on some other device?

> > For instance we could use a small hash table of the upper phys addr
> > bits, or an interval tree, to do the lookup.
> 
> Yes, if we're going to take a hard stance on this. But using an interval
> tree (or similar) is a lot more work for the CPU to figure out these
> mappings that may not be strictly necessary if we could just pass better
> information down from the submitting driver to the mapping driver.

Right, this is coming down to an optimization argument. I think there
are very few cases (Basically yours) where the caller will know this
info, so we need to support the other cases anyhow.

I think with some simple caching this will become negligible for cases
you care about

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
