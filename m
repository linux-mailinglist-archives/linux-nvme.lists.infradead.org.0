Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F32DCE9AA2
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 12:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwjMy5QOxqluC3msUsX0+blVNc8eVuw/11iysngOVWU=; b=ck5S3/bGX8y6Ip
	/cqoBQpVCsC05oESQ9vTk+G3L+w4FuYvSrbB/y5xxKnkc1sTsg0TIz9zPo2DyXO58Gx8mUIXz0xXO
	p0zFrTNRYKyiP3p7vPbJLDfYlXw9CudomwZIS88rfYGEmSzDtgH5kuAAnemj+Y+uRKpchC8/OCn9w
	ka2DJshT+j3dmNgJIXLfzTwJ3IoLvfb7xiyAEUiVciLZyyhl9uukYLcnMh5ozx1100498IlxgQIJp
	k3pvC2W/Eh2qBKWqUVFwBLtuRGi0Itoy4FYHYH1Aq7BHQScUubBMqob185kYOr3QWkeIB/7iuOL/O
	zM+Og7RbhB/j0ZSObKpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlyM-0005HB-UQ; Wed, 30 Oct 2019 11:17:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlyG-0005Fu-Ev
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 11:17:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so838709pll.11
 for <linux-nvme@lists.infradead.org>; Wed, 30 Oct 2019 04:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0M10ohuWo+ZvYS5iML77SXzkc6HJmcmNLrKxyOaOKHo=;
 b=ldvbF7s9tpvO+LPxcA8+Ez0lsFl6FMzLaLfis/OHarEAKOpXuiJEgRPxyN81XClAf4
 9+gnDjnCeDosks+lU2vYG7KGaYvbokBjsLu7yEfUyxj93jDAuhNWfzDeg80RjOE+a2Zz
 Pl+LZADf8k4qEcMgvccoQ0lurYKWfd9mYZpjsZDQHCZxKcv2XGn6jWTJs1M746MVrFj8
 pa4MtWwTrxb12XxPax5O2zuV4OfF4Ix3n3L1tkscIgAT30nZwP6uKOUK49+1lmNCmbMQ
 BpaZE+wD1iVG7I058gzttqVUyLIZV0oEN5SKDqpq3pIhtpCpN4NtaWMqjTMUWSEIrCuB
 96HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0M10ohuWo+ZvYS5iML77SXzkc6HJmcmNLrKxyOaOKHo=;
 b=QGYK4NvBg5XIBSTMbkrByvg+rSJjwBUnTf9ir5QRduTacWcKFyn+hNc+SU04BoYCWb
 9v3m9G2XaHF0a54BUOn++h0m4bt0GstcnEa5woLdn9GThcPRe1zPB3+ORmeMrUEx80Nl
 L+Si4qfD/s+n5lcVEvioNMDqsr51lNbOYenzA77x08UTYJlf5nG+4LKbVn6KJxndE2PG
 A5joSAFX2K0rjxf9N5wvcfr8667WYJrQlNLxrBqOTNg1vVmE0tQMQoGuB8F6yxLyV/34
 lUue6A2Gy6bgGgxtRhGgVJCZn2ArP4tigl0/DrxIqjEXRLMzdJ6w+UsWnDOi4sUh0sdd
 /Qcw==
X-Gm-Message-State: APjAAAVlsXeiBwYY1IgS2rd9ig5fSvxCsOVcYw6ry0RBcULeLBDVpJra
 c/I95gHouniL88UMxlJFH5sOhjCykRG37Uoq2uU=
X-Google-Smtp-Source: APXvYqxPP7K1TcX0QpfF/pVkhpbeDr+WqtqFWkW7FZiGMwTTqXV2+kvhaQUMPk5OfGl9cILNiSXcfkkl3Oi0S3lGCxc=
X-Received: by 2002:a17:902:6b8a:: with SMTP id
 p10mr4037783plk.192.1572434219222; 
 Wed, 30 Oct 2019 04:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191029223214.18889-1-linux@roeck-us.net>
