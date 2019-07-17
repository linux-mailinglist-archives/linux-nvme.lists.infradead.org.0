Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6878F6BE36
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 16:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ae2yL4Jyu8yaCMZRlOWqf6KqZYf5YPDCV1ObMDJ0/H0=; b=BgDBPBXv1MhI4D
	oloPfQqpaq0g8t9TNohIsF8mKbOiqbai/5HWKOXdg4o/dsIdgkjBxP0t8EWSQEL7qYpEyX/OD6SkD
	FMCzQ5AwYTJZ4z9gWkrrsQt8zBc7rpKo2wTZHn5aZttkL/l/wxYjzbx8ftmMudkV7d9mRSABmjneB
	NSN7fROq+S4sOtYdeKB8JUctJNx8wbHnT8xZaYyLLjlJuv1LL1HlzV2MO4BorfJiUgk+7bMn33ijU
	ezL+TQxeyMrU3r88GNUKkf278QPQwlEyMSDlDISh4zuqR40hdNSHmBvQwF6kiBe2bV4u4zaypxneF
	xKqHd5R33wFEnKCvzieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnkua-00049x-9J; Wed, 17 Jul 2019 14:28:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkuU-00049I-3t
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 14:27:59 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so10909628pfe.11
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 07:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nvqNr9SLuwwZZcGIJgyeLTzR5iN49WRmD1bzET7qrX0=;
 b=fZbqig6DExgJMx86f03afKw6OwCDHbTpt3kZa8PZYEL3OaDDQRrrRg8tQI3mt8mqxN
 s3RW8s5Za59L4GeXU2LEhWXBPRhMvkhNhDyB5sUYzVamWXn2p3DYqzbZcxWqFUOC5x3D
 RvkB/2/3DxL+SP7N7+TPjU4UjQ+gU2nB2XgCVPSn7s8eJTMe4MZjvY98/JDunyEYu0fp
 7Kh0buABkIsMJNBGrzzG4cRrnZrc/b89mAqQj6VlVT9nMDGpcjrdS/MnwqnfgM8TqiAq
 /6SOCMQ385Yv/JxsdNTvI6yptg9NnkTKSVxsXrh2je/S0i3YgZdaiJzz+aBFbgT0E8Vv
 iAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nvqNr9SLuwwZZcGIJgyeLTzR5iN49WRmD1bzET7qrX0=;
 b=h+PiNb2jxkhwoQPOFxpLxETiSwCm36migRp2N53n8n4j/3SfCmN/D7VpCvhgPmtqWl
 N7IDbmuDrvojVTMG0QuK478SF/+NL5vBvZRcH7pr5LFKF9oJxgLmWkBLuNZH+ZK+jJOR
 2Tv2ajbA9863kJbKZMEualHWFuiAIN3fwvwAWJ1q0oEuJWyVWLh99bMGzwb31V7DHoNQ
 2dH33UL5ERGXQl5RfYdxXQ9JbiHVA9CMz7nyt+X9644Z0rDUIKB+5MxsW1iwlJwNjuWa
 hDfMCd6JQwoH/TRVIEtd1o2z9Um7LyesxEp3XCkU4YIJMCvqYXLiEFrEgqKBpGvjIiVC
 0mtw==
X-Gm-Message-State: APjAAAXkua0kVzftwrC6fFPZMnTcvzeAtP6u6FZ55pmlbhldbq4jRoU/
 tmnn/J9U5f6uwHoNmxo+h7pyk/08xZO9bwyBs19x9yrm
X-Google-Smtp-Source: APXvYqwhAEQJYHqg+zo9ow9mDEV6qDdC8D9kEUY/g6y1OE313KSTV8uAp24yxQENP1K6vRVs9TLqvxUbZ5cUiyq4jCU=
X-Received: by 2002:a63:7455:: with SMTP id e21mr35805147pgn.439.1563373677041; 
 Wed, 17 Jul 2019 07:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
 <1562435939-15466-3-git-send-email-akinobu.mita@gmail.com>
 <89262967-667f-80cc-0fd5-ba480e879fe0@gmail.com>
