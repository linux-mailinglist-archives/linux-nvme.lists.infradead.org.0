Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9C294D3F
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 20:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tDKoUO70BqsU5ILa5aJSdcZVUXSwtdpF/ZORXI41sg8=; b=M69o05oyIwLiFay02Llvl99Lp
	h8Z7nChD603opcDIywc/isBu12Sdxi+3ivzGM6BMUZ3ch027YTFKAjinYE0px4buqWa75VrJ3mkqD
	6v5j8iXvkVdbk0c25oIutQ/WgSY3GSC2+82BO6RtdlyvS4YmRrSW5/uno9p2mssy8RIeHK557DCqp
	nOEUQ0p1sk2vP+EdIFDN90QkXYvVHP6zwpbxKiolVn+UmaeOa2hdYM9HqxgO9aXpsbUzYFCV1k3C6
	WM9NZbXu0GcAIwVfczG67lA/3DgSxpt/yNNvP+1QEPjvL5FoeGgnbJ+L4zDOgsVFQM9BmPv1Rqs9A
	i0lTjsJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmm1-000151-OW; Mon, 19 Aug 2019 18:52:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmlp-00014Q-S5
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 18:52:47 +0000
Received: by mail-oi1-f196.google.com with SMTP id c15so2125826oic.3
 for <linux-nvme@lists.infradead.org>; Mon, 19 Aug 2019 11:52:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=arGdO97Wy2/MGIyROmxoBQxu3BojRepaUH+hgaeO5YQ=;
 b=V0KuA3N5vc2cZqaFp2b7lcfpzpa5fnslB49sk2QcnxhUJ4QogqrOMXyqanx0ds6Pmt
 0faqP1JwePirvYQTsR4bNDwUcFF3ghILObC4IRnaOKT3T4Ffaxq+vxcgfyIGsrmkwA9i
 7O8JZa7dr3PehY5MjpVloWzNm5MNECCUAfxRYPH8hsBxDAaZatHuI9qXAYiErOMv0AZ+
 xC4+4vBwcvfp69rAtFpKjTWKuRsvG08rnbGsHqfcUeAz49363tiwAks3YbCxE3OWhsjU
 AHTZOqhV4JvRyBXsfpsctzw0vjvB3WTlJcmkNWJERwiIQ2hOcD/eq7vJ7EdbINzFHIni
 V+Ag==
X-Gm-Message-State: APjAAAWFx1f2Atofp6WrFv/2II4e3VtAbiKXjz7rb9aApnl/9T7A7lzy
 zgFu18K8WPoudlyikUTCXUM=
X-Google-Smtp-Source: APXvYqywS+e/8//6rvRVi4mplj51qw+myL1FqRQ4WPgs1OuI/gKnsqEmp5SPn69hoxaqjQF9Jp937A==
X-Received: by 2002:aca:f443:: with SMTP id s64mr15053189oih.108.1566240763602; 
 Mon, 19 Aug 2019 11:52:43 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id t142sm4643915oif.4.2019.08.19.11.52.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 11:52:42 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: exclude completion trace from non-multipath
 builds
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <87d0h138n2.fsf@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e62f142f-15d0-2c4f-d3c4-62c4c6ff8f29@grimberg.me>
Date: Mon, 19 Aug 2019 11:52:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87d0h138n2.fsf@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_115245_906635_51B47AD6 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 6956041224ec..1202b7461031 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -260,10 +260,24 @@ static void nvme_retry_req(struct request *req)
>   	blk_mq_delay_kick_requeue_list(req->q, delay);
>   }
>   
> +#ifdef CONFIG_NVME_MULTIPATH
> +static void nvme_trace_bio_complete(struct request *req, blk_status_t status)
> +{
> +	struct nvme_ns *ns = req->q->queuedata;
> +
> +	if (req->bio && ns && ns->head->disk)
> +		trace_block_bio_complete(ns->head->disk->queue,
> +					 req->bio, status);
> +}
> +#else
> +static void nvme_trace_bio_complete(struct request *req, blk_status_t status)
> +{
> +}
> +#endif
> +

Please move it to nvme.h where we already have CONFIG_NVME_MULTIPATH
condition.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
