Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F3B4DBA5
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 22:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DwUV4TrU++ilhArwPottI5IYBNOaTenJx2C3BanGvc=; b=mtKe8GupqCOQsB
	50nd2FKGlY10EH918xq8H5Rt8Wwlh3Q1SyaHuepX/1pW5FkvAUoBFRxP702WMM4LLHoPnbLiVruhm
	z87E4TvIXkRrPGOr1Z2Wacs5Qar9X8RMQ6vX47MKCAxTfsILyCZe4o8j2TqJLtp7dVR+x2zaHSyI8
	cKIXzzgk8w6Fwj/Gcsjy3XzezRYHmC6hV3pccCUBZQk4EN9DFg940uzsyQVIzpbRkpWpuRYgYsq6c
	2bDU0LxhoO448fYlz1zHZCShmqD38Lmqntj8DKdMkejeRepy/Ru2Pj3dWG7oW3TtwewvLbStrPSES
	b/Ul0b6KGP1l/WhI5aOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he42X-0002oE-Ho; Thu, 20 Jun 2019 20:52:13 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he42S-0002nY-HL
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 20:52:09 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1he42J-0007rd-52; Thu, 20 Jun 2019 14:52:00 -0600
To: Dan Williams <dan.j.williams@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca>
 <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <8044000b-1105-4f5d-20c4-ea101b17cd19@deltatee.com>
Date: Thu, 20 Jun 2019 14:51:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAPcyv4jyNRBvtWhr9+aHbzWP6=D4qAME+=hWMtOYJ17BVHdy2w@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 bhelgaas@google.com, hch@lst.de, axboe@kernel.dk, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, jgg@ziepe.ca,
 dan.j.williams@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_135208_619551_ABCB9CF8 
X-CRM114-Status: GOOD (  25.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-20 2:18 p.m., Dan Williams wrote:
>> Since that thread was so DAX/pmem centric (and Linus did say he liked
>> the __pfn_t), maybe it is worth checking again, but not for DAX/pmem
>> users?
>>
>> This P2P is quite distinct from DAX as the struct page* would point to
>> non-cacheable weird memory that few struct page users would even be
>> able to work with, while I understand DAX use cases focused on CPU
>> cache coherent memory, and filesystem involvement.
> 
> What I'm poking at is whether this block layer capability can pick up
> users outside of RDMA, more on this below...

I assume you mean outside of P2PDMA....

This new block layer capability is more likely to pick up additional
users compared to the existing block layer changes that are *very*
specific to PCI P2PDMA.

I also have (probably significantly controversial) plans to use this to
allow P2P through user space with O_DIRECT using an idea Jerome had in a
previous patch set that was discussed a bit informally at LSF/MM this
year. But that's a whole other RFC and requires a bunch of work I
haven't done yet.

>>
>>> My primary concern with this is that ascribes a level of generality
>>> that just isn't there for peer-to-peer dma operations. "Peer"
>>> addresses are not "DMA" addresses, and the rules about what can and
>>> can't do peer-DMA are not generically known to the block layer.
>>
>> ?? The P2P infrastructure produces a DMA bus address for the
>> initiating device that is is absolutely a DMA address. There is some
>> intermediate CPU centric representation, but after mapping it is the
>> same as any other DMA bus address.
> 
> Right, this goes back to the confusion caused by the hardware / bus /
> address that a dma-engine would consume directly, and Linux "DMA"
> address as a device-specific translation of host memory.
> 
> Is the block layer representation of this address going to go through
> a peer / "bus" address translation when it reaches the RDMA driver? In
> other words if we tried to use this facility with other drivers how
> would the driver know it was passed a traditional Linux DMA address,
> vs a peer bus address that the device may not be able to handle?

The idea is that the driver doesn't need to know. There's no distinction
between a Linux DMA address and a peer bus address. They are both used
for the same purpose: to program into a DMA engine. If the device cannot
handle such a DMA address then it shouldn't indicate support for this
feature or the P2PDMA layer needs a way to detect this. Really, this
property depends more on the bus than the device and that's what all the
P2PDMA code in the PCI tree handles.

>> The map function can tell if the device pair combination can do p2p or
>> not.
> 
> Ok, if this map step is still there then reduce a significant portion
> of my concern and it becomes a quibble about the naming and how a
> non-RDMA device driver might figure out if it was handled an address
> it can't handle.

Yes, there will always be a map step, but it should be done by the
orchestrator because it requires both devices (the client and the
provider) and the block layer really should not know about both devices.

In this RFC, the map step is kind of hidden but would probably come back
in the future. It's currently a call to pci_p2pmem_virt_to_bus() but
would eventually need to be a pci_p2pmem_map_resource() or similar which
takes a pointer to the pci_dev provider and the struct device client
doing the mapping.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
