Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591DB4DB14
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 22:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sCTyaI6dhd3DUxy+nUEgOMT08aufKtPJUOajL22wf4Q=; b=sJQbveLAy1eVyx
	fQT6Xdnx+8P7jFTF7uCxwilbY8bIflJug1Im8Mx5n1n7biSrr2p8NbaweXckRI6hGftlUHjLqGqmV
	vOP9ZHbod4sN+s5wX9Bp1NChsbxQJ1TJfjH6dRip4WlA1y33AyX3nW13epj4SWHdMaRf7PoXxqqoS
	1gWwMbyT1JxBkCA9MTt5pYdGMLpYWeZlpOyb1sv1uWV8Rn6dMadeJO6qBc2D/r0O3RBMYvQezdzFG
	2DifTG7rMsrKLapA58hZSCPxtMhBG9+gmavqDLw5mw+Pv5mMv8Vb39jSdq28lNdzvw3N4Ckysd1Qb
	jd0U5qcoN/K9ZLLgjC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3Vz-0007Us-H6; Thu, 20 Jun 2019 20:18:35 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3Vq-0007UR-Lr
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 20:18:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id n5so4049507otk.1
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 13:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/1ACPvah6cwlc4NoiRokzPOQoMSdzU57I7vjUDE0u7s=;
 b=0EpvstXhVkgDZVnlntes/LFoX5DbZzZfI4fZKY04r9MHAG+jDljwalCR+pzVQcd5N+
 jCgyhrr3z4Vih61nMLUyzbi6vguWMjoCs1yxx/m+W0PmEJEir3NhOjhOIncQC8xeJlnA
 ScqRQG53Crt+W9L4aXkuF/pOTp6b6HcbioEWgVQ0Wdd8ra6AaL+LteJRGmJeMFvabjaQ
 FrxPttS8gc75CExD+3TgsHNERiQopSJetDSK5cOZIibVeewsYrEdl3fG1sHBqc0jfOZ8
 KAFi8QIcJEtIjVvj0Knw5iTcv8ArOmARLOERSJ98/s/7kGp4XUBuQ9hyjg2QbAGOBYHJ
 8+Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/1ACPvah6cwlc4NoiRokzPOQoMSdzU57I7vjUDE0u7s=;
 b=AEYmz+jBn58v/SaN3cwLDLi85RZjki4m+4FO1qtUdarbzXsQeEfwa2xvhiSWmehfig
 /ttB+gpR0jYhL+na3jUOFxsL4mBw9r1ba/suAXzA+GMdM4VZKi5C+Pdf56FnGGI3ttT4
 VA0M1u7PNN2aSEDpmYa8WI3648KS5LullcD5pqwnyfZXWns6dXctLS9z9YRr+EK0PDF3
 jgpQpMREMhhwWsivsKZ9peDXUqD0wZjB0EUAWl6YfzxhhUyGulkM115utcVmJYFnNPw7
 1koujmgnnIq3apSZSMazrltadZEBYmjcjm9LdBf2A71Nl4/N71UGQqH7Lilauq8FNLGs
 Xg8Q==
X-Gm-Message-State: APjAAAWZqbyE4P6aMQDjjxGhMamvzeMxzTI1e1Cg8J8eSHy19/UX33Ie
 cEDxibUpNZZEgsveecAytwLAZ5pFdAMDZClQc9PUXg==
X-Google-Smtp-Source: APXvYqyamVcYjA+tR+olDR6UwLLdjY5DvyoCREZvBR4JUnDzN9QbxbjICVUWXIInA4FtacuQ6q6CVYes9j/gU6KU7Aw=
X-Received: by 2002:a9d:470d:: with SMTP id a13mr40714284otf.126.1561061905657; 
 Thu, 20 Jun 2019 13:18:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca>
In-Reply-To: <20190620193353.GF19891@ziepe.ca>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 20 Jun 2019 13:18:13 -0700
Message-ID: <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_131826_768360_EF8A8A70 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

On Thu, Jun 20, 2019 at 12:34 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Thu, Jun 20, 2019 at 11:45:38AM -0700, Dan Williams wrote:
>
> > > Previously, there have been multiple attempts[1][2] to replace
> > > struct page usage with pfn_t but this has been unpopular seeing
> > > it creates dangerous edge cases where unsuspecting code might
> > > run accross pfn_t's they are not ready for.
> >
> > That's not the conclusion I arrived at because pfn_t is specifically
> > an opaque type precisely to force "unsuspecting" code to throw
> > compiler assertions. Instead pfn_t was dealt its death blow here:
> >
> > https://lore.kernel.org/lkml/CA+55aFzON9617c2_Amep0ngLq91kfrPiSccdZakxir82iekUiA@mail.gmail.com/
> >
> > ...and I think that feedback also reads on this proposal.
>
> I read through Linus's remarks and it he seems completely right that
> anything that touches a filesystem needs a struct page, because FS's
> rely heavily on that.
>
> It is much less clear to me why a GPU BAR or a NVME CMB that never
> touches a filesystem needs a struct page.. The best reason I've seen
> is that it must have struct page because the block layer heavily
> depends on struct page.
>
> Since that thread was so DAX/pmem centric (and Linus did say he liked
> the __pfn_t), maybe it is worth checking again, but not for DAX/pmem
> users?
>
> This P2P is quite distinct from DAX as the struct page* would point to
> non-cacheable weird memory that few struct page users would even be
> able to work with, while I understand DAX use cases focused on CPU
> cache coherent memory, and filesystem involvement.

What I'm poking at is whether this block layer capability can pick up
users outside of RDMA, more on this below...

>
> > My primary concern with this is that ascribes a level of generality
> > that just isn't there for peer-to-peer dma operations. "Peer"
> > addresses are not "DMA" addresses, and the rules about what can and
> > can't do peer-DMA are not generically known to the block layer.
>
> ?? The P2P infrastructure produces a DMA bus address for the
> initiating device that is is absolutely a DMA address. There is some
> intermediate CPU centric representation, but after mapping it is the
> same as any other DMA bus address.

Right, this goes back to the confusion caused by the hardware / bus /
address that a dma-engine would consume directly, and Linux "DMA"
address as a device-specific translation of host memory.

Is the block layer representation of this address going to go through
a peer / "bus" address translation when it reaches the RDMA driver? In
other words if we tried to use this facility with other drivers how
would the driver know it was passed a traditional Linux DMA address,
vs a peer bus address that the device may not be able to handle?

> The map function can tell if the device pair combination can do p2p or
> not.

Ok, if this map step is still there then reduce a significant portion
of my concern and it becomes a quibble about the naming and how a
non-RDMA device driver might figure out if it was handled an address
it can't handle.

>
> > Again, what are the benefits of plumbing this RDMA special case?
>
> It is not just RDMA, this is interesting for GPU and vfio use cases
> too. RDMA is just the most complete in-tree user we have today.
>
> ie GPU people wouuld really like to do read() and have P2P
> transparently happen to on-GPU pages. With GPUs having huge amounts of
> memory loading file data into them is really a performance critical
> thing.

A direct-i/o read(2) into a page-less GPU mapping? Through a regular
file or a device special file?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
