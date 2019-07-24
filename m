Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9927284C
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 08:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYMAGr7zJK51hnn0Ma2ooV+TxRJJg4LDMnjCNQ1Oyuo=; b=d99VuXLUGDtUbH
	hmuraurOXvLBnK5DX07ZvGTz4Ox8sZOkXdhyyAxZs8LVmpaJl5TVPU6M2Vl6ST3KGHjq6BL30g+4J
	PCjMshTdJrU8srVFmu9A6JzyVE8sW2KYus6nGQHbVaZLqTQ5EMNvuJPzCX9w4JSR7HJeBb6Xp/Zom
	2RzbrI73NV8/v9vq6+dCjkfZ4z9ypGopqRGG2i3tgaZvbCgkpEXkWT/cbpAAAU7/EUiFA8yP8KNeB
	p36TsgJYoWa0/NvfSRzVjRmRnGQSBthEojtM7UDjvk06UxOjEvgtftcFBljRQNhhDHtloWMBFsDB1
	1JHezgKzHTjtKLh8ss8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqApR-00044Z-LG; Wed, 24 Jul 2019 06:32:45 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqApG-000431-Mc
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 06:32:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5363368B02; Wed, 24 Jul 2019 08:32:29 +0200 (CEST)
Date: Wed, 24 Jul 2019 08:32:29 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 07/14] PCI/P2PDMA: Add the provider's pci_dev to the
 dev_pgmap struct
Message-ID: <20190724063229.GA1804@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-8-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722230859.5436-8-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_233234_886638_99EDE4D2 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jul 22, 2019 at 05:08:52PM -0600, Logan Gunthorpe wrote:
> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
> index 143e11d2a5c3..70c262b7c731 100644
> --- a/drivers/pci/p2pdma.c
> +++ b/drivers/pci/p2pdma.c
> @@ -168,6 +168,7 @@ int pci_p2pdma_add_resource(struct pci_dev *pdev, int bar, size_t size,
>  	pgmap->res.end = pgmap->res.start + size - 1;
>  	pgmap->res.flags = pci_resource_flags(pdev, bar);
>  	pgmap->type = MEMORY_DEVICE_PCI_P2PDMA;
> +	pgmap->pci_p2pdma_provider = pdev;
>  	pgmap->pci_p2pdma_bus_offset = pci_bus_address(pdev, bar) -
>  		pci_resource_start(pdev, bar);

I think we need to bite the bullet and move the PCIe P2P specific
information out of struct dev_pagemap and into a pci-specific structure
that embedds struct dev_pagemap.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
