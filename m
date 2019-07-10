Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE7D63F22
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 04:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XJu79ikGKs04rXEd0cZ4IO62Rtu9qB4REdeI87X3Uas=; b=Wqy7kIZBytluJUWP15iY5leWp
	00inLekc7QH6p7Z3kcJT2HH1Qrnu8nLDndTzK6t33lu1oD3XY5mW7jAM61qno0vWJoSgeAtIIvf29
	RNRYh5mN9YJzWqdaCjLUPIZGTkItgzsnWNUpgX/EEc4rNuIe6A3Tw5AKgc1/feAp4oOdt09a8JLed
	P/KQMOOcz7u1dB6Q2xayB65ffbxHcRTqNtGM27kvcp78CQn3zBrQLk+epvV5NRyapTDvUQsRm5hW0
	jHEvZJxFTIbllEyWuno6N5xUu1dW4EfxJDTgElkuaLf1VvAsPMeVhC0JQEY52hNXryhboWF/dZ2kb
	j6KGLeoEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl28d-0003qN-Jj; Wed, 10 Jul 2019 02:15:19 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl28W-0003q3-34
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 02:15:13 +0000
Received: by mail-wr1-f66.google.com with SMTP id n9so781991wrr.4
 for <linux-nvme@lists.infradead.org>; Tue, 09 Jul 2019 19:15:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VqzZyijMCgOSPfwWbb5AHyz8Sbfbrq9U0uzBFtSsorg=;
 b=ohKm1BHn+thEz5hbPvJTmFbsGKYv90xuNSmvW1+T8vK4pZQR41wyv7mtYQFdoN07x+
 y3eWrZjm8Re+KDPbleo1Vq0f10UsupfmKQI9UY0wzn/cUR0MSglwFTSSgT4IBHsGzUwM
 fVxjYSbsJ5xX35BMAZFNPZsXO1rDQ3eEfswLEShWIbrdBha3u2Mg5DftCl2SRH5dCFER
 uVJDR3c3+HH3n2Pd7f5K6RS7V8PrIJCX/p5RuHe/+tTKYeGXA+YB/2Bc46DtVSkno8mW
 TeKBiZ/7ke2xdFwt1O2uGzg8ksgnshn6LO5YPm1xH/5SiywA9SBAuxx0lPeFxq5GQtRF
 H86Q==
X-Gm-Message-State: APjAAAWDZAinWz93908O+dqDOW6zoGH1PAa+aO/VDoTFNp51S0voZ2Xq
 owTC3wzBEhCScfUKjjS9BKfYF1xk
X-Google-Smtp-Source: APXvYqwXjs0XrNUllDyJbjnUNSHpIKitA3v8TvYaBJVbmuV9bLfXm/U9LchR7nyu0tl9dyHDLf9hsQ==
X-Received: by 2002:a5d:438e:: with SMTP id i14mr13223158wrq.122.1562724910532; 
 Tue, 09 Jul 2019 19:15:10 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r11sm663694wre.14.2019.07.09.19.15.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jul 2019 19:15:09 -0700 (PDT)
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
 <20190709202201.GB8405@lst.de>
 <70b60d78-1a77-ddb0-3414-e0c26d657e4f@grimberg.me>
 <20190709212717.GA9636@lst.de>
 <e7e4ec9a-b644-58a3-77b0-7828d73831ca@kernel.dk>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <4e8ec90b-b2d9-685f-6b39-1113688dce5c@grimberg.me>
Date: Tue, 9 Jul 2019 19:15:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <e7e4ec9a-b644-58a3-77b0-7828d73831ca@kernel.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_191512_142874_0A367B5A 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <keith.busch@intel.com>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> On Tue, Jul 09, 2019 at 02:26:04PM -0700, Sagi Grimberg wrote:
>>>> Looks good enough to me, especially now that we need to explicitly opt
>>>> into polling queues.
>>>
>>> Cool, so unless we have any objections, lets let it sit in 5.3?
>>
>> Well, the 5.3 merge window is over, I'm not sure how happy Jens would
>> be about this new feature.
> 
> I'm most likely doing a later pull this merge window, so if it's
> important and not super involved, we can probably sneak it in without
> too much fuss.

Its not very important, but also not involved... We can safely defer it
to 5.4.

Thanks Jens.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
