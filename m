Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C4B3DD3
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 17:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0oCaiwdUFti4Q59DL78cH1T9bnHJDyGnpTjulOEhK98=; b=cAF/vb7kOViMBgzjxsrhKV63+
	5hMHiVqOQkcrNbSPzauHvZ0Op/vyRdToawTMMxCkNEB+hoAJ15Y+VBuPzkssL9mIdlvP9urC9j53v
	6wckZ/p6SKEPkOsrPBMYR4foFMuozZJP7KenQY5G2PxezR7I/VOq2CWWqa4G+N6KilbhsbM6q9clv
	JKh2ugG4jAuZxfx5IJdgEesVFe4HYaEx4Yut+21lB+Oovmhpls8fJEb4B7RFEH+rQO7inEe7x1w0E
	b7jGbCc9/F3HkHH2vLQJmu3eCM+fDEHIVmP/LsDZoYFHeMiY1vY69huDvGER14PvIx4Zx3D0q97X6
	gzT1QwIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9t7a-0004F6-TX; Mon, 16 Sep 2019 15:40:58 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9t7R-0004Ef-PV
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 15:40:51 +0000
Received: by mail-pg1-f194.google.com with SMTP id a24so232601pgj.2
 for <linux-nvme@lists.infradead.org>; Mon, 16 Sep 2019 08:40:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fGr5BmuNfUag0peuht/FQUnvTXJAA2xaO3SHqfPhD/Q=;
 b=MUS1bIMsSjXuCau6kkEQzxAP2tJ6sB04shT6iReuDAt9Ppb37oSYEflCJ8GVv3GNJn
 28413bEU0hvt9psUuYC6qHcqnrc+a3IlfSV61TGy024HWp8/0Z/+MYDz1JBBTY8GCRCH
 Inu0XgaK5rBJd1Wb9yYpHYUaxpRu8obS9uwGdEqYihgToqFOdY4C08+vyhPqoZT5NG1P
 +Gmyn32VEvRgklwPINforKtd21rRzNFWGZ69PNIKdcAn8mML8LkLTy7f/Q+yg6NEIcfW
 jKaJSWnCc2cjpi6qBiGSarZwdVLPa5wpjFL9DIPetXGoVlwQH5EtcwSvlhOG7LmS4F8T
 7BPA==
X-Gm-Message-State: APjAAAXQONN2gyViby16nJ5lzb68xNdmwNPDyqQzuKVLuYhdhcdGEt4i
 tDYxPx+M2t+alwWjdfEMBdc=
X-Google-Smtp-Source: APXvYqyHWJ7ra9uiMaIXwjIZeybU3cSQ6q3Wcfu6GbTpuqVew/1pI0M9LRfZcE1v34Hsmi3NeWJ4Ig==
X-Received: by 2002:a62:83c8:: with SMTP id h191mr2691035pfe.240.1568648448768; 
 Mon, 16 Sep 2019 08:40:48 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id a4sm12238674pfn.110.2019.09.16.08.40.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 08:40:47 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
To: Balbir Singh <sblbir@amzn.com>, linux-nvme@lists.infradead.org
References: <20190913233631.15352-1-sblbir@amzn.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7017c4c1-75a9-1e37-eb54-6126dfbb251b@acm.org>
Date: Mon, 16 Sep 2019 08:40:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190913233631.15352-1-sblbir@amzn.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_084050_064667_95207EBD 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/13/19 4:36 PM, Balbir Singh wrote:
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index b45f82d58be8..f6ddb58a7013 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -103,10 +103,16 @@ static void nvme_set_queue_dying(struct nvme_ns *ns)
>   	 */
>   	if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
>   		return;
> -	revalidate_disk(ns->disk);
>   	blk_set_queue_dying(ns->queue);
>   	/* Forcibly unquiesce queues to avoid blocking dispatch */
>   	blk_mq_unquiesce_queue(ns->queue);
> +	/*
> +	 * revalidate_disk, after all pending IO is cleaned up
> +	 * by blk_set_queue_dying, largely any races with blk parittion
> +	 * reads that might come in after freezing the queues, otherwise
> +	 * we'll end up waiting up on bd_mutex, creating a deadlock.
> +	 */
> +	revalidate_disk(ns->disk);
>   }

The comment above revalidate_disk() looks wrong to me. I don't think 
that blk_set_queue_dying() guarantees that ongoing commands have 
finished by the time that function returns. All blk_set_queue_dying() 
does is to set the DYING flag, to kill q->q_usage_counter and to wake up 
threads that are waiting inside a request allocation function. It does 
not wait for pending commands to finish.

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
