Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C301EA7E5
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 00:41:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vD6OZhhDjDMxATMofjUZ9oBdafp44bqSmUccCG8pPew=; b=RrIYjWX8fCZTfB
	xFtWGcTCYURxVQjff6/BMOiehdY3hcxC9CRVC1gui8dzwSnAjP+gqk6HRhxzWYpdR2CM9S8Cuh7DI
	9GywVZEHoRFvOxGEkc/l3GMMylamsdEK9EHxlyBnaQfd+bLgMA8fYfakTqv1nfia936kEh7fQw+Vw
	WPz5ccHe352tzpb+gDnj6WtBBqiOJIIckyxNaviNFe6wq2YERPKV+lmihIkNUIlotN9x4KtpPxCbV
	x8epQRfKcemrKLknAJw8UCiGddlWNshl2IaluoD/vAwBeo8xFctrr5Hj0IVdxh3PjStdJWv5OzvKK
	X2puLK38oRWBg823rM2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPxaD-0007ol-NZ; Wed, 30 Oct 2019 23:40:57 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPxa7-0007oB-Kn
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 23:40:53 +0000
Received: by mail-il1-x142.google.com with SMTP id m16so3690348iln.13
 for <linux-nvme@lists.infradead.org>; Wed, 30 Oct 2019 16:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=quqshQ137yqtN7t6AIFEtWJn/EYUuG9xXWX7suw57qo=;
 b=eFRizubuBqk1f0vXFPgTKFQskl+SbCIjE8UIMP0k+4x6QnQYNeRE4R+infFSulKCLd
 uj9QH9H1NA+4zo2blgEarT6+Zw28qBQZxeRUT7hWQjpQS4YoZJlimK+XmgosoB3BxOqU
 y5OXNth1xrJeKe+CEAYc6FwG5hBSHcVv6S/jyOrTwlLAzW+b+4kI7pOeb4sqzJ8l/LST
 X8RciW1EJwU3+fPuB+H0iS45P42Cv3HW/l/0i1dYc8d2ku/MpG7qHjIX/lPVKPe2AjIS
 BhAvpBwkue2W1RwsNj5dKnpwSsNMPHUAiKBePZ8bE+CE3gLwrnBjpmkQUTFmvg+xwdbB
 stTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=quqshQ137yqtN7t6AIFEtWJn/EYUuG9xXWX7suw57qo=;
 b=U7rae6XUy2Lbd033bk6CNSvHJt3KDxlrFMy2fbBI1RQUIQbFf1lLi8TmRRIDvCIM0L
 MUGazFucT1l8KrFw67M9K1z6g6t+nWaZGtUi747UWVkAHqrg/YJga9QZyU3Z99dAVbkj
 jyHWmCKnpn4cGHnUymXhrCN1bHm3FVWl3EiopvfUuSb2fuLZj06ZLZiY4VI101dbk679
 9/KOLKA1LE2W1mLcQ9P/kxbRGjotvUKp5ycFXYdh2ME2Oab1OgZAQOWNYpdAnP19T4oX
 Lt9pvvhmwUAlRRmm8Y4EOEpzJFxqix/uMzRVp6S+52rTacQohYueYTj5Hb0VstfsQzvd
 cYqw==
X-Gm-Message-State: APjAAAXkt16kHsCOumzkEwhzHf6ErdrEfmJ2xMDJngd6BL+n+xc5nraw
 4IhFBku8YqRUNVl2qE+fISao4xb51+WhNt7ePrY=
X-Google-Smtp-Source: APXvYqx1TAibZGxEERdHkYEX5qTtmkltCoaPf4OU2X2Qj92QukKDIrJLFVOde2JwxxhJkfIEEp9f8v6U4XMJvpi5JR8=
X-Received: by 2002:a92:5c4f:: with SMTP id q76mr2757323ilb.158.1572478850034; 
 Wed, 30 Oct 2019 16:40:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191029223214.18889-1-linux@roeck-us.net>
