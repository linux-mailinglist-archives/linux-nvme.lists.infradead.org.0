Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CEF1D1F0B
	for <lists+linux-nvme@lfdr.de>; Wed, 13 May 2020 21:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mj9otW6UHj3OCmUqzndtRiC//HIn2oboVvL+vhQJp4Q=; b=t/zAvoDGxw69fxm1Iyo/7rX2q
	5M+GW5Npr3E8I5JmSZBwEhDVX8uxc9nhRH+0X8cAuTrFUcAP6HrtR2lVuM3JvLvUgpEkL98z59xwO
	72D0NQpk3imEJqg8S+jPv9spJE0332p/BkW0EgCdUYWmFsSVwf5N2VjMOlId5QvLUL/3tvxj69DIp
	80xlxqBX+9Qdz55H76Vj9XfYeQmKreb/q0Mz5aX3jV8hxiPrwgrQBP45Rs2fntUdAfeawX4UWaW15
	LWBNzvrc9aZF82w13Ot4xweNH/FqisGDCT00esWGcEZoNasM09jJYVvsYUvII44P5iz3GvYSAMGI/
	MbqJHrTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYx0H-0002xc-89; Wed, 13 May 2020 19:25:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYx0B-0002x2-0G
 for linux-nvme@lists.infradead.org; Wed, 13 May 2020 19:25:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id f6so195980pgm.1
 for <linux-nvme@lists.infradead.org>; Wed, 13 May 2020 12:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=0FjB1mLXaXk0vwEA7+4+/Xi0Z7wbzJdLmj8laYRXmdc=;
 b=MPIunXv4PqS4YceXJbd4hgzcy6rtchUpEFulAvmvtlKdB/gqryS9omgMaEuHDF0Eh1
 BSF3hwwkO+IKWpsV62S0jDD3jF9+a0LxUOpGf4cKZo2PwYxRA6/bzYxHyGnEnsH0XoTc
 XVRViX6ehXxRePgi9uc1CEnigMThISnxeplqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=0FjB1mLXaXk0vwEA7+4+/Xi0Z7wbzJdLmj8laYRXmdc=;
 b=Rf9f5MMpvIQd82OkjemyAaoWSXXQdn5MvHdQqTO1jVIROY6tnRtq/L7IQKbTgu9ihR
 QeN9xOrOm/xit0NFgAXTP/eh5ZIZIOex7c29Kf73B1oBBfRfbj02nN/m8u6rBTN8r7sz
 n1+KidPr/qrENWrNSemApWXV1sEe6UxjMngglb6pOMUH3XZBMNKbTU0DwI66p4aAhLDf
 DPIEIbOSwKVBA87PcTjBsMsdOEbbHgoHgQCMqEzeTQBR3tgGiPu80fzSAkjilYi+7P2K
 mR/GnCFAyTlP4zGpeAPAxPgg7rlrG0ayJLcunnlDYwv/192pusvZfYR79oJZJDC/NM/4
 NERg==
X-Gm-Message-State: AOAM531/gJbkqo7VRW8hBNd71cCglD5/FNPAXz+oMzz6qDXw7SHD1yIV
 0FTpziAj1UmmZ0ea0PAFXmvdOw==
X-Google-Smtp-Source: ABdhPJwllmlVCU21sV0cG1pbrn+r97uaPU8fQm6tIO1lDpFAaw3kze0KK6nZQ60DCuzch+1rQD7EsA==
X-Received: by 2002:a62:8c42:: with SMTP id m63mr779803pfd.106.1589397910282; 
 Wed, 13 May 2020 12:25:10 -0700 (PDT)
Received: from [10.230.185.151] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x66sm273325pfb.173.2020.05.13.12.25.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 May 2020 12:25:09 -0700 (PDT)
Subject: Re: [PATCH 10/16] nvmet: add metadata characteristics for a namespace
To: Max Gurtovoy <maxg@mellanox.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-11-maxg@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <65a7ec19-425f-f3ad-191c-333eac46a81b@broadcom.com>
Date: Wed, 13 May 2020 12:25:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200504155755.221125-11-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_122511_054324_087CE954 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/4/2020 8:57 AM, Max Gurtovoy wrote:
> From: Israel Rukshin <israelr@mellanox.com>
>
> Fill those namespace fields from the block device format for adding
> metadata (T10-PI) over fabric support with block devices.
>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/target/io-cmd-bdev.c | 22 ++++++++++++++++++++++
>   drivers/nvme/target/nvmet.h       |  3 +++
>   2 files changed, 25 insertions(+)
>
> diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
> index 0427e04..45dc644 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -47,6 +47,22 @@ void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
>   	id->nows = to0based(ql->io_opt / ql->logical_block_size);
>   }
>   
> +static void nvmet_bdev_ns_enable_integrity(struct nvmet_ns *ns)
> +{
> +	struct blk_integrity *bi = bdev_get_integrity(ns->bdev);
> +
> +	if (bi) {
> +		ns->metadata_size = bi->tuple_size;
> +		if (bi->profile == &t10_pi_type1_crc)
> +			ns->pi_type = NVME_NS_DPS_PI_TYPE1;
> +		else if (bi->profile == &t10_pi_type3_crc)
> +			ns->pi_type = NVME_NS_DPS_PI_TYPE3;
> +		else
> +			/* Unsupported metadata type */
> +			ns->metadata_size = 0;
> +	}
> +}
> +
>   int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
>   {
>   	int ret;
> @@ -64,6 +80,12 @@ int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
>   	}
>   	ns->size = i_size_read(ns->bdev->bd_inode);
>   	ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
> +
> +	ns->pi_type = 0;
> +	ns->metadata_size = 0;
> +	if (IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
> +		nvmet_bdev_ns_enable_integrity(ns);
> +

Ok. In the future we will want to consider a case of a transport 
stripping/inserting PI data, even if not implemented by the controller's 
bdev. Although it only checks fabric transmission, it's better than 0 
checking.

I assume, all bdevs that support an integrity profile will report a 
blocksize that does not contain the integrity data ?

And we're going to fail as badly now as before if the bdev didn't have a 
power-of-2 blocksize, or supported metadata (a blk-integrity buffer) and 
metadata_size isn't set ?

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
