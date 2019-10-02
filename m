Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBC2C8950
	for <lists+linux-nvme@lfdr.de>; Wed,  2 Oct 2019 15:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xOddn1TnGm8sAJFI2KwMttGtvhB4R9GmOqahBmqUHoc=; b=Ezaj48eVVbqQa+jLt7ooJ9+ykL
	9YLMXpE7cvICb8JygPjmLRlNg7e+BXDhc59bfUV1xtasrpkHy6mFsMKclSt0etJphH5Lhj41QcDk9
	IiGu6qx5YevDCZUHL8SeGwUeUbVQB9ZlFASiFGhNXeWXTdKTWJXE27S4JPyW0RR13ezPSb6J68Pcy
	3NsHWAZ6rBg9twDRZFwnn2sD3iKkDU/24V7oa0cnPEnR//N/Rv7Cq2O0nK5VIOJIXyiNZVcVYIhoK
	phW4xmlE+qgnvktzrp8KQnf8sSDnW8hyOVbXUy1PDZkv+u7D/r2+tN0OrP2cRXqX/Tmp2GEHTOC9c
	HZD9bCXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeNy-0008Ov-Uy; Wed, 02 Oct 2019 13:09:42 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeNq-0008NR-T3
 for linux-nvme@lists.infradead.org; Wed, 02 Oct 2019 13:09:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id b19so28603620iob.4
 for <linux-nvme@lists.infradead.org>; Wed, 02 Oct 2019 06:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=LGBRuLqUYrX9GGEZI9KKoyUAhJq9ZXxDsRWTIcZfJKs=;
 b=rivVgCttX729kcL32gPJi94oiGeS/ifekn7WfKH0+689qAHuwZ9GMA8DoZ3c1HyAR/
 hLXUYrXvu/gAXPTX4iddYvXTTqa4Clmf9rHuwEC5ng0E4lqdeTmrusQ/3rMg9Hl8tJ66
 T/m4Lsd230UKL4EoovEAS51KnE/io9py1nKfWosvvFoE9iykZLeRcp4WbIiPCEXcoAaM
 BSq09rThM9NHC2ODOBVwG3W/Dl7wBBGv/xnvIoC4NIAcf4Ld3PmW3sXbRdGHT3rKj+CD
 3QwI4qifLJc1emxI5N20ihafo6GqeuuARQ7FOLsRk9ryt9v0nRr/G404yZpHtpR9ECkF
 XYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LGBRuLqUYrX9GGEZI9KKoyUAhJq9ZXxDsRWTIcZfJKs=;
 b=fOFC75UOV8S7vE6hBqizVwUQFeQy9r5UQBJE12ATsBG+z2UMOyM13UMNa0WzWO8bH/
 /+gQl3/2EhUaRG943mlgNwzPzdGm3XQlHuE/5komjFsw6QPEPfvi92XSrxjI1eJE6LO2
 3CSuJk6mXhYEY8uNO99vh52hZExsSeHDJUOKi62rBlnSUVaGMBK9SGNNFjRHAnHpqpIn
 2+8mt3tSqmUvcctzjVDPr+L/8Gmvsaa8S6WLPhARAOh3blcfGyV5lVBgbvxi7zKIwXvu
 Ei0jQXN6JPFtOGkyRBDrOYhqZLdFHKxf1bQTVhFKC1KvC/PeXDM523RCI+RO8PQ9p60/
 KxIQ==
X-Gm-Message-State: APjAAAVDRMJWlHkWRxzNo9IzZ5LsjAZUD9Mp6qAXKN66W8M0NO5YRCM8
 Fte9iU507LeArXDftvwG0JeyOhXgtTt5Gg==
X-Google-Smtp-Source: APXvYqxoOv3gPtGv+2gVmJxtYhhJTGAOSpJ5159QObAXDK3v9RjA9LkKGLL73o5+qLKCvndxIogJsA==
X-Received: by 2002:a5e:8341:: with SMTP id y1mr2926558iom.284.1570021769994; 
 Wed, 02 Oct 2019 06:09:29 -0700 (PDT)
Received: from [192.168.1.50] ([65.144.74.34])
 by smtp.gmail.com with ESMTPSA id c4sm7265663ilh.32.2019.10.02.06.09.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Oct 2019 06:09:29 -0700 (PDT)
Subject: Re: [PATCH v2 1/1] blk-mq: Inline request status checkers
To: Pavel Begunkov <asml.silence@gmail.com>,
 Bart Van Assche <bvanassche@acm.org>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, nbd@other.debian.org,
 linux-nvme@lists.infradead.org
References: <1cd320dad54bd78cb6721f7fe8dd2e197b9fbfa2.1569830796.git.asml.silence@gmail.com>
 <e6fc239412811140c83de906b75689530661f65d.1569872122.git.asml.silence@gmail.com>
 <e4d452ad-da24-a1a9-7e2d-f9cd5d0733da@acm.org>
 <6da099e2-7e29-3c7b-7682-df86835e9e8c@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <e4fb245a-5587-866b-8bfa-927d0fb0801b@kernel.dk>
Date: Wed, 2 Oct 2019 07:09:28 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6da099e2-7e29-3c7b-7682-df86835e9e8c@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060935_033854_5185811D 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 9/30/19 2:12 PM, Pavel Begunkov wrote:
> On 30/09/2019 22:53, Bart Van Assche wrote:
>> On 9/30/19 12:43 PM, Pavel Begunkov (Silence) wrote:
>>> @@ -282,7 +282,7 @@ static bool bt_tags_iter(struct sbitmap *bitmap, unsigned int bitnr, void *data)
>>>   	 * test and set the bit before assining ->rqs[].
>>>   	 */
>>>   	rq = tags->rqs[bitnr];
>>> -	if (rq && blk_mq_request_started(rq))
>>> +	if (rq && blk_mq_rq_state(rq) != MQ_RQ_IDLE)
>>>   		return iter_data->fn(rq, iter_data->data, reserved);
>>>   
>>>   	return true>
>>> @@ -360,7 +360,7 @@ static bool blk_mq_tagset_count_completed_rqs(struct request *rq,
>>>   {
>>>   	unsigned *count = data;
>>>   
>>> -	if (blk_mq_request_completed(rq))
>>> +	if (blk_mq_rq_state(rq) == MQ_RQ_COMPLETE)
>>>   		(*count)++;
>>>   	return true;
>>>   }
>>
>> Changes like the above significantly reduce readability of the code in
>> the block layer core. I don't like this. I think this patch is a step
>> backwards instead of a step forwards.
> 
> Yep, looks too bulky.
> 
> Jens, could you consider the first version?

Yes, first one is fine, I have applied it. Thanks.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
