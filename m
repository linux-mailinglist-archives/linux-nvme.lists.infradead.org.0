Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B024D82D
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 20:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3ODl6WTrZFzbZXz5mbVdi8rqB3M4wmtkGL4rtkcH1Y=; b=PZXk+gPHre5vj9
	cgFOYK+X+BL6Nsfzp4UYgL05HqrdCDKWt9hvwXjNYovw3dt7yAxQ1v3WoLa3pAlCWTJk18Pm5lnoT
	Or8DdCjRy5n8RdhY+Apux5jM4limSuWyXQUysZsUlLHSMOvcLdykkV9C7NstZIutfjM0SI3DWlkCR
	IgWIedfgjCu292QUbFXVGV7f8pP5H/sGYEZx3NOh5sfSf7DGRKTWG9r+c/Eb6w8LW3Pb81leJfcg7
	9s0sYH1J6hU5n/SlGDujKplzLczrQzDTLfN3ILEan/b6yoKbVgcBZ2FEtJRdpIKUGsMPo7xsmghGy
	CFqGpJMYUokKlX+328dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1jo-00032A-3M; Thu, 20 Jun 2019 18:24:44 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1jh-000317-DK
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 18:24:38 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1he1jU-0005yI-Se; Thu, 20 Jun 2019 12:24:26 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190620161240.22738-21-logang@deltatee.com>
 <20190620164909.GC19891@ziepe.ca>
 <f9186b2b-7737-965f-2dca-25e40e566e64@deltatee.com>
 <20190620171105.GD19891@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <a3a8ad66-459c-d590-5ce7-ce593cd8f34a@deltatee.com>
Date: Thu, 20 Jun 2019 12:24:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190620171105.GD19891@ziepe.ca>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, hch@lst.de, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 20/28] IB/core: Introduce API for initializing a RW
 ctx from a DMA address
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_112437_500985_7362CB44 
X-CRM114-Status: GOOD (  19.84  )
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-20 11:11 a.m., Jason Gunthorpe wrote:
> On Thu, Jun 20, 2019 at 10:59:44AM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-06-20 10:49 a.m., Jason Gunthorpe wrote:
>>> On Thu, Jun 20, 2019 at 10:12:32AM -0600, Logan Gunthorpe wrote:
>>>> Introduce rdma_rw_ctx_dma_init() and rdma_rw_ctx_dma_destroy() which
>>>> peform the same operation as rdma_rw_ctx_init() and
>>>> rdma_rw_ctx_destroy() respectively except they operate on a DMA
>>>> address and length instead of an SGL.
>>>>
>>>> This will be used for struct page-less P2PDMA, but there's also
>>>> been opinions expressed to migrate away from SGLs and struct
>>>> pages in the RDMA APIs and this will likely fit with that
>>>> effort.
>>>>
>>>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>>>  drivers/infiniband/core/rw.c | 74 ++++++++++++++++++++++++++++++------
>>>>  include/rdma/rw.h            |  6 +++
>>>>  2 files changed, 69 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
>>>> index 32ca8429eaae..cefa6b930bc8 100644
>>>> +++ b/drivers/infiniband/core/rw.c
>>>> @@ -319,6 +319,39 @@ int rdma_rw_ctx_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
>>>>  }
>>>>  EXPORT_SYMBOL(rdma_rw_ctx_init);
>>>>  
>>>> +/**
>>>> + * rdma_rw_ctx_dma_init - initialize a RDMA READ/WRITE context from a
>>>> + *	DMA address instead of SGL
>>>> + * @ctx:	context to initialize
>>>> + * @qp:		queue pair to operate on
>>>> + * @port_num:	port num to which the connection is bound
>>>> + * @addr:	DMA address to READ/WRITE from/to
>>>> + * @len:	length of memory to operate on
>>>> + * @remote_addr:remote address to read/write (relative to @rkey)
>>>> + * @rkey:	remote key to operate on
>>>> + * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
>>>> + *
>>>> + * Returns the number of WQEs that will be needed on the workqueue if
>>>> + * successful, or a negative error code.
>>>> + */
>>>> +int rdma_rw_ctx_dma_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
>>>> +		u8 port_num, dma_addr_t addr, u32 len, u64 remote_addr,
>>>> +		u32 rkey, enum dma_data_direction dir)
>>>
>>> Why not keep the same basic signature here but replace the scatterlist
>>> with the dma vec ?
>>
>> Could do. At the moment, I had no need for dma_vec in this interface.
> 
> I think that is because you only did nvme not srp/iser :)

I'm not sure that's true at least for the P2P case. With P2P we are able
to  allocate one continuous region of memory for each transaction. It
would be quite weird to allocate multiple regions for a single transaction.

>>>> +{
>>>> +	struct scatterlist sg;
>>>> +
>>>> +	sg_dma_address(&sg) = addr;
>>>> +	sg_dma_len(&sg) = len;
>>>
>>> This needs to fail if the driver is one of the few that require
>>> struct page to work..
>>
>> Yes, right. Currently P2PDMA checks for the use of dma_virt_ops. And
>> that probably should also be done here. But is that sufficient? You're
>> probably right that it'll take an audit of the RDMA tree to sort that out.
> 
> For this purpose I'd be fine if you added a flag to the struct
> ib_device_ops that is set on drivers that we know are OK.. We can make
> that list bigger over time.

Ok, that would mirror what we did for the block layer. I'll look at
doing something like that in the near future.

Thanks,

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
