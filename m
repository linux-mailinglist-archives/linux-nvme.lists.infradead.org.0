Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22AC5A4D7
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 21:09:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUg2Qt8iskQRSGxaGBDut0RLcGxiJHnWOPSlK1rpiko=; b=E0PgpACB/l5eBs
	3k/JAQmdjUPXHxKWPd/qOAiDdCY6fDuLR732RqDJtSS1/mmQ0dNAVAFxBYCkm1hBDmYgMZaB+XfQH
	MrwXa/Rg2XYHhk6RmCgKqTMtiyw/3+8ThjgHAXaZlYqeOZr7EHDnI+vbDZTlXkMZPFBNDWpSBypSU
	URNhNrUrgjvtUwMWFeF2IOwEHtt1gCgMjrnyEyZoSWPlTZ5AQ4pjpW84uVn4qx+vGw06xnok9fLKg
	85RsOESwuAoosPkBbJXnz9jUUzp+2Kk4RV0fodjF0+TP6jCbPnjWpiFJwMzmdwyLOvjfdy1f7bNIc
	lWdZt8EgPNzU/fY5xUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwFq-0001Eg-Rj; Fri, 28 Jun 2019 19:09:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwFe-0001DT-3d
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 19:09:41 +0000
Received: by mail-pl1-x641.google.com with SMTP id 9so2979650ple.5
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 12:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V6v+ChBPjDEkXeOyVL5WvJjC6m+aI/H7zTWv+Pb4ySg=;
 b=ApiOTl2ueSukYFkNah+vjl4vAZhsxgdyJZ8GrApbUEHrL2ifv9zSROVGfq52Y1UHv3
 jYH9POnFQ9yngjkv85OxF/I8nZeG5jD5N8uRS5l/zb+IqKwuhJg/5vMXa02pMvXuOsz3
 HYQ+xUuy27yxIlFhLsVFlMKlZLJZc94cLwpg/yeqydRHEGGVDt64rtPn82MK03shusAr
 m/TrdHQQ3aV6n6Vv+9bS2cn7+Uka0KOu++iK+9dh2XdTRy5tLMzGSOFDxjJp6yn2agbI
 ln7WGR3VdDUrbjU8q8uQacYahDvy3e3E1eFzr8b1eY415IHxqTLqpwkOgcDugYjeH+i7
 +sHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V6v+ChBPjDEkXeOyVL5WvJjC6m+aI/H7zTWv+Pb4ySg=;
 b=LPGHUWywJbg2qNH8fsb2H/POAQUGslEQ8TXk9VKAcbRqgSbt2SaDoNfBvQpCfuaJxJ
 JxzXS0BmmPmLxzo+pjAhQfuymMjfKlYnzvkSFVSh6ilnpMpF5LJG/4RjzsLeFLMllxLY
 1OqREZ1mLtuCjm9i1Fs3dwWgMcNueCg26AImpNNfd5fBsr7P5ivVg0aizCq9+fVrf83X
 VeAqFvCjg9APMU36CfaLnCitHKXO05kbucEmKonl7M+zMUzU+5kwUIjZSQKdFvmYqRoq
 Acz+L8XAvwlhrqBvtAkzh68ysFRWi41M8DeBGZPrRyMxSEZsrArIL0kgLuxfFMPNVY1d
 IiFQ==
X-Gm-Message-State: APjAAAW279fH/RNKAIdciCq57FyYuFM51xXrEPI1xIyXdVjFPRt6U8vK
 URMreuEWPoBar+n6fifTXP9wjw==
X-Google-Smtp-Source: APXvYqwFQy/tc32tInYqRQ3bQI7rptoLYbxDx6uCGkLXXCzcIjRb+a+mrA3L2cQ2IbpjP7BiMBXHuw==
X-Received: by 2002:a17:902:f089:: with SMTP id
 go9mr13409423plb.81.1561748977536; 
 Fri, 28 Jun 2019 12:09:37 -0700 (PDT)
