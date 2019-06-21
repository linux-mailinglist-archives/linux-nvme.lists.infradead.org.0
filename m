Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A554EE37
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 19:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFhr3KbhtJ2s6bjtYkUsX96sYv+nS/6nUBxvsEBPCbs=; b=Qy6l7o3G8zsurD
	xfxBnxsnvlWhTuPEHZmupCXSF3EWsAEYGWJPs5v/ecskZM9XlF8pD+AXh6T9pH86lmeJI4EZOPAYS
	7dcHzXpQ0eCSanYMpU7W9mE58LuVn+0it2azouPPqTGZRqb80bu1vvaHn0oOTheDi8JNUcecDnCDh
	yLw0LHsjDt97eGd/7tc6dIiEHjhs1fdrp/SbZ7vB9F7Gdx9KhuvDBGjc299TyvgbCZhWf5SlfqTVE
	NEhB/kd/qnRhd2EGLAS26PsCJ9fM1wq/Vi3PXMehpUw1Xge93DaEv4A+K96kva3c42z/eqnpWYHya
	SVO+EOTka7Zm28Dzi9gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNjy-0001Ih-BQ; Fri, 21 Jun 2019 17:54:22 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNjr-0001IA-0L
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 17:54:16 +0000
Received: by mail-oi1-x241.google.com with SMTP id v186so5263032oie.5
 for <linux-nvme@lists.infradead.org>; Fri, 21 Jun 2019 10:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fWe7JksCarDHmhen9C6EallwqzcNZ3VFsoR3OU1kFs4=;
 b=As84DIw2X46ExupdWbzau6JXRpfTr7Tvcr3DD71THl2AN+TnXs0Ix3/5NguTZ90GAz
 ekIGjYs3rGIAaU4Zuhl2b4EC6neLHHrPVvKddYVZchq1kXmnav7PduMCSelt4uRqkhBs
 H6p2Pp58HhLk/LXcpDOvizAOu5AHmWbnz/KsTZgVWJrU6fecK457WQGr88aTmThOzoDo
 kIbZw6EA5L0scx+eGkbpDNANsnLPNtIWwS38tDIBjYdLir4joVLYIfAPI245qWV0YPLa
 EaVu5FdkVKrQyA3imM8SjFY32qBhtVTtiyaBMdTtwU7Qw8VwBekQT0lKHFzrqw/XiED8
 oIzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fWe7JksCarDHmhen9C6EallwqzcNZ3VFsoR3OU1kFs4=;
 b=RehEm1LIqX9hMeXWcxvpXDMlQg+c5D3ih+R04OY6weAE/MuY9y9J4GT8NR4XERPqa8
 pYDPb+ELyusWoh/vWDkJ9/F7/sVz3yTMa4ps1SW0rnDC3hmlcGUxnqcgCghFjv1h8KVj
 jOEl5vrXJuF0f4C0sh4bCICMiqbXW5b5dMzPVUxm7hEyGx6xP68CgvEFJSkcfkWFHk0k
 u6M+DZpWJzIKOZnZIB2AmdejgnEdUALMhGIw1k3Z5M1tgddSNOdEomwieJ8rcnhOYYDt
 c6kqKRlnz9VgW9Z9j2Msil2hDb4v8uPHSNhn0pXRBRWmD+2j0jqQgH+O7Ty2pLRC0fe8
 dEiA==
X-Gm-Message-State: APjAAAV4tgePp3HSS/dGyb1JWMiSnFerhf0fw8u9oe6Ix92FYck/GpBw
 Tgt7ecEsmtHTwYQyHTk4pMhcahzcdnFh750gmpQQLKbX
X-Google-Smtp-Source: APXvYqxXNEbZxH2OdZlBe/PUqIOg67j/c0SHGrDk007xE/yb3KKMifeBH5RBDM8Vp5lM8PAB7JeI8idaR7EqqO3oB4Y=
X-Received: by 2002:aca:ec82:: with SMTP id k124mr3352429oih.73.1561139654054; 
 Fri, 21 Jun 2019 10:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca>
 <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
 <20190621174724.GV19891@ziepe.ca>
In-Reply-To: <20190621174724.GV19891@ziepe.ca>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 21 Jun 2019 10:54:03 -0700
Message-ID: <CAPcyv4h6CjzxbWLg3upmUiaYQ2eqP-ZyHxMBfh6kkQpwHX9HWg@mail.gmail.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_105415_071352_F66E2734 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 10:47 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Thu, Jun 20, 2019 at 01:18:13PM -0700, Dan Williams wrote:
>
> > > This P2P is quite distinct from DAX as the struct page* would point to
> > > non-cacheable weird memory that few struct page users would even be
> > > able to work with, while I understand DAX use cases focused on CPU
> > > cache coherent memory, and filesystem involvement.
> >
> > What I'm poking at is whether this block layer capability can pick up
> > users outside of RDMA, more on this below...
>
> The generic capability is to do a transfer through the block layer and
> scatter/gather the resulting data to some PCIe BAR memory. Currently
> the block layer can only scatter/gather data into CPU cache coherent
> memory.
>
> We know of several useful places to put PCIe BAR memory already:
>  - On a GPU (or FPGA, acclerator, etc), ie the GB's of GPU private
>    memory that is standard these days.
>  - On a NVMe CMB. This lets the NVMe drive avoid DMA entirely
>  - On a RDMA NIC. Mellanox NICs have a small amount of BAR memory that
>    can be used like a CMB and avoids a DMA
>
> RDMA doesn't really get so involved here, except that RDMA is often
> the prefered way to source/sink the data buffers after the block layer has
> scatter/gathered to them. (and of course RDMA is often for a block
> driver, ie NMVe over fabrics)
>
> > > > My primary concern with this is that ascribes a level of generality
> > > > that just isn't there for peer-to-peer dma operations. "Peer"
> > > > addresses are not "DMA" addresses, and the rules about what can and
> > > > can't do peer-DMA are not generically known to the block layer.
> > >
> > > ?? The P2P infrastructure produces a DMA bus address for the
> > > initiating device that is is absolutely a DMA address. There is some
> > > intermediate CPU centric representation, but after mapping it is the
> > > same as any other DMA bus address.
> >
> > Right, this goes back to the confusion caused by the hardware / bus /
> > address that a dma-engine would consume directly, and Linux "DMA"
> > address as a device-specific translation of host memory.
>
> I don't think there is a confusion :) Logan explained it, the
> dma_addr_t is always the thing you program into the DMA engine of the
> device it was created for, and this changes nothing about that.

Yup, Logan and I already settled that point on our last exchange and
offered to make that clearer in the changelog.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
