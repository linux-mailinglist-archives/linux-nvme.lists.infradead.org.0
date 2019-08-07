Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E219383E5D
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 02:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCLXbT3/c26rS7XxzqN3dlcOmfW9JXyNKMZLfwsuboQ=; b=J4GkeEIKClmayV
	CnrivzIYiPo1ZU+UyHJT1gHL+dEYIbBoigNVjAFO1mONEyzwYmSzfYL1WOb+yHeVkVUEh+VkDBkJU
	H2bcJIJFiF2tRsG+Fn1x8+A2AWAV8JeCgFMIh7ML+gYXBSv4JPszGpxWySRGUG86cp2NH99b9L5yN
	PT4BkAbiL2q9jcQr08nrYcsbG7ifvzqlw2yymsiAN891a/APjy9onqTCj9OOigATSE1QIPrArm76J
	0QDleAO9+1gWUj3bdfjtOJtPVGVqX/A3fwRkDl/yNSsck/ClJuw8qb5e9W4nukRTJdFvgPyPVQgp1
	mdiU5z+o2snh/bEvfAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9ra-0005hc-Pk; Wed, 07 Aug 2019 00:31:34 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9rS-0005hH-G7
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 00:31:28 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hv9rD-0003gV-OL; Tue, 06 Aug 2019 18:31:12 -0600
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190806234439.GW151852@google.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <e31f13f8-5afd-6f38-a206-163e9f77c91a@deltatee.com>
Date: Tue, 6 Aug 2019 18:31:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190806234439.GW151852@google.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: hch@lst.de, epilmore@gigaio.com, dan.j.williams@intel.com,
 sbates@raithlin.com, jgg@mellanox.com, kbusch@kernel.org, axboe@fb.com,
 Christian.Koenig@amd.com, sagi@grimberg.me, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, helgaas@kernel.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/14] PCI/P2PDMA: Support transactions that hit the
 host bridge
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_173126_894881_C6052D6D 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On 2019-08-06 5:44 p.m., Bjorn Helgaas wrote:
> On Tue, Jul 30, 2019 at 10:35:31AM -0600, Logan Gunthorpe wrote:
>> Here's v2 of the patchset. It doesn't sound like there's anything
>> terribly controversial here so this version is mostly just some
>> cleanup changes for clarity.
>>
>> Changes in v2:
>>  * Rebase on v5.3-rc2 (No changes)
>>  * Re-introduce the private pagemap structure and move the p2p-specific
>>    elements out of the commond dev_pagemap (per Christoph)
>>  * Use flags instead of bool in the whitelist (per Jason)
>>  * Only store the mapping type in the xarray (instead of the distance
>>    with flags) such that a function can return the mapping method
>>    with a switch statement to decide how to map. (per Christoph)
>>  * Drop find_parent_pci_dev() on the fast path and rely on the fact
>>    that the struct device passed to the mapping functions *must* be
>>    a PCI device and convert it directly. (per suggestions from
>>    Christoph and Jason)
>>  * Collected Christian's Reviewed-by's
>> --
>>
>> As discussed on the list previously, in order to fully support the
>> whitelist Christian added with the IOMMU, we must ensure that we
>> map any buffer going through the IOMMU with an aprropriate dma_map
>> call. This patchset accomplishes this by cleaning up the output of
>> upstream_bridge_distance() to better indicate the mapping requirements,
>> caching these requirements in an xarray, then looking them up at map
>> time and applying the appropriate mapping method.
>>
>> After this patchset, it's possible to use the NVMe-of P2P support to
>> transfer between devices without a switch on the whitelisted root
>> complexes. A couple Intel device I have tested this on have also
>> been added to the white list.
>>
>> Most of the changes are contained within the p2pdma.c, but there are
>> a few minor touches to other subsystems, mostly to add support
>> to call an unmap function.
>>
>> The final patch in this series demonstrates a possible
>> pci_p2pdma_map_resource() function that I expect Christian will need
>> but does not have any users at this time so I don't intend for it to be
>> considered for merging.
> 
> I don't see pci_p2pdma_map_resource() in any of these patches.

Oh, sorry, I removed that in v2 seeing there was some confusion over it.
I guess I forgot to remove the reference in the cover letter.

> I tentatively applied these to pci/p2pdma with minor typographical
> updates (below), but I'll update the branch if necessary.

Great, thanks! The typographical changes look good.

I already have one very minor change queued up for these. Should I just
send you a small patch against your branch for you to squash?

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
