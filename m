Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895ECEA936
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 03:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ktV6Gtr/fVnrisKrmELxLJMSccdLLJaOMLvt5xYAVUQ=; b=tWEk/I72J6UzxhD8MNDdfq4IY
	NrkXilHLD+kJjA+mqhuLhAhAwEC/eRhI3OwyNd5NbzuCCCqaPbkoXzEEK7cm6fKGE2Of1rpKCpUUq
	JEP/cT1m9PuZyKik3f56gNncDTZZCIFizXUrUThlDLvDSWXpBCsZAhhg5zRXSFZM4IuoYa5wGr8K6
	4V0gmCjJZ/ZUpDsQfWwMEbyDq3RAw4C1iJWibrhUI3bqJ2HpWXPUBh8BDWW3N7oaYtal0DNhkplgI
	6whds8DzvOgo5BwHxptxe8ud0K5v4l2rcdHEkv6+Np06URtuMc+41Xa//Q1kDt3E5VMn2I3NLmwbp
	22zcagX/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ04u-0002fC-0r; Thu, 31 Oct 2019 02:20:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ04p-0002ea-18
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 02:20:44 +0000
Received: by mail-pl1-x643.google.com with SMTP id x6so1952157pln.2
 for <linux-nvme@lists.infradead.org>; Wed, 30 Oct 2019 19:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CPWsP48AwDYwzHrNSqeuwfy/i4c2b3NcScLUzgAvHDs=;
 b=KCLGKae/h9k8SF56oGpwR9AKeNRrZH0ZQQgmlkQs8WpkqFsCQ3jyDiH/xvyFihdx79
 aSbnyCqAzhWrVioBiT/hmiiiZae0wZHme7YieZtyUnmElTZ29pV3Dr463LMsZF5iP8PB
 nOTZjVPw+CzGIRzSFWIPJby/loXkr4N5sW2Fa6UA6NG3lvtUf+Z8gE1mDiD70TFDC7ZB
 eS6/WzL2mNNblCUHX9sdCErOwEJ8v0BOJLOy772Hhte0NsUBQtbc91CWucFzIMm/ANut
 Hr417nCHQ37w98i7u/T5HJQc8wcRmIY88woFCLRH5DqiDOIcnQ3iLFqy7NkFgF9soCGt
 PgvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CPWsP48AwDYwzHrNSqeuwfy/i4c2b3NcScLUzgAvHDs=;
 b=uZNFfYxERy0XqI5N8wMJptLmqVgwDJZHdxSJDb8BRAFbWoI+Arlgw5qbeQDcPONTTB
 LVpBqutqIky0q6tGEoWreoS2dowyk070eVwR+Cz1zMebU/igKss87W+wnxncHoAA9nQl
 3QL/L9HqPhRT1p0hBvaDtLiBDh4BoMFau0ijnh+RhneCdJ5bAV5gPfYTllIfSkYVVsRS
 VjHbLtqzUmaTVnqEvncS/jrd1mxeGgCsQQEKciIJLgw5Lh6yl/d1fdfeKNPsOB7EGanU
 OG+ju4sKmQ2Hj5Wd394Q1G2A5YqrUeC+Nu/tnwfP5IdP71h7fVAxxzcYqBwlf2QN8YyE
 N7Ug==
X-Gm-Message-State: APjAAAXSS+lPN3TdBKMNe4A8MeOzHVWQnqB3Rrhb/+GVOrj3LeS4Wg0V
 6dXKqIpaGTfsZ/H7tGbQ9SE=
X-Google-Smtp-Source: APXvYqy8I1tQGkbZtFS4jbuQfBSsUXVrF19zbJuAgSm6DqjNwrQVyeE5AyQ1mSKAuUlgRtKErnkvog==
X-Received: by 2002:a17:902:326:: with SMTP id
 35mr3485385pld.248.1572488440863; 
 Wed, 30 Oct 2019 19:20:40 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 a20sm3135164pjs.30.2019.10.30.19.20.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Oct 2019 19:20:39 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
