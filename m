Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCDF5931F
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 06:57:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0Hn9LugD1Ff5oqqaxkfQtD1BbSAzFvqQstFm3IVETA=; b=ptiw+BULA0V7lX
	Dyv6j6IEdgO+r1oxCyvx0Cix0z3eMyecd81ANsgQUWoe3IQNgm1b20ghag9tX5Xfiy8gC+UpedFlk
	XYAmazyc30YZn1xZoMY1PU4ttnfHVTVdpO5hiQb98lmWpWWHbn+TQFiEpK2KMrV+5YS/tPlhS1pLT
	NhD5bp41wR5qQKhtJjV48bhduWmz//6OSN2GLuyw/Ai8frbMU78n2xW5BwhcjUt5l8yB76m5WuP8v
	pPEYaHp/wmflqIalc8HgVo6dhS5Ae08zJf3djAWbh9X5s0A9Cl02lMrhunAk3/1U47CZqrI5x1BEJ
	95WIQl57p+H/lNiubZeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiws-0000Me-Iw; Fri, 28 Jun 2019 04:57:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiwe-0000LM-MH
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 04:57:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id 19so2340958pfa.4
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 21:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=40otFp6F7wYNIWaw/L8cC57SBD2LZP+aE8/JoUmprMs=;
 b=knQXOlDKBpBtHrf+czhnvWYdz1+B5psqY/9VBnD5Bll42lCBz4ch413YItZFEx3az1
 ISaGOSH+9ewkyDPJmxpQbLOsHIo4j45b3b+bHlKbx3IC6VXuuHxvXwxYYjK6i+1yY3WO
 tnVerVdRLkJu1JQfvf1X89e6/XyVnX5bpxBuBnWwezmVJFldo6pt/YPKJkfMX2mhqiO7
 a1XAbS3B4mVVfwpLReE0DlrQwGmstqPTi1PaquRmBP8Mw+ZJqDqT5JecqvmSHEpolzBb
 zfsyGOWbgiu8k3yofhq3zpKynkFNg+JuHq+anDOUA3PRiTHXg4T0v5euRw4sm2s0YxMe
 Sf1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=40otFp6F7wYNIWaw/L8cC57SBD2LZP+aE8/JoUmprMs=;
 b=R9+FOSI6Hi4qOOWl0JtJ3iAJGUQE2oYPRIK87+820TFfWN1PGgrFZX3htmL3L3xE+P
 H59E+ZLxuh0gw5Fa/v7U/0t3b1IcK+AnMEQwLSpoLhlFkQ0pGZg4Degg2BJ4o2w9kbAz
 Rsna9ACEMxY9Q4I4i/V68sxwl7WTMfGqQKxN3yPkDsrFPMel+34PP5aWUhP+0yUXWQAQ
 qu3H4RdN0hQLV+7/4N1maAvczHRS+2rRgnOWd06p6fES4H6AniYlRcMabrUvhB83iMwY
 UB5M5G112Q7HwPNWO6hNXrwDR5CYwK7n/6nFfQwqrMaXNjbxbvAyAhXTtfTzrjb/yitF
 hYKg==
X-Gm-Message-State: APjAAAV9/K6N+nxRf3+MpLHox+eL60MmafJdgKKs8LrUTPKqb0YbcRro
 TNrnc50mR1gRukaXgBuk1g2ufg==
X-Google-Smtp-Source: APXvYqxTBH0nvx29YJYThIHjGxJ954k/GtXrMkQAHpN5aViwJe/lSkpGTzLn6t61soW4ouOasFHRtg==
X-Received: by 2002:a17:90a:3ac2:: with SMTP id
 b60mr10815350pjc.74.1561697827207; 
 Thu, 27 Jun 2019 21:57:07 -0700 (PDT)
Received: from ziepe.ca ([38.88.19.130])
 by smtp.gmail.com with ESMTPSA id t24sm721884pfh.113.2019.06.27.21.57.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 21:57:06 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgiwb-000123-Lo; Fri, 28 Jun 2019 01:57:05 -0300
Date: Fri, 28 Jun 2019 01:57:05 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190628045705.GD3705@ziepe.ca>
References: <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
 <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_215708_732748_432E6A0B 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Thu, Jun 27, 2019 at 10:49:43AM -0600, Logan Gunthorpe wrote:

> > I don't think a GPU/FPGA driver will be involved, this would enter the
> > block layer through the O_DIRECT path or something generic.. This the
> > general flow I was suggesting to Dan earlier
> 
> I would say the O_DIRECT path has to somehow call into the driver
> backing the VMA to get an address to appropriate memory (in some way
> vaguely similar to how we were discussing at LSF/MM)

Maybe, maybe no. For something like VFIO the PTE already has the
correct phys_addr_t and we don't need to do anything..

For DEVICE_PRIVATE we need to get the phys_addr_t out - presumably
through a new pagemap op?

> If P2P can't be done at that point, then the provider driver would
> do the copy to system memory, in the most appropriate way, and
> return regular pages for O_DIRECT to submit to the block device.

That only makes sense for the migratable DEVICE_PRIVATE case, it
doesn't help the VFIO-like case, there you'd need to bounce buffer.

> >> I think it would be a larger layering violation to have the NVMe driver
> >> (for example) memcpy data off a GPU's bar during a dma_map step to
> >> support this bouncing. And it's even crazier to expect a DMA transfer to
> >> be setup in the map step.
> > 
> > Why? Don't we already expect the DMA mapper to handle bouncing for
> > lots of cases, how is this case different? This is the best place to
> > place it to make it shared.
> 
> This is different because it's special memory where the DMA mapper
> can't possibly know the best way to transfer the data.

Why not?  If we have a 'bar info' structure that could have data
transfer op callbacks, infact, I think we might already have similar
callbacks for migrating to/from DEVICE_PRIVATE memory with DMA..

> One could argue that the hook to the GPU/FPGA driver could be in the
> mapping step but then we'd have to do lookups based on an address --
> where as the VMA could more easily have a hook back to whatever driver
> exported it.

The trouble with a VMA hook is that it is only really avaiable when
working with the VA, and it is not actually available during GUP, you
have to have a GUP-like thing such as hmm_range_snapshot that is
specifically VMA based. And it is certainly not available during dma_map.

When working with VMA's/etc it seems there are some good reasons to
drive things off of the PTE content (either via struct page & pgmap or
via phys_addr_t & barmap)

I think the best reason to prefer a uniform phys_addr_t is that it
does give us the option to copy the data to/from CPU memory. That
option goes away as soon as the bio sometimes provides a dma_addr_t.

At least for RDMA, we do have some cases (like siw/rxe, hfi) where
they sometimes need to do that copy. I suspect the block stack is
similar, in the general case.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
