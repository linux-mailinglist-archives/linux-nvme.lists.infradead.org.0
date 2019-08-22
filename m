Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B278A988B9
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5b+jkPVLzMz95U1CX1iCz4Nn1TgkJ1jIEbkZtt9K4I=; b=NyhWlpoY9N+qV85RARIif3DHf
	QTFuIko2xTcpfRpyMguzOWVyzsKiG9QHaAl+kvo7Okzsklfe+tLKy0Nl+VZ9HKGrCtQf0mMSl77vr
	Guuuxdn5AjHt35P/pXgmWVWuk25iqsRG6WjlDSJhAkQ91FN+lCKHaVKHmGaDvrmjpxncg7k51Xjva
	PPcQZQQGd7teHFsVNMYXp/28TpGJxJolrM5mQI6y9nufr1vYqQOqVLMWjHlpOqkHrURaMsFs4TcLK
	gA1lrnAauvTZgizgCheNV8RZy1axA6CJ4ODixSMTI0GPILNl+GngRqoAzuLC7kirP6H2vMOUK0s95
	zC9cig6hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bMz-0004kw-IQ; Thu, 22 Aug 2019 00:54:29 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bMu-0004kR-BP
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:54:25 +0000
Received: by mail-wm1-f65.google.com with SMTP id f72so3890434wmf.5
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 17:54:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OCj2Zt4nHMFDJ2BQpeSWpjcL8LJ72j28BsP72Mnis/s=;
 b=KgEZ1CQKlpuTvLLl7FoMJNg9jihnbZavkeUTpdldkWX9P23qtA08vzkIKndVCS2jf3
 WAKvWFCu31VhdBvG8grAft4uzgittELHe4pcy+4WrKNR1zmvXVdxn8L9WJgSFDLIZwLL
 09I+7i/NgM+Y5QyW0hHj9wv8gMp/uu5etxokbGF9hrF9BCDGbOoPMYd8LXblBI92ZlvL
 m6l/4/jWq+SSZ4OK0itafNCcMjarjZzNNcFZRI6Wq8zSSAfr0EGnrqoPee0MTKJBkvkw
 TniYjHpd2iKfGGyfh403MMuEhjtgx9ii1pD5whhvxdesdZdXNjzKVwq3JZLLMAUIgky/
 bXwQ==
X-Gm-Message-State: APjAAAV0AifLt+rvBC6ZmSmRFdsDTAAQt8UgiJQM8XU/tOOfYp3VtTlU
 R1mPzN828LFqk3Ozs0gVmILykT95
X-Google-Smtp-Source: APXvYqygmuFG2OK5CiwqPsMiqQdxw4DrvFhrKnbZfWHibNqhRhY5toDOm87w2KihezIXJB0XWx6XsA==
X-Received: by 2002:a1c:f702:: with SMTP id v2mr2845092wmh.114.1566435262687; 
 Wed, 21 Aug 2019 17:54:22 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j10sm30838221wrd.26.2019.08.21.17.54.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 17:54:22 -0700 (PDT)
Subject: Re: [PATCH v6 2/7] nvme: return a proper status for sync commands
 failure
To: Christoph Hellwig <hch@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-3-sagi@grimberg.me> <20190822004447.GO10391@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <45d229f3-8bd2-39f9-a5d3-a67e5378cf60@grimberg.me>
Date: Wed, 21 Aug 2019 17:54:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822004447.GO10391@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_175424_393209_A62987F8 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> callers should not rely on raw nvme status, instead return
>> is more appropriate blk_status_t.
>>
>> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>> ---
>>   drivers/nvme/host/core.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>> index 867c8977eb3e..f9bc10407f1b 100644
>> --- a/drivers/nvme/host/core.c
>> +++ b/drivers/nvme/host/core.c
>> @@ -774,7 +774,7 @@ static void nvme_execute_rq_polled(struct request_queue *q,
>>   
>>   /*
>>    * Returns 0 on success.  If the result is negative, it's a Linux error code;
>> - * if the result is positive, it's an NVM Express status code
>> + * if the result is positive, it's a blk_status_t status code
> 
> Hell no.  blk_status_t is a __bitwise type for a reason.  Don't mix it
> up with random other values.

We started by returning blk_status_to_errno, but Keith said there
are a few places that rely on the status code to be positive to 
distinguish between a responsive and unresponsive controller so
we chose to return blk_status_t.

Do you prefer that we keep it an nvme status and then the callers
can convert it to an errno with:

blk_status_to_errno(blk_status_to_errno(status))?


We need the return code to give us insight to what went wrong...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
