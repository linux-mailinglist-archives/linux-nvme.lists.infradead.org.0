Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9878F5D824
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 00:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfGmY15dH2fAtaiI1bKIKw90Cs4D9GmouH/zqnUCTOw=; b=d4XG15AiG4baUf
	4eL89ZOJtDQw5a+uvPm4VpT29PiBNvDE/ydX/OT4ueYr5ZJ3FNqQ0n8Wdn+BrefXasbBMYWzDKx5w
	Mo0T2je/daj48ziEZb3dzEQFIcgYniYwlbIPJlmV0Wo5A2R3h2Qk2pF+suLbx/kHGX2xKQd0di3+6
	O5/HHzwJN8wRZ/mYjIExAMfzaRuENFuBcLtjljpXKjRcECPQoAFuH8u5hW4ISYEQVtWR4QTbWGBIE
	FNnCdNb1+nvqk3SImaTxBMlRHKCDz8fLGTiQkjIqvD4SWCBU6PRNVZ6iG4nGbqCz66+y09hJ86Cte
	808aQ4wMtREmI7YBbalg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiRX0-00070S-BI; Tue, 02 Jul 2019 22:45:46 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRWo-0006zK-0l
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 22:45:35 +0000
Received: by mail-qk1-x742.google.com with SMTP id i125so122166qkd.6
 for <linux-nvme@lists.infradead.org>; Tue, 02 Jul 2019 15:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MdOAu5KOREG+EbRK6Nq+YrKhvJXs3HmUBDCrdZ5KiX8=;
 b=AAxljt6pnpE2phFv0au/KMXwtndrEkpi/j2/EJsMk1Ltm/znau8U4oC61EO2/d59Sk
 xJPU1u0BtjEPFESekQuX2BJ1u/SqIZ7bMflpffyt+/cccxx1yOrusUEn8yOp2ywWrOCf
 Lld5MDyXgnJIr3ve2Fh/w5j5fkwVyTxgAGins3VH29cEQcbzt+qyDR2bHhjmFSi3jbg6
 /F7F3gPexkQQQsNw63xYHhsOrFz2Bzyo6kl0n9KIvQtP8bxrPZ5QJz8X1GXONm3VkV3X
 NKNrdqQe5b84FicJ1h0fFR5CFdrR9SaWP/732ngOtvNn+h+/TB30mAQ6Zl96yTI1xlw7
 I9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MdOAu5KOREG+EbRK6Nq+YrKhvJXs3HmUBDCrdZ5KiX8=;
 b=g0SZdlhumDEdTphXslW5n6xYTUECJl28UY/iXxfO0+8hUIBxkjlKNMaSXttmhfSJR4
 61ngFAa3aBVSAp40xDgHssDKV3h641UgmBBHblqVddA4lP4nqZVBOYpiqtrzbVX6Nu1G
 R6qY72ZC4v0N+zSiR7b1Lp5xFugARFQLZ9qsnn24R/CTXDLpNoiZQqSmNTvm8HqX+IaR
 PBcUqpM3HeGaZbr0z8JIygUjN5ka1sutLOR7JxSXUx3Ca5i0tmTsfDbtm9G9Yaawiu5e
 M6vHCfy0yflirZzT/0xLm1wgWc77KuTK3mnfDMYjwRaIgZ3HQcx8qa6jBj0J8Uz8xn8o
 fLzg==
X-Gm-Message-State: APjAAAU1fQhOXebs8PfBl6kxTQXL3G5/41bM8TC3bs1ZaDpBN4fQ0Mqr
 usOr+W4Tlm+N88C2BA6F6YC6eA==
X-Google-Smtp-Source: APXvYqzUcLNxWLj8a1mpiDGB2K6z0y2WfLWUEsAEOQWJszxbWpBMhPdailzBeKZol6g1VGK7JNoCSA==
X-Received: by 2002:a37:9904:: with SMTP id b4mr26656775qke.159.1562107531140; 
 Tue, 02 Jul 2019 15:45:31 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id j3sm141576qki.5.2019.07.02.15.45.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jul 2019 15:45:30 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hiRWk-0003Lm-82; Tue, 02 Jul 2019 19:45:30 -0300
Date: Tue, 2 Jul 2019 19:45:30 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190702224530.GD11860@ziepe.ca>
References: <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
 <20190628045705.GD3705@ziepe.ca>
 <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
 <20190628172926.GA3877@ziepe.ca>
 <25a87c72-630b-e1f1-c858-9c8b417506fc@deltatee.com>
 <20190628190931.GC3877@ziepe.ca>
 <cb680437-9615-da42-ebc5-4751e024a45f@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb680437-9615-da42-ebc5-4751e024a45f@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_154534_246466_4EFEBFE8 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Jun 28, 2019 at 01:35:42PM -0600, Logan Gunthorpe wrote:

> > However, I'd feel more comfortable about that assumption if we had
> > code to support the IOMMU case, and know for sure it doesn't require
> > more info :(
> 
> The example I posted *does* support the IOMMU case. That was case (b1)
> in the description. The idea is that pci_p2pdma_dist() returns a
> distance with a high bit set (PCI_P2PDMA_THRU_HOST_BRIDGE) when an IOMMU
> mapping is required and the appropriate flag tells it to call
> dma_map_resource(). This way, it supports both same-segment and
> different-segments without needing any look ups in the map step.

I mean we actually have some iommu drivers that can setup P2P in real
HW. I'm worried that real IOMMUs will need to have the BDF of the
completer to route completions back to the requester - which we can't
trivially get through this scheme.

However, maybe that is just a future problem, and certainly we can see
that with an interval tree or otherwise such a IOMMU could get the
information it needs.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
