Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867DF5727A
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tp8BM/LrTFLfsHbxiGODZJZYd2q7B0b1zAwRdPDLgQ0=; b=uIvtrHsk+WwiDN
	vV45iXxhzmkBwEWOZsdnhn3r+NXubXqS9lGLQmtEEYueXacJiGKTViYNjswEHtrFwdDEG+ECNuLkv
	QxqiqWRWi+98LeA98S17Sfm4KB9uBL+pkJ/FurdqzXd1s78AFjAZX7o3xbJncLupK+BfdLScLJ/xm
	MRGkgN1ws4/EiufvH40cBYE8NVPSoEy9/8HOmLYgA8O3+Z8cm5R5QihuMc0Z4gvUz+j0SxCcwXwOg
	4KTsTF0O1JchSTivXJQ4wNhVi3h0c9S4Iisnma6N4m5X9tYBSMFhNpQYlfCb3ik9LRHfg+EUr2Xlp
	+1KnNJ0aUPuIKFLcLvJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEPz-0004UE-DV; Wed, 26 Jun 2019 20:21:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEPp-0004TK-EB
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:21:15 +0000
Received: by mail-wm1-x342.google.com with SMTP id f17so3366847wme.2
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OEhwVsMA3XIUpQpge8sgosocEMtryj/JM+GB3rxyxT0=;
 b=OBEQAdaamQq8DPC1D4CThjy6eV1PBaNXcwZ+5jy2E8475I+WlimCxcgC3HJrBb4Iz4
 0dVkwRaL7lX/ctEdlDzagRE1VjUA7WgtIyx9GWUJ9NC106rOa7MKYzwoHJ2RscAOG+kh
 liv+OYx3WzQdJn1mrZtCIdVHhASpUGnRNKNhiZ7r/v5geqVaTiphTa45C/tD01oSWo5h
 QTrSESIxcee5CT0pENaIxan0g84iO6+Gu//kRQzqTrgZKveJizs6i+Yea/t5c+iH4IKc
 klNTP6r9pOee8VKujHJlPdpJFTYHtk11YSZvgxxI84b3uC0Vv/4Zf/sKzq4cF6jKoHjF
 Kqog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OEhwVsMA3XIUpQpge8sgosocEMtryj/JM+GB3rxyxT0=;
 b=SROEU1fHWZXIBOK0LXeX3T2qlJZN6Jo0nnZG/SHXj42dlvf4+hvcvPnQzxxZFHvoi2
 5YCHVFM9MGBJVdij0M48gWluqIMzgpIeNoz1Y4pi2hv0eMoy1xlF3ARQEmPNinfGfEIh
 07Au0BUqljpjqMJByE3s2BDOkYAe4d+QmFD3/W/iuLopP6G02DUrvxjSPi6dp28EYi5S
 KXOqQGhKxl9WKAU69fHjMQpEjMICzOU9wf5r/V7xlIVzcb+SOQ0fybjRHbr4pqdBCDFf
 nm02Cji2KHtd/PO83G7Bcm11Jd8uyBBu0ZeCHb07sPqiK5IUMUAFExEjl3qxPwkHg5ab
 FuwQ==
X-Gm-Message-State: APjAAAWFNw7xSp6AfGGYObv4BuJ4mgV0FwJy+yO/VNrVy6NJ5AOzBkje
 BTH+7ShjGvd9rTMnReGbtKVLbg==
X-Google-Smtp-Source: APXvYqxSlsbE0PgFuCvLKbN06OJ5ff+z7EepoAOuIIAuuzNl3RxOn4db108Jy3bqKOnIlDRyHb96EQ==
X-Received: by 2002:a1c:cfc3:: with SMTP id f186mr446698wmg.134.1561580471033; 
 Wed, 26 Jun 2019 13:21:11 -0700 (PDT)
Received: from ziepe.ca ([148.87.23.38])
 by smtp.gmail.com with ESMTPSA id r5sm38908409wrg.10.2019.06.26.13.21.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 13:21:10 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgEPk-0001YU-12; Wed, 26 Jun 2019 17:21:08 -0300
Date: Wed, 26 Jun 2019 17:21:08 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190626202107.GA5850@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_132113_896595_49A74A42 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Wed, Jun 26, 2019 at 12:31:08PM -0600, Logan Gunthorpe wrote:
> > we have a hole behind len where we could store flag.  Preferably
> > optionally based on a P2P or other magic memory types config
> > option so that 32-bit systems with 32-bit phys_addr_t actually
> > benefit from the smaller and better packing structure.
> 
> That seems sensible. The one thing that's unclear though is how to get
> the PCI Bus address when appropriate. Can we pass that in instead of the
> phys_addr with an appropriate flag? Or will we need to pass the actual
> physical address and then, at the map step, the driver has to some how
> lookup the PCI device to figure out the bus offset?

I agree with CH, if we go down this path it is a layering violation
for the thing injecting bio's into the block stack to know what struct
device they egress&dma map on just to be able to do the dma_map up
front.

So we must be able to go from this new phys_addr_t&flags to some BAR
information during dma_map.

For instance we could use a small hash table of the upper phys addr
bits, or an interval tree, to do the lookup.

The bar info would give the exporting struct device and any other info
we need to make the iommu mapping.

This phys_addr_t seems like a good approach to me as it avoids the
struct page overheads and will lets us provide copy from/to bio
primitives that could work on BAR memory. I think we can surely use
this approach in RDMA as well.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
