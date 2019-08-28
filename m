Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F829A0E4E
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 01:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1mB9xo5snRGap7/fpLjap8kXliTpu3Ub94ViUXD//+k=; b=LL7CBB2kJG0yVevvhsGhR7cE1
	MudykehYqT39QkAK+v2NeP4it/EGP6WuuZ/amYAeJvptS1WdAu38muzjtnC8dmKTPc5vDbDNZ9g+/
	sQt1k2MUFPQH5tSSv7to+lPhClYzDb+IwCKFv/oSuotb2ixpHrph7ujcQF91swEsmHkNOODzdj6Gc
	bpSv8C1fxA4ZQUGF1iGnBRVW2+xRR51dILbPNbM3kLm44Yr47i8Lx3llxXfQnM6I6bZswPjtTIC3N
	c+rmi0dHHCpB3IaBpCAGLu5fMTOVEpMUP45yApWKd8ZqmzsSg47o3ZSkHxKEe4MF8lCP1aYkz6Vlx
	Ty3usXbsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i37Xf-0003ZA-Vs; Wed, 28 Aug 2019 23:39:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i37Xa-0003Yp-1H
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 23:39:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id 4so667301pld.10
 for <linux-nvme@lists.infradead.org>; Wed, 28 Aug 2019 16:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=xwH9fsqtCC4wAGQ+6X+ijmvhV9g4icC+xAKNa6Ev5I0=;
 b=LpF3YkTcjnl6AZDaMNF51WXRVcZGx+yMP2s1GwQTOqvGrEZInEKAZ8eU3DWrGkoTAp
 MPbpF1bHzIxh9OVxxlFke4EbQ/62qbLhAYmuDFV8TykI2E6FrnMeod+jUxoAeGqDLTfR
 K6tdK6BADgWTjCwdgvInoKF2XbWuph/kSV4DU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=xwH9fsqtCC4wAGQ+6X+ijmvhV9g4icC+xAKNa6Ev5I0=;
 b=UDiVQXlZLKYoygfAA1imhpzKYnNzb1grpoSTsw9Af/GfD9A2UBoisXknOQLRmiCYdP
 zuVMgXSXoBSot047j+7gz0Vwqhpu3+8+5n4y0vZZAfdlQiH7VDsj9gvlmaJLVYyQSYLD
 PYSlziAEzgGQ/s+ZuUFbyqMIitLAdsSZZl6ATsaZpENZ5cUdn5AMireNng2wObyhstzU
 nq+M8Yl07vm2vzlHdVhYdRrOTSUE0iZY2FgR7d2wZYCGOzXsvdcr766w5QWq1wG2rMZV
 E5itlf74zXlsHewPsWTIzqC0L8Ofd2DP6bODLiphIMmHbTGrB8gaw/a9BwTm9lsqrrQL
 OPQA==
X-Gm-Message-State: APjAAAUHU6ujk+BC0Mn0ySMGMZj4OOB02Eyy6hpY5Hu6KKklQaTORVou
 PcrAyPKcgG5vBaaCoRq19AMLhw==
X-Google-Smtp-Source: APXvYqxCp7ODcoQjcmZwe1hTk23/M3ssnWHTptQjNDambhx5NrsIYssXONuBKPQ7FrtQzFmzc4Zazg==
X-Received: by 2002:a17:902:7444:: with SMTP id
 e4mr6456188plt.72.1567035587000; 
 Wed, 28 Aug 2019 16:39:47 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p8sm576744pfq.129.2019.08.28.16.39.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 16:39:46 -0700 (PDT)
Subject: Re: [PATCH 2/3] nvme-fc: Use rq_dma_dir macro
To: Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
 <1566990710-16713-2-git-send-email-israelr@mellanox.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <acd2bd06-826a-1f42-8708-bb9db493ac61@broadcom.com>
Date: Wed, 28 Aug 2019 16:39:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566990710-16713-2-git-send-email-israelr@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_163950_082052_4C13504F 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/28/2019 4:11 AM, Israel Rukshin wrote:
> Remove code duplication.
>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/fc.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index ec264b2..3e1b868 100644

Looks good

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james


> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2107,7 +2107,6 @@ enum {
>   		struct nvme_fc_fcp_op *op)
>   {
>   	struct nvmefc_fcp_req *freq = &op->fcp_req;
> -	enum dma_data_direction dir;
>   	int ret;
>   
>   	freq->sg_cnt = 0;
> @@ -2124,9 +2123,8 @@ enum {
>   
>   	op->nents = blk_rq_map_sg(rq->q, rq, freq->sg_table.sgl);
>   	WARN_ON(op->nents > blk_rq_nr_phys_segments(rq));
> -	dir = (rq_data_dir(rq) == WRITE) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
>   	freq->sg_cnt = fc_dma_map_sg(ctrl->lport->dev, freq->sg_table.sgl,
> -				op->nents, dir);
> +				op->nents, rq_dma_dir(rq));
>   	if (unlikely(freq->sg_cnt <= 0)) {
>   		sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);
>   		freq->sg_cnt = 0;
> @@ -2149,8 +2147,7 @@ enum {
>   		return;
>   
>   	fc_dma_unmap_sg(ctrl->lport->dev, freq->sg_table.sgl, op->nents,
> -				((rq_data_dir(rq) == WRITE) ?
> -					DMA_TO_DEVICE : DMA_FROM_DEVICE));
> +			rq_dma_dir(rq));
>   
>   	nvme_cleanup_cmd(rq);
>   


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
