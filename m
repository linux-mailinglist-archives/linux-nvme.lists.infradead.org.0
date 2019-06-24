Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A435751B05
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLS2/6fBCWGSg6v9yCDuaKDm3yeiLPBrO4XrqBaMQy8=; b=nJQggyBKHLHswp
	GNulAAysBRr3UiWPL1FO/bxXtfxfy3+VQTYePhcEkgouIQtjpRddGgYgkJNbKeXEhw4OETI8azSRJ
	dPzqPQvEkxRgZMzCQVwG8X4Q3WFLrL/Ojvzjj0lfpSyMJ33Yr75nF0+AQ78Ia61yLJYkHqHn8ePnr
	sNRJA30FKooJm73kio/wD+kmvVUsWEaky7OAPSMdD6jQfoo7d1B5shLRAq5/K0LY/MjnMOGFLvuC4
	1W5sgElqUHupRMtOEl1qvWp3ZFY8Jq0dJWQyOMsr33bDboC+Wv9PcEJXfstHuFwsB9S9lfq650TpV
	E+/PBWiFaOlfJfqIJlOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfU7C-0003MH-LH; Mon, 24 Jun 2019 18:54:54 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfU77-0003Lp-3k
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:54:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so380723wma.4
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 11:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2VLB62LTLlXO8oWMzmxndKFmxYDQNRrl1nYzZ7fiBH8=;
 b=bssP7nVtbxic8x1W+7aINGmVwUOYnfJSdJihHr+XXest3Vx9i0deL1LOz0fug7R1U1
 B5g5IL/YBGy8xioHik2tNV6c6asgwNQLrq+uBuFoxRMgZJ4BuztaJWrkpPSpqVsKILZx
 14viaNCjBFFfPcy4wbxl2lhjSG22PDgW5GgEPY+aiVW57k23uu6GJEjQYvC/FgVfHEUM
 7d3P9SFXDAUtN220jCpceeo0OnTuWEohYBulBbQvXmpACGPIxLabY5EMrRWaAaowQaS4
 rSCmwjE/WHV4DGUGkvibovageI+23aZgeutKLX3qZ1Fp8lrfuajpCPGxlls7Z8yyNbcA
 ILfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2VLB62LTLlXO8oWMzmxndKFmxYDQNRrl1nYzZ7fiBH8=;
 b=hQABR5MTNDJfq1ykK/OqAwbmVTd6XxmZZ2NA++6juUTxruhaeDD3oHBsVIyZueRWt2
 xUIPPnixfLjMWbb6J9RzYtQQIq/aqfMock2j2wCXWmn2YYfdOBGTmHIP3VE8Dw6JbtL/
 BjJ6k5XUqIwGciOgmbBhbZA6Ru4x89tfT4dKeOGu9r3x/am9/c/LPCwK/MCC/CDlJmcm
 GkheCK2IP6wQie+/uXBFlgpmf/yzB801ieeVsQEzgp0h3MNA1W3I4/HZTNjVSVOOozwu
 8nXI6YlIU118FFo0QGlMR+NK2CpKnQ1ku8qAxZP9emPdEPBNo0lPJClY8Ul5nJm7vCon
 isYQ==
X-Gm-Message-State: APjAAAVdnOK2qDC4P0YVG7JjxNKVq24+QZzyZkx7cnw21CUDf1G9s7YM
 u7hnNf5WucSPcrM0QXdsH7zAgA==
X-Google-Smtp-Source: APXvYqwuzff7/kg/rNAW2pQFDbje1NhrbmshAeZpBjzb6O9dqiGhfTGm1OhmaQBXRqL6CYA5mJ8psQ==
X-Received: by 2002:a7b:c94a:: with SMTP id i10mr16384528wml.97.1561402487618; 
 Mon, 24 Jun 2019 11:54:47 -0700 (PDT)
Received: from ziepe.ca ([66.187.232.66])
 by smtp.gmail.com with ESMTPSA id y2sm10324854wrl.4.2019.06.24.11.54.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 11:54:46 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hfU72-0006ZX-QC; Mon, 24 Jun 2019 15:54:44 -0300
Date: Mon, 24 Jun 2019 15:54:44 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624185444.GD8268@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca> <20190624135024.GA11248@lst.de>
 <20190624135550.GB8268@ziepe.ca>
 <7210ba39-c923-79ca-57bb-7cf9afe21d54@deltatee.com>
 <20190624181632.GC8268@ziepe.ca>
 <bbd81ef9-b4f7-3ba7-7f93-85f602495e19@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bbd81ef9-b4f7-3ba7-7f93-85f602495e19@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_115449_157953_B7430FEB 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:28:33PM -0600, Logan Gunthorpe wrote:

> > Sounded like this series does generate the dma_addr for the correct
> > device..
> 
> This series doesn't generate any DMA addresses with dma_map(). The
> current p2pdma code ensures everything is behind the same root port and
> only uses the pci bus address. This is valid and correct, but yes it's
> something to expand upon.

I think if you do this it still has to be presented as the same API
like dma_map that takes in the target device * and produces the device
specific dma_addr_t

Otherwise this whole thing is confusing and looks like *all* of it can
only work under the switch assumption

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
