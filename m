Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE041A4329
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5wwIwi+eIeZjef6XqIhrfcFC0m6+cAa4gR9WU8oklJc=; b=XxO4Ghi0eZRogHx5pr/iOX5FX
	Y1p/dPiev8e8Z0GWKWpMlAurbogX9nEnXMQDNfvDMOe6ycExMQbpYarhyk2QRTtXCYGVbrCllEi0Y
	hXmthdFRoh70H62Kp6bygXrRlad5IVxNVxba+mA31xV7zLcfTZDDFrfE1gTdFWImTtuLOrgSE65wl
	nRp3QJsYJ3crYaZFwsTKF5fFWfrDDlj1TpBALLYWhjX7uueGlCONfOeyXAZmZwgkIigAY0jvesT4s
	rMdL0O90CAm9SF0WLjjBS6LKgrigEeSaxEfsUJPs6ALJ8zmoBv9bSO3jtUOB3oOhoAyivbwS93vkP
	TULHRV1cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMoMZ-0005kz-DJ; Fri, 10 Apr 2020 07:46:07 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMoMV-0005kd-4f
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:46:04 +0000
Received: by mail-wm1-f67.google.com with SMTP id a81so1822945wmf.5
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:46:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fqm1ULgkcZOHiuSCNiepP/vKxMPquhLsBVTeaS9kM2o=;
 b=G5JYzYVk7AOHeq6RB1n6P935F8Gm2nX2O7RsQrPduM4CMu2Cr56LQDkoKmYM786ypm
 AY+soKFt+OidV2szLf0ShgDP/RqvVt/2yq6feiGVp9CU4PHd/Jy0fTSTPo1e5BUt7Y10
 ZR/pTpZwis4zRVSad4e3n0u8ZAEIcCxlSYN3m+UEcmrJ/ZTMrXA7dir9bX8DdsZGrqDO
 MIabFLZvm07hsxz8TlkSeEJRnHWP0RxynaFH7KJllycfRQfSX34GP6nc4H6e7Zo+fw8o
 HhCBYpwQD8ui0L8ctmFIbg8slgbrGd+zpX8QDWDY83t85YEWOtYg0BlGzyTtw2aBwbCM
 Ah8A==
X-Gm-Message-State: AGi0PubZBX+xeFnzHbtuejrYiOszuWYdwVzYUrnkMy81p1n/gOl5CVQt
 xTFXDaD99URV5Hz2zusJFII=
X-Google-Smtp-Source: APiQypI5M5sl2ujZNAC5yV0B6UB53Q9TAlBvm7Vmx6KB0R7GkZbuCeFZ9e2LQOxeG12L92U8dsQ6mg==
X-Received: by 2002:a1c:a90a:: with SMTP id s10mr3603799wme.99.1586504761525; 
 Fri, 10 Apr 2020 00:46:01 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id r5sm1760195wmr.15.2020.04.10.00.46.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:46:01 -0700 (PDT)
Subject: Re: [PATCH 05/10] nvme: don't directly update multipath queue settings
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-6-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <960c5445-139f-d17a-9efe-ba50d761a4f7@grimberg.me>
Date: Fri, 10 Apr 2020 00:45:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-6-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_004603_183103_E0EA9A87 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Use only the stacking limits to update the multipath disk. Setting these
> directly overwrites the stacked settings of other paths.

Um, but update_disk_info does more than blk_queue_stack_limits.

Can you explain more accurately what breaks here?
Who will register integtrity on the mpath disk? who will set capacity?

Maybe I'm missing something...

> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/core.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 09ffb2d85854..7e5d28ed7b0c 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1907,7 +1907,6 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
>   	nvme_update_disk_info(disk, ns, id);
>   #ifdef CONFIG_NVME_MULTIPATH
>   	if (ns->head->disk) {
> -		nvme_update_disk_info(ns->head->disk, ns, id);
>   		blk_queue_stack_limits(ns->head->disk->queue, ns->queue);
>   		if (bdi_cap_stable_pages_required(ns->queue->backing_dev_info)) {
>   			struct backing_dev_info *info =
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
