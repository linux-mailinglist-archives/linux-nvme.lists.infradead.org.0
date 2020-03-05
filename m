Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44817AFF3
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 21:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C+CAW6nx9/jzZTWCpbRQ59GOMnOc406srQLVsYYhdj0=; b=lMmeBR3txFd1Jkk16y1XPKSmM
	8vbs4rpu3tRr5lix9vLpPC+EeuWf9HVwbxHSvF/lEnb0CClKV/7kYDnasFJwDslC+jGYzVK7Ew+wO
	+f1lmFePft56+kEHjQpuT8THttFAKovOR3G6mr/Ko7zBtpK3rG+n2zThWPRoxLoFX3EJmKORsq1Ic
	shTsVjRjNeExKGzrfj1HmkR4VCudTlGwvl1rguyzL6QO0ThyWqYv+O/TEhNXxaOKo3zTo1sbenw0P
	ZiCy+ZrDXbu5tYay6NCW58o/9RNGUpDs5pa4y5dT34SPN/Isq+FcMbwnKYur3i7BxSni+siqpqkQL
	ZiYRGfqVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xRA-0005mq-Dq; Thu, 05 Mar 2020 20:49:44 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xR6-0005mG-QX
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 20:49:42 +0000
Received: by mail-ot1-f65.google.com with SMTP id v19so246688ote.8
 for <linux-nvme@lists.infradead.org>; Thu, 05 Mar 2020 12:49:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0lrM8QrQivckNsKXZyb0gX+uHwzSVsoQhmb4jGQVaKI=;
 b=JTmH+QfotH7Ccv9AwAuWH+XHMDPyIEMfvTENNK2nJcajokBagVaA8i4ApGPorR9tcc
 95e5NfMC5ytkop7k6RbZ6JOnprD1mjUHPQNs+nLl47Z7X/qqB6zLtEUa+vvKvyZDUMbV
 45t+hdtcgGFz5HYcrJn5XM6DiCXoFoQ3VUxSxnrLk5x+2+0dZEeqj35Mhxx8Q7RXpts4
 DVLDygI13xFCMD+G80TpLibqSKO7LW1tN3bJfh6fzPOZNOwt322FGSy+RsLZ4CaVcgAK
 N0RFtZKciYOwf0FbDpmx9nsNQlHhLVj0Z7vOvKlv8vLfPz9gZjs1ObFJMSqjQI6M+/Tz
 r3kA==
X-Gm-Message-State: ANhLgQ3Cw1QEKz5MbSldlxXh1p7AEIJMTk9TnO5NlPxKwFif0kMGRM4c
 XXhoLSQVrX1Cr3utJYzGcwI=
X-Google-Smtp-Source: ADFU+vs8m5ClZdDCaLivbLwYfQTB17xjSbtK83m0g3ozV1Dz2NjLkqk9jKiaTqSg8bp+W3AQHi1VpA==
X-Received: by 2002:a9d:836:: with SMTP id 51mr309480oty.318.1583441379077;
 Thu, 05 Mar 2020 12:49:39 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id b2sm8068911oii.20.2020.03.05.12.49.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 12:49:38 -0800 (PST)
Subject: Re: [PATCH V2 3/3] nvmet-rdma: allocate RW ctxs according to mdts
To: Max Gurtovoy <maxg@mellanox.com>, jgg@mellanox.com,
 linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 Chaitanya.Kulkarni@wdc.com
References: <20200305095530.132858-1-maxg@mellanox.com>
 <20200305095530.132858-3-maxg@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c776b5bc-8b7c-ce8a-19a8-4a0ec976d923@grimberg.me>
Date: Thu, 5 Mar 2020 12:49:36 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200305095530.132858-3-maxg@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_124940_859566_C88FE1A0 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: krishna2@chelsio.com, bharat@chelsio.com, nirranjan@chelsio.com,
 bvanassche@acm.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
> index d12ef0d..daab656 100644
> --- a/drivers/nvme/target/rdma.c
> +++ b/drivers/nvme/target/rdma.c
> @@ -976,7 +976,7 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
>   {
>   	struct ib_qp_init_attr qp_attr;
>   	struct nvmet_rdma_device *ndev = queue->dev;
> -	int comp_vector, nr_cqe, ret, i;
> +	int comp_vector, nr_cqe, ret, i, factor;
>   
>   	/*
>   	 * Spread the io queues across completion vectors,
> @@ -1009,7 +1009,9 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
>   	qp_attr.qp_type = IB_QPT_RC;
>   	/* +1 for drain */
>   	qp_attr.cap.max_send_wr = queue->send_queue_size + 1;
> -	qp_attr.cap.max_rdma_ctxs = queue->send_queue_size;
> +	factor = rdma_rw_mr_factor(ndev->device, queue->cm_id->port_num,
> +				   1 << NVMET_RDMA_MAX_MDTS);

Maybe I'm missing something, but aren't you missing the mpsmin
multiplier? your maxpages is not (1 << 8) but rather (1 << 20) isn't it?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