Received: from ziepe.ca ([216.9.110.14])
 by smtp.gmail.com with ESMTPSA id r88sm2982578pjb.8.2019.06.28.12.09.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 Jun 2019 12:09:36 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgwFX-0004Gx-D3; Fri, 28 Jun 2019 16:09:31 -0300
Date: Fri, 28 Jun 2019 16:09:31 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190628190931.GC3877@ziepe.ca>
References: <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
 <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
 <20190628045705.GD3705@ziepe.ca>
 <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
 <20190628172926.GA3877@ziepe.ca>
 <25a87c72-630b-e1f1-c858-9c8b417506fc@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25a87c72-630b-e1f1-c858-9c8b417506fc@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_120938_273310_32F767C0 
X-CRM114-Status: GOOD (  25.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Fri, Jun 28, 2019 at 12:29:32PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-06-28 11:29 a.m., Jason Gunthorpe wrote:
> > On Fri, Jun 28, 2019 at 10:22:06AM -0600, Logan Gunthorpe wrote:
> > 
> >>> Why not?  If we have a 'bar info' structure that could have data
> >>> transfer op callbacks, infact, I think we might already have similar
> >>> callbacks for migrating to/from DEVICE_PRIVATE memory with DMA..
> >>
> >> Well it could, in theory be done, but It just seems wrong to setup and
> >> wait for more DMA requests while we are in mid-progress setting up
> >> another DMA request. Especially when the block layer has historically
> >> had issues with stack sizes. It's also possible you might have multiple
> >> bio_vec's that have to each do a migration and with a hook here they'd
> >> have to be done serially.
> > 
> > *shrug* this is just standard bounce buffering stuff...
> 
> I don't know of any "standard" bounce buffering stuff that uses random
> other device's DMA engines where appropriate.

IMHO, it is conceptually the same as memcpy.. And probably we will not
ever need such optimization in dma map. Other copy places might be
different at least we have the option.
 
> IMO the bouncing in the DMA layer isn't a desirable thing, it was a
> necessary addition to work around various legacy platform issues and
> have existing code still work correctly. 

Of course it is not desireable! But there are many situations where we
do not have the luxury to work around the HW limits in the caller, so
those callers either have to not do DMA or they have to open code
bounce buffering - both are wrong.

> > What I see as the question is how to layout the BIO. 
> > 
> > If we agree the bio should only have phys_addr_t then we need some
> > 'bar info' (ie at least the offset) in the dma map and some 'bar info'
> > (ie the DMA device) during the bio construciton.
> 
> Per my other email, it was phys_addr_t plus hints on how to map the
> memory (bus address, dma_map_resource, or regular). This requires
> exactly two flag bits in the bio_vec and no interval tree or hash table.
> I don't want to have to pass bar info, other hooks, or anything like
> that to the block layer.

This scheme makes the assumption that the dma mapping struct device is
all you need, and we never need to know the originating struct device
during dma map. This is clearly safe if the two devices are on the
same PCIe segment

However, I'd feel more comfortable about that assumption if we had
code to support the IOMMU case, and know for sure it doesn't require
more info :(

But I suppose it is also reasonable that only the IOMMU case would
have the expensive 'bar info' lookup or something.

Maybe you can hide these flags as some dma_map helper, then the
layering might be nicer:

  dma_map_set_bio_p2p_flags(bio, phys_addr, source dev, dest_dev) 

?

ie the choice of flag scheme to use is opaque to the DMA layer.

> > If we can spare 4-8 bits in the bio then I suggest a 'perfect hash
> > table'. Assign each registered P2P 'bar info' a small 4 bit id and
> > hash on that. It should be fast enough to not worry about the double
> > lookup.
> 
> This feels like it's just setting us up to run into nasty limits based
> on the number of bits we actually have. The number of bits in a bio_vec
> will always be a precious resource. If I have a server chassis that
> exist today with 24 NVMe devices, and each device has a CMB, I'm already
> using up 6 of those bits. Then we might have DEVICE_PRIVATE and other
> uses on top of that.

A hash is an alternative data structure to a interval tree that has
better scaling for small numbers of BARs, which I think is our
case.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
