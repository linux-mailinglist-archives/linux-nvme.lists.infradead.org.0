Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D538558733
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 18:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCPBhoDENLQC7bVY6ztaBhMCKFoUBajhjqGRObQxv8Y=; b=CXqC3F5aRIIqJ7
	eE/KbZLr5yObAnS5MEcSsbtyNASjBx2muL2jx2MilLthJlPED233w5j3XRp6Rq5xdE5yvf2ooLbyX
	T3z/fw9xVqryt47OpS+nCOs52BMW6NMJQ2zQFquuHwYvUrvZd7UUIZQwU92YPGlqzGzd5VAvAElV+
	LFwcoYLPhtLX6BanluxQBcq6hdBzpxP1leCp0/4xA3iSnVjIKWx85uKhL85AdK4EIvYCL/E+kiA4t
	oOyo63CTuSg2A29YLORShemvWqGVrkcDtzXoyhYQvG368f/fXklnV66vLDSeclsCaGB+NHUCLnZ4a
	h7YNhERQvp1EJf+c/ZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXMk-0000ta-4C; Thu, 27 Jun 2019 16:35:18 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXMa-0000Rz-4L
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 16:35:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id c13so1267350pgg.3
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 09:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZS7BdZWWEVunG3KiycDjtP4eG/sAThYBJpiImcoQqZ0=;
 b=oaokw1UcFtYPz8TD2pHWC6HI4frjVJ+O5tteS3wu6S4/GzjN4GvNNRS+aKkZjmj7OI
 eEAuxc5ILO8p31iSYnoXxTnamWmV6gRNiF+WbQvr4rwQqcTHhthPs/jCPgfC4N29DAxS
 SsQcL+Vf65kCJ1KHXT/8LTEgEpFYOuR9LdJBo8CAPx6ARSU3pOSA7fRF/5BAenTuqNCs
 pU0mWPPel5CxEFVsW53CEEK+pRqcM2XLYyT9DEOtu5FHYYY9v4l0HR8NJbdp1XUhSCD3
 WgDOed5jc3x9JUv8vnt79gq4aBEWoSZFjuDPL6G9oVFKdm5Uwq5audmeAnA3TSd6/34+
 qFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZS7BdZWWEVunG3KiycDjtP4eG/sAThYBJpiImcoQqZ0=;
 b=JfApQAO73ugMcxmnP1JF7gPBNrQOaGYnwwZlq3vDbAydfDN/+vltInXywgSyDxKKqs
 oKOa4DduJrEiiuamvV4Rgocil30AKnq0c7pK3aDMvba6/CIbc3lpHH5sN/K23c/9vACj
 nz+mLTnRDuCnBH22zhtLYiY0CtXXHX++f6HD/DwM4LDbrrH5tSksGQO1vuGvvXj89nO0
 CuLP8nQXKyNTipCZYE9YOmN3ojQeBJeCn1YzDJ/A1YMgut8GbXoRLtSpP8RxE0q6PPb7
 pTQ43dzvpczhnIkTAWLZ97xtNTSiDz1Z/lR9x/xEi8fAqD7vPh40cb3Fy3YznhXz7mzf
 QiNA==
X-Gm-Message-State: APjAAAWsHHNLUO9nn93du3ZiTRFOhcHxfrj1tdb8U2T3XXYR2pSzmD+g
 CW8Y1MSLlQ1a+eSClXOEKapamg==
X-Google-Smtp-Source: APXvYqy+pAhnrewVnvuOOpMWBscCwyZYHx3WfUVSpPmsFIWqKBek6M66YwQ29AAOj6DKzWLrCwE3Kw==
X-Received: by 2002:a63:4105:: with SMTP id o5mr4754738pga.308.1561653306202; 
 Thu, 27 Jun 2019 09:35:06 -0700 (PDT)
Received: from ziepe.ca ([12.199.206.50])
 by smtp.gmail.com with ESMTPSA id a15sm2263271pgw.3.2019.06.27.09.35.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Jun 2019 09:35:05 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgXMW-0001GB-LS; Thu, 27 Jun 2019 13:35:04 -0300
Date: Thu, 27 Jun 2019 13:35:04 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190627163504.GB9568@ziepe.ca>
References: <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
 <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_093508_187677_889F6AB3 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Thu, Jun 27, 2019 at 10:09:41AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-06-27 12:32 a.m., Jason Gunthorpe wrote:
> > On Wed, Jun 26, 2019 at 03:18:07PM -0600, Logan Gunthorpe wrote:
> >>> I don't think we should make drives do that. What if it got CMB memory
> >>> on some other device?
> >>
> >> Huh? A driver submitting P2P requests finds appropriate memory to use
> >> based on the DMA device that will be doing the mapping. It *has* to. It
> >> doesn't necessarily have control over which P2P provider it might find
> >> (ie. it may get CMB memory from a random NVMe device), but it easily
> >> knows the NVMe device it got the CMB memory for. Look at the existing
> >> code in the nvme target.
> > 
> > No, this all thinking about things from the CMB perspective. With CMB
> > you don't care about the BAR location because it is just a temporary
> > buffer. That is a unique use model.
> > 
> > Every other case has data residing in BAR memory that can really only
> > reside in that one place (ie on a GPU/FPGA DRAM or something). When an IO
> > against that is run it should succeed, even if that means bounce
> > buffering the IO - as the user has really asked for this transfer to
> > happen.
> > 
> > We certainly don't get to generally pick where the data resides before
> > starting the IO, that luxury is only for CMB.
> 
> I disagree. If we we're going to implement a "bounce" we'd probably want
> to do it in two DMA requests.

How do you mean?

> So the GPU/FPGA driver would first decide whether it can do it P2P
> directly and, if it can't, would want to submit a DMA request copy
> the data to host memory and then submit an IO normally to the data's
> final destination.

I don't think a GPU/FPGA driver will be involved, this would enter the
block layer through the O_DIRECT path or something generic.. This the
general flow I was suggesting to Dan earlier

> I think it would be a larger layering violation to have the NVMe driver
> (for example) memcpy data off a GPU's bar during a dma_map step to
> support this bouncing. And it's even crazier to expect a DMA transfer to
> be setup in the map step.

Why? Don't we already expect the DMA mapper to handle bouncing for
lots of cases, how is this case different? This is the best place to
place it to make it shared.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
