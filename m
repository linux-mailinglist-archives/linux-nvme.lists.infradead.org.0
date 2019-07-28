Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FE4780C9
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 19:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjJ1/HNvUiHoXRvYZeBGSkgIB9HJhpDN78qVqPq2AEo=; b=ftxU5ZiBUJu9NA
	Jv57gVfsy85Opjz/VERiCaFS9yUHePZnvANQbe+GetcWfipi1XSHBPFpiDeXyYEU8wX/ZEYrUsMk9
	HqyNVpwu09b/guk/jYCsJFho0BS6jvcokIWhg8Eb3TTdfEAnsg5GutIEPLoH8SNyusbSIHgUvYeJh
	uOV/0VDD5wc64qRwyd3HuVDMZGiUr4PX3wwW1A3qv66iUgj6NJRVlNRjPM7ZC7SiYpu2IsX2Jtkaz
	l4QggLbUcPwUCYDiUcAL+xT7wiipdDqJ99VScWdBtYmBlKrRDVwWROMOZE6IHn285slK5h2rz0wm4
	08o6vvjPdA/3hyajBDWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrnFX-0005sQ-88; Sun, 28 Jul 2019 17:46:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrnFR-0005s7-BF
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 17:46:18 +0000
Received: by mail-wm1-x341.google.com with SMTP id l2so51485263wmg.0
 for <linux-nvme@lists.infradead.org>; Sun, 28 Jul 2019 10:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rDXxJQ+dG4QCU9nGvI3i3ZK8Pexg6wjvSNaJezti8Ow=;
 b=Vj5B0zAjEcE8k/QKd++pkcPZe9RW3+B2OkS7fV4aNHEH/9tez9WkWwdVeRN80QTYDB
 8NkI7V1hnB8UuhwR2rLyIeIobBVfuTsBvbdfF/zTAzql6PT3Ylp+hluHqU1D154icjci
 sSTJMSUyMCeDxVaHnn3nECEez44I4/1C+SSh/+c45c8ucSKDQOMsNquKLMYeiohEQw49
 TFkIIgjgWmpeeUUommllIjUS6KfLi7mf5kczi/hMo508iA0ORN4mtSrQLhWKzABJZynE
 ZQ6xlJ8LntamPipD5s3hREUhHEj71l/RPIqJr4KJlILhKvDqnnpGLOMYwozB+6PoJ5dH
 EQqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=rDXxJQ+dG4QCU9nGvI3i3ZK8Pexg6wjvSNaJezti8Ow=;
 b=IdmlQoRfc+BooVPQnlT6GPsEDQ0sPSo9NJ8+9jsJaw1LRJSqPKqivVIVB3WN4W5Xcf
 Ra+/eUy/1bPlNg5miTy9XzOCYo1VwOzdX7HWx4IIB7rmLL+lT0m9iI2Nj3LWM6Kow7ym
 k4crq6uqqZ9QHUy2L4EVUG2E+//AknjrVAwii1gJcSxcsyZUvJUiuDTGsBd09PJOi6TV
 Qfnzg5lD0fUaH5h21d+dSVGsCizwWK59xj12kx5yHnoZp9Yme0blfby+iubDUdlpLaP2
 twf56A11DUMOZOt3Eq1wnMpom6GZH6u4eIr2A20LaiQ3jN+qQwpVvieh2g3HmW7M2bxS
 k4DA==
X-Gm-Message-State: APjAAAXzd7yiyBpyQpD3rBx9mDiirmxy9TyyPteFDjV+q7YXsfHEQt0y
 Mw/XPBRQffvSW+Hbq6yP43Kec8IL
X-Google-Smtp-Source: APXvYqx6nnjgnqualgcHafYQwrZF1uz01rBZZ3/8EBSayOlTht65DcE2XIfW182Z/2+EQ5PhD7Hr5Q==
X-Received: by 2002:a1c:a686:: with SMTP id
 p128mr33288864wme.130.1564335975321; 
 Sun, 28 Jul 2019 10:46:15 -0700 (PDT)
Received: from [192.168.1.19] (chm157.neoplus.adsl.tpnet.pl. [83.31.10.157])
 by smtp.gmail.com with ESMTPSA id o6sm120593861wra.27.2019.07.28.10.46.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 10:46:14 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] block: introduce LED block device activity trigger
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
 <1563807552-23498-2-git-send-email-akinobu.mita@gmail.com>
 <44a6093f-7df7-9442-c33b-5827eb5f187b@gmail.com>
 <CAC5umygzNj=7LjzrzrVgOyLiZrKckaCgH68j0COFuWvX1yZAzA@mail.gmail.com>
