Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0D934CAE
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3oRUF5+oPBTYBS2sC+wFrEZteSQUmkN9+d8AGPWshQY=; b=reJPwMrEoz4o6NLtp+QVStpKm
	Bs1vw4Il068vVGN0DRem3Fjwo9nphx/Wgq5Yb2CIP8kH/I4b0VBcDgNO4r73apZXZi67uWIOPGOZY
	+UjSCrZoSVL/X60RMfS21kR1TNzKa2AcPT9jwmAMpjiH1GE0oA0DamvRNEbH6q+wd52bB1KZVtDsV
	4emwpSh0Hr0TuS7Hxi/vy19OHDAKronfEGppBDzPv61O51X9gnkHmpt+4GKkVjVd7CXBGnkV5PdqF
	gQtu3pkQSOQeNvNPTyad2StXOH760ZbEfhJ2YyrgFzIwjwmt0/JbHguKCxGe8QuYan7ABhprQbK3g
	YKjcDLGZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBnD-0001se-M1; Tue, 04 Jun 2019 15:56:07 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBn9-0001ro-Ba
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:56:04 +0000
Received: by mail-pg1-f196.google.com with SMTP id 196so10611784pgc.6
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:56:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0+KqUJAAXUiL08hMPfZ4LO1jq6LbjB5tP3Fv9g7ksCM=;
 b=tlUkoaNF2YGQ3JYmW34ozWkN26kDdN4ula7Z8jo3Pj85E087W5t6RLYvKXpxXOQQRN
 1kqPq6MwfuxNfiYrMO2u8vBxHggk/TDYQmNFfM4aPnFQfBjvzDH9cK+y4okFhZR8to4f
 tktl5Za32sTnkc58TMZZr8hQQCBgHYUsZoFBI8JAQ3vjZAyXBNQBa/iLe1WNiDsDQcz8
 ify85oybegH+CidLGJ7Ml/kCwdz9ccmQOrhUznfbwWJjfFLNxgseEC1HDv58B6pZHov5
 b78VqGNvJolwln9SO5knwP+RI5RkaqqeIdIHm6Hfg9/OoxTyy9BqspzEOCY2DbNzz/8E
 iUQQ==
X-Gm-Message-State: APjAAAVLH/FlgdRezJarSKRxw4AezZ7UCTXUrKHwYZ1GuDAQk5IYAtK4
 51TkWImdwjDw0WuC0WkBKtgumWXh
X-Google-Smtp-Source: APXvYqzNdEdHm8gYd7rcPEEVZ/NtJSZd0381h3D/oB5ZCS7xnIvcnWFb/8NOytsOtguC37jEHOMLzA==
X-Received: by 2002:a17:90a:2228:: with SMTP id
 c37mr20610091pje.9.1559663759727; 
 Tue, 04 Jun 2019 08:55:59 -0700 (PDT)
Received: from [10.8.0.6] (162-195-240-247.lightspeed.sntcca.sbcglobal.net.
 [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id e184sm26880010pfa.169.2019.06.04.08.55.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 08:55:59 -0700 (PDT)
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
To: Max Gurtovoy <maxg@mellanox.com>,
 "Harris, James R" <james.r.harris@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
 <251f83e0-75f1-ef0b-2747-8ae09f038ce8@grimberg.me>
 <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <288d4db3-ca7e-c60f-b7ac-5a6ff2771235@grimberg.me>
Date: Tue, 4 Jun 2019 08:55:56 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cb21c45b-2ffc-107b-172a-d9f653e90402@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_085603_391385_836B361F 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>>> James,
>>>
>>> can you test the attached patch (without the revert) ?
>>
>> Max, I think that its pretty late for this change for 5.2,
>> I'm leaning towards reverting the offending patch for 5.2-rc and
>> getting this into 5.3
> 
> are you sure ?
> 
> we're only at rc3..

This is beyond a bug fix, its a behavior change, with possible other
implications. This is really something that is merge window material
I think. I would rather let it sit for nvme-5.3 for a while before
we merge it.

Christoph, do you have a different preference?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
