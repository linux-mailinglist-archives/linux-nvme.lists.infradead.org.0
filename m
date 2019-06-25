Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8A6559C9
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 23:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vkrsd23hsLre+LSo5F37t0rU2eKR8QEYX8FgVB/KZqE=; b=UDfZQiDH0R8CunyOiEkL/b1nL
	6n1ioiPSGAXe20EOfNrM9pUt+3xp8dexeGBEiTNumVtihLba8IDBevLVMaamI8Sk6icANuaWWf/rA
	e/awI2nQDXGdYObYS3YF1eS1o30t93VTw0POl13fGBu5OTkjw122icOKVBPrMhImDmQADRurRDm2C
	JGSwTrPrrD2wDKwhj3kmXDf33Lm8buyQJS5RR/0Wj7TmX8yVOV4DEYfXyFYxJ6waSpX1nEBVOxXo7
	6BUT81Ewxrdt+LqaBeNn4OTgEIi77LQLvKasQuzVC6evy2jdEAR7wQObYyt3UwSJyxz/UL7ggNH3a
	UYQ90O9zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfspe-0006cs-RZ; Tue, 25 Jun 2019 21:18:26 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfspZ-0006cM-I6
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 21:18:22 +0000
Received: by mail-ot1-f42.google.com with SMTP id r21so329251otq.6
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 14:18:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=OibmnP23bhAggcKw6dUGseuxZOhgr8+U06rIHyA3gp8=;
 b=jzryRjWiy5NN1/MLcbnL6eSaCD5xnntPHBRQwLqmISagVf23jpfgbcZdZGPTGXjmzr
 vMfD2niXMjs86Hh8nA0+Sa1Z0CbIhVhhqpVppiIhWD87bND8VOfb+8GnflZmUFd1SXTP
 v6oufs2xaSDFWye6BzVSFuqSP/HZleafcLb8BWmu/I7Ww0M200He8NQ1R1+dnBiqGZIY
 f0FteO0Wmn2dWCZEJQZ5GTqG6tEo9X5Flao4Om2NolL561JFeHTWx7aQ3IBS+YTiCepD
 rcEKF74qD8FZykVnn1ztCXtO3zc4PSV0tgWSJYlhrwWtxDyd7BfYNCpQ5ncr85BnzlZn
 45vw==
X-Gm-Message-State: APjAAAWT76e7VIXuV8NbXgBz3MiXpO0CbNwgTYxddMF4pgVDZhSTSfpf
 fv0kryh+u1an3wDDYy76/Vo=
X-Google-Smtp-Source: APXvYqxEuFQ33QAw9sesUmaZnLjLMr43EA2XdEWg2vd1vqGpsMFg+QMYzpg+faytme4ac/pC3BtleA==
X-Received: by 2002:a9d:6f03:: with SMTP id n3mr379326otq.283.1561497500702;
 Tue, 25 Jun 2019 14:18:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id u16sm5471832otk.46.2019.06.25.14.18.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 14:18:20 -0700 (PDT)
Subject: Re: [PATCH v2] nvme-fc: clean up error messages
To: James Smart <james.smart@broadcom.com>, "Ewan D. Milne"
 <emilne@redhat.com>, linux-nvme@lists.infradead.org
References: <20190624221240.25268-1-emilne@redhat.com>
 <14240398-683c-1d1c-f6e8-8fa8692270c2@broadcom.com>
 <c1d4377628740d182e16313b444b28ea6a2b8c1d.camel@redhat.com>
 <4787a63a-186f-124b-ea7a-f3eaf13136f3@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <bfa94e77-0154-2f5d-52de-31754550a056@grimberg.me>
Date: Tue, 25 Jun 2019 14:18:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <4787a63a-186f-124b-ea7a-f3eaf13136f3@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_141821_601451_5D3D4A4F 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.42 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: minwoo.im.dev@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IGNvbW1pdCA1ZTc3ZDYxY2JjN2U3NjY3NzgwMzcxMjdkYWI2OWU2NDEwYThmYzQ4Cj4+IEF1
dGhvcjogU2FnaSBHcmltYmVyZzxzYWdpQGdyaW1iZXJnLm1lPgo+PiBEYXRlOsKgwqAgVHVlIEp1
biAxOSAxNTozNDoxMyAyMDE4ICswMzAwCj4+Cj4+IMKgwqDCoMKgIG52bWUtcmRtYTogZG9uJ3Qg
b3ZlcnJpZGUgb3B0cy0+cXVldWVfc2l6ZQo+Pgo+PiBTbyBzaG91bGQgRkMgYmUgdXNpbmcgdGhl
IHNhbWUgbG9naWM/Cj4gCj4gbm90IHN1cmUgLSBJJ2xsIGhhdmUgdG8gbG9vayB3aHkgU2FnaSBy
ZXZlcnRlZCBpdC4KCkkgcmV2ZXJ0ZWQgaXQgYmVjYXVzZSBpdHMgYSB1c2VyIHBhcmFtZXRlciB3
aGljaCB3ZSBzaG91bGQKdHJ5IHRvIGF2b2lkIG1vZGlmeWluZy4KCkFuZCBtYXhjbWQgb3Igb3Ro
ZXIgbGltaXRzIGNhbiB0aGVvcmV0aWNhbGx5IGNoYW5nZSBvdmVyIHJlc2V0cy4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
