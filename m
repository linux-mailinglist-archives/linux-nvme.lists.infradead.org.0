Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A7A17AFE6
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 21:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=46e07bzXsxpqRDaWKYgEyCyzhHzTnoKzzBbWs+LeJXQ=; b=SSlOx1CH4kFnUXRFjH7mB9ECV
	3+rbg1jRUp+7o/Xh3HzQsfss66pjdd5DxNhoxkoYbMdLJWlulvEjabiQHABMPpOQ/XElqTWfTZeFD
	x/4R0bTzJwWyswBIYVg8BxPC+u5F8cdpuD3GAkaCEDoyySdTzdUwo7S583pmuf4hLwoqJrOoLs3QO
	KMpodw2LcvWlMNeUWG9kv/cTrkc9v/4gk9D5CgRfr+kxIn2RDvvEyWNQ9rOBqYtrwbgZ8uVvA2Bjo
	IsEhUcJS6puYucHkMaYpxfNjXU8xgCLS0Nv7emT+I6MVZjJvnOS+HBfKcOc9VevdjrFvagATSNscs
	5ggz0IUVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xMQ-00049M-SB; Thu, 05 Mar 2020 20:44:50 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xMM-00048g-Cn
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 20:44:47 +0000
Received: by mail-oi1-f194.google.com with SMTP id g6so269096oiy.1
 for <linux-nvme@lists.infradead.org>; Thu, 05 Mar 2020 12:44:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fiEvrOQzeE+JZYIm1IaPOmDnSmkpZO3Krshygjuk2aM=;
 b=srFFzWJ87/i9p0kmUnK+c5cd4nggY/3yna6/TgJFHYHZJ6eitN2JTunJkMrxPLe2+h
 mCfZ3yPtyG8ANOkDnMDWW7ZZVeJW1xt+M+Rk58N3wgsAxh1Rd6VWjYChfOamhRhJFt7v
 U4cXFkEKqy0P2s2xOGi8tFskig2Zn8llFzENwclJmhphHM68oNvtmzpJBv9y0xi3GcRV
 5Q3uUnSUCLeCclaFYGoazaDnoC8UEQcpVQv0tVbMAy2gazaHh1A7uZnDeSNOY0Pj93P+
 ti2b6/95VbgvYGBPhDLolkmpIrVU49V82I0Wxu39zwSEhxQGS8gdEtK0ljt6RUCtLsRr
 cDiA==
X-Gm-Message-State: ANhLgQ39FEnX4rxcKAIIeAOkV8FTcZ/K1qUQDJsw+V9vBwwCVC7GWfcw
 y1Ne718pI0/lD9np5wqyKpU=
X-Google-Smtp-Source: ADFU+vvTQPKh9L8QPx6zoTrX8Poq+jHdA9i+ru+SABUFlb+6w+5D8i8MCYJowpDRFGlR06gRJDWEsQ==
X-Received: by 2002:aca:574c:: with SMTP id l73mr223637oib.156.1583441085539; 
 Thu, 05 Mar 2020 12:44:45 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 7sm10376285oin.5.2020.03.05.12.44.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 12:44:44 -0800 (PST)
Subject: Re: [PATCH V2 2/3] nvmet-rdma: Implement get_mdts controller op
To: Max Gurtovoy <maxg@mellanox.com>, jgg@mellanox.com,
 linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 Chaitanya.Kulkarni@wdc.com
References: <20200305095530.132858-1-maxg@mellanox.com>
 <20200305095530.132858-2-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <468c65e9-a74a-ba83-9b2b-e372b5bb61ab@grimberg.me>
Date: Thu, 5 Mar 2020 12:44:43 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200305095530.132858-2-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_124446_434532_8DBAB977 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: krishna2@chelsio.com, bharat@chelsio.com, nirranjan@chelsio.com,
 bvanassche@acm.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 3/5/20 1:55 AM, Max Gurtovoy wrote:
> Set the maximal data transfer size to be 1MB (currently mdts is
> unlimited). This will allow calculating the amount of MR's that
> one ctrl should allocate to fulfill it's capabilities.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
> 
> changes from V1:
>   - renamed nvmet_rdma_set_mdts to nvmet_rdma_get_mdts
>   - align to get_mdts callback changes
> 
> ---
>   drivers/nvme/target/rdma.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
> index 37d262a..d12ef0d 100644
> --- a/drivers/nvme/target/rdma.c
> +++ b/drivers/nvme/target/rdma.c
> @@ -30,6 +30,7 @@
>   #define NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE	PAGE_SIZE
>   #define NVMET_RDMA_MAX_INLINE_SGE		4
>   #define NVMET_RDMA_MAX_INLINE_DATA_SIZE		max_t(int, SZ_16K, PAGE_SIZE)
> +#define NVMET_RDMA_MAX_MDTS			8
>   
>   struct nvmet_rdma_cmd {
>   	struct ib_sge		sge[NVMET_RDMA_MAX_INLINE_SGE + 1];
> @@ -1602,6 +1603,12 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
>   	}
>   }
>   
> +static u8 nvmet_rdma_get_mdts(const struct nvmet_ctrl *ctrl)
> +{
> +	/* Assume mpsmin == device_page_size == 4KB */

This comment should come at the define entry.

> +	return NVMET_RDMA_MAX_MDTS;
> +}
> +
>   static const struct nvmet_fabrics_ops nvmet_rdma_ops = {
>   	.owner			= THIS_MODULE,
>   	.type			= NVMF_TRTYPE_RDMA,
> @@ -1612,6 +1619,7 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
>   	.queue_response		= nvmet_rdma_queue_response,
>   	.delete_ctrl		= nvmet_rdma_delete_ctrl,
>   	.disc_traddr		= nvmet_rdma_disc_port_addr,
> +	.get_mdts		= nvmet_rdma_get_mdts,
>   };
>   
>   static void nvmet_rdma_remove_one(struct ib_device *ib_device, void *client_data)
> 

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
