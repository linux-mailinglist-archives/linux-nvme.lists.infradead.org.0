Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC97A572AE
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wk+KAnBl74lYsqcCZGwGUJAEJ1WVgKGFSJDuGulEeXw=; b=k5EhADiUGkaaDY
	bMkX8c/c1gFyaX02hMriYFCDS3bfBk+LOsFWNYDd6NcyP7aIDxyHeiNXuUmETTMM6tK//YU3G2DN/
	ksbJ8HfafG6iiB9kAQ/lUOMIP0+FK5cez9C/ElWctlIXvHOjuJbB+9NzfJRbmnHBgKsn3EEoDBSHR
	3QK04hNHC9Fqe3VbgDO5sa9ELsW7UdK3hm30FrM6Qp3DQzwv4DQ2OwXqPuEiy9vTwqI3k3sN+oUi1
	qkvk4NIJp/Ew1BEMHUGCR19lMvzbItSSW1LKFiZLn9DfY6Wwy4Nq78+kg/zJUHb69fg4VVrf0Ip0m
	I6QD02MHFuY0LtvFiReQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEhS-0001E4-R1; Wed, 26 Jun 2019 20:39:26 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEhH-0001DS-9I
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:39:16 +0000
Received: by mail-oi1-x241.google.com with SMTP id m202so158751oig.6
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VYeWRlp6n/vQnTa+fYFmAoEUxn0NMI33stOLW194NWI=;
 b=kVT6f/J18N4jOGjKVrrG9wNomn8jDVg05k4WFQXf36XrjtMQpEmVpWPIuNysiAbKsx
 n+Z718Sxszq/I1fyvWJXsD01Zp8W0/LbsKFY24ybfeyRgsqfCUshdCH7ZoW7/ONLXJdN
 lD9TT3SmGvQUVxDWCD1qHC1hTkzE10LJ57KQWSYjPlWxqr+J4LzT7uhc9aNdJ7JwhKKB
 kTLAPG10/ZPxQsIMrTIvi7pepmWglKVqEy7PBkHxAU5DIyV7aNyjbNLUdQltXRmZLL9f
 8H0FR7ztfQUo0clbwtw2o44u24imsaxpG3L9ecnsJ6w6WyNKf8/pW5Eab6KslfuserKb
 EmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VYeWRlp6n/vQnTa+fYFmAoEUxn0NMI33stOLW194NWI=;
 b=q65U8k8Gdzs4mmmywfxtST4mphAnpegQMs6/hXesavA7hJ6VErAoUsoXEne4kED27E
 D1b5NbhNglN7Sm+fbtw+ClnnU5UkUUMzM2N3GXg17zOVYaPfhVGQfY9bzJKAI+ulEExj
 u9c0cp9QCacSNPqywmbanihGlyYDoSS8Tz3PrroCTVtBmPoSFieI0cAHZ1B9OLUnIx6V
 J5poJg/QPFSwtTJNr5h0+kR2XNPTbQYk8U82pFM3Lya8VvWexRizDpKErI5WS/M6h8+n
 X0gI0a8WJOpLqauGZa9S1joEdhMTCQbiC6//9jJV77QQCReWEDO7/7LOg+xh+82ifAMD
 R9Pw==
X-Gm-Message-State: APjAAAVYRLjp+nTUvojyWEkextFw82jyoB6JTj4oe8zJOwDSo6+djqaD
 KCuXrFUMIpkgCtuPKcH8kgdd45jfmva2VmWk5RP92A==
X-Google-Smtp-Source: APXvYqzOW0zZUogI9bpo993SYdjNzW7+XY8OQvRzfJZPA3+Cc3WWKwMsRZL6wtJbO/WerGOW6fDqo9Ufat9fvVAWYZw=
X-Received: by 2002:aca:d80a:: with SMTP id p10mr179462oig.105.1561581553855; 
 Wed, 26 Jun 2019 13:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
In-Reply-To: <20190626202107.GA5850@ziepe.ca>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 26 Jun 2019 13:39:01 -0700
Message-ID: <CAPcyv4hCNoMeFyOE588=kuNUXaPS-rzaXnF2cN2TFejso1SGRw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_133915_378002_38948069 
X-CRM114-Status: GOOD (  16.67  )
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

On Wed, Jun 26, 2019 at 1:21 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Jun 26, 2019 at 12:31:08PM -0600, Logan Gunthorpe wrote:
> > > we have a hole behind len where we could store flag.  Preferably
> > > optionally based on a P2P or other magic memory types config
> > > option so that 32-bit systems with 32-bit phys_addr_t actually
> > > benefit from the smaller and better packing structure.
> >
> > That seems sensible. The one thing that's unclear though is how to get
> > the PCI Bus address when appropriate. Can we pass that in instead of the
> > phys_addr with an appropriate flag? Or will we need to pass the actual
> > physical address and then, at the map step, the driver has to some how
> > lookup the PCI device to figure out the bus offset?
>
> I agree with CH, if we go down this path it is a layering violation
> for the thing injecting bio's into the block stack to know what struct
> device they egress&dma map on just to be able to do the dma_map up
> front.
>
> So we must be able to go from this new phys_addr_t&flags to some BAR
> information during dma_map.
>
> For instance we could use a small hash table of the upper phys addr
> bits, or an interval tree, to do the lookup.

Hmm, that sounds like dev_pagemap without the pages.

There's already no requirement that dev_pagemap point to real /
present pages (DEVICE_PRIVATE) seems a straightforward extension to
use it for helping coordinate phys_addr_t in 'struct bio'. Then
Logan's future plans to let userspace coordinate p2p operations could
build on PTE_DEVMAP.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
