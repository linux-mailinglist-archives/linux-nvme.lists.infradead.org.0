Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1165A2D2B6
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 02:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WEv4OT2P1eTffeWcdDYs8DedCpVjMmQwOS1rwtTi6ak=; b=sO4oB4zhA58cvexc6C648NtDy
	FGM+Sm35W5tjZmbzPTq2SLEVoLPfPvd93CNREdHIvnO7eXN8fr0549PO2QEJhBChUyhPZuxZtbG1y
	TtN0rGcx19WwXl8g76fVr43yZyNhKdctGIrMLT36oeQh3iC8W+TqFaNN5w1UV1fC9InNkNBfpO81U
	6kMnPtzKVg1UlYTNLXkpwxicw274pNG7frwEVq3IpjlrViuqa5K6cvuPEHlyBdVxFkLSxa6BTaRin
	r87Gv/LmF4GZUyfKwME2kpUtBHJC5VOfBzy2vPTunwClh1j+QIJp90XhNu4+XUWkJtuWaO1L5DQ4H
	knVRNXOaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVmDm-000651-B9; Wed, 29 May 2019 00:13:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVmDg-00064h-Jl
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 00:13:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id w34so183794pga.12
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 17:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9j0aG3fSJp4sDcp//LPkQ5iATssPATt+eKRL6INdtHI=;
 b=rV0FLoFyMtzLyXhR83tXqBsmCJqquAHnKM4SJGghPhDQqipRCQK0T3UDjo+Cus3Jam
 Mx+igseR8RzWoxcbLLYx4b2t0kbcpJjHGb6/9qV/h/5XrKxgbpysleoLcWWfQJ4/qRuf
 JUPv3Da+8tRQ2xu/PUXy679NiD5YmTaOfAvmk5sxHcmkowIST/FegadTYIaDHYPkDE2j
 tcU1npRwJuTr7kzwZezpsvjDxHVBXGqAFUBowAY3AJGdm9s1pvVc+QL7As7e1R5Nwch4
 +lCxZfmijheqhCcJApBCJoRnA8ziCFLyrn27QGP6dBtlvvik6PHKKGZ+VnCuhvPPw++A
 uxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9j0aG3fSJp4sDcp//LPkQ5iATssPATt+eKRL6INdtHI=;
 b=spGu4MA0Iw2yBxpopy7VIM4jFO3Q1/z+sjkScssS6CZhO5vwP/9xfGzrM/z3rgUVbA
 17Jr+Wqdy0Jgccf2hCN1eiDdwX74QD7obbGyn3ArhCRS5nX7ehxLBrJj0S7Nhka/1L9e
 Jv8eU0vXSPJs99WbxktmfPc6w/wOPLnVkKN1JRz2n+eLGAg8jJQ3cISpwXZSWZkxs5pN
 1MCO1Jaw2212X1dyI7byPU5wRrrPJLloC7ZnH2DuIJwqlKTbnDLCAA7pALKFPQDIVWAu
 8NmJhgEkMSZ5CiZaITRzh2QhPPo9YpqUk515cdP928wKHNX/UkoycOyVcSZlmoFn5LqD
 Hypg==
X-Gm-Message-State: APjAAAW505AyBt2IfLsk2rPZS41nIxhffMj78vfG1dRwzY58I/7K/tm7
 Sp/5X2pmzVDxRuMYb/K0M363P+wQ
X-Google-Smtp-Source: APXvYqxkfYCZwe+eiMEwgOdWYZ4XD2FNz672pewn7xH/ZGOamfzl4P5a3TvbvkGmzkUkZCFpkhM9XA==
X-Received: by 2002:a65:530d:: with SMTP id m13mr41006878pgq.68.1559088807286; 
 Tue, 28 May 2019 17:13:27 -0700 (PDT)
Received: from [10.69.37.149] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x66sm17178543pfx.139.2019.05.28.17.13.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 17:13:26 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: Add message when creating new controller
To: Arun Easi <aeasi@marvell.com>
References: <20190528182404.3463-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1905281624470.9636@mvluser05.qlc.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <06bf2ef9-253e-3292-5cd5-11cae0c40afa@gmail.com>
Date: Tue, 28 May 2019 17:13:25 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1905281624470.9636@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_171328_678062_8A9CCD4F 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/28/2019 4:37 PM, Arun Easi wrote:
> On Tue, 28 May 2019, 11:24am, James Smart wrote:
> 
>> When looking at console messages to troubleshoot, there are one
>> maybe two messages before creation of the controller is complete.
>> However, a lot of io takes place to reach that point. It's unclear
>> when things have started.
>>
>> Add a message when the controller is first attempting to be
>> connecting to. Thus we know what controller and its NQN is being
>> put into place for any subsequent success or failure messages.
>>
>> Signed-off-by: James Smart <jsmart2021@gmail.com>
>> ---
>>   drivers/nvme/host/fc.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>

>> +	dev_info(ctrl->ctrl.device,
>> +		"NVME-FC{%d}: creating new ctrl: NQN \"%s\"\n",
>> +		ctrl->cnum, ctrl->ctrl.opts->subsysnqn);
>> +
> 
> Adding rport+lport information would be helpful. It would be good to have
> for all messages, but at least one message establishing the relationship
> would make it easier when looking at logs.
> 
> Just wondering if there is any reason why no FC rport/lport info
> was logged with any of the messages in fc.c?

I actually asked myself the same question after sending the patch: 
whether having host_traddr and traddr fields in that message made sense. 
I opted to stay as is only because it is much shorter (those WWN's are 
long).

The other question I had is whether I should print this only on initial 
creation or whenever a new association is started so it picks up the 
cases of when a reconnect start.  Only disadvantage is - more long 
messages in the log.

I can easily be convinced to do something different if you prefer.

-- james


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
