Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D085D837
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 00:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytKGQWbB99HP2jTcvMsvU/uvWAR91t2VB6s8Rf/A+bo=; b=t+XumC+JIFEIhr
	hVC8pJBvnu8c+B0yJze8Z1RSIIR+GmsFH3GOFEkRtGIumSEPQV87fqJjC8tfK+SCwT8B3hMtP88y2
	dLKFxoWK8vje7WArwnA3KBNy8wiWcdeqb7uRCTR5/8UgD/UIGxCWtgGP5lpwi55gStGtwyXRaJdjn
	23fT+sI2MqJk62xlj2K9c0y/4esVR10qPntDEgw4FcQ/vKmFQ9PigMngsGgl7Q74MJWtMkzjMIDhm
	apGnJ5uXGdkAmNfdA8EXPgeNO3RzaH1XhdXX0bM751Ht/MOXq0miz2pcGHx3Iy4jC0udJbQo0WoXb
	gPGOj6TOaEmRMGW1zgDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiReB-0000a8-Kh; Tue, 02 Jul 2019 22:53:11 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiRe2-0000ZR-SA
 for linux-nvme@lists.infradead.org; Tue, 02 Jul 2019 22:53:04 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hiRdk-0001o8-HO; Tue, 02 Jul 2019 16:52:46 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
 <20190628045705.GD3705@ziepe.ca>
 <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
 <20190628172926.GA3877@ziepe.ca>
 <25a87c72-630b-e1f1-c858-9c8b417506fc@deltatee.com>
 <20190628190931.GC3877@ziepe.ca>
 <cb680437-9615-da42-ebc5-4751e024a45f@deltatee.com>
 <20190702224530.GD11860@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <49c7f848-3cd5-7225-0821-b19fb4547ad9@deltatee.com>
Date: Tue, 2 Jul 2019 16:52:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702224530.GD11860@ziepe.ca>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, hch@lst.de, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_155303_255754_242217A9 
X-CRM114-Status: GOOD (  12.38  )
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-02 4:45 p.m., Jason Gunthorpe wrote:
> On Fri, Jun 28, 2019 at 01:35:42PM -0600, Logan Gunthorpe wrote:
> 
>>> However, I'd feel more comfortable about that assumption if we had
>>> code to support the IOMMU case, and know for sure it doesn't require
>>> more info :(
>>
>> The example I posted *does* support the IOMMU case. That was case (b1)
>> in the description. The idea is that pci_p2pdma_dist() returns a
>> distance with a high bit set (PCI_P2PDMA_THRU_HOST_BRIDGE) when an IOMMU
>> mapping is required and the appropriate flag tells it to call
>> dma_map_resource(). This way, it supports both same-segment and
>> different-segments without needing any look ups in the map step.
> 
> I mean we actually have some iommu drivers that can setup P2P in real
> HW. I'm worried that real IOMMUs will need to have the BDF of the
> completer to route completions back to the requester - which we can't
> trivially get through this scheme.

I've never seen such an IOMMU but I guess, in theory, it could exist.
The IOMMUs that setup P2P-like transactions in real hardware make use of
dma_map_resource(). There aren't a lot of users of this function (it's
actually been broken with the Intel IOMMU until I fixed it recently and
I'd expect there are other broken implementations); but, to my
knowledge, none of them have needed the BDF of the provider to date.

> However, maybe that is just a future problem, and certainly we can see
> that with an interval tree or otherwise such a IOMMU could get the
> information it needs.

Yup, the rule of thumb is to design for the needs we have today not
imagined future problems.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
