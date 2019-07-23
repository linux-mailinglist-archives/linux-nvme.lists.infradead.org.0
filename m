Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAB07224F
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 00:23:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I+N3/Z6Va6ACMdb1OsL7RY23NS4Yl6ntkQDim00gW9M=; b=BRIjk2WNJobR1RuYFipBtmPC3
	+vRA9z+p5KoGjjV3JkiaLITCY/g1siS2bIu0kndHuaSswhqJdo2+/E26wEPRWhY0f0BGfKMJzsHUm
	NWksgyu8bE7dNAtMlMfBCZM9tRpRiu3k4jccR0WN+G5aSPIDRusq4RuM8u6VyHvW/iUSRc3lY/Yn4
	g2B0Zbh3qEif/f3I4t7kp/JfubcMAPSx1WjS7Lb6XJkafXdRx7AcHOVjpO+5+vrs0/J/KFsjepFn3
	RnR7N9D3kAut10zKAiy+f2S6pBDkXCHZF1FMIVYM8FakrML4vV9uGekrPQEJUUk9m3HxcO8pI8G3u
	rIxdN9amg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3BL-0001kb-I6; Tue, 23 Jul 2019 22:22:51 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3AQ-00016E-PZ
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 22:21:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id u15so33577685oiv.0
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 15:21:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FvINOcXJMdsWEru8SOSeH/n74bRaRZjPIJVViQNKsGs=;
 b=S+hntaZ/BjfYLLIIMUEev4ni4D6KVXLBLrNKAMxaIeqqmGdkRD1LHk+mCnGb+LjTyA
 cNz9g61KQ97vxYjb+MYmAZila6wWQ97KVKQ3LxzWZN3sakso2fp+UK2r6kB7Dhy23EGy
 KUCp/7sKcZOlxo+Ib5Uc+pUvcqv1h+yUE1UZS7gr1+8fycPSuhTMIafpoctKgw9Ctgdb
 ElD7VCuaoUP4RjyhXV+CWp5KafQbNmore5oY4pvdST3gkBJhLdffLTuelmNR6/SZRp6Y
 72NSb/ZR40avqdx+f2gwxVfFWs0Ozqg28QsP+AHzpM1XnuY7x7I9kgoRRUkvt9pboFfB
 klKQ==
X-Gm-Message-State: APjAAAWDRsK/0ecaBlhpfbrGdyYywJv3OtBdpVdjqDYocMJMenC1Eg61
 xSUckCwciRT6RQjgD/sG427SrJGu
X-Google-Smtp-Source: APXvYqyo/7cN/ZXyXSe+iosqkhGObuFLUpczKqiUolC7C9WwIap9tFwUV3Gm+uwXgR75/r3tyN0Eew==
X-Received: by 2002:aca:f08a:: with SMTP id
 o132mr38040496oih.101.1563920513273; 
 Tue, 23 Jul 2019 15:21:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q20sm15066793otm.32.2019.07.23.15.21.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 15:21:52 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
To: Keith Busch <kbusch@kernel.org>
References: <20190719194256.23618-1-sagi@grimberg.me>
 <20190723204643.GC4002@localhost.localdomain>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <6e5af7f5-be2a-6cf8-81fc-84ed831cbacd@grimberg.me>
Date: Tue, 23 Jul 2019 15:21:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723204643.GC4002@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_152155_161810_8B79EA14 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "lizhongfs@gmail.com" <lizhongfs@gmail.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I still think we'd prefer not adding that async domain dependency and
> relying on timeout to unstuck a hot-removal. So how about we schedule
> the reset work in probe and have the async part just flush the reset
> and scan work?
> 
> ---
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index db160cee42ad..0c2c4b0c6655 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2695,7 +2695,7 @@ static void nvme_async_probe(void *data, async_cookie_t cookie)
>   {
>   	struct nvme_dev *dev = data;
>   
> -	nvme_reset_ctrl_sync(&dev->ctrl);
> +	flush_work(&dev->ctrl.reset_work);
>   	flush_work(&dev->ctrl.scan_work);
>   	nvme_put_ctrl(&dev->ctrl);
>   }
> @@ -2761,6 +2761,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>   
>   	dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));
>   
> +	nvme_reset_ctrl(&dev->ctrl);
>   	nvme_get_ctrl(&dev->ctrl);

I think you need to get the ref first and then fire the work right?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
