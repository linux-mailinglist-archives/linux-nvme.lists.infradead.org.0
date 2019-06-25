Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23085558C
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 19:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GB9+5OFyh6rSPj1bNI4zB5HsNjpSc0qKPCxyGE5EtC4=; b=qKDpsaf6eQ3oyjQqLx238yxxA
	rqe84A+g/q3+kffYETJUxPqj8rWqxDTYBZF4OUqTc5pu9l//pyoKRzcWdBbiDiwo1cZuiHtlCr0pd
	c1X19jvusEUk4EeXdqOXoggrApHAJO83R0/U6GpSC8V/pkbMBE5xt4723R7v+ga/k0Z89Ub1XcTuW
	OuLztP1lzYIpNpkOcfQb206x2HXHXXXuXdk8jdmsV/9ILuQp2NsRGV8zoY3Qtj+dD8DSYDXn75sEa
	g/0tkvPGdATEwNjPXasybvegzea3RSVgv3lrP4QTzXLvJC5TgSDHIEzgmm15t5T7q4hLVXr7BLZCL
	ZUU6vZ17A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoxm-00083W-Lc; Tue, 25 Jun 2019 17:10:34 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoxc-00082b-GR
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 17:10:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:10:23 -0700
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="155572110"
Received: from unknown (HELO [10.232.112.175]) ([10.232.112.175])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 25 Jun 2019 10:10:22 -0700
Subject: Re: [PATCH] nvme-pci: Avoid leak if pci_p2pmem_virt_to_bus() returns
 null
To: Alan Mikhak <alan.mikhak@sifive.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, keith.busch@intel.com, axboe@fb.com,
 hch@lst.de, sagi@grimberg.me, palmer@sifive.com, paul.walmsley@sifive.com
References: <1561420642-21186-1-git-send-email-alan.mikhak@sifive.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <39cc44bb-28b8-0daf-b059-b78791c77eb1@intel.com>
Date: Tue, 25 Jun 2019 11:10:21 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1561420642-21186-1-git-send-email-alan.mikhak@sifive.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_101024_562634_3452C850 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 6/24/2019 5:57 PM, Alan Mikhak wrote:
> Modify nvme_alloc_sq_cmds() to call pci_free_p2pmem()
> to free the memory it allocated using pci_alloc_p2pmem()
> in case pci_p2pmem_virt_to_bus() returns null.
> 
> Make sure not to call pci_free_p2pmem() if pci_alloc_p2pmem()
> returned null which can happen if CONFIG_PCI_P2PDMA is not
> configured.
> 
> Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
> ---
>   drivers/nvme/host/pci.c | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 524d6bd6d095..5dfa067f6506 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1456,11 +1456,15 @@ static int nvme_alloc_sq_cmds(struct nvme_dev *dev, struct nvme_queue *nvmeq,
>   
>   	if (qid && dev->cmb_use_sqes && (dev->cmbsz & NVME_CMBSZ_SQS)) {
>   		nvmeq->sq_cmds = pci_alloc_p2pmem(pdev, SQ_SIZE(depth));
> -		nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
> -						nvmeq->sq_cmds);
> -		if (nvmeq->sq_dma_addr) {
> -			set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
> -			return 0;
> +		if (nvmeq->sq_cmds) {
> +			nvmeq->sq_dma_addr = pci_p2pmem_virt_to_bus(pdev,
> +							nvmeq->sq_cmds);
> +			if (nvmeq->sq_dma_addr) {
> +				set_bit(NVMEQ_SQ_CMB, &nvmeq->flags);
> +				return 0;
> +			}
> +
> +			pci_free_p2pmem(pdev, nvmeq->sq_cmds, SQ_SIZE(depth));

Should the pointer be set to NULL here, just in case?

>   		}
>   	}
>   
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
