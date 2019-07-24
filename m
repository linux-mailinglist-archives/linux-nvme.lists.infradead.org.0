Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6937284D
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 08:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcJ5IK/x2S2hzzWnA5CDMpfgtsVY+4dD27LH+g7rFa4=; b=uUmyCbBRJccxQc
	F+AkhLaXTHjTuXdypIFaRKsOj+TVTRCJyVHE77q8VXA+xMq8IaPfrbvhD73hq1YVxwMOFNyho7m/t
	/VEDR4hZW+ePYdvtCaJ079KOgylUOTbaVBBl0mAkhdM/49qZuNdgbeSvDMbDu5UK1Lw3J2w1BJq2o
	u41XBSgR+lSkQHlztYA01OpZ1PfyVo61z/xE947+YVI6HlCUFp3gua0uDtIBtpP71d3vl/IllQvbx
	Kznj33gzsERpaVDmrBeKldlMLHBjRwcbgl5QZxPIGX3D1FTD9rdRWzd2CTWN+WNl4BeCi97r0XmNb
	8XOSsazohAb/qXMxg0FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqApg-0004DA-Vm; Wed, 24 Jul 2019 06:33:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqApH-00043X-Ub
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 06:32:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3292A68BFE; Wed, 24 Jul 2019 08:32:33 +0200 (CEST)
Date: Wed, 24 Jul 2019 08:32:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Message-ID: <20190724063232.GB1804@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722230859.5436-12-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_233236_147425_5D611445 
X-CRM114-Status: GOOD (  10.68  )
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

>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> +	struct pci_dev *client;
> +	int dist;
> +
> +	client = find_parent_pci_dev(dev);
> +	if (WARN_ON_ONCE(!client))
> +		return 0;
>  
> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> +					client, NULL);

Doing this on every mapping call sounds expensive..

> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
> +		return 0;
> +
> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
> +	else
> +		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);

Can't we organize the values so that we can switch on the return
value instead of doing flag checks?

>  }
>  EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
>  
> @@ -847,6 +861,21 @@ EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
>  void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
>  		int nents, enum dma_data_direction dir, unsigned long attrs)
>  {
> +	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> +	struct pci_dev *client;
> +	int dist;
> +
> +	client = find_parent_pci_dev(dev);
> +	if (!client)
> +		return;
> +
> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> +					client, NULL);

And then we do it for every unmap again..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
