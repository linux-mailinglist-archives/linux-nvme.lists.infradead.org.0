Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1B183DF2
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 01:45:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi+mNA3XUnkZ/gVPBzhdCtg904Qnpu2O1+r+DNw+aI8=; b=LkVwIS1Kgfk6cE
	CdJk2PIjfx6bqBpvj83GYpk7u9zifwIKHwLeBfMJeymvmuXrl49QQBh7rxqc2/+I8cTEnN0g74Hkq
	BKizAkepSNWkOA5w1BImh2dYkM/dDTd+17wzq5UjvLmBGQ1AfGKONlFAEqOJiBpZjk6pGZBP0xLbF
	mZQwQLx19Dt/FQQtqTR+1pV+A/COLjw0JRon8c5dTD+KJY/MgtI5Duu7PegLvwYu6LecB6lCc8hXE
	+zi0W/cBGmTN6t7j3O8Tck/MVqkyeZBhKAgQbdjyV5gxYA8lRoDFySBuUvj+LKsg+f8oeVtG5NtQm
	PmPM5KVr4twALGrEfQLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv98R-00073S-3A; Tue, 06 Aug 2019 23:44:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv98E-00072M-Ac
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 23:44:44 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E57F7214C6;
 Tue,  6 Aug 2019 23:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565135081;
 bh=SOMBSaDc8nxdDI/az2lKZSoxOMnNPsmkpBZmMYOUojI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gw/NWCnHIe70JmgFGthWObyODCSyQBllFbs3c3PnI1E980XzvGktYm/v85YJkpfI2
 2o13F61/KwT6B3Zj1o2ci7Y4InfNVb5TiZpt1crsv+hqtrF9hwym0f7OweZlosCnda
 NVLprZCXXg1My2UaYv0tFUMbBqnG32Sjt0jDaN4s=
Date: Tue, 6 Aug 2019 18:44:39 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 00/14] PCI/P2PDMA: Support transactions that hit the
 host bridge
