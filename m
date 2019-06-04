Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2AB34D3D
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 18:28:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VjyBLyGC1joW9XFgO9U05d4PeLFnHjCrYBZZ23SbXsE=; b=CeIkcLMhvCNV8gnSi1+PmxXHA
	DHaxSH1yweYnBd4Cu4/n6v928yUFNlL5HeYQXxEjyf1IKJyz3J4rLG5oizketITeVGZS95dVX268y
	bCFw6fooDS3XsclXoz8HcrIc9rWgVDBy8Va7vCnHlyr1guIAqmIgRDJ/Y+G1P0AYQdtrOeftIZqvj
	Z7NuVem1tck3+acyFz7akK0DtKowFsvGI88x/GeP3vZy6azZXJAfCrPc0b7AyQimXnb3JeE9CINc/
	bdLiJyvE9VlK8IbXXLlAQu64p9iafi1Iplq0W9qL46jUMQwFu/hMxFbSQad6R86tyB6JgafbU5Lmw
	hf/MUMIqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCIF-0004UU-9X; Tue, 04 Jun 2019 16:28:11 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCIA-0004U4-5R
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 16:28:07 +0000
Received: by mail-qt1-f196.google.com with SMTP id s15so14456275qtk.9
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 09:28:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fO43GjD011xtyI4AWGrepyth5KYZOxDsKY7V2TuouIQ=;
 b=D9Lqn3TDg0M800aJctZV/jd5bL/lav4bF6dioJDUWT3fgC2sOnGMMf7SY1W9laCaR/
 Y3aFmJXLlHRkWi3qGBWTyHYVGTLNxVg/f9yiceoEetn8+towqU2TgkUPbaTs8N65IArG
 M4tN77wXvl5D4LQfillhrDVeAmTC0Y1bAl1Nl9UwA6GfHffs1G2VMVUyVfk5qGOwtkKo
 zX247lLX7XhUlWX9Yc+dDg5u/aTHBciyU6sG7jkqjE0Mc2s5g1fOUKlhtabhXhGwbWbn
 G9qGGp+IFSc1pTz74I2Q3ekmxJyHtTzkinf9m45RixyeBmUjeQaBseqBr3G8LmNvoSf6
 Fv5w==
X-Gm-Message-State: APjAAAVwqAcaus9ovU6LgtuaUBc0HWDwzhLcofdrcuLiICBUvK12S/YA
 d+X7YL9FWSEriCfE5fOw4Fs=
X-Google-Smtp-Source: APXvYqxMkKp1Wh1Nm0jyOsb5I7L5d4nkmy/yeIg130bQugbTTBD/3EPxEDhV9pPq7QKjXlrZ8xlSXg==
X-Received: by 2002:a0c:88c3:: with SMTP id 3mr9350135qvo.21.1559665685035;
 Tue, 04 Jun 2019 09:28:05 -0700 (PDT)
Received: from [172.29.5.11] ([52.119.64.114])
 by smtp.gmail.com with ESMTPSA id f33sm12421983qtf.64.2019.06.04.09.28.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:28:04 -0700 (PDT)
Subject: Re: [PATCH V5 1/5] nvme: Make trace common for host and target both
To: Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
 <20190601072143.21233-2-minwoo.im.dev@gmail.com>
 <20190601085016.GA6375@lst.de> <20190602014737.GA28933@minwooim-desktop>
 <20190604072853.GG15680@lst.de> <20190604103931.GA14832@minwooim-desktop>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cd01c5d9-e43a-7d81-ebca-11e1cfa3eddc@grimberg.me>
Date: Tue, 4 Jun 2019 09:28:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604103931.GA14832@minwooim-desktop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_092806_207135_BEBEB63C 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>> I'd much prefer to have different implementations for host vs target for
>>>> now instead of introducing a common library.  Maybe we could revisit
>>>> that later if we end up having a lot of shared code.
>>>
>>> As you know, nvmet handles not only nvme fabrics commands, but normal
>>> commands in nvmet_req_init() and nvmet_req_complete().  Which means that
>>> we already have a lot of shared codes in parsing point of view.
>>>
>>> The host/trace.c provides parsing admin commands which can be used by
>>> nvmet also.  I guess it's enough to be shared for host and target both.
>>>
>>> I hope you can correct me if I missed someting here.
>>
>> I'm not against sharing per se, but I'm really worried about either
>> building that code in the core kernel, or even just a new module, as
>> that'll waste at least 8k and will cause more cache misses when
>> tracing.  So for now my preference would be to just duplicate the code
>> at least at the binary level.
> 
> If that factor that you mentioned is much more important than the code
> duplications, I can make them duplicated.
> 
> I'll prepare the next version based on your suggestion.

Makes sense to me

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
