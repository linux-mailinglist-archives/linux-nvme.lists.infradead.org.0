Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5B384412
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 07:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iPFgflYKkdhWuZyzzUYtKwOqzRpG2Jzsdp7525QC2Ag=; b=EacHHbFO2kLF/r
	kecV5H8DMJkrDLMG7Bgj68qJnhO1a7LSw14TngXr+L8J5E/kOmQQqqYk4E2rpfQU2zsgVE1x6A+rh
	nBVa8LyrYSGuvUWAlyOAYibjOw/y6v65qegZFsk66VRZM0GPR8sIh8ej0ISxWcRpSe5nj2XMxCkzT
	43A6L/NDlPzQ9zYVsaqGjNFCFAG7KKvp29fMVf4E5cdlMih5ARHH0mYtiqb+g6UiU5GZQ2CyvWs5F
	iNiCrdNyfECAGvKu0RDK2Ui5o8i8UN112hAUYVuW5PdODnW43q+wwzQeh6zmexw8tz9kP7dmjxelN
	xylM356wkmTf11ggwExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEz1-0007Pe-RN; Wed, 07 Aug 2019 05:59:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvEyp-0007Hf-3F
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 05:59:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D5A7E68B20; Wed,  7 Aug 2019 07:59:18 +0200 (CEST)
Date: Wed, 7 Aug 2019 07:59:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 11/14] PCI/P2PDMA: Store mapping method in an xarray
Message-ID: <20190807055918.GB6627@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-12-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730163545.4915-12-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_225923_319017_E9F60F16 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christian Koenig <Christian.Koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:35:42AM -0600, Logan Gunthorpe wrote:
> When upstream_bridge_distance() is called store the method required
> to map the DMA transfers in an xarray so that it can be looked up
> efficiently on the hot path in pci_p2pdma_map_sg().
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  drivers/pci/p2pdma.c | 40 +++++++++++++++++++++++++++++++++++-----
>  1 file changed, 35 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> index fe647bd8f947..010aa8742bec 100644
> --- a/drivers/pci/p2pdma.c
> +++ b/drivers/pci/p2pdma.c
> @@ -19,10 +19,19 @@
>  #include <linux/random.h>
>  #include <linux/seq_buf.h>
>  #include <linux/iommu.h>
> +#include <linux/xarray.h>
> +
> +enum pci_p2pdma_map_type {
> +	PCI_P2PDMA_MAP_UNKNOWN = 0,
> +	PCI_P2PDMA_MAP_NOT_SUPPORTED,
> +	PCI_P2PDMA_MAP_BUS_ADDR,
> +	PCI_P2PDMA_MAP_THRU_IOMMU,
> +};

So here we add a new enum for the map type, but for the internal code
the previousloading of the distance is kept, which seems a little
strange.

> +	if (!(dist & P2PDMA_THRU_HOST_BRIDGE)) {
> +		map_type = PCI_P2PDMA_MAP_BUS_ADDR;
> +		goto store_map_type_and_return;
> +	}
> +
> +	if (host_bridge_whitelist(provider, client)) {
> +		map_type = PCI_P2PDMA_MAP_THRU_IOMMU;
> +	} else {
> +		dist |= P2PDMA_NOT_SUPPORTED;
> +		map_type = PCI_P2PDMA_MAP_NOT_SUPPORTED;
> +	}
>  
> +store_map_type_and_return:

Why not:

	if (dist & P2PDMA_THRU_HOST_BRIDGE) {
		if (host_bridge_whitelist(provider, client)) {
			map_type = PCI_P2PDMA_MAP_THRU_IOMMU;
		} else {
			dist |= P2PDMA_NOT_SUPPORTED;
			map_type = PCI_P2PDMA_MAP_NOT_SUPPORTED;
		}
	}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