To: Akinobu Mita <akinobu.mita@gmail.com>
References: <20191029223214.18889-1-linux@roeck-us.net>
 <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <e62b6763-0d1b-3359-6d3b-cb31e96bb862@roeck-us.net>
Date: Wed, 30 Oct 2019 19:20:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_192043_098986_3AA24CFE 
X-CRM114-Status: GOOD (  29.54  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Chris Healy <cphealy@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTAvMzAvMTkgNDoxNiBBTSwgQWtpbm9idSBNaXRhIHdyb3RlOgo+IDIwMTnlubQxMOaciDMw
5pelKOawtCkgNzozMiBHdWVudGVyIFJvZWNrIDxsaW51eEByb2Vjay11cy5uZXQ+Ogo+Pgo+PiBu
dm1lIGRldmljZXMgcmVwb3J0IHRlbXBlcmF0dXJlIGluZm9ybWF0aW9uIGluIHRoZSBjb250cm9s
bGVyIGluZm9ybWF0aW9uCj4+IChmb3IgbGltaXRzKSBhbmQgaW4gdGhlIHNtYXJ0IGxvZy4gQ3Vy
cmVudGx5LCB0aGUgb25seSBtZWFucyB0byByZXRyaWV2ZQo+PiB0aGlzIGluZm9ybWF0aW9uIGlz
IHRoZSBudm1lIGNvbW1hbmQgbGluZSBpbnRlcmZhY2UsIHdoaWNoIHJlcXVpcmVzCj4+IHN1cGVy
LXVzZXIgcHJpdmlsZWdlcy4KPj4KPj4gQXQgdGhlIHNhbWUgdGltZSwgaXQgd291bGQgYmUgZGVz
aXJhYmxlIHRvIHVzZSBOVk1FIHRlbXBlcmF0dXJlIGluZm9ybWF0aW9uCj4+IGZvciB0aGVybWFs
IGNvbnRyb2wuCj4+Cj4+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IHRvIHJlYWQgTlZNRSB0ZW1w
ZXJhdHVyZXMgZnJvbSB0aGUga2VybmVsIHVzaW5nIHRoZQo+PiBod21vbiBBUEkgYW5kIGFkZHMg
dGVtcGVyYXR1cmUgem9uZXMgZm9yIE5WTUUgZHJpdmVzLiBUaGUgdGhlcm1hbCBzdWJzeXN0ZW0K
Pj4gY2FuIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIHNldCB0aGVybWFsIHBvbGljaWVzLCBhbmQg
dXNlcnNwYWNlIGNhbiBhY2Nlc3MKPj4gaXQgdXNpbmcgbGlic2Vuc29ycyBhbmQvb3IgdGhlICJz
ZW5zb3JzIiBjb21tYW5kLgo+Pgo+PiBFeGFtcGxlIG91dHB1dCBmcm9tIHRoZSAic2Vuc29ycyIg
Y29tbWFuZDoKPj4KPj4gbnZtZTAtcGNpLTAxMDAKPj4gQWRhcHRlcjogUENJIGFkYXB0ZXIKPj4g
Q29tcG9zaXRlOiAgICArMzkuMMKwQyAgKGhpZ2ggPSArODUuMMKwQywgY3JpdCA9ICs4NS4wwrBD
KQo+PiBTZW5zb3IgMTogICAgICszOS4wwrBDCj4+IFNlbnNvciAyOiAgICAgKzQxLjDCsEMKPj4K
Pj4gU2lnbmVkLW9mZi1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+PiAt
LS0KPj4gdjI6IFVzZSBkZXZtX2tmcmVlKCkgdG8gcmVsZWFzZSBtZW1vcnkgaW4gZXJyb3IgcGF0
aAo+Pgo+PiAgIGRyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcgICAgICB8ICAxMCArKwo+PiAgIGRy
aXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlICAgICB8ICAgMSArCj4+ICAgZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jICAgICAgIHwgICA1ICsKPj4gICBkcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9u
LmMgfCAxNjMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+ICAgZHJpdmVycy9u
dm1lL2hvc3QvbnZtZS5oICAgICAgIHwgICA4ICsrCj4+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxODcg
aW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL252bWUvaG9zdC9u
dm1lLWh3bW9uLmMKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcg
Yi9kcml2ZXJzL252bWUvaG9zdC9LY29uZmlnCj4+IGluZGV4IDJiMzZmMDUyYmZiOS4uYWViNDll
MTZlMzg2IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9LY29uZmlnCj4+ICsrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcKPj4gQEAgLTIzLDYgKzIzLDE2IEBAIGNvbmZpZyBO
Vk1FX01VTFRJUEFUSAo+PiAgICAgICAgICAgICAvZGV2L252bWVYblkgZGV2aWNlIHdpbGwgc2hv
dyB1cCBmb3IgZWFjaCBOVk1lIG5hbWVzcGFjZXMsCj4+ICAgICAgICAgICAgIGV2ZW4gaWYgaXQg
aXMgYWNjZXNzaWJsZSB0aHJvdWdoIG11bHRpcGxlIGNvbnRyb2xsZXJzLgo+Pgo+PiArY29uZmln
IE5WTUVfSFdNT04KPj4gKyAgICAgICBib29sICJOVk1FIGhhcmR3YXJlIG1vbml0b3JpbmciCj4+
ICsgICAgICAgZGVwZW5kcyBvbiAoTlZNRV9DT1JFPXkgJiYgSFdNT049eSkgfHwgKE5WTUVfQ09S
RT1tICYmIEhXTU9OKQo+PiArICAgICAgIGhlbHAKPj4gKyAgICAgICAgIFRoaXMgcHJvdmlkZXMg
c3VwcG9ydCBmb3IgTlZNRSBoYXJkd2FyZSBtb25pdG9yaW5nLiBJZiBlbmFibGVkLAo+PiArICAg
ICAgICAgYSBoYXJkd2FyZSBtb25pdG9yaW5nIGRldmljZSB3aWxsIGJlIGNyZWF0ZWQgZm9yIGVh
Y2ggTlZNRSBkcml2ZQo+PiArICAgICAgICAgaW4gdGhlIHN5c3RlbS4KPj4gKwo+PiArICAgICAg
ICAgSWYgdW5zdXJlLCBzYXkgTi4KPj4gKwo+PiAgIGNvbmZpZyBOVk1FX0ZBQlJJQ1MKPj4gICAg
ICAgICAgdHJpc3RhdGUKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L01ha2Vm
aWxlIGIvZHJpdmVycy9udm1lL2hvc3QvTWFrZWZpbGUKPj4gaW5kZXggOGE0YjY3MWM1ZjBjLi4w
M2RlNDc5N2E4NzcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlCj4+
ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlCj4+IEBAIC0xNCw2ICsxNCw3IEBAIG52
bWUtY29yZS0kKENPTkZJR19UUkFDSU5HKSAgICAgICAgICAgKz0gdHJhY2Uubwo+PiAgIG52bWUt
Y29yZS0kKENPTkZJR19OVk1FX01VTFRJUEFUSCkgICAgICs9IG11bHRpcGF0aC5vCj4+ICAgbnZt
ZS1jb3JlLSQoQ09ORklHX05WTSkgICAgICAgICAgICAgICAgICAgICAgICArPSBsaWdodG52bS5v
Cj4+ICAgbnZtZS1jb3JlLSQoQ09ORklHX0ZBVUxUX0lOSkVDVElPTl9ERUJVR19GUykgICArPSBm
YXVsdF9pbmplY3Qubwo+PiArbnZtZS1jb3JlLSQoQ09ORklHX05WTUVfSFdNT04pICAgICAgICAg
Kz0gbnZtZS1od21vbi5vCj4+Cj4+ICAgbnZtZS15ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgKz0gcGNpLm8KPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUu
YyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+PiBpbmRleCBmYTdiYTA5ZGNhNzcuLmZjMWQ0
YjE0NjcxNyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4+ICsrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+PiBAQCAtMjc5Niw2ICsyNzk2LDkgQEAgaW50IG52
bWVfaW5pdF9pZGVudGlmeShzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+PiAgICAgICAgICBjdHJs
LT5vbmNzID0gbGUxNl90b19jcHUoaWQtPm9uY3MpOwo+PiAgICAgICAgICBjdHJsLT5tdGZhID0g
bGUxNl90b19jcHUoaWQtPm10ZmEpOwo+PiAgICAgICAgICBjdHJsLT5vYWVzID0gbGUzMl90b19j
cHUoaWQtPm9hZXMpOwo+PiArICAgICAgIGN0cmwtPndjdGVtcCA9IGxlMTZfdG9fY3B1KGlkLT53
Y3RlbXApOwo+PiArICAgICAgIGN0cmwtPmNjdGVtcCA9IGxlMTZfdG9fY3B1KGlkLT5jY3RlbXAp
Owo+PiArCj4+ICAgICAgICAgIGF0b21pY19zZXQoJmN0cmwtPmFib3J0X2xpbWl0LCBpZC0+YWNs
ICsgMSk7Cj4+ICAgICAgICAgIGN0cmwtPnZ3YyA9IGlkLT52d2M7Cj4+ICAgICAgICAgIGlmIChp
ZC0+bWR0cykKPj4gQEAgLTI4OTcsNiArMjkwMCw4IEBAIGludCBudm1lX2luaXRfaWRlbnRpZnko
c3RydWN0IG52bWVfY3RybCAqY3RybCkKPj4KPj4gICAgICAgICAgY3RybC0+aWRlbnRpZmllZCA9
IHRydWU7Cj4+Cj4+ICsgICAgICAgbnZtZV9od21vbl9pbml0KGN0cmwpOwo+PiArCj4+ICAgICAg
ICAgIHJldHVybiAwOwo+Pgo+PiAgIG91dF9mcmVlOgo+IAo+IFRoZSBudm1lX2luaXRfaWRlbnRp
ZnkoKSBjYW4gYmUgY2FsbGVkIG11bHRpcGxlIHRpbWUgaW4gbnZtZSBjdHJsJ3MKPiBsaWZldGlt
ZSAoZS5nICdudm1lIHJlc2V0IC9kZXYvbnZtZSonIG9yIHN1c3BlbmQvcmVzdW1lIHBhdGhzKSwg
c28KPiBzaG91bGQgd2UgbmVlZCB0byBwcmV2ZW50IG52bWVfaHdtb25faW5pdCgpIGZyb20gcmVn
aXN0ZXJpbmcgaHdtb24KPiBkZXZpY2UgbW9yZSB0aGFuIHR3aWNlPwo+IAo+IEluIHRoZSBudm1l
IHRoZXJtYWwgem9uZSBwYXRjaHNldFsxXSwgdGhlcm5hbCB6b25lIGlzIHJlZ2lzdGVyZWQgaW4K
PiBudm1lX2luaXRfaWRlbnRpZnkgYW5kIHVucmVnaXN0ZXJlZCBpbiBudm1lX3N0b3BfY3RybCgp
Lgo+IAoKRG9lc24ndCB0aGF0IG1lYW4gdGhhdCB0aGUgaW5pdGlhbGl6YXRpb24gc2hvdWxkIGhh
cHBlbiBpbiBudm1lX3N0YXJ0X2N0cmwoKQphbmQgbm90IGhlcmUgPwoKRWl0aGVyIGNhc2UsIGdv
b2QgcG9pbnQuIFJlYXNvbiBmb3IgY2FsbGluZyB0aGUgaW5pdCBmdW5jdGlvbiBmcm9tIGhlcmUK
aXMgdGhhdCBJIHdhbnRlZCB0byBlbnN1cmUgdGhhdCBpdCBpcyBjYWxsZWQgYWZ0ZXIgY29udHJv
bGxlcgppZGVudGlmaWNhdGlvbi4gQnV0IHRoZW4gaXQgaXMgcmVhbGx5IHVuZGVzaXJhYmxlIHRv
IHJlLWluc3RhbnRpYXRlCnRoZSBkcml2ZXIgb24gZWFjaCBkZXZpY2UgcmVzZXQuIEknbGwgaGF2
ZSB0byB0aGluayBhYm91dCB0aGF0LgoKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtZGV2aWNldHJlZS8xNTYxOTkwMzU0LTQwODQtMi1naXQtc2VuZC1lbWFpbC1ha2lub2J1Lm1p
dGFAZ21haWwuY29tLwo+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbnZtZS1o
d21vbi5jIGIvZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jCj4+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uYWY1ZWRhMzI2ZWM2Cj4+IC0tLSAvZGV2L251
bGwKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jCj4+IEBAIC0wLDAgKzEs
MTYzIEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+PiArLyoKPj4g
KyAqIE5WTSBFeHByZXNzIGhhcmR3YXJlIG1vbml0b3Jpbmcgc3VwcG9ydAo+PiArICogQ29weXJp
Z2h0IChjKSAyMDE5LCBHdWVudGVyIFJvZWNrCj4+ICsgKi8KPj4gKyA+PiArI2luY2x1ZGUgPGxp
bnV4L2h3bW9uLmg+Cj4+ICsKPj4gKyNpbmNsdWRlICJudm1lLmgiCj4+ICsKPj4gK3N0cnVjdCBu
dm1lX2h3bW9uX2RhdGEgewo+PiArICAgICAgIHN0cnVjdCBudm1lX2N0cmwgKmN0cmw7Cj4+ICsg
ICAgICAgc3RydWN0IG52bWVfc21hcnRfbG9nIGxvZzsKPj4gK307Cj4+ICsKPj4gK3N0YXRpYyBp
bnQgbnZtZV9od21vbl9nZXRfc21hcnRfbG9nKHN0cnVjdCBudm1lX2h3bW9uX2RhdGEgKmRhdGEp
Cj4+ICt7Cj4+ICsgICAgICAgcmV0dXJuIG52bWVfZ2V0X2xvZyhkYXRhLT5jdHJsLCBOVk1FX05T
SURfQUxMLCBOVk1FX0xPR19TTUFSVCwgMCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICZkYXRhLT5sb2csIHNpemVvZihkYXRhLT5sb2cpLCAwKTsKPj4gK30KPiAKPiBUaGUgJ2RhdGEt
PmxvZycgaXMgYWxsb2NhdGVkIHBlciBudm1lX2N0cmwsIHNvIGFyZSB0aGVyZSBhbnkgbG9ja3Mg
dG8KPiBwcmV2ZW50IG11bHRpcGxlIGNhbGxlcnMgb2YgbnZtZV9od21vbl9nZXRfc21hcnRfbG9n
KCkgZnJvbSBicmVha2luZwo+IHRoZSBsb2cgYnVmZmVyPwo+IApHb29kIHBvaW50LiBUaGlzIG5l
ZWRzIGVpdGhlciBsb2NhbCBtZW1vcnkgbGlrZSBpbiB5b3VyIHBhdGNoLCBvcgpJJ2xsIG5lZWQg
YSBsb2NrLiBJIHByZWZlciBhIGxvY2ssIHRob3VnaCBJIGFtIG9wZW4gdG8gc3VnZ2VzdGlvbnMu
Cgo+PiArCj4+ICtzdGF0aWMgaW50IG52bWVfaHdtb25fcmVhZChzdHJ1Y3QgZGV2aWNlICpkZXYs
IGVudW0gaHdtb25fc2Vuc29yX3R5cGVzIHR5cGUsCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgIHUzMiBhdHRyLCBpbnQgY2hhbm5lbCwgbG9uZyAqdmFsKQo+PiArewo+PiArICAgICAgIHN0
cnVjdCBudm1lX2h3bW9uX2RhdGEgKmRhdGEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPj4gKyAg
ICAgICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgKmxvZyA9ICZkYXRhLT5sb2c7Cj4+ICsgICAgICAg
aW50IGVycjsKPj4gKyAgICAgICBpbnQgdGVtcDsKPj4gKwo+PiArICAgICAgIGVyciA9IG52bWVf
aHdtb25fZ2V0X3NtYXJ0X2xvZyhkYXRhKTsKPj4gKyAgICAgICBpZiAoZXJyKQo+PiArICAgICAg
ICAgICAgICAgcmV0dXJuIGVyciA8IDAgPyBlcnIgOiAtRVBST1RPOwo+PiArCj4+ICsgICAgICAg
c3dpdGNoIChhdHRyKSB7Cj4+ICsgICAgICAgY2FzZSBod21vbl90ZW1wX21heDoKPj4gKyAgICAg
ICAgICAgICAgICp2YWwgPSAoZGF0YS0+Y3RybC0+d2N0ZW1wIC0gMjczKSAqIDEwMDA7Cj4+ICsg
ICAgICAgICAgICAgICBicmVhazsKPj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBfY3JpdDoKPj4g
KyAgICAgICAgICAgICAgICp2YWwgPSAoZGF0YS0+Y3RybC0+Y2N0ZW1wIC0gMjczKSAqIDEwMDA7
Cj4+ICsgICAgICAgICAgICAgICBicmVhazsKPiAKPiBXaGVuIHRoaXMgZnVuY3Rpb24gaXMgY2Fs
bGVkIHdpdGggJ2h3bW9uX3RlbXBfbWF4JyBvciAnaHdtb25fdGVtcF9jcml0JywKPiB3ZSBkb24n
dCBuZWVkIHRvIGNhbGwgbnZtZV9od21vbl9nZXRfc21hcnRfbG9nKCkgYXQgYWxsLCBkbyB3ZT8K
PiAKCkFub3RoZXIgZ29vZCBwb2ludC4KClRoYW5rcywKR3VlbnRlcgoKPj4gKyAgICAgICBjYXNl
IGh3bW9uX3RlbXBfaW5wdXQ6Cj4+ICsgICAgICAgICAgICAgICBpZiAoIWNoYW5uZWwpCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHRlbXAgPSBsZTE2X3RvX2NwdXAoKF9fbGUxNiAqKWxvZy0+
dGVtcGVyYXR1cmUpOwo+PiArICAgICAgICAgICAgICAgZWxzZQo+PiArICAgICAgICAgICAgICAg
ICAgICAgICB0ZW1wID0gbGUxNl90b19jcHUobG9nLT50ZW1wX3NlbnNvcltjaGFubmVsIC0gMV0p
Owo+PiArICAgICAgICAgICAgICAgKnZhbCA9ICh0ZW1wIC0gMjczKSAqIDEwMDA7Cj4+ICsgICAg
ICAgICAgICAgICBicmVhazsKPj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBfY3JpdF9hbGFybToK
Pj4gKyAgICAgICAgICAgICAgICp2YWwgPSAhIShsb2ctPmNyaXRpY2FsX3dhcm5pbmcgJiBOVk1F
X1NNQVJUX0NSSVRfVEVNUEVSQVRVUkUpOwo+PiArICAgICAgICAgICAgICAgYnJlYWs7Cj4+ICsg
ICAgICAgZGVmYXVsdDoKPj4gKyAgICAgICAgICAgICAgIGVyciA9IC1FT1BOT1RTVVBQOwo+PiAr
ICAgICAgICAgICAgICAgYnJlYWs7Cj4+ICsgICAgICAgfQo+PiArICAgICAgIHJldHVybiBlcnI7
Cj4+ICt9Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
