Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0934F4EE1F
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 19:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSD48zgI4uFuSSE48TN9WfbSrmPHPg/4ndVHHIXJyWA=; b=H1s2Crx7+rtDxI
	T/LUYkjVFfzx9PXq+W82zLrY9jtuLYmYM+/PztlijFqnSlGS3FWZDS3R3tCUW//JMbzMMGW8IYb8O
	P87gSu8XaVf/6kHC2k2CBPjfhhEs7CfI4LL2i51capFQ8EZb1FlXv8XPkF4cMWjHCnQ/syIC2kxY0
	EnbX4xw4FELOwSCCqal/i7w2tg6MJzx4q2hBWScIsJkvSv2+C/GoAvNZmBsh6vbWFv+yxFJUoIJro
	r8EolyJlVru0nopUliUpyMihHxGgWyIDoKOBhPUyW7yQEmeO+edGso/EqqSLJ2mS008pfS9YeCcvJ
	WddKNjkwz6k+4TcJ+ZWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNdO-0006Ah-Fc; Fri, 21 Jun 2019 17:47:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNdH-00069i-QZ
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 17:47:29 +0000
Received: by mail-qt1-x844.google.com with SMTP id d23so7802114qto.2
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 10:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UJ7zr3BMlP+D/21QaluO3IJXggd4WWthL7KU1eJt5LU=;
 b=aCfnaPMvDaA78Mv5k5ur7VCixpP5F9r0nrtXoL0bNjrtavhSWpa/Xp37Y9kJAKY7Cw
 BKosLY8jx/OuXb5vEV0atvoLpWrIk6kcWRjuMizj1Wdy4+jfyM2jdOr59/0yzrXlFK3U
 yfmLv4y2Dm496vq2UcfTnb9rycSDhAhPproM54A1In2cWM4tiFiMSvkYk40fvwaGYKcj
 3O97gNacC+AV8g99zW3DGJ2yeH9AloFAPriEF14JOmvBILkvyAoSWq3pfSMg6UsMmUPm
 snbErb0HM55f7U+JUI5NHBGXuZSK21iToYFAXMeWQWtnL84ylNtmk67YrG5HEQGML7iu
 J90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UJ7zr3BMlP+D/21QaluO3IJXggd4WWthL7KU1eJt5LU=;
 b=bDegmcIXK2SWWO8rY83XjWygnqGL4h5v0KZJ2uZNiEEV8qGM7RF9miRCIyKqU988R3
 K70zUhvJTBwz/dtkT7Ox7h3Fbt6rm3WetnXYembZt++qlA/nhuM43IZzeZUjK2hpQE7h
 GMkYx7hEbnU2p3bOyII+f72y2MTxOYgUWxKQDBsEv1+zPxxGw7XkQpJAws/U3Y0zB0VN
 5H0iy2zCTtraaEwueGBjGwPIxoXrZnFO7A6Q+yV/ce389hqIzvlDBFOy0Fp/Er7hYk0N
 chAjTSu/kV0YpPw9p17b1A7dOzuqYJxEHQU+/wc9pQ6C8MZ+xC0gKQjVGkMJing8Yw18
 7yXw==
X-Gm-Message-State: APjAAAXn8GJHAJDeElrzWPzluOKCgOeyLlILEpQhuAhwa2rLSazprHlu
 Scv77SeuoM6hqrRdIPrhEaJxug==
X-Google-Smtp-Source: APXvYqzYxwhqo3xvnYyIGJGDhki+8Wa6Yr+9LhNg9yc2Yh32DBFiynlceLoS+GkzjCUfIhiF5T75Mg==
X-Received: by 2002:a0c:d604:: with SMTP id c4mr12256209qvj.27.1561139245935; 
 Fri, 21 Jun 2019 10:47:25 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id a11sm1652403qkn.26.2019.06.21.10.47.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 21 Jun 2019 10:47:25 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1heNdE-0005hb-Pa; Fri, 21 Jun 2019 14:47:24 -0300
Date: Fri, 21 Jun 2019 14:47:24 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190621174724.GV19891@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca>
 <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_104728_282985_C063A075 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 01:18:13PM -0700, Dan Williams wrote:

> > This P2P is quite distinct from DAX as the struct page* would point to
> > non-cacheable weird memory that few struct page users would even be
> > able to work with, while I understand DAX use cases focused on CPU
> > cache coherent memory, and filesystem involvement.
> 
> What I'm poking at is whether this block layer capability can pick up
> users outside of RDMA, more on this below...

The generic capability is to do a transfer through the block layer and
scatter/gather the resulting data to some PCIe BAR memory. Currently
the block layer can only scatter/gather data into CPU cache coherent
memory.

We know of several useful places to put PCIe BAR memory already:
 - On a GPU (or FPGA, acclerator, etc), ie the GB's of GPU private
   memory that is standard these days.
 - On a NVMe CMB. This lets the NVMe drive avoid DMA entirely
 - On a RDMA NIC. Mellanox NICs have a small amount of BAR memory that
   can be used like a CMB and avoids a DMA

RDMA doesn't really get so involved here, except that RDMA is often
the prefered way to source/sink the data buffers after the block layer has
scatter/gathered to them. (and of course RDMA is often for a block
driver, ie NMVe over fabrics)

> > > My primary concern with this is that ascribes a level of generality
> > > that just isn't there for peer-to-peer dma operations. "Peer"
> > > addresses are not "DMA" addresses, and the rules about what can and
> > > can't do peer-DMA are not generically known to the block layer.
> >
> > ?? The P2P infrastructure produces a DMA bus address for the
> > initiating device that is is absolutely a DMA address. There is some
> > intermediate CPU centric representation, but after mapping it is the
> > same as any other DMA bus address.
> 
> Right, this goes back to the confusion caused by the hardware / bus /
> address that a dma-engine would consume directly, and Linux "DMA"
> address as a device-specific translation of host memory.

I don't think there is a confusion :) Logan explained it, the
dma_addr_t is always the thing you program into the DMA engine of the
device it was created for, and this changes nothing about that.

Think of the dma vec as the same as a dma mapped SGL, just with no
available struct page.

> Is the block layer representation of this address going to go through
> a peer / "bus" address translation when it reaches the RDMA driver? 

No, it is just like any other dma mapped SGL, it is ready to go for
the device it was mapped for, and can be used for nothing other than
programming DMA on that device.

> > ie GPU people wouuld really like to do read() and have P2P
> > transparently happen to on-GPU pages. With GPUs having huge amounts of
> > memory loading file data into them is really a performance critical
> > thing.
> 
> A direct-i/o read(2) into a page-less GPU mapping? 

The interesting case is probably an O_DIRECT read into a
DEVICE_PRIVATE page owned by the GPU driver and mmaped into the
process calling read(). The GPU driver can dynamically arrange for
that DEVICE_PRIVATE page to linked to P2P targettable BAR memory so
the HW is capable of a direct CPU bypass transfer from the underlying
block device (ie NVMe or RDMA) to the GPU.

One way to approach this problem is to use this new dma_addr path in
the block layer.

Another way is to feed the DEVICE_PRIVATE pages into the block layer
and have it DMA map them to a P2P address.

In either case we have a situation where the block layer cannot touch
the target struct page buffers with the CPU because there is no cache
coherent CPU mapping for them, and we have to create a CPU clean path
in the block layer.

At best you could do memcpy to/from on these things, but if a GPU is
involved even that is incredibly inefficient. The GPU can do the
memcpy with DMA much faster than a memcpy_to/from_io.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
