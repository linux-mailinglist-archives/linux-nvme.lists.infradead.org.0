Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FE557327
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9b+eR7/q5lvrk262W5HYlhQSEplAxqs/DQjr83QDwA=; b=EFmm2UTSVEN7iz
	igo9HuLR4A+6UVlOIzBmdzhAnfs9+Y9og9Iy0iB6jhGEyaSRnxRiJJivafYDhkwaGx0xIUeHXyy3Z
	MaSCImeqk9pUpFjImQHCcR7xJO0/8iCTNDKUzEuyhh4ogrrj8COoGHB0IuDEnRzeoxGY05k0DhHQC
	Sil3s8jd6Z3CsVQUHm6CxrfIzzLkL7UubsXoNPlgFKFWZKx/uuQolGUXcduoktd2XteX7EFvXbDRx
	abw/bCzSd9tdaj9tc6dGJsRdgYf5Px/Aw09aURbo0WlIFCQ2dgPgAZ3vJ9GzFtdeEnCgkkLulPRdo
	G72SxUqc/NGHqjRQNUBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEwi-0000st-Uu; Wed, 26 Jun 2019 20:55:13 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEwW-0000V4-VL
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:55:02 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so2069582plb.10
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 13:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bMxdvEdLjD1A9AKJa7buamnua6ndE13zHk8/3SA0xpk=;
 b=TBi220P0cqoilOs0VNo/aK3h3vIh4DHqMWYM3/xsM7rxg8vRC9vB3FeKKle7xEF+Ub
 c/A2Ia6QYlSw7cwbMBQyfBdYv54uyZ6xKUQ+QkDRfgWgo5RypRkGjFaWm2ykPW6JTo8F
 AnNSsV+rqWfslkCLRdq/e71/2TQZYL1quvSzRdMEfoUwlhYKvfJFQIhaWQUK4ia+k7eR
 cgPQ5KRJ0Rg5DrgjBR3TmHFiMZKA7Ljeag/N58i2HxUNVWt0ybAgynqXMm44Jvtl115E
 cwHup5Tv7BqDlSNc2j2kshgnuFrTydujMQM6+FISacSwwNM9jBiIB0QzVlt2S/qrgn6h
 p0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bMxdvEdLjD1A9AKJa7buamnua6ndE13zHk8/3SA0xpk=;
 b=bK6n1h/3EW1FkDIH42Dk4H7X4+ib/E3TBrZo0/RZB7qGMMBrVhe0ofJNwbbz6m4gYU
 h+kUx6RukvQQbY0rbcLgX9Pz65xjlgfDnmT3CHFamKc2Lnjtq7j0yF4pfhWzsDOI1YE8
 Z6K2KXewoantz0ELf+juKNCUHC9g2mQwJR49tl82ZiC+vHU3vniFnG2k+ZFiZlBUoCKU
 ifnvVNKykeWX/fxHxag/76R726PtljWFlRhN9/gRcvaDQw8j6yek135tsYvpIETLgWTw
 y9dqdy5HncCiRxgkgGrQQO/4PvA2TBE21aDQlSj7KECkb9TsTNG4EFj/YDdfT/pcwo8f
 6/dg==
X-Gm-Message-State: APjAAAWInjNcQrI8CQhLnOvukMptUfTk943JE/qArYu0aUi7kOltqyTH
 9/RyVTyw+pN+3hnek/GvFjH9by4d2LyEYXDc
X-Google-Smtp-Source: APXvYqzgDH5/ikCzES5M0MRO5K7K3ifgbGjP1mRuUaIUZdDHCGw68bO7qf91SGAx47qMnghFOmD8Fw==
X-Received: by 2002:a17:902:9a87:: with SMTP id w7mr65029plp.221.1561582500008; 
 Wed, 26 Jun 2019 13:55:00 -0700 (PDT)
Received: from ziepe.ca ([148.87.23.38])
 by smtp.gmail.com with ESMTPSA id t13sm3856107pjo.13.2019.06.26.13.54.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 13:54:59 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgEwU-0001lK-9d; Wed, 26 Jun 2019 17:54:58 -0300
Date: Wed, 26 Jun 2019 17:54:58 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190626205458.GA6392@ziepe.ca>
References: <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <CAPcyv4hCNoMeFyOE588=kuNUXaPS-rzaXnF2cN2TFejso1SGRw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4hCNoMeFyOE588=kuNUXaPS-rzaXnF2cN2TFejso1SGRw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_135501_007102_B24057E9 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On Wed, Jun 26, 2019 at 01:39:01PM -0700, Dan Williams wrote:
> Hmm, that sounds like dev_pagemap without the pages.

Yes, and other page related overhead. Maybe both ideas can exist in
the pagemap code?

All that is needed here is to map a bar phys_addr_t to some 'bar info'
that helps the mapping.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
