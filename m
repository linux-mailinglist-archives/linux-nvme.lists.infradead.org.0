Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFFE4D9B1
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 20:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bd1KrkR9n2+dTEb11q0Bw35xtm3A4Mrueg/uO49xPZU=; b=WP0jf/VLzfaq/P
	l+r5xo1I+gLkCFvIORTlEQsSTsgGEq84kO6hoE1R9wossSvcTsM7gygIWtu+A63RZ6DzsdqDVkELo
	6aYK7RUlMvayIJHZDU2XhOzM8xE1XUXLYnmDOKTRaOAQrLmAsTEIEBJYq+M7DdXIj35YUEDBbNfGT
	dw+PzT1+CDBalktPKKxxAaGh7XD+in9BCKZ9rDZjX+tRtKgIQ5ldsIfZotWOUR2zuVM7NnP60C5wy
	DOqS5EBFEEOwALX3kpEg6vFrg1Eo5VxG45oSJYgfhQZBevie6T0EFpRUW+feah8guwjTlojD0Bbqy
	E5m4O7xgb9ct+uf8HPeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he24O-0006kp-0b; Thu, 20 Jun 2019 18:46:00 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he24F-0006jP-2S
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 18:45:52 +0000
Received: by mail-oi1-x244.google.com with SMTP id m206so2884785oib.12
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 11:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5VxtaXvavuIj/WSwZHnAHCDIqk0MlZk9aDQYd+gdFk4=;
 b=PvhKM5V+6yqnt2aU5HxaJksE4uPAQmNs5skwhuJ6n8y5XgZlmqj3eeb150T7SBN6SE
 gIm81w+vU1PtiVJorKQJeZTOHd5OFru39TU4SqL/hr3Rtekmt9KMOkokl1EdfE8VlZMk
 1NkJs/r1WvgIbwR5DJQ0DbUyxIuHbh3jBXe8LKcbCXSMEinhkyK/xlaSv+78VovqYMtg
 q1DEjNCTrdAytojICVF4MAcW1VhW5C6b2MEs9t9SRvlyLXj7Lh7Yhv74YAr6kla9u8Qp
 j8ElcBqtPWtUqgwrRBxPPxQ++W67n8FbK6X2OdqDEGZA60ahsSfATor7gBkpcrk+yQzG
 znqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5VxtaXvavuIj/WSwZHnAHCDIqk0MlZk9aDQYd+gdFk4=;
 b=iu/jDzfKPXBTALjPnStEpqKs4KN9zDNOX9ErvgWgAlqWeSzrjaWnM21IJapQRvJ8Jh
 7mJ5xiEPdJQ9rmSFnDjjcqAazPAIYn39w5SauIJkPXOpL0GjqT5AfMBEStTl6vhkYUxj
 KZUhSa7PvIZcIF4iW4AnlJrBTZmmIVG0/vn4U2LL50CrXlIFJbDM08JvZlogIx+b/P34
 H7nTYtN4UDgt2c60JTmKEShLr/+zpBIZdQe8/LivkniRK3dSDEwcvoWhsr6T8Gnf2Z6Q
 UENNfGTmSvuaDGRILcgIVoNDiIBKuzx799QpCHb477Sew6xFlZ9LRkUiNGSMWRP8fyD5
 Wj9w==
X-Gm-Message-State: APjAAAWx3gauU7j4gPMy7Wzc5cKS6mUrVlC4orliW0JySArhB4RXE6D+
 sJKB2CvbpzkTyTTMfdfpScJCOyB1d2mZw4hkkwteew==
X-Google-Smtp-Source: APXvYqxzQJlp4UblxkfvTerY7hS4anNKGD6JaiZlLO54L7p3q2W7RUsf+utlNLQ8WFVB+mqDyi2X0jOIR79GoWAQb9A=
X-Received: by 2002:aca:ec82:: with SMTP id k124mr222240oih.73.1561056349598; 
 Thu, 20 Jun 2019 11:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190620161240.22738-1-logang@deltatee.com>
In-Reply-To: <20190620161240.22738-1-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 20 Jun 2019 11:45:38 -0700
Message-ID: <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_114551_177689_B4E75845 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

On Thu, Jun 20, 2019 at 9:13 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> For eons there has been a debate over whether or not to use
> struct pages for peer-to-peer DMA transactions. Pro-pagers have
> argued that struct pages are necessary for interacting with
> existing code like scatterlists or the bio_vecs. Anti-pagers
> assert that the tracking of the memory is unecessary and
> allocating the pages is a waste of memory. Both viewpoints are
> valid, however developers working on GPUs and RDMA tend to be
> able to do away with struct pages relatively easily

Presumably because they have historically never tried to be
inter-operable with the block layer or drivers outside graphics and
RDMA.

>  compared to
> those wanting to work with NVMe devices through the block layer.
> So it would be of great value to be able to universally do P2PDMA
> transactions without the use of struct pages.

Please spell out the value, it is not immediately obvious to me
outside of some memory capacity savings.

> Previously, there have been multiple attempts[1][2] to replace
> struct page usage with pfn_t but this has been unpopular seeing
> it creates dangerous edge cases where unsuspecting code might
> run accross pfn_t's they are not ready for.

That's not the conclusion I arrived at because pfn_t is specifically
an opaque type precisely to force "unsuspecting" code to throw
compiler assertions. Instead pfn_t was dealt its death blow here:

https://lore.kernel.org/lkml/CA+55aFzON9617c2_Amep0ngLq91kfrPiSccdZakxir82iekUiA@mail.gmail.com/

...and I think that feedback also reads on this proposal.

> Currently, we have P2PDMA using struct pages through the block layer
> and the dangerous cases are avoided by using a queue flag that
> indicates support for the special pages.
>
> This RFC proposes a new solution: allow the block layer to take
> DMA addresses directly for queues that indicate support. This will
> provide a more general path for doing P2PDMA-like requests and will
> allow us to remove the struct pages that back P2PDMA memory thus paving
> the way to build a more uniform P2PDMA ecosystem.

My primary concern with this is that ascribes a level of generality
that just isn't there for peer-to-peer dma operations. "Peer"
addresses are not "DMA" addresses, and the rules about what can and
can't do peer-DMA are not generically known to the block layer. At
least with a side object there's a chance to describe / recall those
restrictions as these things get passed around the I/O stack, but an
undecorated "DMA" address passed through the block layer with no other
benefit to any subsystem besides RDMA does not feel like it advances
the state of the art.

Again, what are the benefits of plumbing this RDMA special case?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
