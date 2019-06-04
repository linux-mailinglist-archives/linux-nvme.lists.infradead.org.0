Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EA83548C
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cfit/AcVBseMK41DNEK5l9gKU3kVVL5uUjCL2dP8HEI=; b=u2Utldcqhf1DbfZAZz7KrGlIk
	jK3YZAlyc3s60t10eiO0+9/2zJELiAxe7lmlfT/AmYMnAMeFVyj3O7BPkcd4+3mhuwh2crCf6pFf8
	Mx6Rx2lBIYZmQ4Up5IzVsmhuxpaDv84jWQm5a63wxoWhdejZ1VnkGtxw78/zdYDG5/LJDgnXkdE+r
	pDsK0BKU4EsyFZJLC786NwZfZj+DWHTZPbspkzr/6gx100OAzYBURPsoIX+j/0UAjiZB3ZSvNB5o/
	BJ5wCAnFggRi4Gz3hHVxgImVE3lNa5jjlnTYPbw4qFXa03zIXb8Jgh1uUqhw0CiOAOhmUP3jgpfb3
	UP1lBU4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYJHB-0005o0-Tp; Tue, 04 Jun 2019 23:55:33 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYJH6-0005nd-Hz
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:55:29 +0000
Received: by mail-it1-f193.google.com with SMTP id i21so828009ita.5
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 16:55:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Llw9riwdC7Dp6ThIlkb0C9bJinfFG446T4LqbnB43tE=;
 b=p6P5mW4O2aH9x75VU8fFt73/2Liv9qq2+akkoupydX4KwPkaUvqPZlKXX+WDcJjo2c
 kLR4bp+G9iBjBjA2d6fCKUltuLVJT/G2KitE7WCcucsclTngj6It98Acw84GGFiCno6S
 kJ+sB2wthIM8hZehi8Bq9Am8YJavoF/GkvJtd8ZzQE3snbpSe7aZn5jmjodzYYLQfxy9
 cSmkescy5hedUFCCktM4dzjbs4dMp+kT7Q5kUy2zCdLlmwo4oeROIrtBPsxIE8lW8cTd
 vHQil/jXnazThiKu0Fqnau1JWYDBA2tws70ejaHP6DPrHkH6Nrjz8njo9b2iLY4Rz+tD
 Itgg==
X-Gm-Message-State: APjAAAUSRQOJZaBq/rLc4WxL6T5EyD7TyGgRYPC8AjbWi0IoD4iaNeWE
 oKu+oYvBhWoYUBQA5kQyPRU=
X-Google-Smtp-Source: APXvYqyICGwM0hiBorzBPue50+SvJ4Ja2RkjSyLM09tyhg82uLNQ5cezdgr5RAyQp7aqGG6kKtdN8g==
X-Received: by 2002:a05:660c:444:: with SMTP id
 d4mr22149319itl.158.1559692525678; 
 Tue, 04 Jun 2019 16:55:25 -0700 (PDT)
Received: from [172.27.5.71] ([75.104.65.130])
 by smtp.gmail.com with ESMTPSA id f4sm6399110iok.56.2019.06.04.16.55.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 16:55:25 -0700 (PDT)
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
To: Christoph Hellwig <hch@lst.de>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
 <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
 <288d4db3-ca7e-c60f-b7ac-5a6ff2771235@grimberg.me>
 <20190604190501.GB28398@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c55d56ea-7d63-10e5-dd97-6112a027c7b8@grimberg.me>
Date: Tue, 4 Jun 2019 16:54:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190604190501.GB28398@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_165528_596191_730A0A7B 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Harris,
 James R" <james.r.harris@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>>>> can you test the attached patch (without the revert) ?
>>>>
>>>> Max, I think that its pretty late for this change for 5.2,
>>>> I'm leaning towards reverting the offending patch for 5.2-rc and
>>>> getting this into 5.3
>>>
>>> are you sure ?
>>>
>>> we're only at rc3..
>>
>> This is beyond a bug fix, its a behavior change, with possible other
>> implications. This is really something that is merge window material
>> I think. I would rather let it sit for nvme-5.3 for a while before
>> we merge it.
>>
>> Christoph, do you have a different preference?
> 
> The original patch from Max fixed a serious issue, so I'd prefer not
> to revert it, especially as we are only at rc3.  That assumes we
> can agree on a fix in the next couple of days.

Its not really a serious issue given that it was broken from day 0, and
it requires to unload/reset a device that is under a bond to get it
to trigger (and the issue is not a crash). Not exactly mainstream, and
it broke something that is basic like disconnecting while reconnect is
ongoing.

And, this changes the behavior in terms of dma mappings. I'd expect that
this goes to the next merge window (which we can push asap) instead of
rushing it.

But, if you think that rc3 is early enough that we can rush it, I won't
argue with you, lets hope we won't miss anything else and fix again..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
