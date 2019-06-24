Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2025D50CDA
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 15:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/FwBdCjQ5mUrpGKvNjPiQEKjjWexQDgxrEISqHw/Yo=; b=Fyx+CPgXnzmdc3
	qv76Z61k7IgoSu18pt4b44vdQOk4ZGOcIeOrbKnI0govKQdPOyUGCC92PoyYAJ7vmuOd1w81bgCK2
	hWHbOi77KtFBpmhPYl3h/UPTvg0YWlNntCJOKUSktNOQPW7sJ47YXMSd7K5Ckq+fWMuGP80lCrN10
	5/69RZYjn3gw3kc4KAkQSbuhFVnfPdmOOkt1NlKHRFxzw6pjSy3fTI9zfejii6wf3kekkz6wsupeX
	y8pBCJmLp+rPsNDgzS2xw1vqQ6LKoFJVSbxrppaPUoLb8FoDCribuk2/0d+V8ekjeX9QUlftuRC03
	uVHsWI1IIb8jjOPN+tdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPSF-0005Lh-0R; Mon, 24 Jun 2019 13:56:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPRq-0005CI-1T
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 13:55:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so14054999wrl.1
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 06:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4arsaGDEjSkzwzRA/N3Hrna2lOLzq+94osMUbrje5jk=;
 b=cJBb3LyGWz6a+ZF24Q16t+Jq3jubo4POkzoEuwTFa4igkYIIZ4CrGKhq/VBGSLDgV+
 R7Qz58xlo8mcgCaXGv296xJUBZk0kWkrSICXHD+irx4lidxzIbN8xeAzmwBMImqBYIpY
 eKFlA/0ylT8ZbBmEkDh730eMD4FA8fcWvKTGfH4JHJLvK+2niN/exKVnrdWX/8BhWAz4
 bZ2BbBnoA8Mr6mt2PHPtpxxftqUTUr2xGiNQoaqGGYpEUiqP7/4eyzizTnR9LgxPrsPr
 x8q9l52SIByDD9HRQrHa5Lq2pgJt2cdno3mf8cN1oJgNelLCxmbQs+mZSVmwfkhnre+z
 rPNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4arsaGDEjSkzwzRA/N3Hrna2lOLzq+94osMUbrje5jk=;
 b=JfSEp4UD2j1sJJ0XDx4ItDM/rMoPRZjXMXaWtjsjbQ1IP35Vvsbs1papYZv3wbOpqz
 eIKIq2MOanLvYDMOka7kvD9ZiqxihLsL4MquX6oxvwS9NOCW6ROkK+SVxYJMlTyZugqG
 xqo+5WSqUqxPqkxAwiUBRUsnny8jdyIQ65luacgnUDoA3XkiFIR5xgJAGgRSWYdocCPH
 qH62XBPLdM7FInVgt99UKx4/Bm9SIN6OnRhk9tQIiKIHATAIJP05A/jD2IrNpPsQAOGM
 lbTVePrwgYgQXZ378XRTX7vg3NgOCl504vffbuprAvK3LNsCcXoTFDJaxXCB0R3AResG
 6ZeA==
X-Gm-Message-State: APjAAAUbLOlxp/yHtTAE26fZEiMfl7p6Os0G4fE4oASjpj3wjVxf8gKz
 1fJvxtoMzkepgqNT1yCPbRQM4g==
X-Google-Smtp-Source: APXvYqxyF5Zhdd0NS3TPvQio00kP/UH+k9ryunX9HaO9qRhzgHE2KVHkhfUxKG/64BxafxMuhrmCmQ==
X-Received: by 2002:a5d:4008:: with SMTP id n8mr49233669wrp.353.1561384552634; 
 Mon, 24 Jun 2019 06:55:52 -0700 (PDT)
Received: from ziepe.ca ([66.187.232.66])
 by smtp.gmail.com with ESMTPSA id q20sm25473349wra.36.2019.06.24.06.55.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 06:55:52 -0700 (PDT)
Received: from jgg by jggl.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hfPRm-0002Fc-Bp; Mon, 24 Jun 2019 10:55:50 -0300
Date: Mon, 24 Jun 2019 10:55:50 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624135550.GB8268@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca> <20190624135024.GA11248@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624135024.GA11248@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_065554_301163_E1DF6B73 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 03:50:24PM +0200, Christoph Hellwig wrote:
> On Mon, Jun 24, 2019 at 10:46:41AM -0300, Jason Gunthorpe wrote:
> > BTW, it is not just offset right? It is possible that the IOMMU can
> > generate unique dma_addr_t values for each device?? Simple offset is
> > just something we saw in certain embedded cases, IIRC.
> 
> Yes, it could.  If we are trying to do P2P between two devices on
> different root ports and with the IOMMU enabled we'll generate
> a new bus address for the BAR on the other side dynamically everytime
> we map.

Even with the same root port if ACS is turned on could behave like this.

It is only a very narrow case where you can take shortcuts with
dma_addr_t, and I don't think shortcuts like are are appropriate for
the mainline kernel..

Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
