Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6661928CC0
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 23:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=miFJ+ZuwK9n7qGtlcbQ06ITxfa6h/xmv9CfkuugFyUo=; b=NrfMn7mpH2yzi89KcoJUU01sZ
	hHC+RJkLS/SpnvvHxmIRrPVCZdO2I4Uoe+5wJddAhJlioVrCTMw58F86fkwjwWf/xlnue6dVjnYd/
	VYCk7d0hz0p4pt/+Mj0QpCb9AevMXWH7pj+5gtJ037n1wfNP1B1Elwd+jYw1xRJbfNyPO2qCIkKuj
	KPxJ0sj1d3rl13d0QJPX0ISmgXCX6BVcpnNb1QOvNm3e4pJ/iI3cJGeGTRLPvgK8UfG2BTzJJc/R/
	oWi2izM+NnI3mJ9Ui2jljltiLq7xCSACUj+wTKcJoV0U5bxfnXoSBas8SulxkOX3jH/DFgGb5WKAT
	uYkSF8aOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTviM-0008Qh-Hj; Thu, 23 May 2019 21:57:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTviH-0008QK-Ft
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 21:57:26 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 14:57:23 -0700
Received: from unknown (HELO [10.232.112.129]) ([10.232.112.129])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 23 May 2019 14:57:23 -0700
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
To: Keith Busch <kbusch@kernel.org>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
 <20190522192656.GB5486@localhost.localdomain>
 <20190522200918.GC5486@localhost.localdomain>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <3f191e74-09ed-4356-d467-0ae222018e70@intel.com>
Date: Thu, 23 May 2019 15:57:22 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522200918.GC5486@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_145725_595800_EDEC7FE2 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/22/2019 2:09 PM, Keith Busch wrote:
> On Wed, May 22, 2019 at 01:26:57PM -0600, Keith Busch wrote:
>> The disable reclaims all commands, including the ones it dispatches, so
>> it sounds like you're talking about a race between the ones it dispatched
>> and its timeout work. If so, we can just make sure commands sent during
>> nvme_dev_disable never timeout, which are just the delete queue commands:
>>
>> ---
>> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
>> index f562154551ce..4678704c2138 100644
>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -2210,7 +2210,7 @@ static int nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
>>   	if (IS_ERR(req))
>>   		return PTR_ERR(req);
>>   
>> -	req->timeout = ADMIN_TIMEOUT;
>> +	req->timeout = UINT_MAX;
>>   	req->end_io_data = nvmeq;
>>   
>>   	init_completion(&nvmeq->delete_done);
>> --
> 
> I think we should do the above anyway, but it isn't going to help if
> commands dispatched outside disabling timeout. This should fix that.
> Note, we never needed to have a sync'ed reset on reset_done(), but
> this makes it necessary.
> 
> ---
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index f562154551ce..3edb9d098eb8 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1257,13 +1257,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>   	struct nvme_dev *dev = nvmeq->dev;
>   	struct request *abort_req;
>   	struct nvme_command cmd;
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
>   	u32 csts = readl(dev->bar + NVME_REG_CSTS);
>   
>   	/* If PCI error recovery process is happening, we cannot reset or
>   	 * the recovery mechanism will surely fail.
>   	 */
>   	mb();
> -	if (pci_channel_offline(to_pci_dev(dev->dev)))
> +	if (pci_channel_offline(pdev) || pdev->block_cfg_access)
>   		return BLK_EH_RESET_TIMER;
>

Thanks Keith. The block_cfg_access is exactly what I was looking for.

The use case that I have is NVMe format which can run a long time. If 
the FLR occurs while the format command is pending, it will be held off 
while the nvme_dev_disable() waits for the queues to quiesce (which 
doesn't happen until the command completes or times out).

>   	/*
> @@ -2782,12 +2783,13 @@ static void nvme_reset_prepare(struct pci_dev *pdev)
>   {
>   	struct nvme_dev *dev = pci_get_drvdata(pdev);
>   	nvme_dev_disable(dev, false);
> +	nvme_sync_queues(&dev->ctrl);
>   }
>   
>   static void nvme_reset_done(struct pci_dev *pdev)
>   {
>   	struct nvme_dev *dev = pci_get_drvdata(pdev);
> -	nvme_reset_ctrl_sync(&dev->ctrl);
> +	nvme_reset_ctrl(&dev->ctrl);
>   }
>   
>   static void nvme_shutdown(struct pci_dev *pdev)
> --
> 

For my specific case, is the sync_queues and reset_ctrl change needed as 
well?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
