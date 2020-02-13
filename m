Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9854415C271
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Feb 2020 16:34:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SqcuL6bdhO17pr45RgRMyKR8kW4mjq07R27mKRzjZqI=; b=nXSN9rLVgj2BgKpGfZbIEcaLU
	X9h7Cfp1Sy4iQmpB6lG/Wm5LrMetl0GNzQhnaKR3oI0jHbJMjzrGufvSeLXdbpKSM1jHptWilwLtB
	erXZdOgkwKPFTxQ9P1HNe7eSzKQcoHTA0ZiGVkYVo6bvMidjpUQ0M/fEoNbhMJiC2iUR6UqFDPIop
	eRLkhbezD/54IcnM206Js3TxtTZaBKcoXCqJ6Prvwj0GH2A3jsUkCYYXwIJZoApT3l9sWliCZpggy
	/6lzNl3mKKrNa4c3122FdC5xH56WTlJWteThqCH9eUV4/21yxxDm+UoIZ+B35BngEFkkswuU4qryw
	7AcTYsIiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GVD-0007S6-Er; Thu, 13 Feb 2020 15:34:07 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GV9-0007Qu-5D
 for linux-nvme@lists.infradead.org; Thu, 13 Feb 2020 15:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581608040;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UZPzAQ01ornT4c03XWJ9Jnba7M17Fse36u2YWhSo9Ss=;
 b=OJroqirZRkHfpQSPqxjEFb0ZhVUxa2jU5hG8k0hSZgyevPEdUK/U0rteklNJBwN6YPF+Az
 YxY9GGBrUrUjp46t7G1dUJ0Lg9Xd3EFj5VPYaOg9OIIN58Nq4K0wW56P9LNIKCyVGqvPmQ
 ynJpcJVOZIrbZh+4g/lfVlrsNoV7x6M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-wf-I53EYN7a4gbdgD8cYWg-1; Thu, 13 Feb 2020 10:31:52 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E97588018A2;
 Thu, 13 Feb 2020 15:31:50 +0000 (UTC)
Received: from [10.3.116.11] (ovpn-116-11.phx2.redhat.com [10.3.116.11])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB2BF5C131;
 Thu, 13 Feb 2020 15:31:49 +0000 (UTC)
Subject: Re: [PATCH] nvme/pci: move cqe check after device shutdown
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, chaitanya.kulkarni@wdc.com
References: <20200212165232.23015-1-kbusch@kernel.org>
From: David Milburn <dmilburn@redhat.com>
Message-ID: <a4ec3bc8-54ad-3d09-06d5-c8df761bc66a@redhat.com>
Date: Thu, 13 Feb 2020 09:31:49 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200212165232.23015-1-kbusch@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: wf-I53EYN7a4gbdgD8cYWg-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_073403_277906_9BCF8E08 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: yanghliu@redhat.com, Yi Zhang <yizhan@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

On 02/12/2020 10:52 AM, Keith Busch wrote:
> Many users have reported nvme triggered irq_startup() warnings during
> shutdown. The driver uses the nvme queue's irq to synchronize scanning
> for completions, and enabling an interrupt affined to only offline CPUs
> triggers the alarming warning.
> 
> Move the final CQE check to after disabling the device and all
> registered interrupts have been torn down so that we do not have any
> IRQ to synchronize.
> 
> Link: https://bugzilla.kernel.org/show_bug.cgi?id=206509

Yi Zhang and Yanghang Liu both saw the above stack trace in virtual 
environment when removing NVMe device. This patch resolves both
cases.

Thanks,
David

> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/pci.c | 23 ++++++++++++++++++-----
>   1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index da392b50f73e..9c80f9f08149 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1401,6 +1401,23 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
>   	nvme_poll_irqdisable(nvmeq, -1);
>   }
>   
> +/*
> + * Called only on a device that has been disabled and after all other threads
> + * that can check this device's completion queues have synced. This is the
> + * last chance for the driver to see a natural completion before
> + * nvme_cancel_request() terminates all incomplete requests.
> + */
> +static void nvme_reap_pending_cqes(struct nvme_dev *dev)
> +{
> +	u16 start, end;
> +	int i;
> +
> +	for (i = dev->ctrl.queue_count - 1; i > 0; i--) {
> +		nvme_process_cq(&dev->queues[i], &start, &end, -1);
> +		nvme_complete_cqes(&dev->queues[i], start, end);
> +	}
> +}
> +
>   static int nvme_cmb_qdepth(struct nvme_dev *dev, int nr_io_queues,
>   				int entry_size)
>   {
> @@ -2235,11 +2252,6 @@ static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode)
>   		if (timeout == 0)
>   			return false;
>   
> -		/* handle any remaining CQEs */
> -		if (opcode == nvme_admin_delete_cq &&
> -		    !test_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags))
> -			nvme_poll_irqdisable(nvmeq, -1);
> -
>   		sent--;
>   		if (nr_queues)
>   			goto retry;
> @@ -2428,6 +2440,7 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
>   	nvme_suspend_io_queues(dev);
>   	nvme_suspend_queue(&dev->queues[0]);
>   	nvme_pci_disable(dev);
> +	nvme_reap_pending_cqes(dev);
>   
>   	blk_mq_tagset_busy_iter(&dev->tagset, nvme_cancel_request, &dev->ctrl);
>   	blk_mq_tagset_busy_iter(&dev->admin_tagset, nvme_cancel_request, &dev->ctrl);
> 


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