In-Reply-To: <20191029223214.18889-1-linux@roeck-us.net>
From: Chris Healy <cphealy@gmail.com>
Date: Wed, 30 Oct 2019 16:40:39 -0700
Message-ID: <CAFXsbZo1hObASv5RO6EcGcuJin=SL8+epTJG9iSF1LHn+A3uZw@mail.gmail.com>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_164051_705798_55E11E97 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cphealy[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gYW4gQVJNNjQgc3lzdGVtIHdpdGggVG9zaGliYSBTU0Q6CgpUZXN0ZWQtYnk6IENocmlzIEhl
YWx5IDxjcGhlYWx5QGdtYWlsLmNvbT4KCk9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0IDM6MzIgUE0g
R3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0PiB3cm90ZToKPgo+IG52bWUgZGV2aWNl
cyByZXBvcnQgdGVtcGVyYXR1cmUgaW5mb3JtYXRpb24gaW4gdGhlIGNvbnRyb2xsZXIgaW5mb3Jt
YXRpb24KPiAoZm9yIGxpbWl0cykgYW5kIGluIHRoZSBzbWFydCBsb2cuIEN1cnJlbnRseSwgdGhl
IG9ubHkgbWVhbnMgdG8gcmV0cmlldmUKPiB0aGlzIGluZm9ybWF0aW9uIGlzIHRoZSBudm1lIGNv
bW1hbmQgbGluZSBpbnRlcmZhY2UsIHdoaWNoIHJlcXVpcmVzCj4gc3VwZXItdXNlciBwcml2aWxl
Z2VzLgo+Cj4gQXQgdGhlIHNhbWUgdGltZSwgaXQgd291bGQgYmUgZGVzaXJhYmxlIHRvIHVzZSBO
Vk1FIHRlbXBlcmF0dXJlIGluZm9ybWF0aW9uCj4gZm9yIHRoZXJtYWwgY29udHJvbC4KPgo+IFRo
aXMgcGF0Y2ggYWRkcyBzdXBwb3J0IHRvIHJlYWQgTlZNRSB0ZW1wZXJhdHVyZXMgZnJvbSB0aGUg
a2VybmVsIHVzaW5nIHRoZQo+IGh3bW9uIEFQSSBhbmQgYWRkcyB0ZW1wZXJhdHVyZSB6b25lcyBm
b3IgTlZNRSBkcml2ZXMuIFRoZSB0aGVybWFsIHN1YnN5c3RlbQo+IGNhbiB1c2UgdGhpcyBpbmZv
cm1hdGlvbiB0byBzZXQgdGhlcm1hbCBwb2xpY2llcywgYW5kIHVzZXJzcGFjZSBjYW4gYWNjZXNz
Cj4gaXQgdXNpbmcgbGlic2Vuc29ycyBhbmQvb3IgdGhlICJzZW5zb3JzIiBjb21tYW5kLgo+Cj4g
RXhhbXBsZSBvdXRwdXQgZnJvbSB0aGUgInNlbnNvcnMiIGNvbW1hbmQ6Cj4KPiBudm1lMC1wY2kt
MDEwMAo+IEFkYXB0ZXI6IFBDSSBhZGFwdGVyCj4gQ29tcG9zaXRlOiAgICArMzkuMMKwQyAgKGhp
Z2ggPSArODUuMMKwQywgY3JpdCA9ICs4NS4wwrBDKQo+IFNlbnNvciAxOiAgICAgKzM5LjDCsEMK
PiBTZW5zb3IgMjogICAgICs0MS4wwrBDCj4KPiBTaWduZWQtb2ZmLWJ5OiBHdWVudGVyIFJvZWNr
IDxsaW51eEByb2Vjay11cy5uZXQ+Cj4gLS0tCj4gdjI6IFVzZSBkZXZtX2tmcmVlKCkgdG8gcmVs
ZWFzZSBtZW1vcnkgaW4gZXJyb3IgcGF0aAo+Cj4gIGRyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcg
ICAgICB8ICAxMCArKwo+ICBkcml2ZXJzL252bWUvaG9zdC9NYWtlZmlsZSAgICAgfCAgIDEgKwo+
ICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICAgICAgfCAgIDUgKwo+ICBkcml2ZXJzL252bWUv
aG9zdC9udm1lLWh3bW9uLmMgfCAxNjMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4gIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCAgICAgICB8ICAgOCArKwo+ICA1IGZpbGVzIGNo
YW5nZWQsIDE4NyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL252
bWUvaG9zdC9udm1lLWh3bW9uLmMKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9L
Y29uZmlnIGIvZHJpdmVycy9udm1lL2hvc3QvS2NvbmZpZwo+IGluZGV4IDJiMzZmMDUyYmZiOS4u
YWViNDllMTZlMzg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcKPiAr
KysgYi9kcml2ZXJzL252bWUvaG9zdC9LY29uZmlnCj4gQEAgLTIzLDYgKzIzLDE2IEBAIGNvbmZp
ZyBOVk1FX01VTFRJUEFUSAo+ICAgICAgICAgICAgL2Rldi9udm1lWG5ZIGRldmljZSB3aWxsIHNo
b3cgdXAgZm9yIGVhY2ggTlZNZSBuYW1lc3BhY2VzLAo+ICAgICAgICAgICAgZXZlbiBpZiBpdCBp
cyBhY2Nlc3NpYmxlIHRocm91Z2ggbXVsdGlwbGUgY29udHJvbGxlcnMuCj4KPiArY29uZmlnIE5W
TUVfSFdNT04KPiArICAgICAgIGJvb2wgIk5WTUUgaGFyZHdhcmUgbW9uaXRvcmluZyIKPiArICAg
ICAgIGRlcGVuZHMgb24gKE5WTUVfQ09SRT15ICYmIEhXTU9OPXkpIHx8IChOVk1FX0NPUkU9bSAm
JiBIV01PTikKPiArICAgICAgIGhlbHAKPiArICAgICAgICAgVGhpcyBwcm92aWRlcyBzdXBwb3J0
IGZvciBOVk1FIGhhcmR3YXJlIG1vbml0b3JpbmcuIElmIGVuYWJsZWQsCj4gKyAgICAgICAgIGEg
aGFyZHdhcmUgbW9uaXRvcmluZyBkZXZpY2Ugd2lsbCBiZSBjcmVhdGVkIGZvciBlYWNoIE5WTUUg
ZHJpdmUKPiArICAgICAgICAgaW4gdGhlIHN5c3RlbS4KPiArCj4gKyAgICAgICAgIElmIHVuc3Vy
ZSwgc2F5IE4uCj4gKwo+ICBjb25maWcgTlZNRV9GQUJSSUNTCj4gICAgICAgICB0cmlzdGF0ZQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlIGIvZHJpdmVycy9udm1l
L2hvc3QvTWFrZWZpbGUKPiBpbmRleCA4YTRiNjcxYzVmMGMuLjAzZGU0Nzk3YTg3NyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvbnZtZS9o
b3N0L01ha2VmaWxlCj4gQEAgLTE0LDYgKzE0LDcgQEAgbnZtZS1jb3JlLSQoQ09ORklHX1RSQUNJ
TkcpICAgICAgICAgICArPSB0cmFjZS5vCj4gIG52bWUtY29yZS0kKENPTkZJR19OVk1FX01VTFRJ
UEFUSCkgICAgICs9IG11bHRpcGF0aC5vCj4gIG52bWUtY29yZS0kKENPTkZJR19OVk0pICAgICAg
ICAgICAgICAgICAgICAgICAgKz0gbGlnaHRudm0ubwo+ICBudm1lLWNvcmUtJChDT05GSUdfRkFV
TFRfSU5KRUNUSU9OX0RFQlVHX0ZTKSAgICs9IGZhdWx0X2luamVjdC5vCj4gK252bWUtY29yZS0k
KENPTkZJR19OVk1FX0hXTU9OKSAgICAgICAgICs9IG52bWUtaHdtb24ubwo+Cj4gIG52bWUteSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICs9IHBjaS5vCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5k
ZXggZmE3YmEwOWRjYTc3Li5mYzFkNGIxNDY3MTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1l
L2hvc3QvY29yZS5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gQEAgLTI3OTYs
NiArMjc5Niw5IEBAIGludCBudm1lX2luaXRfaWRlbnRpZnkoc3RydWN0IG52bWVfY3RybCAqY3Ry
bCkKPiAgICAgICAgIGN0cmwtPm9uY3MgPSBsZTE2X3RvX2NwdShpZC0+b25jcyk7Cj4gICAgICAg
ICBjdHJsLT5tdGZhID0gbGUxNl90b19jcHUoaWQtPm10ZmEpOwo+ICAgICAgICAgY3RybC0+b2Fl
cyA9IGxlMzJfdG9fY3B1KGlkLT5vYWVzKTsKPiArICAgICAgIGN0cmwtPndjdGVtcCA9IGxlMTZf
dG9fY3B1KGlkLT53Y3RlbXApOwo+ICsgICAgICAgY3RybC0+Y2N0ZW1wID0gbGUxNl90b19jcHUo
aWQtPmNjdGVtcCk7Cj4gKwo+ICAgICAgICAgYXRvbWljX3NldCgmY3RybC0+YWJvcnRfbGltaXQs
IGlkLT5hY2wgKyAxKTsKPiAgICAgICAgIGN0cmwtPnZ3YyA9IGlkLT52d2M7Cj4gICAgICAgICBp
ZiAoaWQtPm1kdHMpCj4gQEAgLTI4OTcsNiArMjkwMCw4IEBAIGludCBudm1lX2luaXRfaWRlbnRp
Znkoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPgo+ICAgICAgICAgY3RybC0+aWRlbnRpZmllZCA9
IHRydWU7Cj4KPiArICAgICAgIG52bWVfaHdtb25faW5pdChjdHJsKTsKPiArCj4gICAgICAgICBy
ZXR1cm4gMDsKPgo+ICBvdXRfZnJlZToKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3Qv
bnZtZS1od21vbi5jIGIvZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jCj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmFmNWVkYTMyNmVjNgo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9uLmMKPiBAQCAtMCwwICsx
LDE2MyBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKgo+ICsg
KiBOVk0gRXhwcmVzcyBoYXJkd2FyZSBtb25pdG9yaW5nIHN1cHBvcnQKPiArICogQ29weXJpZ2h0
IChjKSAyMDE5LCBHdWVudGVyIFJvZWNrCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2h3
bW9uLmg+Cj4gKwo+ICsjaW5jbHVkZSAibnZtZS5oIgo+ICsKPiArc3RydWN0IG52bWVfaHdtb25f
ZGF0YSB7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsOwo+ICsgICAgICAgc3RydWN0
IG52bWVfc21hcnRfbG9nIGxvZzsKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQgbnZtZV9od21vbl9n
ZXRfc21hcnRfbG9nKHN0cnVjdCBudm1lX2h3bW9uX2RhdGEgKmRhdGEpCj4gK3sKPiArICAgICAg
IHJldHVybiBudm1lX2dldF9sb2coZGF0YS0+Y3RybCwgTlZNRV9OU0lEX0FMTCwgTlZNRV9MT0df
U01BUlQsIDAsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICZkYXRhLT5sb2csIHNpemVv
ZihkYXRhLT5sb2cpLCAwKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBudm1lX2h3bW9uX3JlYWQo
c3RydWN0IGRldmljZSAqZGV2LCBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgIHUzMiBhdHRyLCBpbnQgY2hhbm5lbCwgbG9uZyAqdmFsKQo+
ICt7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9od21vbl9kYXRhICpkYXRhID0gZGV2X2dldF9kcnZk
YXRhKGRldik7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgKmxvZyA9ICZkYXRhLT5s
b2c7Cj4gKyAgICAgICBpbnQgZXJyOwo+ICsgICAgICAgaW50IHRlbXA7Cj4gKwo+ICsgICAgICAg
ZXJyID0gbnZtZV9od21vbl9nZXRfc21hcnRfbG9nKGRhdGEpOwo+ICsgICAgICAgaWYgKGVycikK
PiArICAgICAgICAgICAgICAgcmV0dXJuIGVyciA8IDAgPyBlcnIgOiAtRVBST1RPOwo+ICsKPiAr
ICAgICAgIHN3aXRjaCAoYXR0cikgewo+ICsgICAgICAgY2FzZSBod21vbl90ZW1wX21heDoKPiAr
ICAgICAgICAgICAgICAgKnZhbCA9IChkYXRhLT5jdHJsLT53Y3RlbXAgLSAyNzMpICogMTAwMDsK
PiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBfY3JpdDoK
PiArICAgICAgICAgICAgICAgKnZhbCA9IChkYXRhLT5jdHJsLT5jY3RlbXAgLSAyNzMpICogMTAw
MDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBfaW5w
dXQ6Cj4gKyAgICAgICAgICAgICAgIGlmICghY2hhbm5lbCkKPiArICAgICAgICAgICAgICAgICAg
ICAgICB0ZW1wID0gbGUxNl90b19jcHVwKChfX2xlMTYgKilsb2ctPnRlbXBlcmF0dXJlKTsKPiAr
ICAgICAgICAgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHRlbXAgPSBsZTE2
X3RvX2NwdShsb2ctPnRlbXBfc2Vuc29yW2NoYW5uZWwgLSAxXSk7Cj4gKyAgICAgICAgICAgICAg
ICp2YWwgPSAodGVtcCAtIDI3MykgKiAxMDAwOwo+ICsgICAgICAgICAgICAgICBicmVhazsKPiAr
ICAgICAgIGNhc2UgaHdtb25fdGVtcF9jcml0X2FsYXJtOgo+ICsgICAgICAgICAgICAgICAqdmFs
ID0gISEobG9nLT5jcml0aWNhbF93YXJuaW5nICYgTlZNRV9TTUFSVF9DUklUX1RFTVBFUkFUVVJF
KTsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBkZWZhdWx0Ogo+ICsgICAgICAg
ICAgICAgICBlcnIgPSAtRU9QTk9UU1VQUDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAg
ICAgICB9Cj4gKyAgICAgICByZXR1cm4gZXJyOwo+ICt9Cj4gKwo+ICtzdGF0aWMgY29uc3QgY2hh
ciAqIGNvbnN0IG52bWVfaHdtb25fc2Vuc29yX25hbWVzW10gPSB7Cj4gKyAgICAgICAiQ29tcG9z
aXRlIiwKPiArICAgICAgICJTZW5zb3IgMSIsCj4gKyAgICAgICAiU2Vuc29yIDIiLAo+ICsgICAg
ICAgIlNlbnNvciAzIiwKPiArICAgICAgICJTZW5zb3IgNCIsCj4gKyAgICAgICAiU2Vuc29yIDUi
LAo+ICsgICAgICAgIlNlbnNvciA2IiwKPiArICAgICAgICJTZW5zb3IgNyIsCj4gKyAgICAgICAi
U2Vuc29yIDgiLAo+ICt9Owo+ICsKPiArc3RhdGljIGludCBudm1lX2h3bW9uX3JlYWRfc3RyaW5n
KHN0cnVjdCBkZXZpY2UgKmRldiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ZW51bSBod21vbl9zZW5zb3JfdHlwZXMgdHlwZSwgdTMyIGF0dHIsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGludCBjaGFubmVsLCBjb25zdCBjaGFyICoqc3RyKQo+ICt7Cj4g
KyAgICAgICAqc3RyID0gbnZtZV9od21vbl9zZW5zb3JfbmFtZXNbY2hhbm5lbF07Cj4gKyAgICAg
ICByZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGljIHVtb2RlX3QgbnZtZV9od21vbl9pc192aXNp
YmxlKGNvbnN0IHZvaWQgKl9kYXRhLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBlLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1MzIgYXR0ciwgaW50IGNoYW5uZWwpCj4gK3sKPiArICAgICAgIGNv
bnN0IHN0cnVjdCBudm1lX2h3bW9uX2RhdGEgKmRhdGEgPSBfZGF0YTsKPiArCj4gKyAgICAgICBz
d2l0Y2ggKGF0dHIpIHsKPiArICAgICAgIGNhc2UgaHdtb25fdGVtcF9jcml0Ogo+ICsgICAgICAg
ICAgICAgICBpZiAoIWNoYW5uZWwgJiYgZGF0YS0+Y3RybC0+Y2N0ZW1wKQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiAwNDQ0Owo+ICsgICAgICAgICAgICAgICBicmVhazsKPiArICAg
ICAgIGNhc2UgaHdtb25fdGVtcF9tYXg6Cj4gKyAgICAgICAgICAgICAgIGlmICghY2hhbm5lbCAm
JiBkYXRhLT5jdHJsLT53Y3RlbXApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIDA0
NDQ7Cj4gKyAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgY2FzZSBod21vbl90ZW1wX2Ny
aXRfYWxhcm06Cj4gKyAgICAgICAgICAgICAgIGlmICghY2hhbm5lbCkKPiArICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm4gMDQ0NDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAg
ICBjYXNlIGh3bW9uX3RlbXBfaW5wdXQ6Cj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBfbGFiZWw6
Cj4gKyAgICAgICAgICAgICAgIGlmICghY2hhbm5lbCB8fCBkYXRhLT5sb2cudGVtcF9zZW5zb3Jb
Y2hhbm5lbCAtIDFdKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwNDQ0Owo+ICsg
ICAgICAgICAgICAgICBicmVhazsKPiArICAgICAgIGRlZmF1bHQ6Cj4gKyAgICAgICAgICAgICAg
IGJyZWFrOwo+ICsgICAgICAgfQo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRp
YyBjb25zdCBzdHJ1Y3QgaHdtb25fY2hhbm5lbF9pbmZvICpudm1lX2h3bW9uX2luZm9bXSA9IHsK
PiArICAgICAgIEhXTU9OX0NIQU5ORUxfSU5GTyhjaGlwLCBIV01PTl9DX1JFR0lTVEVSX1RaKSwK
PiArICAgICAgIEhXTU9OX0NIQU5ORUxfSU5GTyh0ZW1wLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgIEhXTU9OX1RfSU5QVVQgfCBIV01PTl9UX01BWCB8IEhXTU9OX1RfQ1JJVCB8Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBIV01PTl9UX0xBQkVMIHwgSFdNT05fVF9DUklU
X0FMQVJNLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9OX1RfSU5QVVQgfCBIV01P
Tl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9OX1RfSU5QVVQgfCBI
V01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9OX1RfSU5QVVQg
fCBIV01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9OX1RfSU5Q
VVQgfCBIV01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9OX1Rf
SU5QVVQgfCBIV01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhXTU9O
X1RfSU5QVVQgfCBIV01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIEhX
TU9OX1RfSU5QVVQgfCBIV01PTl9UX0xBQkVMLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
IEhXTU9OX1RfSU5QVVQgfCBIV01PTl9UX0xBQkVMKSwKPiArICAgICAgIE5VTEwKPiArfTsKPiAr
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaHdtb25fb3BzIG52bWVfaHdtb25fb3BzID0gewo+ICsg
ICAgICAgLmlzX3Zpc2libGUgPSBudm1lX2h3bW9uX2lzX3Zpc2libGUsCj4gKyAgICAgICAucmVh
ZCA9IG52bWVfaHdtb25fcmVhZCwKPiArICAgICAgIC5yZWFkX3N0cmluZyA9IG52bWVfaHdtb25f
cmVhZF9zdHJpbmcsCj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGh3bW9uX2NoaXBf
aW5mbyBudm1lX2h3bW9uX2NoaXBfaW5mbyA9IHsKPiArICAgICAgIC5vcHMgPSAmbnZtZV9od21v
bl9vcHMsCj4gKyAgICAgICAuaW5mbyA9IG52bWVfaHdtb25faW5mbywKPiArfTsKPiArCj4gK3Zv
aWQgbnZtZV9od21vbl9pbml0KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4gK3sKPiArICAgICAg
IHN0cnVjdCBkZXZpY2UgKmRldiA9IGN0cmwtPmRldmljZTsKPiArICAgICAgIHN0cnVjdCBudm1l
X2h3bW9uX2RhdGEgKmRhdGE7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpod21vbjsKPiArICAg
ICAgIGludCBlcnI7Cj4gKwo+ICsgICAgICAgZGF0YSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVv
ZigqZGF0YSksIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYgKCFkYXRhKQo+ICsgICAgICAgICAg
ICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgZGF0YS0+Y3RybCA9IGN0cmw7Cj4gKwo+ICsgICAg
ICAgZXJyID0gbnZtZV9od21vbl9nZXRfc21hcnRfbG9nKGRhdGEpOwo+ICsgICAgICAgaWYgKGVy
cikgewo+ICsgICAgICAgICAgICAgICBkZXZfd2FybihkZXYsICJGYWlsZWQgdG8gcmVhZCBzbWFy
dCBsb2cgKGVycm9yICVkKVxuIiwgZXJyKTsKPiArICAgICAgICAgICAgICAgZGV2bV9rZnJlZShk
ZXYsIGRhdGEpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICsg
ICAgICAgaHdtb24gPSBkZXZtX2h3bW9uX2RldmljZV9yZWdpc3Rlcl93aXRoX2luZm8oZGV2LCBk
ZXZfbmFtZShkZXYpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZGF0YSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICZudm1lX2h3bW9uX2NoaXBfaW5mbywKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5VTEwpOwo+ICsgICAgICAgaWYg
KElTX0VSUihod21vbikpIHsKPiArICAgICAgICAgICAgICAgZGV2X3dhcm4oZGV2LCAiRmFpbGVk
IHRvIGluc3RhbnRpYXRlIGh3bW9uIGRldmljZVxuIik7Cj4gKyAgICAgICAgICAgICAgIGRldm1f
a2ZyZWUoZGV2LCBkYXRhKTsKPiArICAgICAgIH0KPiArfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWUvaG9zdC9udm1lLmggYi9kcml2ZXJzL252bWUvaG9zdC9udm1lLmgKPiBpbmRleCAyMmU4
NDAxMzUyYzIuLmU2NDYwYzEyMTZiYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9u
dm1lLmgKPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9udm1lLmgKPiBAQCAtMjMxLDYgKzIzMSw4
IEBAIHN0cnVjdCBudm1lX2N0cmwgewo+ICAgICAgICAgdTE2IGthczsKPiAgICAgICAgIHU4IG5w
c3M7Cj4gICAgICAgICB1OCBhcHN0YTsKPiArICAgICAgIHUxNiB3Y3RlbXA7Cj4gKyAgICAgICB1
MTYgY2N0ZW1wOwo+ICAgICAgICAgdTMyIG9hZXM7Cj4gICAgICAgICB1MzIgYWVuX3Jlc3VsdDsK
PiAgICAgICAgIHUzMiBjdHJhdHQ7Cj4gQEAgLTY1Miw0ICs2NTQsMTAgQEAgc3RhdGljIGlubGlu
ZSBzdHJ1Y3QgbnZtZV9ucyAqbnZtZV9nZXRfbnNfZnJvbV9kZXYoc3RydWN0IGRldmljZSAqZGV2
KQo+ICAgICAgICAgcmV0dXJuIGRldl90b19kaXNrKGRldiktPnByaXZhdGVfZGF0YTsKPiAgfQo+
Cj4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19OVk1FX0hXTU9OKQo+ICt2b2lkIG52bWVfaHdtb25f
aW5pdChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKTsKPiArI2Vsc2UKPiArc3RhdGljIGlubGluZSB2
b2lkIG52bWVfaHdtb25faW5pdChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKSB7IH0KPiArI2VuZGlm
Cj4gKwo+ICAjZW5kaWYgLyogX05WTUVfSCAqLwo+IC0tCj4gMi4xNy4xCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
