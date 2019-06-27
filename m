Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A947057C3A
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 08:32:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pukcOt6hf28lRzV5HTq2tlKuJJ+fHtQotQsZxz4QxjU=; b=QJpylZ7BnMLbBe
	R8436sqRaviBoP5FrxogqUr8cnlc0Obp8KkBLEA3lZqLG53rsTt/c+LtYGmpt9VTQ7jRq/OJCtRWM
	Jenm5PbC0D7DvQGCWdnBsQElpue0mryxq+1XKCzAkzSXjRrNtXrE2BKexSlUPTqWpFrTv5EX9Ks/M
	XSBJFxsJlvRmNvly0Gs5mK4KQLODqjtRnL1aOYnwI1FH+xnBM+8SlYFkVJQ7wD6e2ZLQcy6PZacar
	5wtSEH4fSyzJK+fllWsw9ptdgl1PQ04eojA0k04ieAWsWO8Hm5RuhayrtelXz0IOHn9pZ8ATYyA+e
	2nFt5yfuIonTPfHm7icQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgNxQ-0001oM-KK; Thu, 27 Jun 2019 06:32:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgNxJ-0001nT-Q2
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 06:32:27 +0000
Received: by mail-pl1-x643.google.com with SMTP id cl9so701714plb.10
 for <linux-nvme@lists.infradead.org>; Wed, 26 Jun 2019 23:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CxcmhcduYl1f+p8Q6K2P2tN31Ue+lZEcvfx29yQXcTA=;
 b=m4qtlRsuSk58BwN1KjuVxv1OBILIvoJnLL/W5x8gKQGKClqscPAZtSz5HIvZkBZeaP
 3YNDZbTITdkT9d4NODS4YBRtUWymp+dc1Frl9vN52KgPgeSBy8PuVOd1wpDqdViUXGuU
 TaoL6w12s1LCWVE6nAVStEUf6ToOh2LrH0l4rAjW0YWcykR1wBUiW/kiHYkRyaFw/b+m
 5RKkHPbZrlfJtX/jysSBDiQyarjXby+MLOi6XZdFtLwkUxPqEd3s89nrZCy07o0cLs07
 /nNhohMH1gqtNbY5OQLkVy7sE3hn5AauPYz18DSUKOmknEkjo7985c+vomp74sOA3gvV
 PN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CxcmhcduYl1f+p8Q6K2P2tN31Ue+lZEcvfx29yQXcTA=;
 b=lnwYztnwoAURIG3LHzsbCPk4+XjXEvpCt05GyYOTzNPW1MXixSAi2Grl8dN/VNX9jM
 8NmVxgfhu3ywdhv0SNRCKC6EHfFfkjbvj/QIxCmHsNM00IY9PXZCyBr6y4D4jDpazDhI
 cfcu3ZIevVoJpIr49RdXFmo4+oHGqEYXVaW+PN/RGYCb/oFNHM+MV9SYpt1TTKU42Q9P
 63XasGkLFZ0hxpOb2T+g8pfmo9z8yI/hHWWbFtf6TO5Oe7TYSruF687AM8NcNnxOu4kN
 oxQjg1HqVVqTTNPP+k2KtTGax22TLcwknxXS6gu/hPBL24JXXGGsgWOqryo/S7AskAkf
 Nsug==
X-Gm-Message-State: APjAAAUnqjmllPWkb9BYrmXWzQBEXxR4ZOi5daGmqy4LYqUhacLV1p5U
 sL/fWN8nbigfj1fXvWmi2r7DAA==
X-Google-Smtp-Source: APXvYqwZ07G5863ndEAB+RksF+e+99jGlEHoSljL/kmhY9ivkki8aBvxOy/aBdnHgI3TPZQaVOsxJA==
X-Received: by 2002:a17:902:549:: with SMTP id 67mr2700794plf.86.1561617144785; 
 Wed, 26 Jun 2019 23:32:24 -0700 (PDT)
Received: from ziepe.ca ([12.199.206.50])
 by smtp.gmail.com with ESMTPSA id k184sm1017237pgk.7.2019.06.26.23.32.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 23:32:24 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hgNxH-00029V-At; Thu, 27 Jun 2019 03:32:23 -0300
Date: Thu, 27 Jun 2019 03:32:23 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190627063223.GA7736@ziepe.ca>
References: <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_233226_029996_5772DC50 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Wed, Jun 26, 2019 at 03:18:07PM -0600, Logan Gunthorpe wrote:
> > I don't think we should make drives do that. What if it got CMB memory
> > on some other device?
> 
> Huh? A driver submitting P2P requests finds appropriate memory to use
> based on the DMA device that will be doing the mapping. It *has* to. It
> doesn't necessarily have control over which P2P provider it might find
> (ie. it may get CMB memory from a random NVMe device), but it easily
> knows the NVMe device it got the CMB memory for. Look at the existing
> code in the nvme target.

No, this all thinking about things from the CMB perspective. With CMB
you don't care about the BAR location because it is just a temporary
buffer. That is a unique use model.

Every other case has data residing in BAR memory that can really only
reside in that one place (ie on a GPU/FPGA DRAM or something). When an IO
against that is run it should succeed, even if that means bounce
buffering the IO - as the user has really asked for this transfer to
happen.

We certainly don't get to generally pick where the data resides before
starting the IO, that luxury is only for CMB.

> > I think with some simple caching this will become negligible for cases
> > you care about
> 
> Well *maybe* it will be negligible performance wise, but it's also a lot
> more complicated, code wise. Tree lookups will always be a lot more
> expensive than just checking a flag.

Interval trees are pretty simple API wise, and if we only populate
them with P2P providers you probably find the tree depth is negligible
in current systems with one or two P2P providers.

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