In-Reply-To: <20191029223214.18889-1-linux@roeck-us.net>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 30 Oct 2019 20:16:48 +0900
Message-ID: <CAC5umyhc=6yULiLwXu65VDvDk2cBiF0R9O39B-T5ftapJfj0rQ@mail.gmail.com>
Subject: Re: [PATCH v2] nvme: Add hardware monitoring support
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_041700_543594_EDD79CBC 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEw5pyIMzDml6Uo5rC0KSA3OjMyIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVz
Lm5ldD46Cj4KPiBudm1lIGRldmljZXMgcmVwb3J0IHRlbXBlcmF0dXJlIGluZm9ybWF0aW9uIGlu
IHRoZSBjb250cm9sbGVyIGluZm9ybWF0aW9uCj4gKGZvciBsaW1pdHMpIGFuZCBpbiB0aGUgc21h
cnQgbG9nLiBDdXJyZW50bHksIHRoZSBvbmx5IG1lYW5zIHRvIHJldHJpZXZlCj4gdGhpcyBpbmZv
cm1hdGlvbiBpcyB0aGUgbnZtZSBjb21tYW5kIGxpbmUgaW50ZXJmYWNlLCB3aGljaCByZXF1aXJl
cwo+IHN1cGVyLXVzZXIgcHJpdmlsZWdlcy4KPgo+IEF0IHRoZSBzYW1lIHRpbWUsIGl0IHdvdWxk
IGJlIGRlc2lyYWJsZSB0byB1c2UgTlZNRSB0ZW1wZXJhdHVyZSBpbmZvcm1hdGlvbgo+IGZvciB0
aGVybWFsIGNvbnRyb2wuCj4KPiBUaGlzIHBhdGNoIGFkZHMgc3VwcG9ydCB0byByZWFkIE5WTUUg
dGVtcGVyYXR1cmVzIGZyb20gdGhlIGtlcm5lbCB1c2luZyB0aGUKPiBod21vbiBBUEkgYW5kIGFk
ZHMgdGVtcGVyYXR1cmUgem9uZXMgZm9yIE5WTUUgZHJpdmVzLiBUaGUgdGhlcm1hbCBzdWJzeXN0
ZW0KPiBjYW4gdXNlIHRoaXMgaW5mb3JtYXRpb24gdG8gc2V0IHRoZXJtYWwgcG9saWNpZXMsIGFu
ZCB1c2Vyc3BhY2UgY2FuIGFjY2Vzcwo+IGl0IHVzaW5nIGxpYnNlbnNvcnMgYW5kL29yIHRoZSAi
c2Vuc29ycyIgY29tbWFuZC4KPgo+IEV4YW1wbGUgb3V0cHV0IGZyb20gdGhlICJzZW5zb3JzIiBj
b21tYW5kOgo+Cj4gbnZtZTAtcGNpLTAxMDAKPiBBZGFwdGVyOiBQQ0kgYWRhcHRlcgo+IENvbXBv
c2l0ZTogICAgKzM5LjDCsEMgIChoaWdoID0gKzg1LjDCsEMsIGNyaXQgPSArODUuMMKwQykKPiBT
ZW5zb3IgMTogICAgICszOS4wwrBDCj4gU2Vuc29yIDI6ICAgICArNDEuMMKwQwo+Cj4gU2lnbmVk
LW9mZi1ieTogR3VlbnRlciBSb2VjayA8bGludXhAcm9lY2stdXMubmV0Pgo+IC0tLQo+IHYyOiBV
c2UgZGV2bV9rZnJlZSgpIHRvIHJlbGVhc2UgbWVtb3J5IGluIGVycm9yIHBhdGgKPgo+ICBkcml2
ZXJzL252bWUvaG9zdC9LY29uZmlnICAgICAgfCAgMTAgKysKPiAgZHJpdmVycy9udm1lL2hvc3Qv
TWFrZWZpbGUgICAgIHwgICAxICsKPiAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jICAgICAgIHwg
ICA1ICsKPiAgZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jIHwgMTYzICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggICAgICAg
fCAgIDggKysKPiAgNSBmaWxlcyBjaGFuZ2VkLCAxODcgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9udm1lL2hvc3QvbnZtZS1od21vbi5jCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9udm1lL2hvc3QvS2NvbmZpZyBiL2RyaXZlcnMvbnZtZS9ob3N0L0tjb25maWcK
PiBpbmRleCAyYjM2ZjA1MmJmYjkuLmFlYjQ5ZTE2ZTM4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvS2NvbmZpZwo+IEBA
IC0yMyw2ICsyMywxNiBAQCBjb25maWcgTlZNRV9NVUxUSVBBVEgKPiAgICAgICAgICAgIC9kZXYv
bnZtZVhuWSBkZXZpY2Ugd2lsbCBzaG93IHVwIGZvciBlYWNoIE5WTWUgbmFtZXNwYWNlcywKPiAg
ICAgICAgICAgIGV2ZW4gaWYgaXQgaXMgYWNjZXNzaWJsZSB0aHJvdWdoIG11bHRpcGxlIGNvbnRy
b2xsZXJzLgo+Cj4gK2NvbmZpZyBOVk1FX0hXTU9OCj4gKyAgICAgICBib29sICJOVk1FIGhhcmR3
YXJlIG1vbml0b3JpbmciCj4gKyAgICAgICBkZXBlbmRzIG9uIChOVk1FX0NPUkU9eSAmJiBIV01P
Tj15KSB8fCAoTlZNRV9DT1JFPW0gJiYgSFdNT04pCj4gKyAgICAgICBoZWxwCj4gKyAgICAgICAg
IFRoaXMgcHJvdmlkZXMgc3VwcG9ydCBmb3IgTlZNRSBoYXJkd2FyZSBtb25pdG9yaW5nLiBJZiBl
bmFibGVkLAo+ICsgICAgICAgICBhIGhhcmR3YXJlIG1vbml0b3JpbmcgZGV2aWNlIHdpbGwgYmUg
Y3JlYXRlZCBmb3IgZWFjaCBOVk1FIGRyaXZlCj4gKyAgICAgICAgIGluIHRoZSBzeXN0ZW0uCj4g
Kwo+ICsgICAgICAgICBJZiB1bnN1cmUsIHNheSBOLgo+ICsKPiAgY29uZmlnIE5WTUVfRkFCUklD
Uwo+ICAgICAgICAgdHJpc3RhdGUKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9N
YWtlZmlsZSBiL2RyaXZlcnMvbnZtZS9ob3N0L01ha2VmaWxlCj4gaW5kZXggOGE0YjY3MWM1ZjBj
Li4wM2RlNDc5N2E4NzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvTWFrZWZpbGUK
PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9NYWtlZmlsZQo+IEBAIC0xNCw2ICsxNCw3IEBAIG52
bWUtY29yZS0kKENPTkZJR19UUkFDSU5HKSAgICAgICAgICAgKz0gdHJhY2Uubwo+ICBudm1lLWNv
cmUtJChDT05GSUdfTlZNRV9NVUxUSVBBVEgpICAgICArPSBtdWx0aXBhdGgubwo+ICBudm1lLWNv
cmUtJChDT05GSUdfTlZNKSAgICAgICAgICAgICAgICAgICAgICAgICs9IGxpZ2h0bnZtLm8KPiAg
bnZtZS1jb3JlLSQoQ09ORklHX0ZBVUxUX0lOSkVDVElPTl9ERUJVR19GUykgICArPSBmYXVsdF9p
bmplY3Qubwo+ICtudm1lLWNvcmUtJChDT05GSUdfTlZNRV9IV01PTikgICAgICAgICArPSBudm1l
LWh3bW9uLm8KPgo+ICBudm1lLXkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArPSBw
Y2kubwo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBiL2RyaXZlcnMv
bnZtZS9ob3N0L2NvcmUuYwo+IGluZGV4IGZhN2JhMDlkY2E3Ny4uZmMxZDRiMTQ2NzE3IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbnZtZS9o
b3N0L2NvcmUuYwo+IEBAIC0yNzk2LDYgKzI3OTYsOSBAQCBpbnQgbnZtZV9pbml0X2lkZW50aWZ5
KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4gICAgICAgICBjdHJsLT5vbmNzID0gbGUxNl90b19j
cHUoaWQtPm9uY3MpOwo+ICAgICAgICAgY3RybC0+bXRmYSA9IGxlMTZfdG9fY3B1KGlkLT5tdGZh
KTsKPiAgICAgICAgIGN0cmwtPm9hZXMgPSBsZTMyX3RvX2NwdShpZC0+b2Flcyk7Cj4gKyAgICAg
ICBjdHJsLT53Y3RlbXAgPSBsZTE2X3RvX2NwdShpZC0+d2N0ZW1wKTsKPiArICAgICAgIGN0cmwt
PmNjdGVtcCA9IGxlMTZfdG9fY3B1KGlkLT5jY3RlbXApOwo+ICsKPiAgICAgICAgIGF0b21pY19z
ZXQoJmN0cmwtPmFib3J0X2xpbWl0LCBpZC0+YWNsICsgMSk7Cj4gICAgICAgICBjdHJsLT52d2Mg
PSBpZC0+dndjOwo+ICAgICAgICAgaWYgKGlkLT5tZHRzKQo+IEBAIC0yODk3LDYgKzI5MDAsOCBA
QCBpbnQgbnZtZV9pbml0X2lkZW50aWZ5KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4KPiAgICAg
ICAgIGN0cmwtPmlkZW50aWZpZWQgPSB0cnVlOwo+Cj4gKyAgICAgICBudm1lX2h3bW9uX2luaXQo
Y3RybCk7Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4KPiAgb3V0X2ZyZWU6CgpUaGUgbnZtZV9p
bml0X2lkZW50aWZ5KCkgY2FuIGJlIGNhbGxlZCBtdWx0aXBsZSB0aW1lIGluIG52bWUgY3RybCdz
CmxpZmV0aW1lIChlLmcgJ252bWUgcmVzZXQgL2Rldi9udm1lKicgb3Igc3VzcGVuZC9yZXN1bWUg
cGF0aHMpLCBzbwpzaG91bGQgd2UgbmVlZCB0byBwcmV2ZW50IG52bWVfaHdtb25faW5pdCgpIGZy
b20gcmVnaXN0ZXJpbmcgaHdtb24KZGV2aWNlIG1vcmUgdGhhbiB0d2ljZT8KCkluIHRoZSBudm1l
IHRoZXJtYWwgem9uZSBwYXRjaHNldFsxXSwgdGhlcm5hbCB6b25lIGlzIHJlZ2lzdGVyZWQgaW4K
bnZtZV9pbml0X2lkZW50aWZ5IGFuZCB1bnJlZ2lzdGVyZWQgaW4gbnZtZV9zdG9wX2N0cmwoKS4K
ClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzE1NjE5OTAzNTQt
NDA4NC0yLWdpdC1zZW5kLWVtYWlsLWFraW5vYnUubWl0YUBnbWFpbC5jb20vCgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL252bWUvaG9zdC9udm1lLWh3bW9uLmMgYi9kcml2ZXJzL252bWUvaG9zdC9u
dm1lLWh3bW9uLmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4u
YWY1ZWRhMzI2ZWM2Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L252
bWUtaHdtb24uYwo+IEBAIC0wLDAgKzEsMTYzIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wCj4gKy8qCj4gKyAqIE5WTSBFeHByZXNzIGhhcmR3YXJlIG1vbml0b3Jpbmcg
c3VwcG9ydAo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMTksIEd1ZW50ZXIgUm9lY2sKPiArICovCj4g
Kwo+ICsjaW5jbHVkZSA8bGludXgvaHdtb24uaD4KPiArCj4gKyNpbmNsdWRlICJudm1lLmgiCj4g
Kwo+ICtzdHJ1Y3QgbnZtZV9od21vbl9kYXRhIHsKPiArICAgICAgIHN0cnVjdCBudm1lX2N0cmwg
KmN0cmw7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgbG9nOwo+ICt9Owo+ICsKPiAr
c3RhdGljIGludCBudm1lX2h3bW9uX2dldF9zbWFydF9sb2coc3RydWN0IG52bWVfaHdtb25fZGF0
YSAqZGF0YSkKPiArewo+ICsgICAgICAgcmV0dXJuIG52bWVfZ2V0X2xvZyhkYXRhLT5jdHJsLCBO
Vk1FX05TSURfQUxMLCBOVk1FX0xPR19TTUFSVCwgMCwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJmRhdGEtPmxvZywgc2l6ZW9mKGRhdGEtPmxvZyksIDApOwo+ICt9CgpUaGUgJ2RhdGEt
PmxvZycgaXMgYWxsb2NhdGVkIHBlciBudm1lX2N0cmwsIHNvIGFyZSB0aGVyZSBhbnkgbG9ja3Mg
dG8KcHJldmVudCBtdWx0aXBsZSBjYWxsZXJzIG9mIG52bWVfaHdtb25fZ2V0X3NtYXJ0X2xvZygp
IGZyb20gYnJlYWtpbmcKdGhlIGxvZyBidWZmZXI/Cgo+ICsKPiArc3RhdGljIGludCBudm1lX2h3
bW9uX3JlYWQoc3RydWN0IGRldmljZSAqZGV2LCBlbnVtIGh3bW9uX3NlbnNvcl90eXBlcyB0eXBl
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBhdHRyLCBpbnQgY2hhbm5lbCwgbG9u
ZyAqdmFsKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9od21vbl9kYXRhICpkYXRhID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Cj4gKyAgICAgICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgKmxvZyA9
ICZkYXRhLT5sb2c7Cj4gKyAgICAgICBpbnQgZXJyOwo+ICsgICAgICAgaW50IHRlbXA7Cj4gKwo+
ICsgICAgICAgZXJyID0gbnZtZV9od21vbl9nZXRfc21hcnRfbG9nKGRhdGEpOwo+ICsgICAgICAg
aWYgKGVycikKPiArICAgICAgICAgICAgICAgcmV0dXJuIGVyciA8IDAgPyBlcnIgOiAtRVBST1RP
Owo+ICsKPiArICAgICAgIHN3aXRjaCAoYXR0cikgewo+ICsgICAgICAgY2FzZSBod21vbl90ZW1w
X21heDoKPiArICAgICAgICAgICAgICAgKnZhbCA9IChkYXRhLT5jdHJsLT53Y3RlbXAgLSAyNzMp
ICogMTAwMDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBjYXNlIGh3bW9uX3Rl
bXBfY3JpdDoKPiArICAgICAgICAgICAgICAgKnZhbCA9IChkYXRhLT5jdHJsLT5jY3RlbXAgLSAy
NzMpICogMTAwMDsKPiArICAgICAgICAgICAgICAgYnJlYWs7CgpXaGVuIHRoaXMgZnVuY3Rpb24g
aXMgY2FsbGVkIHdpdGggJ2h3bW9uX3RlbXBfbWF4JyBvciAnaHdtb25fdGVtcF9jcml0JywKd2Ug
ZG9uJ3QgbmVlZCB0byBjYWxsIG52bWVfaHdtb25fZ2V0X3NtYXJ0X2xvZygpIGF0IGFsbCwgZG8g
d2U/Cgo+ICsgICAgICAgY2FzZSBod21vbl90ZW1wX2lucHV0Ogo+ICsgICAgICAgICAgICAgICBp
ZiAoIWNoYW5uZWwpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgdGVtcCA9IGxlMTZfdG9fY3B1
cCgoX19sZTE2ICopbG9nLT50ZW1wZXJhdHVyZSk7Cj4gKyAgICAgICAgICAgICAgIGVsc2UKPiAr
ICAgICAgICAgICAgICAgICAgICAgICB0ZW1wID0gbGUxNl90b19jcHUobG9nLT50ZW1wX3NlbnNv
cltjaGFubmVsIC0gMV0pOwo+ICsgICAgICAgICAgICAgICAqdmFsID0gKHRlbXAgLSAyNzMpICog
MTAwMDsKPiArICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICBjYXNlIGh3bW9uX3RlbXBf
Y3JpdF9hbGFybToKPiArICAgICAgICAgICAgICAgKnZhbCA9ICEhKGxvZy0+Y3JpdGljYWxfd2Fy
bmluZyAmIE5WTUVfU01BUlRfQ1JJVF9URU1QRVJBVFVSRSk7Cj4gKyAgICAgICAgICAgICAgIGJy
ZWFrOwo+ICsgICAgICAgZGVmYXVsdDoKPiArICAgICAgICAgICAgICAgZXJyID0gLUVPUE5PVFNV
UFA7Cj4gKyAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgfQo+ICsgICAgICAgcmV0dXJu
IGVycjsKPiArfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
