Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BEA1AC97
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 16:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=roPGsG9XeFNaYLGJoN9VxJg/lcelJrTZNaB6dYohgAg=; b=k1yThfr0Mx7D6RPfovYSWcxJd
	xml3AXndMKYRYelnPlIJ1gK4fjQyGzwoU7CLLi4gtLAkQHMwMmwN4sP9mpr2yb6F4I+vmgm5opn3d
	EYFqnAXlfZds4rfDMF6ZGHGuidsla6g+ALimvLXymnZAZxjD5iEjNOWhDc2tOt/6zcrGnFGUOsGZU
	xAe4VOaWLxYQafSmKHVMb1fNEjjLABUXIi3QaY7Xo5hyv69Jx+A/scNkKbNZ/I8VtjPV8uABy4ye2
	3ErM5ZxVtvtkV+q4kikP7ouDzlWYeon74OSzvpjAlYm7dViPgKV1N5c9/iU4F+QhZvGFceS0/Cv+u
	xcvAvW3tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPpHF-0008Uz-Qf; Sun, 12 May 2019 14:16:33 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPpHB-0008UE-MF
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 14:16:30 +0000
Received: by mail-wr1-f68.google.com with SMTP id v11so12404709wru.5
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 07:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9eNpdg9Qhp3ENGlqyYVdJ8aHNaDiQTMoOOQlOXLWBGE=;
 b=jmqK5pE6XlPd8Wmf/6x4oSnCasWf4f/M3CZjfRYHqBtvmSHavABKG2ZpnBSH7f5Tjq
 NR3i6AYjw4d+SWBB5mhWfP5LFvy6OXc5bEVGridQh1wnVTh96FjVwE6J7/HfzhORA5x3
 4C5WbkjAQSoSZY8BUcLdq2rw11YTLfpG4M2glMJtdFSS53cfjENJLoWgUuHJUDK1Z/FI
 RQPxM+XgAyzZgJyS4QA0rtapJRqZxTR0SGZN9WdLgixmdrJdxgY2FIu8ySg+W4DhBU0a
 w+xr+EQC5G1YtF7FWClxwrOdxZi+1XW4Ynbf98GyOLtdo0BSttICNAiCRibiWi9N06It
 t8zA==
X-Gm-Message-State: APjAAAXc0j+4oUHkrscrVqhn8FyrCyes8JMMRn2yoO5cw948cxcYdR4B
 /BPEmdHru5nnPV8k4Pk+speawoeS
X-Google-Smtp-Source: APXvYqwpq3dRg5yH5yZaqyfXx3NUJX9dDt198dSlEksC+fPmlj4F9uiuOnaRV6KEVAjiqz69bpetkQ==
X-Received: by 2002:adf:b3d1:: with SMTP id x17mr14036539wrd.31.1557670587804; 
 Sun, 12 May 2019 07:16:27 -0700 (PDT)
Received: from [192.168.81.52] (bzq-219-42-90.isdn.bezeqint.net.
 [62.219.42.90])
 by smtp.gmail.com with ESMTPSA id m17sm12154530wmc.6.2019.05.12.07.16.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 07:16:27 -0700 (PDT)
Subject: Re: [PATCH] nvme-pci: Fix queue_count to consider nr_possible_cpu
To: Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im.dev@gmail.com>
References: <20190504113923.32316-1-minwoo.im.dev@gmail.com>
 <20190508071456.GA21604@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <16bc4e47-927a-5465-2ef7-b09a61dd3e59@grimberg.me>
Date: Sun, 12 May 2019 07:16:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508071456.GA21604@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_071629_730840_7A1E0EF2 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -147,6 +147,7 @@ static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
>>   static int queue_count_set(const char *val, const struct kernel_param *kp)
>>   {
>>   	int n, ret;
>> +	char cnt[6];
>>   
>>   	ret = kstrtoint(val, 10, &n);
>>   	if (ret)
>> @@ -154,7 +155,8 @@ static int queue_count_set(const char *val, const struct kernel_param *kp)
>>   	if (n > num_possible_cpus())
>>   		n = num_possible_cpus();
>>   
>> -	return param_set_int(val, kp);
>> +	sprintf(cnt, "%d", n);
>> +	return param_set_int(cnt, kp);
> 
> This just looks weird.

Yea..

> If we ant to limit the number why not
> get rid of all these param_ops stuff and just verify the
> number in nvme_calc_irq_sets without all that boilerplate code?

I would just add the check with the possible_cpu check and be done
with it (although if it passed this check this is very much
theoretical)...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