Message-ID: <20190806234439.GW151852@google.com>
References: <20190730163545.4915-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730163545.4915-1-logang@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_164442_413214_8E61C0C8 
X-CRM114-Status: GOOD (  31.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Jason Gunthorpe <jgg@mellanox.com>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 10:35:31AM -0600, Logan Gunthorpe wrote:
> Here's v2 of the patchset. It doesn't sound like there's anything
> terribly controversial here so this version is mostly just some
> cleanup changes for clarity.
> 
> Changes in v2:
>  * Rebase on v5.3-rc2 (No changes)
>  * Re-introduce the private pagemap structure and move the p2p-specific
>    elements out of the commond dev_pagemap (per Christoph)
>  * Use flags instead of bool in the whitelist (per Jason)
>  * Only store the mapping type in the xarray (instead of the distance
>    with flags) such that a function can return the mapping method
>    with a switch statement to decide how to map. (per Christoph)
>  * Drop find_parent_pci_dev() on the fast path and rely on the fact
>    that the struct device passed to the mapping functions *must* be
>    a PCI device and convert it directly. (per suggestions from
>    Christoph and Jason)
>  * Collected Christian's Reviewed-by's
> --
> 
> As discussed on the list previously, in order to fully support the
> whitelist Christian added with the IOMMU, we must ensure that we
> map any buffer going through the IOMMU with an aprropriate dma_map
> call. This patchset accomplishes this by cleaning up the output of
> upstream_bridge_distance() to better indicate the mapping requirements,
> caching these requirements in an xarray, then looking them up at map
> time and applying the appropriate mapping method.
> 
> After this patchset, it's possible to use the NVMe-of P2P support to
> transfer between devices without a switch on the whitelisted root
> complexes. A couple Intel device I have tested this on have also
> been added to the white list.
> 
> Most of the changes are contained within the p2pdma.c, but there are
> a few minor touches to other subsystems, mostly to add support
> to call an unmap function.
> 
> The final patch in this series demonstrates a possible
> pci_p2pdma_map_resource() function that I expect Christian will need
> but does not have any users at this time so I don't intend for it to be
> considered for merging.

I don't see pci_p2pdma_map_resource() in any of these patches.

I tentatively applied these to pci/p2pdma with minor typographical
updates (below), but I'll update the branch if necessary.

> This patchset is based on 5.3-rc2 and a git branch is available here:
> 
> https://github.com/sbates130272/linux-p2pmem/ p2pdma_rc_map_v2
> 
> --
> 
> Logan Gunthorpe (14):
>   PCI/P2PDMA: Introduce private pagemap structure
>   PCI/P2PDMA: Add the provider's pci_dev to the pci_p2pdma_pagemap
>     struct
>   PCI/P2PDMA: Add constants for not-supported result
>     upstream_bridge_distance()
>   PCI/P2PDMA: Factor out __upstream_bridge_distance()
>   PCI/P2PDMA: Apply host bridge white list for ACS
>   PCI/P2PDMA: Factor out host_bridge_whitelist()
>   PCI/P2PDMA: Add whitelist support for Intel Host Bridges
>   PCI/P2PDMA: Add attrs argument to pci_p2pdma_map_sg()
>   PCI/P2PDMA: Introduce pci_p2pdma_unmap_sg()
>   PCI/P2PDMA: Factor out __pci_p2pdma_map_sg()
>   PCI/P2PDMA: Store mapping method in an xarray
>   PCI/P2PDMA: dma_map P2PDMA map requests that traverse the host bridge
>   PCI/P2PDMA: No longer require no-mmu for host bridge whitelist
>   PCI/P2PDMA: Update documentation for pci_p2pdma_distance_many()
> 
>  drivers/infiniband/core/rw.c |   6 +-
>  drivers/nvme/host/pci.c      |  10 +-
>  drivers/pci/p2pdma.c         | 361 +++++++++++++++++++++++++----------
>  include/linux/memremap.h     |   1 -
>  include/linux/pci-p2pdma.h   |  28 ++-
>  5 files changed, 296 insertions(+), 110 deletions(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index ac6b599a10ef..afa42512e604 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -442,17 +442,17 @@ static int map_types_idx(struct pci_dev *client)
  * port of the switch, to the common upstream port, back up to the second
  * downstream port and then to Device B.
  *
- * Any two devices that cannot communicate using p2pdma will return the distance
- * with the flag P2PDMA_NOT_SUPPORTED.
+ * Any two devices that cannot communicate using p2pdma will return the
+ * distance with the flag P2PDMA_NOT_SUPPORTED.
  *
  * Any two devices that have a data path that goes through the host bridge
  * will consult a whitelist. If the host bridges are on the whitelist,
- * then the distance will be returned with the flag P2PDMA_THRU_HOST_BRIDGE set.
+ * the distance will be returned with the flag P2PDMA_THRU_HOST_BRIDGE set.
  * If either bridge is not on the whitelist, the flag P2PDMA_NOT_SUPPORTED will
  * be set.
  *
  * If a bridge which has any ACS redirection bits set is in the path
- * then this functions will flag the result with P2PDMA_ACS_FORCES_UPSTREAM.
+ * this function will flag the result with P2PDMA_ACS_FORCES_UPSTREAM.
  * In this case, a list of all infringing bridge addresses will be
  * populated in acs_list (assuming it's non-null) for printk purposes.
  */
@@ -529,8 +529,8 @@ static int upstream_bridge_distance_warn(struct pci_dev *provider,
  * choice).
  *
  * "compatible" means the provider and the clients are either all behind
- * the same PCI root port or the host bridge connected to each of the devices
- * are is listed in the 'pci_p2pdma_whitelist'.
+ * the same PCI root port or the host bridges connected to each of the devices
+ * are listed in the 'pci_p2pdma_whitelist'.
  */
 int pci_p2pdma_distance_many(struct pci_dev *provider, struct device **clients,
 			     int num_clients, bool verbose)
@@ -850,7 +850,7 @@ static int __pci_p2pdma_map_sg(struct pci_p2pdma_pagemap *p2p_pgmap,
  * @sg: scatter list to map
  * @nents: elements in the scatterlist
  * @dir: DMA direction
- * @attrs: dma attributes passed to dma_map_sg() (if called)
+ * @attrs: DMA attributes passed to dma_map_sg() (if called)
  *
  * Scatterlists mapped with this function should be unmapped using
  * pci_p2pdma_unmap_sg_attrs().
@@ -888,7 +888,7 @@ EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
  * @sg: scatter list to map
  * @nents: number of elements returned by pci_p2pdma_map_sg()
  * @dir: DMA direction
- * @attrs: dma attributes passed to dma_unmap_sg() (if called)
+ * @attrs: DMA attributes passed to dma_unmap_sg() (if called)
  */
 void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
 		int nents, enum dma_data_direction dir, unsigned long attrs)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