From: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=jacek.anaszewski@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5630049e-7ab7-e48e-894d-b07a87fe6c25@gmail.com>
Date: Sun, 28 Jul 2019 19:46:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAC5umygzNj=7LjzrzrVgOyLiZrKckaCgH68j0COFuWvX1yZAzA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_104617_414105_49988EBC 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jacek.anaszewski[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgQWtpbm9idSwKCk9uIDcvMjgvMTkgMzo1MSBQTSwgQWtpbm9idSBNaXRhIHdyb3RlOgo+IDIw
MTnlubQ35pyIMjfml6Uo5ZyfKSA2OjIyIEphY2VrIEFuYXN6ZXdza2kgPGphY2VrLmFuYXN6ZXdz
a2lAZ21haWwuY29tPjoKPj4KPj4gSGkgQWtpbm9idSwKPj4KPj4gVGhhbmsgeW91IGZvciB0aGUg
djIuIEkndmUgY2hlY2tlZCBhbmQgaXQgd29ya3MgYXMgZXhwZWN0ZWQuCj4+Cj4+IE9uZSB0aGlu
ZyBpcyBtaXNzaW5nIHRob3VnaCAtIEFCSSBkb2N1bWVudGF0aW9uLgo+Pgo+PiBQbGVhc2UgYWRk
IERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtbGVkLXRyaWdnZXItYmxrCj4+
IGFuZCBkb2N1bWVudCByZWFkLCB3cml0ZSBhbmQgZGlzY2FyZCBmaWxlcy4KPiAKPiBPSy4gSSds
bCBhZGQgZG9jdW1lbnQgbGlrZSBiZWxvdy4KPiAKPiBXaGF0OiAgICAgICAgICAgL3N5cy9jbGFz
cy9sZWRzLzxsZWQ+L2ludGVydmFsCj4gRGF0ZTogICAgICAgICAgIEF1ZyAyMDE5Cj4gS2VybmVs
VmVyc2lvbjogIDUuNAo+IENvbnRhY3Q6ICAgICAgICBsaW51eC1sZWRzQHZnZXIua2VybmVsLm9y
Zwo+IERlc2NyaXB0aW9uOgo+ICAgICAgICAgICAgICAgICBTcGVjaWZpZXMgdGhlIGR1cmF0aW9u
IG9mIHRoZSBMRUQgYmxpbmsgaW4gbWlsbGlzZWNvbmRzLgo+ICAgICAgICAgICAgICAgICBEZWZh
dWx0cyB0byA1MCBtcy4KPiAKPiBXaGF0OiAgICAgICAgICAgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+
L3JlYWQKPiBEYXRlOiAgICAgICAgICAgQXVnIDIwMTkKPiBLZXJuZWxWZXJzaW9uOiAgNS40Cj4g
Q29udGFjdDogICAgICAgIGxpbnV4LWxlZHNAdmdlci5rZXJuZWwub3JnCj4gRGVzY3JpcHRpb246
Cj4gICAgICAgICAgICAgICAgIFNpZ25hbCBkYXRhIHJlYWQgb24gdGhlIGJsb2NrIGRldmljZS4K
PiAgICAgICAgICAgICAgICAgSWYgc2V0IHRvIDAsIHRoZSBMRUQgd2lsbCBub3QgYmxpbmsgb24g
ZGF0YSByZWFkLgo+ICAgICAgICAgICAgICAgICBJZiBzZXQgdG8gMSAoZGVmYXVsdCksIHRoZSBM
RUQgd2lsbCBibGluayBmb3IgdGhlIG1pbGxpc2Vjb25kcwo+ICAgICAgICAgICAgICAgICBzcGVj
aWZpZWQgaW4gaW50ZXJ2YWwgdG8gc2lnbmFsIGRhdGEgcmVhZC4KPiAKPiBXaGF0OiAgICAgICAg
ICAgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3dyaXRlCj4gRGF0ZTogICAgICAgICAgIEF1ZyAyMDE5
Cj4gS2VybmVsVmVyc2lvbjogIDUuNAo+IENvbnRhY3Q6ICAgICAgICBsaW51eC1sZWRzQHZnZXIu
a2VybmVsLm9yZwo+IERlc2NyaXB0aW9uOgo+ICAgICAgICAgICAgICAgICBTaWduYWwgZGF0YSB3
cml0dGVuIG9uIHRoZSBibG9jayBkZXZpY2UuCj4gICAgICAgICAgICAgICAgIElmIHNldCB0byAw
LCB0aGUgTEVEIHdpbGwgbm90IGJsaW5rIG9uIGRhdGEgd3JpdHRlbi4KPiAgICAgICAgICAgICAg
ICAgSWYgc2V0IHRvIDEgKGRlZmF1bHQpLCB0aGUgTEVEIHdpbGwgYmxpbmsgZm9yIHRoZSBtaWxs
aXNlY29uZHMKPiAgICAgICAgICAgICAgICAgc3BlY2lmaWVkIGluIGludGVydmFsIHRvIHNpZ25h
bCBkYXRhIHdyaXR0ZW4uCj4gCj4gV2hhdDogICAgICAgICAgIC9zeXMvY2xhc3MvbGVkcy88bGVk
Pi9kaXNjYXJkCj4gRGF0ZTogICAgICAgICAgIEF1ZyAyMDE5Cj4gS2VybmVsVmVyc2lvbjogIDUu
NAo+IENvbnRhY3Q6ICAgICAgICBsaW51eC1sZWRzQHZnZXIua2VybmVsLm9yZwo+IERlc2NyaXB0
aW9uOgo+ICAgICAgICAgICAgICAgICBTaWduYWwgZGF0YSBkaXNjYXJkZWQgb24gdGhlIGJsb2Nr
IGRldmljZS4KPiAgICAgICAgICAgICAgICAgSWYgc2V0IHRvIDAsIHRoZSBMRUQgd2lsbCBub3Qg
Ymxpbmsgb24gZGF0YSBkaXNjYXJkZWQuCj4gICAgICAgICAgICAgICAgIElmIHNldCB0byAxIChk
ZWZhdWx0KSwgdGhlIExFRCB3aWxsIGJsaW5rIGZvciB0aGUgbWlsbGlzZWNvbmRzCj4gICAgICAg
ICAgICAgICAgIHNwZWNpZmllZCBpbiBpbnRlcnZhbCB0byBzaWduYWwgZGF0YSBkaXNjYXJkZWQu
Cj4gCgpMb29rcyBnb29kLCBwbGVhc2Ugc3VibWl0IGl0IG9mZmljaWFsbHkuCgotLSAKQmVzdCBy
ZWdhcmRzLApKYWNlayBBbmFzemV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
