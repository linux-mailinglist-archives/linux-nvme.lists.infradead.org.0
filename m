Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E045ED9F
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 22:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0KBF6p2Y7PLhZfbLY5jDeqzKSxCQAwulRhVn1oZp0/0=; b=Cp777URkJdHoSB98+fsZsSfYI
	hyyGkn53a8ZLSFwOcJBaiQPOCt3wJJO+ZccgPuZCVDyMHcnWuyF1eavdp20Oo9NGbdL9XBEO+ZQg7
	MGsat4eOuDJ+DdAkSsvPLtjwUmfh6WasbVhK+15ks67Juf+wTpcg6uSY2yADMvXDXm07Re0cHaJFO
	zvcG/4UHysFkYkcR6RzC+MTbVtgQBkOrEEej7k53xZ+nTCotqc8cc5451IU1CShMDSGpA0AGda8PV
	nPsINyLF2MF9MJnRe0VyKR75M6QkV4GZyIB/qu9iHBxpYk9CnLnrIGEI3gUEafQZymr35jFPMSuWL
	HonhGwPoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hilx8-0005kG-Iv; Wed, 03 Jul 2019 20:34:06 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hilx2-0005jx-1O
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 20:34:01 +0000
Received: by mail-ot1-f65.google.com with SMTP id r21so3315438otq.6
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 13:33:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wZ2zFebmm1IlVtNQDMaoXLiwfNIF4EW1UANc34wGHmU=;
 b=p1QP90cN6BsWv9tyhWq0LuXpntPpz1Mo7wFzmNDZGMNzwu8B9LGopvdJ2uPAMbZgWq
 YZunBRTlDycwTSZPF7Q/LXxO7xoPkHOAd6/ETcFwov+i2NtqtXrHadVOnvXDVHEypZEl
 Va0H2CVfJptW7JP24/89jhC6c9/2ixAyry+aCIwAKB3Yojn7T+GwamHSAar7JPWKsRwr
 biOIo0PlmcEXLBjmFYGqBNoM8SdNx7kQIqNTsEeGTsyaiyt3ZSjwrKfMM4HzaBE1cc2r
 G7SunzK1qVIpz/MZK8mWmnkUb7U7zAqqw1P0Z9TCeNUc1A2ay/GF5H/uDIEZzFgO0d2/
 3wQQ==
X-Gm-Message-State: APjAAAXTcefookQaK/yER8sYqVySbu1G9KrDB6YSZacAr8JpL2BW2PL/
 gxTqiZEtL59In38QCZ1LIrgjiM47
X-Google-Smtp-Source: APXvYqzrmI8SKx0VXAyGHly8EtnY7KsDhYqwErlkxPbObGB01DxoOxAYK0r55TMc35sLw7AZw4hrhg==
X-Received: by 2002:a9d:174:: with SMTP id 107mr31723688otu.322.1562186038544; 
 Wed, 03 Jul 2019 13:33:58 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q12sm1120034oth.25.2019.07.03.13.33.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 13:33:58 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvme-multipath: do not select namespaces which are
 about to be removed
To: Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
References: <20190703131232.58595-1-hare@suse.de>
 <20190703131232.58595-3-hare@suse.de> <20190703132133.GA8948@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c355b6ef-12b9-6a57-f091-a459e937f2ec@grimberg.me>
Date: Wed, 3 Jul 2019 13:33:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703132133.GA8948@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_133400_082136_BA0A2C29 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
>> index c8cc82639327..1f6105a5c596 100644
>> --- a/drivers/nvme/host/multipath.c
>> +++ b/drivers/nvme/host/multipath.c
>> @@ -130,7 +130,8 @@ static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
>>   
>>   	list_for_each_entry_rcu(ns, &head->list, siblings) {
>>   		if (ns->ctrl->state != NVME_CTRL_LIVE ||
>> -		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
>> +		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
>> +		    test_bit(NVME_NS_REMOVING, &ns->flags))
>>   			continue;
>>   
>>   		if (READ_ONCE(head->subsys->iopolicy) == NVME_IOPOLICY_NUMA)
>> @@ -180,7 +181,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
>>   
>>   	if (list_is_singular(&head->list)) {
>>   		if (old->ctrl->state != NVME_CTRL_LIVE ||
>> -		    test_bit(NVME_NS_ANA_PENDING, &old->flags))
>> +		    test_bit(NVME_NS_ANA_PENDING, &old->flags)||
>> +		    test_bit(NVME_NS_REMOVING, &old->flags))
>>   			return NULL;
>>   		return old;
>>   	}
>> @@ -189,7 +191,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
>>   	     ns != old;
>>   	     ns = nvme_next_ns(head, ns)) {
>>   		if (ns->ctrl->state != NVME_CTRL_LIVE ||
>> -		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
>> +		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
>> +		    test_bit(NVME_NS_REMOVING, &ns->flags))
>>   			continue;
> 
> I think we clearly need a patch before the two patches in your
> series that factors this check into a little helper with a
> descriptive name.  Also doesn't nvme_path_is_optimized also need
> to have these checks while we are at it?

I definitely agree here.

BTW, while we're on this, do we need the flags check to be
atomic? or can we micro-optimize with a simple flag arithmetic?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
