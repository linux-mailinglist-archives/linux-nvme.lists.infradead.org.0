Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5FEAC37D
	for <lists+linux-nvme@lfdr.de>; Sat,  7 Sep 2019 02:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NunZZFVewSbvPYYg1SlYOhNAOJD2ZxGR70e9cpTlLCU=; b=l3i9yW5EJYQnOu7Ho1ZwCPqNE
	C8bKohf0yK2lEPVazisdPv6Ka69/qQuHRwQiuD7Y5ZAOv54felvMn5nSE1audwSIDMXmYBhK2Obna
	81CkBOvaEWW0si4dXocMTRl2L5jlaSEwv1J/QZRgf8tNszMHwN+GVjfP12D8G6r2zNUserdJ7Z4mQ
	w2oYPWFAc14eoSDODRgPoqh4gk1m+WGUAL9d5WYU5ock6AoB4U8zwh+uI4RujJzW+2sTA3h0aCI76
	2avy128h2yr122JaxTxVFqGZkyvMtQsh2mvU6NCFFa6WtsY/331MYGhAdNaBKaDmZq7kUWIaUOFhs
	tN5Q6qd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6O9W-0001XG-IA; Sat, 07 Sep 2019 00:00:30 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6O9P-0001Wr-06
 for linux-nvme@lists.infradead.org; Sat, 07 Sep 2019 00:00:24 +0000
Received: by mail-oi1-f195.google.com with SMTP id x7so6422972oie.13
 for <linux-nvme@lists.infradead.org>; Fri, 06 Sep 2019 17:00:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CTESiiiEsvvGtzHjMvt+Vs+YyinAgG2nRdj8V0GoeRI=;
 b=aDWfSR1+Kqdtk02ZRLAlPKWjtGwMRHfYIPZBlWg59o0OsLU3zymsO9nxRG8LbCMIaC
 MjwMjUZxpmKRkAnEAYpoQnpiUz8Y4OU9bk70xnDgAtf8pRLdnwDCpjWzbd2DglrmcKZL
 cxnK1nmzCwTK0dZlQ3VrY9Adi2lRpW7ADD10H5AiWwJIpVPOrBzPhrdEXqH6NBdLrlt+
 sTC5psaxJBIUj3+SJNH7t4Eiq0wryL5KJJZV6dC7+LKuJJlz/CtTAs6NuOFKQ9SsXE2h
 IRUiBx97NAC0XXHNxu5vtXNHikpEKAX50NdT1snKDQSHZgru9iLiWWSuHfBxyYHDO1cJ
 eJXw==
X-Gm-Message-State: APjAAAVcBOlLpwL7Vf7mHsYXNfu0IpN0CNJ6tRJObBGpj281CQhQCkTw
 +w7L8pJEsLbbNSigdOtu/HRuugRp
X-Google-Smtp-Source: APXvYqxVnW04a3pr7A6Hae0d1zkxWcP9AgzgoZUhAC/S/OwAbr5Y/KKWFoseJliFrz3GXCxEwxRWkA==
X-Received: by 2002:aca:6707:: with SMTP id z7mr2532791oix.12.1567814421581;
 Fri, 06 Sep 2019 17:00:21 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id i20sm2195084oie.13.2019.09.06.17.00.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 17:00:20 -0700 (PDT)
Subject: Re: [PATCH v8 13/13] nvmet-passthru: support block accounting
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20190828215429.4572-1-logang@deltatee.com>
 <20190828215429.4572-14-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <92d61426-65a2-827c-936b-55f12f3d6afb@grimberg.me>
Date: Fri, 6 Sep 2019 17:00:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828215429.4572-14-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_170023_044592_D655995E 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Support block disk accounting by setting the RQF_IO_STAT flag
> and gendisk in the request.
> 
> After this change, IO counts will be reflected correctly in
> /proc/diskstats for drives being used by passthru.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   drivers/nvme/target/io-cmd-passthru.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
> index 7557927a3451..63f12750a80d 100644
> --- a/drivers/nvme/target/io-cmd-passthru.c
> +++ b/drivers/nvme/target/io-cmd-passthru.c
> @@ -410,6 +410,9 @@ static struct request *nvmet_passthru_blk_make_request(struct nvmet_req *req,
>   	if (unlikely(IS_ERR(rq)))
>   		return rq;
>   
> +	if (blk_queue_io_stat(q) && cmd->common.opcode != nvme_cmd_flush)
> +		rq->rq_flags |= RQF_IO_STAT;

Does flush has data bytes in the request? Why the special casing?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
