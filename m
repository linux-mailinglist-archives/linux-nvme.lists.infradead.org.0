Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC43351A85
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 20:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhkH2O5YdcBhOXZSTfCLYBkej0tXOfT/Yv11TtbcbD8=; b=q9Nc3U6Ji247cl
	xJm9qBDf6ZSJ7WV4190EPfgfeBCFrbC4gHZp3aVdYwhXbY3Q823IPGYPb50ZJL09RThmD6+EVH+bb
	9xvtVduLwg5QIoNdNMU3EOIY0T3qslMZPkDeoyyw4RtZUkjXeHlqFh12WbW3UeSlpuBIBiv58DcIi
	U50Xp/IvrhyJ8eJ8in12ZCBlpyKVsNZsnfVOD/FoxCtTtKspp+zUvf4vUUpD4xNla6FHlZsR1EPUb
	gMyzQmwtO06Mv7TmV1ymCPD56zi54FskmtezzC/6FJqBZbTs6ZF7/4SWEGSZicSpyl+f4e3lsEs+E
	MwYHxA5MhAXeLcvl1rRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTi0-0001Ev-RZ; Mon, 24 Jun 2019 18:28:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTht-0001EQ-C1
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 18:28:46 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hfThm-0001JO-NG; Mon, 24 Jun 2019 12:28:39 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca> <20190624135024.GA11248@lst.de>
 <20190624135550.GB8268@ziepe.ca>
 <7210ba39-c923-79ca-57bb-7cf9afe21d54@deltatee.com>
 <20190624181632.GC8268@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <bbd81ef9-b4f7-3ba7-7f93-85f602495e19@deltatee.com>
Date: Mon, 24 Jun 2019 12:28:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624181632.GC8268@ziepe.ca>
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
X-CRM114-CacheID: sfid-20190624_112845_458542_85CC57CD 
X-CRM114-Status: GOOD (  13.85  )
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
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-24 12:16 p.m., Jason Gunthorpe wrote:
> On Mon, Jun 24, 2019 at 10:53:38AM -0600, Logan Gunthorpe wrote:
>>> It is only a very narrow case where you can take shortcuts with
>>> dma_addr_t, and I don't think shortcuts like are are appropriate for
>>> the mainline kernel..
>>
>> I don't think it's that narrow and it opens up a lot of avenues for
>> system design that people are wanting to go. If your high speed data
>> path can avoid the root complex and CPU, you can design a system which a
>> much smaller CPU and fewer lanes directed at the CPU.
> 
> I mean the shortcut that something generates dma_addr_t for Device A
> and then passes it to Device B - that is too hacky for mainline.

Oh, that's not a shortcut. It's completely invalid and not likely to
work in any case. If you're mapping something you have to pass the
device that the dma_addr_t is being programmed into.

> Sounded like this series does generate the dma_addr for the correct
> device..

This series doesn't generate any DMA addresses with dma_map(). The
current p2pdma code ensures everything is behind the same root port and
only uses the pci bus address. This is valid and correct, but yes it's
something to expand upon.

I'll be doing some work shortly to add transactions that go through the
IOMMU and calls dma_map_* when appropriate.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
