Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4135C265A
	for <lists+linux-nvme@lfdr.de>; Mon, 30 Sep 2019 21:53:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0z1NMmddF4p6qLc4mjHriwgsOpuvD7jaaXHTDf7X1uo=; b=Jr2dSYizOp7GJRsRTmBWWCGcnK
	QPhuM4W82XYzAKgtKtWdq2gjX38vnPTKA8dCXbBGyS/YeJEhs4A/YewaOnFshNGlS4CZ+To65tW4w
	lWy4z40H/l0cy9QAdKQE8+XVUkdKLoxeAfAinmDpaeaDH9bZpvzOYto1+g5FIRAXG3G3SKhfMYxqJ
	MX4UUf432nSExoh1fxnzVBh9NqFsgsReUHwSfIlaYYbP+x3jd5zrVYmOYKi0OvhDMKtiHl71sD3Eq
	4otY8TnNSjzB/NKkg6T8fCCHLtnoz/Vt7Ox73kS82QvW/7KeS4PuuIKdIRRvZVg5cmEEdERoTW4Z0
	PesAlcvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1jv-0007wi-CJ; Mon, 30 Sep 2019 19:53:47 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1je-0007qA-39
 for linux-nvme@lists.infradead.org; Mon, 30 Sep 2019 19:53:31 +0000
Received: by mail-pl1-f195.google.com with SMTP id q24so4294758plr.13
 for <linux-nvme@lists.infradead.org>; Mon, 30 Sep 2019 12:53:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UmfTonvoYn/sz7KFi8ddR6otlUnEOyJ4JIchPng5apk=;
 b=HOuprQE8aQFelGYNmMivBLAw0NxpyXZdYOvG1v2Tikoe2OG1HcEDGHxoMxIJ2oVzbW
 7I+ZFtdiPjYft5tCbM5u/X0JstvGFojVD5eGufeLrMCBYpMvyBZsMv8b6J6LKWa9OPI6
 vCTt124RVS3M7SzoOhniwWtc5rAoHB/8JlRZ2WDov75i43viM+BlDIpokzYuBX3XQFks
 BbA0d2bdiLMyfgNquOtw0TWHT3nZC5DEXzoWldPcJJKm8V+d4lyZQoetSOviPOZVCyd4
 2JiAUsi0FRsdUHcxOK1xpxkm+ixyBQtonISTz3FayAi9qd86vhgZXrzccjDpIi5R8pU2
 ASpA==
X-Gm-Message-State: APjAAAX3eZ8RDdjJwadJvJbvUuVpIUZHk2jgEOvZ6u8P8STa3BpCcIZf
 RkCjq0BD/0F2h4qBW5zTlqB5WM8h
X-Google-Smtp-Source: APXvYqzbrSXpsKliVwn/NaAkhG1dBCmQeIWrM1t1mWJH2RQEgJUdDCSsZ6p1pPQ+4rLLp3sAiSHCnw==
X-Received: by 2002:a17:902:bd88:: with SMTP id
 q8mr22421320pls.288.1569873208094; 
 Mon, 30 Sep 2019 12:53:28 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:fb9c:664d:d2ad:c9b5?
 ([2620:15c:2c1:200:fb9c:664d:d2ad:c9b5])
 by smtp.gmail.com with ESMTPSA id w27sm9598997pfq.32.2019.09.30.12.53.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2019 12:53:27 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] blk-mq: Inline request status checkers
To: "Pavel Begunkov (Silence)" <asml.silence@gmail.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, nbd@other.debian.org,
 linux-nvme@lists.infradead.org
References: <1cd320dad54bd78cb6721f7fe8dd2e197b9fbfa2.1569830796.git.asml.silence@gmail.com>
 <e6fc239412811140c83de906b75689530661f65d.1569872122.git.asml.silence@gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <e4d452ad-da24-a1a9-7e2d-f9cd5d0733da@acm.org>
Date: Mon, 30 Sep 2019 12:53:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e6fc239412811140c83de906b75689530661f65d.1569872122.git.asml.silence@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_125330_252360_A281E938 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/30/19 12:43 PM, Pavel Begunkov (Silence) wrote:
> @@ -282,7 +282,7 @@ static bool bt_tags_iter(struct sbitmap *bitmap, unsigned int bitnr, void *data)
>  	 * test and set the bit before assining ->rqs[].
>  	 */
>  	rq = tags->rqs[bitnr];
> -	if (rq && blk_mq_request_started(rq))
> +	if (rq && blk_mq_rq_state(rq) != MQ_RQ_IDLE)
>  		return iter_data->fn(rq, iter_data->data, reserved);
>  
>  	return true>
> @@ -360,7 +360,7 @@ static bool blk_mq_tagset_count_completed_rqs(struct request *rq,
>  {
>  	unsigned *count = data;
>  
> -	if (blk_mq_request_completed(rq))
> +	if (blk_mq_rq_state(rq) == MQ_RQ_COMPLETE)
>  		(*count)++;
>  	return true;
>  }

Changes like the above significantly reduce readability of the code in
the block layer core. I don't like this. I think this patch is a step
backwards instead of a step forwards.

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
