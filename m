Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9574D4D1
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 19:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQM9KFiMgjs3wVkJcRFacBWgwW0eAy/WKrE0TfCyqes=; b=U4KX+Q9igUpBIG
	u6TrotQPxuCPn09z3gkNNFAXFHQI/XCHn5RHye69rySClPuYfZEnf7fneO9oSMSzUkRmWdLGl4k+x
	iB2QUlb7yiE8uJvkl05CZleDCecbEN+IJfSV6uuFCCQtbv7CQGGwllRZh6+6Pj59SZ/d0g4msFqH9
	anE1W/Oiumr0L06as80aIu5OT2RsiuVQ46MsPCzAENHBthjctEPR/RP7tbBpgyN3DlAyNI5JjGx6x
	o1VZM/EMmIzw18cZ79ZOfJ+nIRfrTcLvWwfSxD8yWSiesbUDjNnMH5Iz+qBPPdxoi8b/0lt+wLndH
	iJ5Rut64xPk+ZotFADZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he0n0-0000BX-4H; Thu, 20 Jun 2019 17:23:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he0mr-0000Al-VV
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 17:23:51 +0000
Received: by mail-qt1-x844.google.com with SMTP id x47so3944299qtk.11
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 10:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SfbKUCdSGF4+jFDRzcaQ+Fna6TrcXDnyta04yl7lq1Y=;
 b=fDa+hMU4rcsLRRCH2gWRtgjYh9RFedwMwqv0Trz+YbWuMGaoX85v7I71KOkTii51uB
 oO9IljJOAF7bcm1YYxdaerj3SB1eX+ROcV7aGqi3ZBwoKVBEGC2K9Gm0a4yLiiEn/uAk
 fBk5sWnkPe6Qfa4DgWWmQRbh4XlFAlCgTAsATQPIvgIfBdORGI7YHDMsJoSK7wBXLdyk
 G7L29YhKyUqgAQjd6fwdckTK5NEQcVswgxlSYd5TMwXXMxxdYk5swQozsEqhRL82kEHN
 PYoc9M2dsT9k3d119XICrYvVvAjQcFqPNiWbp3QBf8xLIqoPCbUOF1ztjjMN/UPlCr8M
 O9Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SfbKUCdSGF4+jFDRzcaQ+Fna6TrcXDnyta04yl7lq1Y=;
 b=LsR9/d8i3OSEKFEHw64U2UhWPMrfMEpuuHNm47Y3EdZuJd2QXOwgwlf5AD+RFvO0vd
 c4DEJkV7YbFKyqq/uaDesqaNbeDbMtr9z/BTZmxxLWTV8SmgXfwde03wSEIJ1YPawRcJ
 GkOeGekGYNdG1rPt04yPujApO+VwwY5LvE8ikUGdONIpEV6WDMwRX/3YDCPjdhMdbANN
 uHIBX0cSaeRpevjDRQNhrPKbYrqvDxrGwB1sFrFnIkiQMBixX1etkQhbT67xBPZci706
 FmPijIu3Utj9TsdVBxy9ZEV4AKlh/k7tmNpe1Hb38EjGhWlTBG/2Y++43YDz/VsNFgEZ
 Q3sw==
X-Gm-Message-State: APjAAAXJDJiTeVtvJfOybb3rRFEgCSphg6u12BfKaacvKQFYp+1cSEhA
 edOvQxpJwbr5NZtmPDjVN/96KA==
X-Google-Smtp-Source: APXvYqw404QwKeABmWhU9qLItoqgwLK+kwwRuUpz/G8u1JQs97zHuMB8xnbcA0CiswhJAlAz0nkrug==
X-Received: by 2002:ac8:2409:: with SMTP id c9mr53861547qtc.145.1561051428982; 
 Thu, 20 Jun 2019 10:23:48 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id c5sm109198qtj.27.2019.06.20.10.23.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Jun 2019 10:23:48 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1he0mq-0005eq-0K; Thu, 20 Jun 2019 14:23:48 -0300
Date: Thu, 20 Jun 2019 14:23:47 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 04/28] block: Never bounce dma-direct bios
Message-ID: <20190620172347.GE19891@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190620161240.22738-5-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620161240.22738-5-logang@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_102350_021461_DDB855AC 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 10:12:16AM -0600, Logan Gunthorpe wrote:
> It is expected the creator of the dma-direct bio will ensure the
> target device can access the DMA address it's creating bios for.
> It's also not possible to bounce a dma-direct bio seeing the block
> layer doesn't have any way to access the underlying data behind
> the DMA address.
> 
> Thus, never bounce dma-direct bios.

I wonder how feasible it would be to implement a 'dma vec' copy
from/to? 

That is about the only operation you could safely do on P2P BAR
memory. 

I wonder if a copy implementation could somehow query the iommu layer
to get a kmap of the memory pointed at by the dma address so we don't
need to carry struct page around?

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
