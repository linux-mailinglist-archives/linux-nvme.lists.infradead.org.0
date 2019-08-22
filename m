Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CE09884F
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CYk0CiM1WSuBUtD7g0D70vXQ05HpVLfZGoNo6mNC0ZI=; b=E3KODFTQYOANYjZFqvOpEBvmH
	wKg+Wg0GjO9OnQrWtxdPAr6VeRbmYYTEnzyK9TcCG9k6s36lmwbuIUlcRXJzrZwsNHF0FqG5Brpo9
	WLM8U+k+EIQrF3KZun5c2folDAI/OFIAQCBKYYrK6UNoFux8MXJjMvgaTeygSLaaQTXrX3wIGn1xr
	I+T0qEmsFF+RLp2ut+VIRFugdm8bpBefzxq73eI1fk6eYCL04dfIjtNIC9PfYtEHCbcWcR4hX5TqA
	0K6FXs6ksDz1zkI0i/J/8Pl4kV08v5Lj0zhaqcRngE3N8pB6zlkjCRkTooGpZT3bfNDlhAWvSihcK
	eWKGcj/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0afY-0000pQ-4b; Thu, 22 Aug 2019 00:09:36 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0afR-0000p3-Sm
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:09:31 +0000
Received: by mail-wm1-f66.google.com with SMTP id k1so3843864wmi.1
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 17:09:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=32/0yIVdzlJ2KJ3NplTUO5+v34KMaLLDclpZ7tzJ9aE=;
 b=JcQFSCryNm+8RwMgBHncvz1PTBCgEjJC/x6xczfqnMCdW6Q+4sH2SDkJjQDcKEjNZA
 PJLnvZGAEQsKddJFSm3491PtMO8y0njA+NpvnPQPBP6v4M3K/EgRHSH2tl5B1YE4uEBu
 SrUOZ3H6rmvZnq+J903CAPwZ9LCX2pRrZlZY+7y6jy3z9wA+1ikjNqvppMtPifwudiwL
 K9b3Af//J1kRMEloz+fkJ82VN9CBCfSauXz93a0gp9b0OjkhuMMvqwwfULBIaTaEL39I
 5f47Kp45LLzGbTj/QGm4XyRVeXvIseBqhx8yL+wWrJB4CgoQg0yXMBxMneKYK6pT0oT9
 PY4g==
X-Gm-Message-State: APjAAAUhybyRl5F/w3MPe6BU3oBhuyyHuDgqMxq/Ic59EjrMtI9fIz+h
 XVUJKWGD80Oe77tWZB4pJlA=
X-Google-Smtp-Source: APXvYqwuT0kmih8HKsX3ht5823hsz+gh7dNnKBV5RVKrdbL46NznsoXAK7FHnNlGyRd4vEhe81JUTw==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr2598763wmj.152.1566432568173; 
 Wed, 21 Aug 2019 17:09:28 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id r16sm50444348wrc.81.2019.08.21.17.09.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 17:09:27 -0700 (PDT)
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
To: Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
 <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
 <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
 <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b0921c72-93f1-f67a-c4b3-31baeb1c39cb@grimberg.me>
Date: Wed, 21 Aug 2019 17:09:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_170929_931854_553215E2 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> I don't understand why we don't limit a regular ctrl to single access 
> and we do it for the PT ctrl.
> 
> I guess the block layer helps to sync between multiple access in 
> parallel but we can do it as well.
> 
> Also, let's say you limit the access to this subsystem to 1 user, the 
> bdev is still accessibly for local user and also you can create a 
> different subsystem that will use this device (PT and non-PT ctrl).
> 
> Sagi,
> 
> can you explain the trouble you meant and how this limitation solve it ?

Its different to emulate the controller with all its admin
commands vs. passing it through to the nvme device.. (think of format nvm)




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