In-Reply-To: <89262967-667f-80cc-0fd5-ba480e879fe0@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 17 Jul 2019 23:27:45 +0900
Message-ID: <CAC5umyjDNh+MP+jLST1sLyFhGsRe-SJCm+KjSOp4ppHqXog3Qw@mail.gmail.com>
Subject: Re: [PATCH 2/2] block: introduce LED block device activity trigger
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_072758_158816_2793693D 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDfmnIgxN+aXpSjmsLQpIDU6NTcgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gSGkgQWtpbm9idSwKPgo+IFRoYW5rIHlvdSBmb3IgdGhlIHBh
dGNoIHNldC4gSXQgbG9va3MgbmljZSBpbiBnZW5lcmFsLCBidXQgSSdkIGxpa2UKPiB0byBtYWlu
dGFpbiBpdCB1bmRlciBMRUQgc3Vic3lzdGVtLiBTZWUgbXkgYmVsb3cgY29tbWVudHMuCgpUaGFu
a3MgZm9yIHJldmlld2luZy4gSSdsbCBhcHBseSB5b3VyIGZlZWRiYWNrLgoKPiBPbiA3LzYvMTkg
Nzo1OCBQTSwgQWtpbm9idSBNaXRhIHdyb3RlOgo+ID4gVGhpcyBhbGxvd3MgTEVEcyB0byBiZSBj
b250cm9sbGVkIGJ5IGJsb2NrIGRldmljZSBhY3Rpdml0eS4KPiA+Cj4gPiBXZSBhbHJlYWR5IGhh
dmUgbGVkdHJpZy1kaXNrIChMRUQgZGlzayBhY3Rpdml0eSB0cmlnZ2VyKSwgYnV0IHRoZSBsb3dl
cgo+ID4gbGV2ZWwgZGlzayBkcml2ZXJzIG5lZWQgdG8gdXRpbGl6ZSBsZWR0cmlnX2Rpc2tfYWN0
aXZpdHkoKSB0byBtYWtlIHRoZQo+ID4gTEVEIGJsaW5rLgo+ID4KPiA+IFRoZSBMRUQgYmxvY2sg
ZGV2aWNlIHRyaWdnZXIgZG9lc24ndCByZXF1aXJlIHRoZSBsb3dlciBsZXZlbCBkcml2ZXJzIHRv
Cj4gPiBoYXZlIGFueSBpbnN0cnVtZW50YXRpb24uIFRoZSBhY3Rpdml0eSBpcyBjb2xsZWN0ZWQg
YnkgcG9sbGluZyB0aGUgZGlzawo+ID4gc3RhdHMuCj4gPgo+ID4gRXhhbXBsZToKPiA+Cj4gPiBl
Y2hvIGJsb2NrLW52bWUwbjEgPiAvc3lzL2NsYXNzL2xlZHMvZGl5L3RyaWdnZXIKPiA+Cj4gPiBD
YzogRnJhbmsgU3RlaW5lciA8ZnN0ZWluZXItbWFpbDFAYmlvLmlmaS5sbXUuZGU+Cj4gPiBDYzog
SmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pld3NraUBnbWFpbC5jb20+Cj4gPiBDYzogUGF2
ZWwgTWFjaGVrIDxwYXZlbEB1Y3cuY3o+Cj4gPiBDYzogRGFuIE11cnBoeSA8ZG11cnBoeUB0aS5j
b20+Cj4gPiBDYzogSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPgo+ID4gU2lnbmVkLW9mZi1i
eTogQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgYmxv
Y2svTWFrZWZpbGUgICAgICAgIHwgICAxICsKPiA+ICBibG9jay9ibGstbGVkdHJpZy5jICAgfCAy
MTkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+
ICBibG9jay9ibGsuaCAgICAgICAgICAgfCAgMTMgKysrCj4gPiAgYmxvY2svZ2VuaGQuYyAgICAg
ICAgIHwgICAyICsKPiA+ICBpbmNsdWRlL2xpbnV4L2dlbmhkLmggfCAgIDQgKwo+ID4gIDUgZmls
ZXMgY2hhbmdlZCwgMjM5IGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYmxv
Y2svYmxrLWxlZHRyaWcuYwo+ID4KPiA+IGRpZmYgLS1naXQgYS9ibG9jay9NYWtlZmlsZSBiL2Js
b2NrL01ha2VmaWxlCj4gPiBpbmRleCBlZWUxYjRjLi5jNzRkODRlNiAxMDA2NDQKPiA+IC0tLSBh
L2Jsb2NrL01ha2VmaWxlCj4gPiArKysgYi9ibG9jay9NYWtlZmlsZQo+ID4gQEAgLTM1LDMgKzM1
LDQgQEAgb2JqLSQoQ09ORklHX0JMS19ERUJVR19GUykgICs9IGJsay1tcS1kZWJ1Z2ZzLm8KPiA+
ICBvYmotJChDT05GSUdfQkxLX0RFQlVHX0ZTX1pPTkVEKSs9IGJsay1tcS1kZWJ1Z2ZzLXpvbmVk
Lm8KPiA+ICBvYmotJChDT05GSUdfQkxLX1NFRF9PUEFMKSAgICs9IHNlZC1vcGFsLm8KPiA+ICBv
YmotJChDT05GSUdfQkxLX1BNKSAgICAgICAgICs9IGJsay1wbS5vCj4gPiArb2JqLSQoQ09ORklH
X0xFRFNfVFJJR0dFUlMpICArPSBibGstbGVkdHJpZy5vCj4gPiBkaWZmIC0tZ2l0IGEvYmxvY2sv
YmxrLWxlZHRyaWcuYyBiL2Jsb2NrL2Jsay1sZWR0cmlnLmMKPgo+IFBsZWFzZSBtb3ZlIHRoZSB3
aG9sZSB0cmlnZ2VyIGltcGxlbWVudGF0aW9uIHRvCj4gZHJpdmVycy9sZWRzL3RyaWdnZXIgYW5k
IHJlbmFtZSB0aGUgZmlsZSB0byBsZWR0cmlnLWJsay5jCgpPSy4gVGhlbiB3ZSBkb24ndCBuZWVk
IHRvIHBhdGNoIDEvMiAoImxlZHM6IG1vdmUgZGVjbGFyYXRpb24gb2YKbGVkX3N0b3Bfc29mdHdh
cmVfYmxpbmsoKSB0byBsaW51eC9sZWRzLmgiKSBhbnltb3JlLgoKPiA+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwLi5kYTkzYjA2Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiAr
KysgYi9ibG9jay9ibGstbGVkdHJpZy5jCj4gPiBAQCAtMCwwICsxLDIxOSBAQAo+ID4gKy8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gPiArLy8gTEVEIEtlcm5lbCBCbG9ja2Rl
diBUcmlnZ2VyCj4gPiArLy8gRGVyaXZlZCBmcm9tIGxlZHRyaWctbmV0ZGV2LmMKPiA+ICsKPiA+
ICsjaW5jbHVkZSA8bGludXgvYXRvbWljLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2dlbmhkLmg+
Cj4gPiArI2luY2x1ZGUgPGxpbnV4L2xlZHMuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvd29ya3F1
ZXVlLmg+Cj4gPiArCj4gPiArc3RydWN0IGJsa19sZWR0cmlnX2RhdGEgewo+ID4gKyAgICAgc3Ry
dWN0IGRlbGF5ZWRfd29yayB3b3JrOwo+ID4gKyAgICAgc3RydWN0IGxlZF9jbGFzc2RldiAqbGVk
X2NkZXY7Cj4gPiArCj4gPiArICAgICBhdG9taWNfdCBpbnRlcnZhbDsKPiA+ICsgICAgIHU2NCBs
YXN0X2FjdGl2aXR5Owo+ID4gKwo+ID4gKyAgICAgdW5zaWduZWQgbG9uZyBtb2RlOwo+ID4gKyNk
ZWZpbmUgQkxLX0xFRFRSSUdfUkVBRCBCSVQoMCkKPiA+ICsjZGVmaW5lIEJMS19MRURUUklHX1dS
SVRFIEJJVCgxKQo+ID4gKyNkZWZpbmUgQkxLX0xFRFRSSUdfRElTQ0FSRCBCSVQoMikKPgo+IHMv
QkxLX0xFRFRSSUcvTEVEVFJJR19CTEsvCgpPSy4KCj4gPiBkaWZmIC0tZ2l0IGEvYmxvY2svYmxr
LmggYi9ibG9jay9ibGsuaAo+ID4gaW5kZXggNzgxNGFhMi4uZGQ0YzIzMGEgMTAwNjQ0Cj4gPiAt
LS0gYS9ibG9jay9ibGsuaAo+ID4gKysrIGIvYmxvY2svYmxrLmgKPiA+IEBAIC0zMzEsNCArMzMx
LDE3IEBAIHZvaWQgYmxrX3F1ZXVlX2ZyZWVfem9uZV9iaXRtYXBzKHN0cnVjdCByZXF1ZXN0X3F1
ZXVlICpxKTsKPiA+ICBzdGF0aWMgaW5saW5lIHZvaWQgYmxrX3F1ZXVlX2ZyZWVfem9uZV9iaXRt
YXBzKHN0cnVjdCByZXF1ZXN0X3F1ZXVlICpxKSB7fQo+ID4gICNlbmRpZgo+ID4KPiA+ICsjaWZk
ZWYgQ09ORklHX0xFRFNfVFJJR0dFUlMKPiA+ICtpbnQgYmxrX2xlZHRyaWdfcmVnaXN0ZXIoc3Ry
dWN0IGdlbmRpc2sgKmRpc2spOwo+ID4gK3ZvaWQgYmxrX2xlZHRyaWdfdW5yZWdpc3RlcihzdHJ1
Y3QgZ2VuZGlzayAqZGlzayk7Cj4gPiArI2Vsc2UKPiA+ICtzdGF0aWMgaW5saW5lIGludCBibGtf
bGVkdHJpZ19yZWdpc3RlcihzdHJ1Y3QgZ2VuZGlzayAqZGlzaykKPiA+ICt7Cj4gPiArICAgICBy
ZXR1cm4gMDsKPiA+ICt9Cj4gPiArc3RhdGljIGlubGluZSB2b2lkIGJsa19sZWR0cmlnX3VucmVn
aXN0ZXIoc3RydWN0IGdlbmRpc2sgKmRpc2spCj4gPiArewo+ID4gK30KPiA+ICsjZW5kaWYgLyog
Q09ORklHX0xFRFNfVFJJR0dFUlMgKi8KPgo+IFBsZWFzZSBtb3ZlIHRoaXMgcGFydCB0byBpbmNs
dWRlL2xpbnV4L2xlZHMuaCwgbmV4dCB0byB0aGUgb3RoZXIKPiB0cmlnZ2VycycgZmFjaWxpdGll
cy4KCk9LLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
