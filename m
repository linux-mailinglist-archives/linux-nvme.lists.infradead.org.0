Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAAB1CB559
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 19:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zyT0loNnP6j9TBHfDNAsDdQcWn6J0Uvm6uXWm1czDWg=; b=EjueekX8HhP6gnakteNBLjjuN
	X7MmDJEQOiBNiwjWVtazCOz1q/GElni1hutffQ8lEMzkRvrfYb+vUlgkIr2D/h34YYxNGQ7YeHnp8
	jqPc7TGfo6qwhuhfrCPEHuQF6ZfwAOx9BXG90K/mqRqOWDVyf1DkSP/xVWAb+9IM0Oeg4fLSwx2qo
	EfRaKrRDECU/us1mhhppMy8c16KDdi8KZNbtjDIMmMOctJHUnQc2xH4sfknacXcsOXW4sU7UVIO+K
	3x95EgsbM31b93Y+XNBkkLJDzCCiCnQD5uqBeTN6Fu/IddoQRXVzDqXBOLRyXGetKYe3qsJ6nEg5T
	hZiVdsV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6Rt-0002cx-Lp; Fri, 08 May 2020 17:06:09 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Rp-0002bu-D1
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 17:06:07 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 988EB6CA4AF0B6B426D1;
 Fri,  8 May 2020 18:05:45 +0100 (IST)
Received: from [127.0.0.1] (10.47.2.116) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 8 May 2020
 18:05:44 +0100
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
To: Keith Busch <kbusch@kernel.org>
References: <20200506163104.GD12919@willie-the-truck>
 <3453193c-424b-1e4c-16be-279088612c68@arm.com>
 <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <6b573185-c6a5-501c-7db2-befacefa3701@huawei.com>
 <20200508161621.GB2622778@dhcp-10-100-145-180.wdl.wdc.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <21739628-85bd-8fe5-fc37-b7cc6de96fd1@huawei.com>
Date: Fri, 8 May 2020 18:04:55 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200508161621.GB2622778@dhcp-10-100-145-180.wdl.wdc.com>
Content-Language: en-US
X-Originating-IP: [10.47.2.116]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_100605_588865_AEBA133C 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: sagi@grimberg.me, Robin Murphy <robin.murphy@arm.com>,
 "luojiaxing@huawei.com" <luojiaxing@huawei.com>,
 linux-nvme@lists.infradead.org, Alexey Dobriyan <adobriyan@gmail.com>,
 axboe@fb.com, Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 08/05/2020 17:16, Keith Busch wrote:
> On Thu, May 07, 2020 at 04:41:01PM +0100, John Garry wrote:
>> I have an FAE contact, who I can ask. That may take a few days.
> 
> John,
> 
> In the meantime could you see if the following resolves your
> observation?
> 
> ---
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index e13c370de830..8e96ec6eed61 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -989,6 +989,7 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq)
>   
>   	while (nvme_cqe_pending(nvmeq)) {
>   		found++;
> +		dma_rmb();
>   		nvme_handle_cqe(nvmeq, nvmeq->cq_head);
>   		nvme_update_cq_head(nvmeq);
>   	}
> --

Yeah, it looks much better now. 5 minutes running without issue, as 
opposed to 5 seconds in with a crash.

I'll test more when I return to work on Monday.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
