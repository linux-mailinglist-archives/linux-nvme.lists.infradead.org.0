Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9934DDD0
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 01:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7t/+8blzDLao/Hht0PYA0HHJfp6nyfBAMThmq3hgMpQ=; b=qJRFHXNtLsTeQM
	oPobJ2L27Pu4iUKsW8N05ibc0OyYRB0+p3deZBSIzY70IpAiMbPjP23YGLXXnrCnicH2FVb/PZ1sj
	M6w2b2rKu8k0tYmckkKLwdXOeEgzaTgd+gSJ+QcjFFkGe4R/nZCX/9hpnEe/WgQ/fZgPGdqKLe0St
	f3xT/fSoBRaapFdcSMFL6O8YNqoRZibB+z5gF6ytfLBoKZ5ZhphYVZjNNy/phGJ/nSWgmp7vsAeAa
	yqAJ9Srv+YldEnz92O1D+O8kZCsj6xuxwNq3zuC8cIJtUC+Gs90BgDU01FGPMwoM0UUkHF+EOAU4E
	cFmjwuVvHiG0A5qhZ8XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he6fp-0007pk-OW; Thu, 20 Jun 2019 23:40:57 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he6fk-0007pO-Pl
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 23:40:54 +0000
Received: by mail-oi1-x241.google.com with SMTP id 65so3387905oid.13
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 16:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=scNy0Tfe+BdKZYj5qpcGlHdmruocVLL136U7yeONjQY=;
 b=0cnLFHw3wyYOy7GJtgs9QmCRnq9eswmVPzeiBI0nzxLIy08w2sne8Vna1Y1grmzkuK
 orXF6GaJfScNIrL+CmEEjfEWeebyFY2BN5C/NjI21notoMZHMFZD8O85FX4FqZJ8Z8r9
 c9WxGq/LLz3LwW3HtljqhWfi0h5SxokaderedRePsLiY444AX/karrDFsSoksoWcCCgZ
 +7KfzBlJb6BYSae/aXYMhV6RyOh/BJhvk9JSH7sv18Mz9knbjhajd4FDNRnGNZuLTc2X
 k/ws4WPi1RFgTyfCmAwHTUeSPhtAYFKNfpXRN3OehGFyz6DqnUc2COeygcoP24s922vi
 ch3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=scNy0Tfe+BdKZYj5qpcGlHdmruocVLL136U7yeONjQY=;
 b=iJG8nRkIiJQYf7j705FU/yD8c234U8enopmi1467o3InAHDA2D0e/NFwpxkeN5G304
 mq7qlWSfvc5o9y3KoWq3tvMIbTb4+JLrv8LzbvyQVWevQz3wa0EFQxki+8JV12QZSJIe
 oJWuJuIYCihnFycaAnwCMxbawzCD82RgAso9pLWm0Kwd+i2uZCy8JSI9Ja2U/C1fW8cv
 nC0C7esnJWal/qHGb7NwnyCzWBHWAHMsb9Ns5MQd0tzANydPldsrqkZ+nUadP4L27IfN
 Qy4afd+6mTyyqKa6/0DN77TKl9a604+P7qFrHJ30ha+ivCwtDtEADQA+78QNC33+1nLL
 rmKA==
X-Gm-Message-State: APjAAAXUAbNEg6zPfeTV8U/p1iexzd0Is2Z0kzK8vP3GLbxXlp85TMFF
 RtLfY8XYKZ/zLIrgX0vW9NKf4y16QqSOXWRUS5lZvA==
X-Google-Smtp-Source: APXvYqy+dAobdNgdfPhzhP0DQIKrQv88wgGeAk/7F+FLUOR+10JaG31ibuPbYrW/Rv/5imGwwlnZKa4QroXz2NVXZYc=
X-Received: by 2002:aca:ec82:: with SMTP id k124mr901169oih.73.1561074051695; 
 Thu, 20 Jun 2019 16:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <91eba9a0-27b4-08b4-7c12-86e24e1bfe85@deltatee.com>
In-Reply-To: <91eba9a0-27b4-08b4-7c12-86e24e1bfe85@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 20 Jun 2019 16:40:40 -0700
Message-ID: <CAPcyv4gPOXaL3qks6RMufu==O9RV2m_-7bBmJqKOFYTf4v_jXQ@mail.gmail.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_164052_840546_F0613674 
X-CRM114-Status: GOOD (  18.88  )
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
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma <linux-rdma@vger.kernel.org>,
 linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:35 PM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2019-06-20 12:45 p.m., Dan Williams wrote:
> > On Thu, Jun 20, 2019 at 9:13 AM Logan Gunthorpe <logang@deltatee.com> wrote:
> >>
> >> For eons there has been a debate over whether or not to use
> >> struct pages for peer-to-peer DMA transactions. Pro-pagers have
> >> argued that struct pages are necessary for interacting with
> >> existing code like scatterlists or the bio_vecs. Anti-pagers
> >> assert that the tracking of the memory is unecessary and
> >> allocating the pages is a waste of memory. Both viewpoints are
> >> valid, however developers working on GPUs and RDMA tend to be
> >> able to do away with struct pages relatively easily
> >
> > Presumably because they have historically never tried to be
> > inter-operable with the block layer or drivers outside graphics and
> > RDMA.
>
> Yes, but really there are three main sets of users for P2P right now:
> graphics, RDMA and NVMe. And every time a patch set comes from GPU/RDMA
> people they don't bother with struct page. I seem to be the only one
> trying to push P2P with NVMe and it seems to be a losing battle.
>
> > Please spell out the value, it is not immediately obvious to me
> > outside of some memory capacity savings.
>
> There are a few things:
>
> * Have consistency with P2P efforts as most other efforts have been
> avoiding struct page. Nobody else seems to want
> pci_p2pdma_add_resource() or any devm_memremap_pages() call.
>
> * Avoid all arch-specific dependencies for P2P. With struct page the IO
> memory must fit in the linear mapping. This requires some work with
> RISC-V and I remember some complaints from the powerpc people regarding
> this. Certainly not all arches will be able to fit the IO region into
> the linear mapping space.
>
> * Remove a bunch of PCI P2PDMA special case mapping stuff from the block
> layer and RDMA interface (which I've been hearing complaints over).

This seems to be the most salient point. I was missing the fact that
this replaces custom hacks and "special" pages with an explicit "just
pass this pre-mapped address down the stack". It's functionality that
might plausibly be used outside of p2p, as long as the driver can
assert that it never needs to touch the data with the cpu before
handing it off to a dma-engine.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
