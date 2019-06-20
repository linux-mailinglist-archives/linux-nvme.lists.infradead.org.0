Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E84DA39
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 21:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WreaSV72SseuVifhn8wgLhx/J833k9wGAdJpUMJwQd0=; b=PPVoGAjXmRpqVq
	RatFYyEwwUEPpEC/ZyrqCbt53lk2L96cV3Whogki+5ODN9uBHSdY49MoeH8Gv9egZB4GdFz1RAOLv
	xugqykfQ3bgdY7rsz88tO9y24v+e0hjAR7FCIp3AgOSG+2Oc8FiBGz4p9euyZTBUc4GHpGc7pOPJ8
	/3d+EJdyOVJ0LOsstAXpV8vMzfEq1UEWKomgs8N6kuUOxvuXps+NwuSPM2N6l36tMSIHDDf40mJ5Q
	ICauZw5eK+fwfRMbZJGDr+03EpDEnVbAPzVGUDU2O8UUKOFxymcP8Xw5jeP5fe0rdvvDHnicRc3hZ
	fi4dYddtXta3sqs76naA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2ot-0007Tu-EO; Thu, 20 Jun 2019 19:34:03 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2ol-0007T1-Vd
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 19:33:57 +0000
Received: by mail-qk1-x741.google.com with SMTP id m14so2728881qka.10
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 12:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=U0/M0hJ5KzLhd8Pu6VVXoRLFvHgguLN3K3fjwlVNVaM=;
 b=Wt2ovZze54UqqqHzCmnXCGlb5Qc3bnUJjGObm0j8zbiYre8HlvEk5208lFcXh7pfvs
 zv5mh5GND6Bykqlz3QQS9Mbg/CG59bWfywFqT02HavCh4SuLF6NAC/WP+XrfIa6Knj4B
 CdPS626RVGFyzJ8coeEllSa84zPPVHqdGM4FF5J5QBbaL1Z30OFC6v7TFAE91MmAtxB5
 5pqEAXptwIWPMJY9VB5+d3VeyRmIbMyV6lfNLd5bap3hf+isOY8MtgUb2sGq410RxNnI
 5ROVsOyIKWybeR9yAm5KdOEmV8A/m+0PJLN1KrfAMRKRy3bwQ6EqDdTUAV739zFNtR2z
 Mohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U0/M0hJ5KzLhd8Pu6VVXoRLFvHgguLN3K3fjwlVNVaM=;
 b=rdQM0PAi1VYipeiPVfsprM6DkW5dBaBFoDezf9G82x0qks4A3gQb4loGSyE6B158q7
 nC5H8YT87pcjkhWk30xwe2yzrNhEJ6rDYGxovzrYzruYPU56wJSq9ekwR4lT7xJmCBAq
 H7qubv9VHSOk+zouaG5+xmrOGEKvOboXhl/g0mMZY5HbTdTF/HCE/pqtHxZW2NWaB3gQ
 4jhdp6bQthAHCzSVjs7NPKzjEfsCdG9EDJLsQBA7d5Mx09ZVD2L94iPVLKls8N7GblXc
 /iX5ZYelea2x6NUq1WnjKMJ+C1Q5htPkS9n69Da9yfoEGNDVuNgyZ3LyjcKoqJkJp9TM
 nD/w==
X-Gm-Message-State: APjAAAVMwrYFJjQNMoSiMwRpzRKljxdvH48k8/xtDTE0oIcn1YlMRHqR
 MiQ+TlHgyjqyWB+PXurIxX/CaQ==
X-Google-Smtp-Source: APXvYqzMjt1OdaqNY1f3tojkMWZyYagV+dqwE2MNLCBNiHRuxvCmS8jTQnWPWnW999Z5H3so8l5PEA==
X-Received: by 2002:a05:620a:16c1:: with SMTP id
 a1mr64294792qkn.269.1561059234931; 
 Thu, 20 Jun 2019 12:33:54 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id k5sm298816qkc.75.2019.06.20.12.33.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 12:33:54 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1he2ok-0006eH-0K; Thu, 20 Jun 2019 16:33:54 -0300
Date: Thu, 20 Jun 2019 16:33:53 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190620193353.GF19891@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_123356_434883_CEF78ED5 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

On Thu, Jun 20, 2019 at 11:45:38AM -0700, Dan Williams wrote:

> > Previously, there have been multiple attempts[1][2] to replace
> > struct page usage with pfn_t but this has been unpopular seeing
> > it creates dangerous edge cases where unsuspecting code might
> > run accross pfn_t's they are not ready for.
> 
> That's not the conclusion I arrived at because pfn_t is specifically
> an opaque type precisely to force "unsuspecting" code to throw
> compiler assertions. Instead pfn_t was dealt its death blow here:
> 
> https://lore.kernel.org/lkml/CA+55aFzON9617c2_Amep0ngLq91kfrPiSccdZakxir82iekUiA@mail.gmail.com/
> 
> ...and I think that feedback also reads on this proposal.

I read through Linus's remarks and it he seems completely right that
anything that touches a filesystem needs a struct page, because FS's
rely heavily on that.

It is much less clear to me why a GPU BAR or a NVME CMB that never
touches a filesystem needs a struct page.. The best reason I've seen
is that it must have struct page because the block layer heavily
depends on struct page.

Since that thread was so DAX/pmem centric (and Linus did say he liked
the __pfn_t), maybe it is worth checking again, but not for DAX/pmem
users?

This P2P is quite distinct from DAX as the struct page* would point to
non-cacheable weird memory that few struct page users would even be
able to work with, while I understand DAX use cases focused on CPU
cache coherent memory, and filesystem involvement.

> My primary concern with this is that ascribes a level of generality
> that just isn't there for peer-to-peer dma operations. "Peer"
> addresses are not "DMA" addresses, and the rules about what can and
> can't do peer-DMA are not generically known to the block layer.

?? The P2P infrastructure produces a DMA bus address for the
initiating device that is is absolutely a DMA address. There is some
intermediate CPU centric representation, but after mapping it is the
same as any other DMA bus address.

The map function can tell if the device pair combination can do p2p or
not.

> Again, what are the benefits of plumbing this RDMA special case?

It is not just RDMA, this is interesting for GPU and vfio use cases
too. RDMA is just the most complete in-tree user we have today.

ie GPU people wouuld really like to do read() and have P2P
transparently happen to on-GPU pages. With GPUs having huge amounts of
memory loading file data into them is really a performance critical
thing.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
