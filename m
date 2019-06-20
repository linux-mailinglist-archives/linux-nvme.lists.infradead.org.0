Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996F24C8DC
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 10:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kV2xSYcnYkI7yzwCy9yaFvhOxJ4Q5jacLjAmoa0ezbU=; b=HG0tfr+slXfVdLIaRpuM9Md6F
	3rO/6YZwV3P3pJhJQz1bTmTUSrc8DydECD4B2eI50TlqSKnZ3ON6X/MBmLQwkqhCSvlOqCeIphTVP
	ZQti7M3NOCyGMCR/Ijs4nQwmK9lttF8Aajmc4FwFJZUA9XEWr3Ba5dQ/3vlCelIvN4DiHPkzjgRp9
	T3HbbTAhmqHsaVxMntMHXvljmw1BAZQX64zU/C9GuIkrif1mrDDV0VP2nEgqeyifDrNy21S0WKohP
	qqWkdTFdVvMvtOuzff6h0WDtC9HaF4g6teZiG+PjKhyhBjHcWFfh3Yr1Z1OpekRpHAd2aJSAtIkrP
	k8X4hFu+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hds1W-0003Zy-TG; Thu, 20 Jun 2019 08:02:22 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hds1I-0003ZX-In
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 08:02:10 +0000
Received: by mail-pg1-f195.google.com with SMTP id f21so1161925pgi.3
 for <linux-nvme@lists.infradead.org>; Thu, 20 Jun 2019 01:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=N8mTD1WjgITbqSNYaC0MPVdrYAn7YX38y0fr9NlMQC4=;
 b=SmeriBoB1t5s7CIPkojOfV5p8NDzQLlmIbmRjFjqEAG5PCEwPhkhHtcJTwizxGu0nA
 qhAfjg7ypbQmedW/jVp+Pm9DNYgXrc43KF0vj6v2pNH48B5ve3WzOxhCsmbHoqVpKykO
 RlbETBX+jvO1beuaLrmpkt4YPztBOcwTBggqlpS57vGHojOq3Tlg22345Fu4+zUsnIsq
 A/8S8M6NFBF9Th6Oyj3tgPFPcBpw7lbzi1QJ5h7mafPtPo0f97orspGFLmYr3USqgIpV
 6YZPz4LLVUKTH/2ZZnNne4VXPIMUUoxmPnRl/ohi8/R+F2Bd+4t9Mu7tngn7942/DMqv
 Zi2w==
X-Gm-Message-State: APjAAAWfRmsxMUnc42C6Ahm4zLgSXTvXRwd58L5NVed5fHhHERD/6nxH
 xmb1Cau9+mLpy+gDY/Z27lI=
X-Google-Smtp-Source: APXvYqyTzZuq8HIJcI1uMYNQcLfBDuG1ATqijUDBaUt775wIsntheETx1KN9JbfrSr886y6WlaYosA==
X-Received: by 2002:a17:90a:d681:: with SMTP id
 x1mr1728163pju.13.1561017727730; 
 Thu, 20 Jun 2019 01:02:07 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:8c36:4f80:5fb5:4302?
 ([2601:647:4800:973f:8c36:4f80:5fb5:4302])
 by smtp.gmail.com with ESMTPSA id b17sm1043979pgk.85.2019.06.20.01.02.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 01:02:07 -0700 (PDT)
Subject: Re: [PATCH] nvmet-rdma: move port tsas initialization to rdma code
To: Christoph Hellwig <hch@lst.de>
References: <20190619230006.15715-1-sagi@grimberg.me>
 <20190620062914.GD20765@lst.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b9fa7da3-8bc3-eaf6-aaf0-0928231ec610@grimberg.me>
Date: Thu, 20 Jun 2019 01:02:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620062914.GD20765@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_010208_626948_5904D101 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


>> Also, look at the device transport capability to send
>> the correct trtype (ib/roce/rocev2/iwarp). Note that if
>> we are listening on addr_any we still return "not specified"
>> trtype and the same goes for referrals.
> 
> I very much disagree with sending the type.  That whole concept
> has been a horrible layering violation in the spec that we should
> not support.

Well, I was asked offline why Linux was not providing this information
and I couldn't find a reason why given that its exposed to the upper
layer...

I don't necessarily think that this is a layering violation, what
I can see as a layering issue though is that these helpers require
port_num, which is cumbersome to extract from the ip address. I guess
this can lead to misinformation in case of dual port devices where each
port has a different rdma link/transport (however this is more theoretic
than practical afaict).

Having said that, its not really a pressing issue, so if there is
resistance to have it, we can drop the prtype.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
