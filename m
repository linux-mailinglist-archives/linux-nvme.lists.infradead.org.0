Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F53A9796
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 02:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fbY0mb2mdPSp9uBN+pN6/Xd6jjvwuDckmUNVVxmS2g8=; b=suImRtEbOiXXttyj277fLAARC
	NfUqgXth/xPrmeaKwtz7EJANsB2JdYzDKYDifNjlqRWmvL5KBTeWVv7yfBdmx78NIIdyx6z0uu/fN
	T9wpl6XJ5td4qZ3RwFVQenX7To9x4lgifajN7bEI34QkRNuLPejHppoE3tCSrff1h/Tn3K0BdUOv5
	KnYr3vJP+Z3KuP4ShaNJfEazaN+aoihzimD0CkJVY/wmd/G/tx/u+sRqEVMDfG+OwO1YPdk/se1Te
	ltgAv3IY3kNpLN70j22MqVyeykq20KOyYCosBPiQsYn2CV3ZGDSHsJ40A4t3Gr8ngP2dELpkHOPAY
	E+WtuRNSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fUX-0002Rz-Kz; Thu, 05 Sep 2019 00:19:13 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fUP-0002N8-B9
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 00:19:06 +0000
Received: by mail-wr1-f67.google.com with SMTP id l16so574248wrv.12
 for <linux-nvme@lists.infradead.org>; Wed, 04 Sep 2019 17:19:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ofIv03zmPsZCcRMjTwjsx/SjaCOj1dHO7WDqUPvvBpw=;
 b=dugu//yT2LmEG13RvPla2zOd5cjbbTqjqLHFUoV+CduEOKcBZI2AvlUmZqvhYIsldW
 mIZEZ7dFEyV0CYM/UrV9QyqE2wlC8sAXPrrivZ4lhNjeReD5QxIRhlfQ1DlHVX7fsdw/
 KVm6Vqptd2wLmt2ovoxH7ExraSSzmILeEq+ni19z91N2Rw1DAloZyNEVyUZAnEem8m0P
 bLMQgXEUAbAlI4Fg/fw49PTjT31miHizfRiNV0wDNdDGGsCbE4OTtNY+k1ra1D0rNQXZ
 gp8NtOczJqRuMAMquuB959V4RgeLyXb5mKm4n/GthoMU+diXPqwv9Fvf474J25UXkqdV
 c3Qw==
X-Gm-Message-State: APjAAAUefZf1Fu0tHf7aC2yaOJqIVWYEh6Y87Sk8vwclav4jlsXaPdKF
 VzrNHSdCHBfBR9DQ7QhotHg=
X-Google-Smtp-Source: APXvYqwfUoC9Oq6/Ir7SRB/q9o7+N40th6PbuGhf7J5wUQDBtVgEx35vNa9Wh78Yg3zbJZiy5At/zg==
X-Received: by 2002:a5d:62c1:: with SMTP id o1mr225406wrv.231.1567642743327;
 Wed, 04 Sep 2019 17:19:03 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q26sm565374wmf.45.2019.09.04.17.19.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 17:19:02 -0700 (PDT)
Subject: Re: [PATCH v4 3/4] nvme: add uevent variables for controller devices
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org
References: <20190904215954.15423-1-sagi@grimberg.me>
 <20190904215954.15423-4-sagi@grimberg.me>
 <b0e3f456-4071-abb8-5af9-26354c1a5356@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1c073c6f-468f-a3d5-8990-99774779011f@grimberg.me>
Date: Wed, 4 Sep 2019 17:18:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b0e3f456-4071-abb8-5af9-26354c1a5356@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_171905_394105_58166B23 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+IMKgIHN0YXRpYyB2b2lkIG52bWVfYWVuX3VldmVudChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJs
KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgY2hhciAqZW52cFsyXSA9IHsgTlVMTCwgTlVMTCB9Owo+
PiBAQCAtNDA2Myw2ICs0MDkwLDcgQEAgc3RhdGljIGludCBfX2luaXQgbnZtZV9jb3JlX2luaXQo
dm9pZCkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3VsdCA9IFBUUl9FUlIobnZtZV9jbGFzcyk7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIHVucmVnaXN0ZXJfY2hyZGV2Owo+PiDCoMKgwqDC
oMKgIH0KPj4gK8KgwqDCoCBudm1lX2NsYXNzLT5kZXZfdWV2ZW50ID0gbnZtZV9jbGFzc191ZXZl
bnQsCj4gCj4gQ29tbWEgYXQgZW5kIG9mIGxpbmUgPwoKSG1tLCBzdGlsbCB2YWxpZCBJIGd1ZXNz
LgoKSSBjYW4gZml4IGl0IHVwLCBJJ2xsIHdhaXQgZm9yIHNvbWUgbW9yZSBmZWVkYmFjayBmaXJz
dC4uLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
