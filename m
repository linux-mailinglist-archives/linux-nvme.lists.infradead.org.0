Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429598FD79
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 10:15:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+tq+n7mCvXuAjXIh/EIxJoBXUT1okuzuaHn4gVtQ6c=; b=OlKbhSrmeFaONo
	Cvd4nrPIDdmchpsZkI9tMDIcH2fM9O1wjAgheINxKFYbqCCCsodtarKVbg2Dx0V0jG1P1FrbCsHwB
	fC7c7u2PJmb0gr5qDRJULprqx3SddWHHYEphWU5TDlInOIyCoXmrtPrdWqwBoi8d+7RAqzA3Ke6E/
	q8lokruUO0Wiz5HcBdrEGDvoaFf0yZkGy8PYzQEUz9heA+p3+wc4ry0CWmS58fkyp1wJ0wqj1Csp2
	u+nD/qNnCgHWkDggUe+EPptfY0tA9cRYZX/4V09tgeZI3M40aoSS/rz4QvjBU+0Jshd5Swr9cY+r2
	Il2rh88ku96sxY7pkBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXO8-0006ZK-QK; Fri, 16 Aug 2019 08:15:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXNx-0006Yo-13
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 08:14:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 392F368B02; Fri, 16 Aug 2019 10:14:54 +0200 (CEST)
Date: Fri, 16 Aug 2019 10:14:54 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 11/14] PCI/P2PDMA: Store mapping method in an xarray
Message-ID: <20190816081454.GK9249@lst.de>
References: <20190812173048.9186-1-logang@deltatee.com>
 <20190812173048.9186-12-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812173048.9186-12-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_011457_221056_55CD70E6 
X-CRM114-Status: UNSURE (   8.25  )
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

On Mon, Aug 12, 2019 at 11:30:45AM -0600, Logan Gunthorpe wrote:
> When upstream_bridge_distance() is called, store the method required to map
> the DMA transfers in an xarray so it can be looked up efficiently on the
> hot path in pci_p2pdma_map_sg().
> 
> Link: https://lore.kernel.org/r/20190730163545.4915-12-logang@deltatee.com
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
