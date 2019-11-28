Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32A610C277
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 03:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WcytezNrQOJqpDFnBE1ZYYYsdz82wxvfOB1Pauvee7U=; b=AP4QLbC2GjC0m0h0aqz2MlPzn
	bKKD1vYWXVyGtI1SY5p58O0I/8XZ+TNCyCVDNjg7xp3ZUr9nzyxxMxoyk5LENeBaACZfRSz8+L7wo
	An96yDAdaTaL5vVEdMqFR1Bq9Is35AqD2gSqFlMmJow+hilhAuhMCHJiG+cj8+D9KmCFjR/fdoBWN
	/zncfaJ59rKQ1Z9ORWWZIbEIMm06xCF18bpZHNd5EATgGVXhpgFTnxAeiFqob7kPgypRvojl5WsDx
	GyLFDfUq8L4XZVBnInS1HwXsTTfq+pf9nUaMbVBXLdAqvGo+26IAyTeNwk4uqjCu4PLsvtlvCI92Z
	wgClPbCLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9l4-0007ls-E2; Thu, 28 Nov 2019 02:42:18 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9l0-0007lN-RI
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 02:42:16 +0000
Received: by mail-wr1-f68.google.com with SMTP id y11so26045949wrt.6
 for <linux-nvme@lists.infradead.org>; Wed, 27 Nov 2019 18:42:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RVv5RzETRNeTW483/ctPsY3cFlz+xJLuDM1ipds3Ksc=;
 b=UjXVaOpuh6V8SIvUmyXto8N2454JQ0Pa2bQFWsOHNJtA7aKCx6sAtajWsLAFS2pwmL
 13oXAZvwSzJGl2H4Hjly6JK2qXcYFv0QBG5++QqF77NuXOe2dL/1P8Dsfx+sRxwhNMb1
 GS+BS3Fg+2C5GofaJ9M0CBukTKP6HwsYWRx7r1lXOlaT4EJ/N1i/eI1usgF/Xns3vpBG
 0ATU1eK0s+QIWImq7JM+BEzkDcfkbS3nVGCk2Kw6APcV8x2KZNb/SH3iTC7gsE5DvgQR
 ccpWAOCS3MowSsFd9qPKezPjnzDXgt6PCO9HtRNqznJENoCvMFVnh1u6qCnfE1igJ2u9
 emBg==
X-Gm-Message-State: APjAAAUybaCjSBW0ipEExMqGTSBgL84N/KXIEG5WV19L5iLT/DUa21WT
 jkDKL2c2dNPMN2S+gPw8k5E=
X-Google-Smtp-Source: APXvYqy8HwCr/EtVQewDgxFPKH//YffpaPNjCm7FKNX/hUF7WNUD4k5ec+vAMW2Dt0M7R+He+uuIQA==
X-Received: by 2002:adf:de0a:: with SMTP id b10mr45828580wrm.268.1574908931743; 
 Wed, 27 Nov 2019 18:42:11 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id s8sm8412605wmc.39.2019.11.27.18.42.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 Nov 2019 18:42:10 -0800 (PST)
Subject: Re: [PATCH 1/4] PCI/MSI: Export __pci_msix_desc_mask_irq
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-2-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <0eaff815-22ca-0c77-0122-9d0c5ae80f58@grimberg.me>
Date: Wed, 27 Nov 2019 18:42:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191127175824.1929-2-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_184214_883403_C6A38574 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: bigeasy@linutronix.de, helgaas@kernel.org, ming.lei@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Export the fast msix mask so that drivers may use these in timing
> sensitive contexts.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/pci/msi.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> index 0884bedcfc7a..9e866929f4b0 100644
> --- a/drivers/pci/msi.c
> +++ b/drivers/pci/msi.c
> @@ -225,6 +225,7 @@ u32 __pci_msix_desc_mask_irq(struct msi_desc *desc, u32 flag)
>   
>   	return mask_bits;
>   }
> +EXPORT_SYMBOL_GPL(__pci_msix_desc_mask_irq);
>   
>   static void msix_mask_irq(struct msi_desc *desc, u32 flag)
>   {
> 

Nice!

but why not export msix_mask_irq?

Is it possible that this what made the irqpoll patch I sent
to cause a performance hit? I used disable_irq_nosync...

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
