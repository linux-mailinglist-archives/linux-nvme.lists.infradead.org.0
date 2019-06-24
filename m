Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF01A5181A
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 18:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ty+05PPtqbv6v5r7rp2FKX5cPpq27ohjGK0hIBcQ6Fs=; b=hBaFOEuTA8OJkS
	2R8V3dGo0yNqeNG5dmBB/U42f7iXkc0VJ2x+daz6rlZjf2IUZ4DPi7l5QsqPDQOxatHQJuylePW+0
	gaXvYz5PrhWxSrqq9P7Apa4soDVFd26oXOSSvD7COuQTVGpDgl+ERVdiBnDZdMtMb9jw979wlibjg
	O9/zorG3BumIaAM0052xPhuGzOH6gxUjMNq+IVVZcOLpVceC1tEvYKD5/aGBcymLmcTRc7AVU/tKo
	6Z9l5nZLF8+XD4oS+rPxgC+ZEMufcsqZQJWu/b/QpfMjn6z9+LGjJUThkePj4a09q444f9hnVbYXJ
	TIW0LflNBest3EptAzUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRY8-0005vl-UV; Mon, 24 Jun 2019 16:10:32 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRXy-0005uC-QB
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 16:10:24 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hfRXt-0007iv-9o; Mon, 24 Jun 2019 10:10:18 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>, Christoph Hellwig <hch@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <1041d2c6-f22c-81f2-c141-fb821b35c0c1@deltatee.com>
Date: Mon, 24 Jun 2019 10:10:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624134641.GA8268@ziepe.ca>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 bhelgaas@google.com, axboe@kernel.dk, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 dan.j.williams@intel.com, hch@lst.de, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_091022_903307_D1FBD6D7 
X-CRM114-Status: GOOD (  17.02  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-24 7:46 a.m., Jason Gunthorpe wrote:
> On Mon, Jun 24, 2019 at 09:31:26AM +0200, Christoph Hellwig wrote:
>> On Thu, Jun 20, 2019 at 04:33:53PM -0300, Jason Gunthorpe wrote:
>>>> My primary concern with this is that ascribes a level of generality
>>>> that just isn't there for peer-to-peer dma operations. "Peer"
>>>> addresses are not "DMA" addresses, and the rules about what can and
>>>> can't do peer-DMA are not generically known to the block layer.
>>>
>>> ?? The P2P infrastructure produces a DMA bus address for the
>>> initiating device that is is absolutely a DMA address. There is some
>>> intermediate CPU centric representation, but after mapping it is the
>>> same as any other DMA bus address.
>>>
>>> The map function can tell if the device pair combination can do p2p or
>>> not.
>>
>> At the PCIe level there is no such thing as a DMA address, it all
>> is bus address with MMIO and DMA in the same address space (without
>> that P2P would have not chance of actually working obviously).  But
>> that bus address space is different per "bus" (which would be an
>> root port in PCIe), and we need to be careful about that.
> 
> Sure, that is how dma_addr_t is supposed to work - it is always a
> device specific value that can be used only by the device that it was
> created for, and different devices could have different dma_addr_t
> values for the same memory. 
> 
> So when Logan goes and puts dma_addr_t into the block stack he must
> also invert things so that the DMA map happens at the start of the
> process to create the right dma_addr_t early.

Yes, that's correct. The intent was to invert it so the dma_map could
happen at the start of the process so that P2PDMA code could be called
with all the information it needs to make it's decision on how to map;
without having to hook into the mapping process of every driver that
wants to participate.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
