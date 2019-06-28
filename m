Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4201D5A258
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 19:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CncBfWezyltBdCnw2QVIztV7EFkX99Yu++Uf5DHucJ0=; b=Uw2dmS0e0yS5Bf
	VIVmLA6SLtNBHISYEVBYnkpKGAWNbkW2z/4btMjm/mHpP8J/IC+rwcvzx1jWSxm270Pk0Yd9s6cf6
	X4XCrQ/O8zONjgJvS2X4FxvhCQ++aoJyEb8DHcUXzDLidU3UP2qtsJZMyqCbr6FXrz+281Pd9Nr8N
	Q27ecmma/WTCiyhI0QI8aVg2a/b0Y/atYMYlXP4bDMv9VJml+AJvhiZKXslnAiMgiP6rgLgTX5RNG
	/Qrp5eh27F1sTuAa54DS5/XiOQe08jnDI0zdvmo6Row5lB4OXMLffkKKWqDTtlppm2bZ5uaUVOa3F
	u4ZT6ufVTH0xE9eGuYAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgugs-0007D1-GT; Fri, 28 Jun 2019 17:29:38 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgugj-0007Bc-BR
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 17:29:33 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so3328712pfa.4
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 10:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rma7fKPl8WRrgspEuPOD2qANxVH7cGLiOLxSkWJa8ic=;
 b=XYoROQr0/ERbcbKHajZ9Ao3WWSavmnOg/Y1z8MrsPjnp/F3Mz4YCfc1CESGqd6xvqp
 G/h60ThiovpqKD4QdExA6FuXtxhUcEQN+2U/+tsZcCmKTft/Z3BVxcRSXu5AYrGtSqEt
 l66sDEwjFyZseeRQhhjOI2oAzYb7ShiVd70Qc5r4FBXt77QBTckVjCvftyqonWfZqoEB
 eYXCjr1MHIbZowSaRL54JLuZ7Tt9Ga6wnKoJx84slf19tjTeG3Woch/+c01ImrrI21mt
 43UwLOJYZ8no5rburHx8FYkfKFAzZ+oMF2zUO4JZ/STiuIyyPJ/xC586TAhOxAbO1Dd6
 XAIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rma7fKPl8WRrgspEuPOD2qANxVH7cGLiOLxSkWJa8ic=;
 b=YN2vfgJGHLu++xoiV3VFUGNSa7ROT5qXlIfmIa3dbnA5Y1GUmwvFHNpMZRgUrefUFU
 WX3OjD9dIIVTKFkdjK8mO4uBod8BLuNsPawhQ4TEk1O+4ljNe4EKR1BBhY08DPucTeWv
 zSgXlgDK5HE0eLblXamiVPtwHBlIKf47oqCnhR8bYeY1JiJ7gV8QnuYdtMRCRwYJp32u
 xSDpEotVDDYQkSpZup/MElg7Q5GFM4KGodCydYAwkHaf7LC/hBoV3rJ3zMNGF5LAjUgd
 PsK3fZSA7QPTDpy7pZO7C+vpMV0P5nhc4/0xj+1XoeT39C/5bmmdZiBkDdre4KJ9RfWe
 NvPw==
X-Gm-Message-State: APjAAAVS2rRml9DkGdrqEOUmDmDAw6EeHBfdhFPgHs4MZtjbZanUC0Z0
 ihSMTYYevOdHQlurECjhVPAa7w==
X-Google-Smtp-Source: APXvYqynICMG9uwmXh/mYczktdhjlf/b/oAI8FqIWjcwxPV0uEU4Ql2AIiqWQC9VF6cvDKyRwxevBg==
X-Received: by 2002:a63:4105:: with SMTP id o5mr10706003pga.308.1561742968383; 
 Fri, 28 Jun 2019 10:29:28 -0700 (PDT)
Received: from ziepe.ca ([76.14.1.154])
 by smtp.gmail.com with ESMTPSA id d6sm2257715pgf.55.2019.06.28.10.29.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 10:29:27 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgugg-00015s-PF; Fri, 28 Jun 2019 14:29:26 -0300
Date: Fri, 28 Jun 2019 14:29:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190628172926.GA3877@ziepe.ca>
References: <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
 <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
 <20190628045705.GD3705@ziepe.ca>
 <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_102929_535362_AA96DE6C 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Jun 28, 2019 at 10:22:06AM -0600, Logan Gunthorpe wrote:

> > Why not?  If we have a 'bar info' structure that could have data
> > transfer op callbacks, infact, I think we might already have similar
> > callbacks for migrating to/from DEVICE_PRIVATE memory with DMA..
> 
> Well it could, in theory be done, but It just seems wrong to setup and
> wait for more DMA requests while we are in mid-progress setting up
> another DMA request. Especially when the block layer has historically
> had issues with stack sizes. It's also possible you might have multiple
> bio_vec's that have to each do a migration and with a hook here they'd
> have to be done serially.

*shrug* this is just standard bounce buffering stuff...
 
> > I think the best reason to prefer a uniform phys_addr_t is that it
> > does give us the option to copy the data to/from CPU memory. That
> > option goes away as soon as the bio sometimes provides a dma_addr_t.
> 
> Not really. phys_addr_t alone doesn't give us a way to copy data. You
> need a lookup table on that address and a couple of hooks.

Yes, I'm not sure how you envision using phys_addr_t without a
lookup.. At the end of the day we must get the src and target 'struct
device' in the dma_map area (at the minimum to compute the offset to
translate phys_addr_t to dma_addr_t) and the only way to do that from
phys_addr_t is via lookup??

> > At least for RDMA, we do have some cases (like siw/rxe, hfi) where
> > they sometimes need to do that copy. I suspect the block stack is
> > similar, in the general case.
> 
> But the whole point of the use cases I'm trying to serve is to avoid the
> root complex. 

Well, I think this is sort of a seperate issue. Generically I think
the dma layer should continue to work largely transparently, and if I
feed in BAR memory that can't be P2P'd it should bounce, just like
all the other DMA limitations it already supports. That is pretty much
its whole purpose in life.

The issue of having the caller optimize what it sends is kind of
separate - yes you definately still need the egress DMA device to
drive CMB buffer selection, and DEVICE_PRIVATE also needs it to decide
if it should migrate or not.

What I see as the question is how to layout the BIO. 

If we agree the bio should only have phys_addr_t then we need some
'bar info' (ie at least the offset) in the dma map and some 'bar info'
(ie the DMA device) during the bio construciton.

What you are trying to do is optimize the passing of that 'bar info'
with a limited number of bits in the BIO.

A single flag means an interval tree, 4-8 bits could build a probably
O(1) hash lookup, 64 bits could store a pointer, etc.

If we can spare 4-8 bits in the bio then I suggest a 'perfect hash
table'. Assign each registered P2P 'bar info' a small 4 bit id and
hash on that. It should be fast enough to not worry about the double
lookup.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
