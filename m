Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C4F70887
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 20:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OqcSLkJ+qyCJ7VSQY7tCzHfOliTQMCy3pi3+KarzVVc=; b=in6CBIfj7IMCIyGuAvZq9koYz
	Dd3Wiznv7tdG3NdLGSF5EXgsrS+Y87bNLwjxiylTwMkedjxFgcsg1zHVjIeyNufZ55nUNV/jBqaay
	4MfGiK/Y5vPewYun9NKp9GVxylPW6M8AKi8hai+c6d/pXnIMeG/j3Cqup7EQj2Uo0lDtxn2ZRE1x+
	sezmRzg/Ens8zTG48Xi5ppfcZIGeDgbIjsbU4WKE7oYQldujrPg4F2sbocLP2oT56Bx+zxoml5788
	DgrErXb8SpOz7+SYRAqNK6pMyXg/Gc2eQ6mzZofHuG6zZ+P3OXnVbWObGTGjoasGSNDE/OePeiXz4
	4+vPxjq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpd2B-0001KK-0t; Mon, 22 Jul 2019 18:27:39 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpd1Y-0001Jb-7b
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 18:27:02 +0000
Received: by mail-pg1-f194.google.com with SMTP id f20so8828219pgj.0
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 11:26:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0yshqysohd0VS2xKL/MotPjRJenkFS0ixJfXrWSQKv0=;
 b=gVHj0oawKee9Wt7Idg2S0pD6tp8igPba9oLADAm+kOsFEUvTZgoN4Gnbd1sTaSdfE2
 nj6tmviirzcI1bvnvK6S9DBCK651cQvu15/lNSgYjvCZjkstTsYIlXYRs1cjpSdSAgOj
 cQmXCeoUWy5cNlqDnTDRuvVm7nWuC6JoxNSjD3Oy4+SIMm2HfEoj6UUEDmAW+XHxLGSY
 8yxV7ImwDyFbfGR0fpMq3g1EiYsb1AHMgt8uEfF6zzmLNtzxku8FTNt/rnDrjoyvYCyL
 3cMOotO/kem3HPSSwFRgLo04bmBSIdw2KxBPhc7FBuDNcYj8FR194Nm8d0GSzEMlauoW
 7yCQ==
X-Gm-Message-State: APjAAAXrDw7l+VLnsfAD7FscBEcb+hz33Asdea0fzjB6VYGP872ac79Z
 hPy5UpNjnncvL479BhK5Qpw=
X-Google-Smtp-Source: APXvYqyn5sGSiVJ5sGQRmVim4qGmDLXttSTEPHtaYZjpe7mbHnmbUfC/N43uwhS8whx4lVSk10/buA==
X-Received: by 2002:a63:2252:: with SMTP id t18mr73031346pgm.5.1563820018818; 
 Mon, 22 Jul 2019 11:26:58 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o95sm35093361pjb.4.2019.07.22.11.26.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 11:26:58 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190719194256.23618-1-sagi@grimberg.me>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <ef8149f9-b7e0-d2ba-6bcb-ff51d8e2a908@acm.org>
Date: Mon, 22 Jul 2019 11:26:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190719194256.23618-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_112700_476597_5C891317 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Keith Busch <keith.busch@intel.com>, lizhongfs@gmail.com,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/19/19 12:42 PM, Sagi Grimberg wrote:
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 4b508d5e45cf..50061abe49c6 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -127,6 +127,7 @@ struct nvme_dev {
>   	dma_addr_t host_mem_descs_dma;
>   	struct nvme_host_mem_buf_desc *host_mem_descs;
>   	void **host_mem_desc_bufs;
> +	async_cookie_t async_probe;
>   };
>   
>   static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
> @@ -2765,7 +2766,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   	dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));
>   
>   	nvme_get_ctrl(&dev->ctrl);
> -	async_schedule(nvme_async_probe, dev);
> +	dev->async_probe = async_schedule(nvme_async_probe, dev);
>   
>   	return 0;
>   
> @@ -2810,6 +2811,8 @@ static void nvme_remove(struct pci_dev *pdev)
>   {
>   	struct nvme_dev *dev = pci_get_drvdata(pdev);
>   
> +	/* wait for async probe to complete */
> +	async_synchronize_cookie(dev->async_probe + 1);
>   	nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
>   	pci_set_drvdata(pdev, NULL);

Hi Sagi,

Does the async_synchronize_cookie() call wait until all previously 
started probes have finished? In other words, does the change in 
nvme_remove() introduce a dependency between probe and remove calls of 
different NVMe devices? Is that dependency important? If not, can it be 
avoided to introduce that dependency?

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
