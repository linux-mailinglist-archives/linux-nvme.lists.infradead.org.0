Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E34D1FAE41
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 12:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nf95aHGMzOpvR5JxuJHcraVWPXGfkI1ihYdQ2lUZWas=; b=Vh0ohoQjQBE50onwnw1nwUGP0
	NgSF55NdiDdmoOU69M2n5wMe17uOzytm7TGR08VIZDl0+Yq4sBJgHYWOJSDhdID58px+gJMyBW9nl
	Yi4oqYJADn52PX9FgJXAepCCVc8fFvniBAARkrwpQq+BFCAKknYpwcIKRwHFWMJ5cxvR8ZSG+hoV9
	KvwtlWQAi4HiPiGDNTiRQB5kooNAallt1+bliT19GwVD9GoIZjzxWLXRUod7mOCSKf/5r8tait/Nx
	LSHSyjTkNekRvgv8XAXmgDnTrDE/CYs4ybItfpNbuk5lNKSMDasgsi4XU1YiDCEscmp/E7IGucLbD
	MpifLxXqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl92P-0004S4-Q5; Tue, 16 Jun 2020 10:41:53 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl92J-0004RB-B9
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 10:41:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id j198so1971607wmj.0
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jun 2020 03:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=javigon-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SF/ANIReDmExh2KB/JoloiiqgAk1Ml2MCFZUVbUJvx0=;
 b=j3dPvMXftgCHHBFrjiDXYsicuW6L27aY+SBj8dHv0g8hyqFZxDcjPaIqZ/gqfkKCmV
 IHG+mPNqsgpqjZQMCaHUni46bwCTUx9w0a+5MdDIVM0oQgXBWOzKNoc8ewkPzU+nVKoh
 965NG90DCe0RLcoja5DlauGrVn35ef63GQXCfPP6k/kx27W7JEk86hmQFUgLrDHs9CkT
 7Ir6WQuq58MtywsgqpdXNom87O0z1+n+3NqlQw+Fe+sNXphFcN+XbWSJHSfQ+RG/AsI7
 plb/0i8BWLPyGmIH4vDmcs5bGEpj5vuFZJogOPsju3J4o10PXmVqrkUZIeVby4rWvOee
 bzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SF/ANIReDmExh2KB/JoloiiqgAk1Ml2MCFZUVbUJvx0=;
 b=dj66JHDJ8BV3Nq4Ic7EnsJMwsHw/nTyiKLTeBo8lF7BRo7QvZ/inb32jMtcNbNZy5A
 FZETeYQB1V7m8qp11uWGFgmgP3zD5bAhdaQWtae8vTPm9NIcardBa2Kn+gKP8Hdp649n
 5fvI5moT6VSOxvLyK6F/f1r/rnvpYTXr8+Pbw9cgZ1/3SMX+gytUwLsrK1M7FWYgCqZN
 AwpVrXxXJix5Ea9CX+nLBfnbmRS1gz/+5DkXA+/+s44k+PGUrO4Zjm9+Uo2HcvA5uffQ
 L9Ng5aqGx5C9SSg6N+/EssaytpoU/iEEtpldZt7hPniebs9cKBUBwc+EYs76ligmqFpd
 t8zA==
X-Gm-Message-State: AOAM532UBZy22XJUX3xTkwEaHcPpbZ9uoCTvO4WlEMISreMRvqiWdlbu
 Mk4l1+VXdOSmvvkHa0SW9IV3Cw==
X-Google-Smtp-Source: ABdhPJxMaDY3oWD4u/dBFqel1NVQRAql45KygAqVu8DKM17xJsZPBAmvejhO5VGvV7xciR9XR0Q/xg==
X-Received: by 2002:a7b:cb11:: with SMTP id u17mr2577976wmj.84.1592304105341; 
 Tue, 16 Jun 2020 03:41:45 -0700 (PDT)
Received: from localhost ([194.62.217.57])
 by smtp.gmail.com with ESMTPSA id s7sm28639790wrr.60.2020.06.16.03.41.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 03:41:44 -0700 (PDT)
Date: Tue, 16 Jun 2020 12:41:42 +0200
From: Javier =?utf-8?B?R29uesOhbGV6?= <javier@javigon.com>
To: Keith Busch <keith.busch@wdc.com>
Subject: Re: [PATCH 5/5] nvme: support for zoned namespaces
Message-ID: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
References: <20200615233424.13458-1-keith.busch@wdc.com>
 <20200615233424.13458-6-keith.busch@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615233424.13458-6-keith.busch@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_034147_394851_C8D4F2F7 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <niklas.cassel@wdc.com>,
 Damien Le Moal <damien.lemoal@wdc.com>, Ajay Joshi <ajay.joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Dmitry Fomichev <dmitry.fomichev@wdc.com>,
 Aravind Ramesh <aravind.ramesh@wdc.com>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Hans Holmberg <hans.holmberg@wdc.com>,
 Christoph Hellwig <hch@lst.de>,
 Matias =?utf-8?B?QmrDuHJsaW5n?= <matias.bjorling@wdc.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTYuMDYuMjAyMCAwODozNCwgS2VpdGggQnVzY2ggd3JvdGU6Cj5BZGQgc3VwcG9ydCBmb3Ig
TlZNIEV4cHJlc3MgWm9uZWQgTmFtZXNwYWNlcyAoWk5TKSBDb21tYW5kIFNldCBkZWZpbmVkCj5p
biBOVk0gRXhwcmVzcyBUUDQwNTMuIFpvbmVkIG5hbWVzcGFjZXMgYXJlIGRpc2NvdmVyZWQgYmFz
ZWQgb24gdGhlaXIKPkNvbW1hbmQgU2V0IElkZW50aWZpZXIgcmVwb3J0ZWQgaW4gdGhlIG5hbWVz
cGFjZXMgTmFtZXNwYWNlCj5JZGVudGlmaWNhdGlvbiBEZXNjcmlwdG9yIGxpc3QuIEEgc3VjY2Vz
c2Z1bGx5IGRpc2NvdmVyZWQgWm9uZWQKPk5hbWVzcGFjZSB3aWxsIGJlIHJlZ2lzdGVyZWQgd2l0
aCB0aGUgYmxvY2sgbGF5ZXIgYXMgYSBob3N0IG1hbmFnZWQKPnpvbmVkIGJsb2NrIGRldmljZSB3
aXRoIFpvbmUgQXBwZW5kIGNvbW1hbmQgc3VwcG9ydC4gQSBuYW1lc3BhY2UgdGhhdAo+ZG9lcyBu
b3Qgc3VwcG9ydCBhcHBlbmQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyLgoKV2h5IGFy
ZSB3ZSBlbmZvcmNpbmcgdGhlIGFwcGVuZCBjb21tYW5kPyBBcHBlbmQgaXMgb3B0aW9uYWwgb24g
dGhlCmN1cnJlbnQgWk5TIHNwZWNpZmljYXRpb24sIHNvIHdlIHNob3VsZCBub3QgbWFrZSB0aGlz
IG1hbmRhdG9yeSBpbiB0aGUKaW1wbGVtZW50YXRpb24uIFNlZSBzcGVjaWZpY3MgYmVsb3cuCgo+
Cj5TaWduZWQtb2ZmLWJ5OiBIYW5zIEhvbG1iZXJnIDxoYW5zLmhvbG1iZXJnQHdkYy5jb20+Cj5T
aWduZWQtb2ZmLWJ5OiBEbWl0cnkgRm9taWNoZXYgPGRtaXRyeS5mb21pY2hldkB3ZGMuY29tPgo+
U2lnbmVkLW9mZi1ieTogQWpheSBKb3NoaSA8YWpheS5qb3NoaUB3ZGMuY29tPgo+U2lnbmVkLW9m
Zi1ieTogQXJhdmluZCBSYW1lc2ggPGFyYXZpbmQucmFtZXNoQHdkYy5jb20+Cj5TaWduZWQtb2Zm
LWJ5OiBOaWtsYXMgQ2Fzc2VsIDxuaWtsYXMuY2Fzc2VsQHdkYy5jb20+Cj5TaWduZWQtb2ZmLWJ5
OiBNYXRpYXMgQmrDuHJsaW5nIDxtYXRpYXMuYmpvcmxpbmdAd2RjLmNvbT4KPlNpZ25lZC1vZmYt
Ynk6IERhbWllbiBMZSBNb2FsIDxkYW1pZW4ubGVtb2FsQHdkYy5jb20+Cj5TaWduZWQtb2ZmLWJ5
OiBLZWl0aCBCdXNjaCA8a2VpdGguYnVzY2hAd2RjLmNvbT4KPi0tLQo+IGRyaXZlcnMvbnZtZS9o
b3N0L01ha2VmaWxlIHwgICAxICsKPiBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMgICB8ICA5MSAr
KysrKysrKysrKystLQo+IGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCAgIHwgIDM5ICsrKysrKwo+
IGRyaXZlcnMvbnZtZS9ob3N0L3pucy5jICAgIHwgMjM4ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiBpbmNsdWRlL2xpbnV4L252bWUuaCAgICAgICB8IDExMSArKysrKysr
KysrKysrKysrKwo+IDUgZmlsZXMgY2hhbmdlZCwgNDY4IGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQo+IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL252bWUvaG9zdC96bnMuYwo+Cj5k
aWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvTWFrZWZpbGUgYi9kcml2ZXJzL252bWUvaG9z
dC9NYWtlZmlsZQo+aW5kZXggZmM3YjI2YmU2OTJkLi5kN2Y2YTg3Njg3YjggMTAwNjQ0Cj4tLS0g
YS9kcml2ZXJzL252bWUvaG9zdC9NYWtlZmlsZQo+KysrIGIvZHJpdmVycy9udm1lL2hvc3QvTWFr
ZWZpbGUKPkBAIC0xMyw2ICsxMyw3IEBAIG52bWUtY29yZS15CQkJCTo9IGNvcmUubwo+IG52bWUt
Y29yZS0kKENPTkZJR19UUkFDSU5HKQkJKz0gdHJhY2Uubwo+IG52bWUtY29yZS0kKENPTkZJR19O
Vk1FX01VTFRJUEFUSCkJKz0gbXVsdGlwYXRoLm8KPiBudm1lLWNvcmUtJChDT05GSUdfTlZNKQkJ
CSs9IGxpZ2h0bnZtLm8KPitudm1lLWNvcmUtJChDT05GSUdfQkxLX0RFVl9aT05FRCkJKz0gem5z
Lm8KPiBudm1lLWNvcmUtJChDT05GSUdfRkFVTFRfSU5KRUNUSU9OX0RFQlVHX0ZTKQkrPSBmYXVs
dF9pbmplY3Qubwo+IG52bWUtY29yZS0kKENPTkZJR19OVk1FX0hXTU9OKQkJKz0gaHdtb24ubwo+
Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jCj5pbmRleCA1OGYxMzdiOWYyYzUuLmU5NjE5MTBkYTRhYyAxMDA2NDQKPi0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+KysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5j
Cj5AQCAtODksNyArODksNyBAQCBzdGF0aWMgZGV2X3QgbnZtZV9jaHJfZGV2dDsKPiBzdGF0aWMg
c3RydWN0IGNsYXNzICpudm1lX2NsYXNzOwo+IHN0YXRpYyBzdHJ1Y3QgY2xhc3MgKm52bWVfc3Vi
c3lzX2NsYXNzOwo+Cj4tc3RhdGljIGludCBudm1lX3JldmFsaWRhdGVfZGlzayhzdHJ1Y3QgZ2Vu
ZGlzayAqZGlzayk7Cj4rc3RhdGljIGludCBfbnZtZV9yZXZhbGlkYXRlX2Rpc2soc3RydWN0IGdl
bmRpc2sgKmRpc2spOwo+IHN0YXRpYyB2b2lkIG52bWVfcHV0X3N1YnN5c3RlbShzdHJ1Y3QgbnZt
ZV9zdWJzeXN0ZW0gKnN1YnN5cyk7Cj4gc3RhdGljIHZvaWQgbnZtZV9yZW1vdmVfaW52YWxpZF9u
YW1lc3BhY2VzKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsCj4gCQkJCQkgICB1bnNpZ25lZCBuc2lk
KTsKPkBAIC0yODcsNiArMjg3LDEwIEBAIHZvaWQgbnZtZV9jb21wbGV0ZV9ycShzdHJ1Y3QgcmVx
dWVzdCAqcmVxKQo+IAkJCW52bWVfcmV0cnlfcmVxKHJlcSk7Cj4gCQkJcmV0dXJuOwo+IAkJfQo+
Kwl9IGVsc2UgaWYgKElTX0VOQUJMRUQoQ09ORklHX0JMS19ERVZfWk9ORUQpICYmCj4rCQkgICBy
ZXFfb3AocmVxKSA9PSBSRVFfT1BfWk9ORV9BUFBFTkQpIHsKPisJCXJlcS0+X19zZWN0b3IgPSBu
dm1lX2xiYV90b19zZWN0KHJlcS0+cS0+cXVldWVkYXRhLAo+KwkJCWxlNjRfdG9fY3B1KG52bWVf
cmVxKHJlcSktPnJlc3VsdC51NjQpKTsKPiAJfQo+Cj4gCW52bWVfdHJhY2VfYmlvX2NvbXBsZXRl
KHJlcSwgc3RhdHVzKTsKPkBAIC02NzMsNyArNjc3LDggQEAgc3RhdGljIGlubGluZSBibGtfc3Rh
dHVzX3QgbnZtZV9zZXR1cF93cml0ZV96ZXJvZXMoc3RydWN0IG52bWVfbnMgKm5zLAo+IH0KPgo+
IHN0YXRpYyBpbmxpbmUgYmxrX3N0YXR1c190IG52bWVfc2V0dXBfcncoc3RydWN0IG52bWVfbnMg
Km5zLAo+LQkJc3RydWN0IHJlcXVlc3QgKnJlcSwgc3RydWN0IG52bWVfY29tbWFuZCAqY21uZCkK
PisJCXN0cnVjdCByZXF1ZXN0ICpyZXEsIHN0cnVjdCBudm1lX2NvbW1hbmQgKmNtbmQsCj4rCQll
bnVtIG52bWVfb3Bjb2RlIG9wKQo+IHsKPiAJc3RydWN0IG52bWVfY3RybCAqY3RybCA9IG5zLT5j
dHJsOwo+IAl1MTYgY29udHJvbCA9IDA7Cj5AQCAtNjg3LDcgKzY5Miw3IEBAIHN0YXRpYyBpbmxp
bmUgYmxrX3N0YXR1c190IG52bWVfc2V0dXBfcncoc3RydWN0IG52bWVfbnMgKm5zLAo+IAlpZiAo
cmVxLT5jbWRfZmxhZ3MgJiBSRVFfUkFIRUFEKQo+IAkJZHNtZ210IHw9IE5WTUVfUldfRFNNX0ZS
RVFfUFJFRkVUQ0g7Cj4KPi0JY21uZC0+cncub3Bjb2RlID0gKHJxX2RhdGFfZGlyKHJlcSkgPyBu
dm1lX2NtZF93cml0ZSA6IG52bWVfY21kX3JlYWQpOwo+KwljbW5kLT5ydy5vcGNvZGUgPSBvcDsK
PiAJY21uZC0+cncubnNpZCA9IGNwdV90b19sZTMyKG5zLT5oZWFkLT5uc19pZCk7Cj4gCWNtbmQt
PnJ3LnNsYmEgPSBjcHVfdG9fbGU2NChudm1lX3NlY3RfdG9fbGJhKG5zLCBibGtfcnFfcG9zKHJl
cSkpKTsKPiAJY21uZC0+cncubGVuZ3RoID0gY3B1X3RvX2xlMTYoKGJsa19ycV9ieXRlcyhyZXEp
ID4+IG5zLT5sYmFfc2hpZnQpIC0gMSk7Cj5AQCAtNzE2LDYgKzcyMSw4IEBAIHN0YXRpYyBpbmxp
bmUgYmxrX3N0YXR1c190IG52bWVfc2V0dXBfcncoc3RydWN0IG52bWVfbnMgKm5zLAo+IAkJY2Fz
ZSBOVk1FX05TX0RQU19QSV9UWVBFMjoKPiAJCQljb250cm9sIHw9IE5WTUVfUldfUFJJTkZPX1BS
Q0hLX0dVQVJEIHwKPiAJCQkJCU5WTUVfUldfUFJJTkZPX1BSQ0hLX1JFRjsKPisJCQlpZiAob3Ag
PT0gbnZtZV9jbWRfem9uZV9hcHBlbmQpCj4rCQkJCWNvbnRyb2wgfD0gTlZNRV9SV19BUFBFTkRf
UElSRU1BUDsKPiAJCQljbW5kLT5ydy5yZWZ0YWcgPSBjcHVfdG9fbGUzMih0MTBfcGlfcmVmX3Rh
ZyhyZXEpKTsKPiAJCQlicmVhazsKPiAJCX0KPkBAIC03NTYsNiArNzYzLDE5IEBAIGJsa19zdGF0
dXNfdCBudm1lX3NldHVwX2NtZChzdHJ1Y3QgbnZtZV9ucyAqbnMsIHN0cnVjdCByZXF1ZXN0ICpy
ZXEsCj4gCWNhc2UgUkVRX09QX0ZMVVNIOgo+IAkJbnZtZV9zZXR1cF9mbHVzaChucywgY21kKTsK
PiAJCWJyZWFrOwo+KwljYXNlIFJFUV9PUF9aT05FX1JFU0VUX0FMTDoKPisJY2FzZSBSRVFfT1Bf
Wk9ORV9SRVNFVDoKPisJCXJldCA9IG52bWVfc2V0dXBfem9uZV9tZ210X3NlbmQobnMsIHJlcSwg
Y21kLCBOVk1FX1pPTkVfUkVTRVQpOwo+KwkJYnJlYWs7Cj4rCWNhc2UgUkVRX09QX1pPTkVfT1BF
TjoKPisJCXJldCA9IG52bWVfc2V0dXBfem9uZV9tZ210X3NlbmQobnMsIHJlcSwgY21kLCBOVk1F
X1pPTkVfT1BFTik7Cj4rCQlicmVhazsKPisJY2FzZSBSRVFfT1BfWk9ORV9DTE9TRToKPisJCXJl
dCA9IG52bWVfc2V0dXBfem9uZV9tZ210X3NlbmQobnMsIHJlcSwgY21kLCBOVk1FX1pPTkVfQ0xP
U0UpOwo+KwkJYnJlYWs7Cj4rCWNhc2UgUkVRX09QX1pPTkVfRklOSVNIOgo+KwkJcmV0ID0gbnZt
ZV9zZXR1cF96b25lX21nbXRfc2VuZChucywgcmVxLCBjbWQsIE5WTUVfWk9ORV9GSU5JU0gpOwo+
KwkJYnJlYWs7Cj4gCWNhc2UgUkVRX09QX1dSSVRFX1pFUk9FUzoKPiAJCXJldCA9IG52bWVfc2V0
dXBfd3JpdGVfemVyb2VzKG5zLCByZXEsIGNtZCk7Cj4gCQlicmVhazsKPkBAIC03NjMsOCArNzgz
LDEzIEBAIGJsa19zdGF0dXNfdCBudm1lX3NldHVwX2NtZChzdHJ1Y3QgbnZtZV9ucyAqbnMsIHN0
cnVjdCByZXF1ZXN0ICpyZXEsCj4gCQlyZXQgPSBudm1lX3NldHVwX2Rpc2NhcmQobnMsIHJlcSwg
Y21kKTsKPiAJCWJyZWFrOwo+IAljYXNlIFJFUV9PUF9SRUFEOgo+KwkJcmV0ID0gbnZtZV9zZXR1
cF9ydyhucywgcmVxLCBjbWQsIG52bWVfY21kX3JlYWQpOwo+KwkJYnJlYWs7Cj4gCWNhc2UgUkVR
X09QX1dSSVRFOgo+LQkJcmV0ID0gbnZtZV9zZXR1cF9ydyhucywgcmVxLCBjbWQpOwo+KwkJcmV0
ID0gbnZtZV9zZXR1cF9ydyhucywgcmVxLCBjbWQsIG52bWVfY21kX3dyaXRlKTsKPisJCWJyZWFr
Owo+KwljYXNlIFJFUV9PUF9aT05FX0FQUEVORDoKPisJCXJldCA9IG52bWVfc2V0dXBfcncobnMs
IHJlcSwgY21kLCBudm1lX2NtZF96b25lX2FwcGVuZCk7Cj4gCQlicmVhazsKPiAJZGVmYXVsdDoK
PiAJCVdBUk5fT05fT05DRSgxKTsKPkBAIC0xMzkyLDE0ICsxNDE3LDIzIEBAIHN0YXRpYyB1MzIg
bnZtZV9wYXNzdGhydV9zdGFydChzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCBzdHJ1Y3QgbnZtZV9u
cyAqbnMsCj4gCXJldHVybiBlZmZlY3RzOwo+IH0KPgo+LXN0YXRpYyB2b2lkIG52bWVfdXBkYXRl
X2Zvcm1hdHMoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPitzdGF0aWMgdm9pZCBudm1lX3VwZGF0
ZV9mb3JtYXRzKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsIHUzMiAqZWZmZWN0cykKPiB7Cj4gCXN0
cnVjdCBudm1lX25zICpuczsKPgo+IAlkb3duX3JlYWQoJmN0cmwtPm5hbWVzcGFjZXNfcndzZW0p
Owo+IAlsaXN0X2Zvcl9lYWNoX2VudHJ5KG5zLCAmY3RybC0+bmFtZXNwYWNlcywgbGlzdCkKPi0J
CWlmIChucy0+ZGlzayAmJiBudm1lX3JldmFsaWRhdGVfZGlzayhucy0+ZGlzaykpCj4rCQlpZiAo
bnMtPmRpc2sgJiYgX252bWVfcmV2YWxpZGF0ZV9kaXNrKG5zLT5kaXNrKSkKPiAJCQludm1lX3Nl
dF9xdWV1ZV9keWluZyhucyk7Cj4rCQllbHNlIGlmIChibGtfcXVldWVfaXNfem9uZWQobnMtPmRp
c2stPnF1ZXVlKSkgewo+KwkJCS8qCj4rCQkJICogSU8gY29tbWFuZHMgYXJlIHJlcXVpcmVkIHRv
IGZ1bGx5IHJldmFsaWRhdGUgYSB6b25lZAo+KwkJCSAqIGRldmljZS4gRm9yY2UgdGhlIGNvbW1h
bmQgZWZmZWN0cyB0byB0cmlnZ2VyIHJlc2Nhbgo+KwkJCSAqIHdvcmsgc28gcmVwb3J0IHpvbmVz
IGNhbiBydW4gaW4gYSBjb250ZXh0IHdpdGgKPisJCQkgKiB1bmZyb3plbiBJTyBxdWV1ZXMuCj4r
CQkJICovCj4rCQkJKmVmZmVjdHMgfD0gTlZNRV9DTURfRUZGRUNUU19OQ0M7Cj4rCQl9Cj4gCXVw
X3JlYWQoJmN0cmwtPm5hbWVzcGFjZXNfcndzZW0pOwo+IH0KPgo+QEAgLTE0MTEsNyArMTQ0NSw3
IEBAIHN0YXRpYyB2b2lkIG52bWVfcGFzc3RocnVfZW5kKHN0cnVjdCBudm1lX2N0cmwgKmN0cmws
IHUzMiBlZmZlY3RzKQo+IAkgKiB0aGlzIGNvbW1hbmQuCj4gCSAqLwo+IAlpZiAoZWZmZWN0cyAm
IE5WTUVfQ01EX0VGRkVDVFNfTEJDQykKPi0JCW52bWVfdXBkYXRlX2Zvcm1hdHMoY3RybCk7Cj4r
CQludm1lX3VwZGF0ZV9mb3JtYXRzKGN0cmwsICZlZmZlY3RzKTsKPiAJaWYgKGVmZmVjdHMgJiAo
TlZNRV9DTURfRUZGRUNUU19MQkNDIHwgTlZNRV9DTURfRUZGRUNUU19DU0VfTUFTSykpIHsKPiAJ
CW52bWVfdW5mcmVlemUoY3RybCk7Cj4gCQludm1lX21wYXRoX3VuZnJlZXplKGN0cmwtPnN1YnN5
cyk7Cj5AQCAtMTUyNiw3ICsxNTYwLDcgQEAgc3RhdGljIGludCBudm1lX3VzZXJfY21kNjQoc3Ry
dWN0IG52bWVfY3RybCAqY3RybCwgc3RydWN0IG52bWVfbnMgKm5zLAo+ICAqIElzc3VlIGlvY3Rs
IHJlcXVlc3RzIG9uIHRoZSBmaXJzdCBhdmFpbGFibGUgcGF0aC4gIE5vdGUgdGhhdCB1bmxpa2Ug
bm9ybWFsCj4gICogYmxvY2sgbGF5ZXIgcmVxdWVzdHMgd2Ugd2lsbCBub3QgcmV0cnkgZmFpbGVk
IHJlcXVlc3Qgb24gYW5vdGhlciBjb250cm9sbGVyLgo+ICAqLwo+LXN0YXRpYyBzdHJ1Y3QgbnZt
ZV9ucyAqbnZtZV9nZXRfbnNfZnJvbV9kaXNrKHN0cnVjdCBnZW5kaXNrICpkaXNrLAo+K3N0cnVj
dCBudm1lX25zICpudm1lX2dldF9uc19mcm9tX2Rpc2soc3RydWN0IGdlbmRpc2sgKmRpc2ssCj4g
CQlzdHJ1Y3QgbnZtZV9uc19oZWFkICoqaGVhZCwgaW50ICpzcmN1X2lkeCkKPiB7Cj4gI2lmZGVm
IENPTkZJR19OVk1FX01VTFRJUEFUSAo+QEAgLTE1NDYsNyArMTU4MCw3IEBAIHN0YXRpYyBzdHJ1
Y3QgbnZtZV9ucyAqbnZtZV9nZXRfbnNfZnJvbV9kaXNrKHN0cnVjdCBnZW5kaXNrICpkaXNrLAo+
IAlyZXR1cm4gZGlzay0+cHJpdmF0ZV9kYXRhOwo+IH0KPgo+LXN0YXRpYyB2b2lkIG52bWVfcHV0
X25zX2Zyb21fZGlzayhzdHJ1Y3QgbnZtZV9uc19oZWFkICpoZWFkLCBpbnQgaWR4KQo+K3ZvaWQg
bnZtZV9wdXRfbnNfZnJvbV9kaXNrKHN0cnVjdCBudm1lX25zX2hlYWQgKmhlYWQsIGludCBpZHgp
Cj4gewo+IAlpZiAoaGVhZCkKPiAJCXNyY3VfcmVhZF91bmxvY2soJmhlYWQtPnNyY3UsIGlkeCk7
Cj5AQCAtMTkzOSwyMSArMTk3MywyOCBAQCBzdGF0aWMgdm9pZCBudm1lX3VwZGF0ZV9kaXNrX2lu
Zm8oc3RydWN0IGdlbmRpc2sgKmRpc2ssCj4KPiBzdGF0aWMgaW50IF9fbnZtZV9yZXZhbGlkYXRl
X2Rpc2soc3RydWN0IGdlbmRpc2sgKmRpc2ssIHN0cnVjdCBudm1lX2lkX25zICppZCkKPiB7Cj4r
CXVuc2lnbmVkIGxiYWYgPSBpZC0+ZmxiYXMgJiBOVk1FX05TX0ZMQkFTX0xCQV9NQVNLOwo+IAlz
dHJ1Y3QgbnZtZV9ucyAqbnMgPSBkaXNrLT5wcml2YXRlX2RhdGE7Cj4gCXN0cnVjdCBudm1lX2N0
cmwgKmN0cmwgPSBucy0+Y3RybDsKPisJaW50IHJldDsKPiAJdTMyIGlvYjsKPgo+IAkvKgo+IAkg
KiBJZiBpZGVudGlmeSBuYW1lc3BhY2UgZmFpbGVkLCB1c2UgZGVmYXVsdCA1MTIgYnl0ZSBibG9j
ayBzaXplIHNvCj4gCSAqIGJsb2NrIGxheWVyIGNhbiB1c2UgYmVmb3JlIGZhaWxpbmcgcmVhZC93
cml0ZSBmb3IgMCBjYXBhY2l0eS4KPiAJICovCj4tCW5zLT5sYmFfc2hpZnQgPSBpZC0+bGJhZltp
ZC0+ZmxiYXMgJiBOVk1FX05TX0ZMQkFTX0xCQV9NQVNLXS5kczsKPisJbnMtPmxiYV9zaGlmdCA9
IGlkLT5sYmFmW2xiYWZdLmRzOwo+IAlpZiAobnMtPmxiYV9zaGlmdCA9PSAwKQo+IAkJbnMtPmxi
YV9zaGlmdCA9IDk7Cj4KPiAJc3dpdGNoIChucy0+aGVhZC0+aWRzLmNzaSkgewo+IAljYXNlIE5W
TUVfQ1NJX05WTToKPiAJCWJyZWFrOwo+KwljYXNlIE5WTUVfQ1NJX1pOUzoKPisJCXJldCA9IG52
bWVfdXBkYXRlX3pvbmVfaW5mbyhkaXNrLCBucywgbGJhZik7Cj4rCQlpZiAocmV0KQo+KwkJCXJl
dHVybiByZXQ7Cj4rCQlicmVhazsKPiAJZGVmYXVsdDoKPiAJCWRldl93YXJuKGN0cmwtPmRldmlj
ZSwgInVua25vd24gY3NpOiVkIG5zOiVkXG4iLAo+IAkJCW5zLT5oZWFkLT5pZHMuY3NpLCBucy0+
aGVhZC0+bnNfaWQpOwo+QEAgLTE5NjcsNyArMjAwOCw3IEBAIHN0YXRpYyBpbnQgX19udm1lX3Jl
dmFsaWRhdGVfZGlzayhzdHJ1Y3QgZ2VuZGlzayAqZGlzaywgc3RydWN0IG52bWVfaWRfbnMgKmlk
KQo+IAkJaW9iID0gbnZtZV9sYmFfdG9fc2VjdChucywgbGUxNl90b19jcHUoaWQtPm5vaW9iKSk7
Cj4KPiAJbnMtPmZlYXR1cmVzID0gMDsKPi0JbnMtPm1zID0gbGUxNl90b19jcHUoaWQtPmxiYWZb
aWQtPmZsYmFzICYgTlZNRV9OU19GTEJBU19MQkFfTUFTS10ubXMpOwo+Kwlucy0+bXMgPSBsZTE2
X3RvX2NwdShpZC0+bGJhZltsYmFmXS5tcyk7Cj4gCS8qIHRoZSBQSSBpbXBsZW1lbnRhdGlvbiBy
ZXF1aXJlcyBtZXRhZGF0YSBlcXVhbCB0MTAgcGkgdHVwbGUgc2l6ZSAqLwo+IAlpZiAobnMtPm1z
ID09IHNpemVvZihzdHJ1Y3QgdDEwX3BpX3R1cGxlKSkKPiAJCW5zLT5waV90eXBlID0gaWQtPmRw
cyAmIE5WTUVfTlNfRFBTX1BJX01BU0s7Cj5AQCAtMjAxMCw3ICsyMDUxLDcgQEAgc3RhdGljIGlu
dCBfX252bWVfcmV2YWxpZGF0ZV9kaXNrKHN0cnVjdCBnZW5kaXNrICpkaXNrLCBzdHJ1Y3QgbnZt
ZV9pZF9ucyAqaWQpCj4gCXJldHVybiAwOwo+IH0KPgo+LXN0YXRpYyBpbnQgbnZtZV9yZXZhbGlk
YXRlX2Rpc2soc3RydWN0IGdlbmRpc2sgKmRpc2spCj4rc3RhdGljIGludCBfbnZtZV9yZXZhbGlk
YXRlX2Rpc2soc3RydWN0IGdlbmRpc2sgKmRpc2spCj4gewo+IAlzdHJ1Y3QgbnZtZV9ucyAqbnMg
PSBkaXNrLT5wcml2YXRlX2RhdGE7Cj4gCXN0cnVjdCBudm1lX2N0cmwgKmN0cmwgPSBucy0+Y3Ry
bDsKPkBAIC0yMDU4LDYgKzIwOTksMjggQEAgc3RhdGljIGludCBudm1lX3JldmFsaWRhdGVfZGlz
ayhzdHJ1Y3QgZ2VuZGlzayAqZGlzaykKPiAJcmV0dXJuIHJldDsKPiB9Cj4KPitzdGF0aWMgaW50
IG52bWVfcmV2YWxpZGF0ZV9kaXNrKHN0cnVjdCBnZW5kaXNrICpkaXNrKQo+K3sKPisJaW50IHJl
dDsKPisKPisJcmV0ID0gX252bWVfcmV2YWxpZGF0ZV9kaXNrKGRpc2spOwo+KwlpZiAocmV0KQo+
KwkJcmV0dXJuIHJldDsKPisKPisjaWZkZWYgQ09ORklHX0JMS19ERVZfWk9ORUQKPisJaWYgKGJs
a19xdWV1ZV9pc196b25lZChkaXNrLT5xdWV1ZSkpIHsKPisJCXN0cnVjdCBudm1lX25zICpucyA9
IGRpc2stPnByaXZhdGVfZGF0YTsKPisJCXN0cnVjdCBudm1lX2N0cmwgKmN0cmwgPSBucy0+Y3Ry
bDsKPisKPisJCXJldCA9IGJsa19yZXZhbGlkYXRlX2Rpc2tfem9uZXMoZGlzaywgTlVMTCk7Cj4r
CQlpZiAoIXJldCkKPisJCQlibGtfcXVldWVfbWF4X3pvbmVfYXBwZW5kX3NlY3RvcnMoZGlzay0+
cXVldWUsCj4rCQkJCQkJCSAgY3RybC0+bWF4X3pvbmVfYXBwZW5kKTsKPisJfQo+KyNlbmRpZgo+
KwlyZXR1cm4gcmV0Owo+K30KPisKPiBzdGF0aWMgY2hhciBudm1lX3ByX3R5cGUoZW51bSBwcl90
eXBlIHR5cGUpCj4gewo+IAlzd2l0Y2ggKHR5cGUpIHsKPkBAIC0yMTg4LDYgKzIyNTEsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGJsb2NrX2RldmljZV9vcGVyYXRpb25zIG52bWVfZm9wcyA9IHsK
PiAJLnJlbGVhc2UJPSBudm1lX3JlbGVhc2UsCj4gCS5nZXRnZW8JCT0gbnZtZV9nZXRnZW8sCj4g
CS5yZXZhbGlkYXRlX2Rpc2s9IG52bWVfcmV2YWxpZGF0ZV9kaXNrLAo+KwkucmVwb3J0X3pvbmVz
CT0gbnZtZV9yZXBvcnRfem9uZXMsCj4gCS5wcl9vcHMJCT0gJm52bWVfcHJfb3BzLAo+IH07Cj4K
PkBAIC0yMjEzLDYgKzIyNzcsNyBAQCBjb25zdCBzdHJ1Y3QgYmxvY2tfZGV2aWNlX29wZXJhdGlv
bnMgbnZtZV9uc19oZWFkX29wcyA9IHsKPiAJLmlvY3RsCQk9IG52bWVfaW9jdGwsCj4gCS5jb21w
YXRfaW9jdGwJPSBudm1lX2NvbXBhdF9pb2N0bCwKPiAJLmdldGdlbwkJPSBudm1lX2dldGdlbywK
PisJLnJlcG9ydF96b25lcwk9IG52bWVfcmVwb3J0X3pvbmVzLAo+IAkucHJfb3BzCQk9ICZudm1l
X3ByX29wcywKPiB9Owo+ICNlbmRpZiAvKiBDT05GSUdfTlZNRV9NVUxUSVBBVEggKi8KPkBAIC00
NDM5LDYgKzQ1MDQsOCBAQCBzdGF0aWMgaW5saW5lIHZvaWQgX252bWVfY2hlY2tfc2l6ZSh2b2lk
KQo+IAlCVUlMRF9CVUdfT04oc2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpICE9IDY0KTsKPiAJ
QlVJTERfQlVHX09OKHNpemVvZihzdHJ1Y3QgbnZtZV9pZF9jdHJsKSAhPSBOVk1FX0lERU5USUZZ
X0RBVEFfU0laRSk7Cj4gCUJVSUxEX0JVR19PTihzaXplb2Yoc3RydWN0IG52bWVfaWRfbnMpICE9
IE5WTUVfSURFTlRJRllfREFUQV9TSVpFKTsKPisJQlVJTERfQlVHX09OKHNpemVvZihzdHJ1Y3Qg
bnZtZV9pZF9uc196bnMpICE9IE5WTUVfSURFTlRJRllfREFUQV9TSVpFKTsKPisJQlVJTERfQlVH
X09OKHNpemVvZihzdHJ1Y3QgbnZtZV9pZF9jdHJsX3pucykgIT0gTlZNRV9JREVOVElGWV9EQVRB
X1NJWkUpOwo+IAlCVUlMRF9CVUdfT04oc2l6ZW9mKHN0cnVjdCBudm1lX2xiYV9yYW5nZV90eXBl
KSAhPSA2NCk7Cj4gCUJVSUxEX0JVR19PTihzaXplb2Yoc3RydWN0IG52bWVfc21hcnRfbG9nKSAh
PSA1MTIpOwo+IAlCVUlMRF9CVUdfT04oc2l6ZW9mKHN0cnVjdCBudm1lX2RiYnVmKSAhPSA2NCk7
Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oIGIvZHJpdmVycy9udm1lL2hv
c3QvbnZtZS5oCj5pbmRleCA1ODQyOGUzYTU5MGUuLjY2MmY5NWZiZDkwOSAxMDA2NDQKPi0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaAo+KysrIGIvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5o
Cj5AQCAtMjM5LDYgKzIzOSw5IEBAIHN0cnVjdCBudm1lX2N0cmwgewo+IAl1MzIgbWF4X2h3X3Nl
Y3RvcnM7Cj4gCXUzMiBtYXhfc2VnbWVudHM7Cj4gCXUzMiBtYXhfaW50ZWdyaXR5X3NlZ21lbnRz
Owo+KyNpZmRlZiBDT05GSUdfQkxLX0RFVl9aT05FRAo+Kwl1MzIgbWF4X3pvbmVfYXBwZW5kOwo+
KyNlbmRpZgo+IAl1MTYgY3JkdFszXTsKPiAJdTE2IG9uY3M7Cj4gCXUxNiBvYWNzOwo+QEAgLTQw
Myw2ICs0MDYsOSBAQCBzdHJ1Y3QgbnZtZV9ucyB7Cj4gCXUxNiBzZ3M7Cj4gCXUzMiBzd3M7Cj4g
CXU4IHBpX3R5cGU7Cj4rI2lmZGVmIENPTkZJR19CTEtfREVWX1pPTkVECj4rCXU2NCB6c3plOwo+
KyNlbmRpZgo+IAl1bnNpZ25lZCBsb25nIGZlYXR1cmVzOwo+IAl1bnNpZ25lZCBsb25nIGZsYWdz
Owo+ICNkZWZpbmUgTlZNRV9OU19SRU1PVklORwkwCj5AQCAtNTY4LDYgKzU3NCw5IEBAIGludCBu
dm1lX2RlbGV0ZV9jdHJsKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpOwo+Cj4gaW50IG52bWVfZ2V0
X2xvZyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCB1MzIgbnNpZCwgdTggbG9nX3BhZ2UsIHU4IGxz
cCwgdTggY3NpLAo+IAkJdm9pZCAqbG9nLCBzaXplX3Qgc2l6ZSwgdTY0IG9mZnNldCk7Cj4rc3Ry
dWN0IG52bWVfbnMgKm52bWVfZ2V0X25zX2Zyb21fZGlzayhzdHJ1Y3QgZ2VuZGlzayAqZGlzaywK
PisJCXN0cnVjdCBudm1lX25zX2hlYWQgKipoZWFkLCBpbnQgKnNyY3VfaWR4KTsKPit2b2lkIG52
bWVfcHV0X25zX2Zyb21fZGlzayhzdHJ1Y3QgbnZtZV9uc19oZWFkICpoZWFkLCBpbnQgaWR4KTsK
Pgo+IGV4dGVybiBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwICpudm1lX25zX2lkX2F0dHJf
Z3JvdXBzW107Cj4gZXh0ZXJuIGNvbnN0IHN0cnVjdCBibG9ja19kZXZpY2Vfb3BlcmF0aW9ucyBu
dm1lX25zX2hlYWRfb3BzOwo+QEAgLTY4OSw2ICs2OTgsMzYgQEAgc3RhdGljIGlubGluZSB2b2lk
IG52bWVfbXBhdGhfc3RhcnRfZnJlZXplKHN0cnVjdCBudm1lX3N1YnN5c3RlbSAqc3Vic3lzKQo+
IH0KPiAjZW5kaWYgLyogQ09ORklHX05WTUVfTVVMVElQQVRIICovCj4KPisjaWZkZWYgQ09ORklH
X0JMS19ERVZfWk9ORUQKPitpbnQgbnZtZV91cGRhdGVfem9uZV9pbmZvKHN0cnVjdCBnZW5kaXNr
ICpkaXNrLCBzdHJ1Y3QgbnZtZV9ucyAqbnMsCj4rCQkJICB1bnNpZ25lZCBsYmFmKTsKPisKPitp
bnQgbnZtZV9yZXBvcnRfem9uZXMoc3RydWN0IGdlbmRpc2sgKmRpc2ssIHNlY3Rvcl90IHNlY3Rv
ciwKPisJCSAgICAgIHVuc2lnbmVkIGludCBucl96b25lcywgcmVwb3J0X3pvbmVzX2NiIGNiLCB2
b2lkICpkYXRhKTsKPisKPitibGtfc3RhdHVzX3QgbnZtZV9zZXR1cF96b25lX21nbXRfc2VuZChz
dHJ1Y3QgbnZtZV9ucyAqbnMsIHN0cnVjdCByZXF1ZXN0ICpyZXEsCj4rCQkJCSAgICAgICBzdHJ1
Y3QgbnZtZV9jb21tYW5kICpjbW5kLAo+KwkJCQkgICAgICAgZW51bSBudm1lX3pvbmVfbWdtdF9h
Y3Rpb24gYWN0aW9uKTsKPisjZWxzZQo+KyNkZWZpbmUgbnZtZV9yZXBvcnRfem9uZXMgTlVMTAo+
Kwo+K3N0YXRpYyBpbmxpbmUgYmxrX3N0YXR1c190IG52bWVfc2V0dXBfem9uZV9tZ210X3NlbmQo
c3RydWN0IG52bWVfbnMgKm5zLAo+KwkJc3RydWN0IHJlcXVlc3QgKnJlcSwgc3RydWN0IG52bWVf
Y29tbWFuZCAqY21uZCwKPisJCWVudW0gbnZtZV96b25lX21nbXRfYWN0aW9uIGFjdGlvbikKPit7
Cj4rCXJldHVybiBCTEtfU1RTX05PVFNVUFA7Cj4rfQo+Kwo+K3N0YXRpYyBpbmxpbmUgaW50IG52
bWVfdXBkYXRlX3pvbmVfaW5mbyhzdHJ1Y3QgZ2VuZGlzayAqZGlzaywKPisJCQkJCXN0cnVjdCBu
dm1lX25zICpucywKPisJCQkJCXVuc2lnbmVkIGxiYWYpCj4rewo+KwlkZXZfd2Fybihucy0+Y3Ry
bC0+ZGV2aWNlLAo+KwkJICJQbGVhc2UgZW5hYmxlIENPTkZJR19CTEtfREVWX1pPTkVEIHRvIHN1
cHBvcnQgWk5TIGRldmljZXNcbiIpOwo+KwlyZXR1cm4gLUVQUk9UT05PU1VQUE9SVDsKPit9Cj4r
I2VuZGlmCj4rCj4gI2lmZGVmIENPTkZJR19OVk0KPiBpbnQgbnZtZV9udm1fcmVnaXN0ZXIoc3Ry
dWN0IG52bWVfbnMgKm5zLCBjaGFyICpkaXNrX25hbWUsIGludCBub2RlKTsKPiB2b2lkIG52bWVf
bnZtX3VucmVnaXN0ZXIoc3RydWN0IG52bWVfbnMgKm5zKTsKPmRpZmYgLS1naXQgYS9kcml2ZXJz
L252bWUvaG9zdC96bnMuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L3pucy5jCj5uZXcgZmlsZSBtb2Rl
IDEwMDY0NAo+aW5kZXggMDAwMDAwMDAwMDAwLi5jMDhmNjI4MWI2MTQKPi0tLSAvZGV2L251bGwK
PisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3pucy5jCj5AQCAtMCwwICsxLDIzOCBAQAo+Ky8vIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4rLyoKPisgKiBDb3B5cmlnaHQgKEMpIDIw
MjAgV2VzdGVybiBEaWdpdGFsIENvcnBvcmF0aW9uIG9yIGl0cyBhZmZpbGlhdGVzLgo+KyAqLwo+
Kwo+KyNpbmNsdWRlIDxsaW51eC9ibGtkZXYuaD4KPisjaW5jbHVkZSA8bGludXgvdm1hbGxvYy5o
Pgo+KyNpbmNsdWRlICJudm1lLmgiCj4rCj4rc3RhdGljIGludCBudm1lX3NldF9tYXhfYXBwZW5k
KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4rewo+KwlzdHJ1Y3QgbnZtZV9jb21tYW5kIGMgPSB7
IH07Cj4rCXN0cnVjdCBudm1lX2lkX2N0cmxfem5zICppZDsKPisJaW50IHN0YXR1czsKPisKPisJ
aWQgPSBremFsbG9jKHNpemVvZigqaWQpLCBHRlBfS0VSTkVMKTsKPisJaWYgKCFpZCkKPisJCXJl
dHVybiAtRU5PTUVNOwo+Kwo+KwljLmlkZW50aWZ5Lm9wY29kZSA9IG52bWVfYWRtaW5faWRlbnRp
Znk7Cj4rCWMuaWRlbnRpZnkuY25zID0gTlZNRV9JRF9DTlNfQ1NfQ1RSTDsKPisJYy5pZGVudGlm
eS5jc2kgPSBOVk1FX0NTSV9aTlM7Cj4rCj4rCXN0YXR1cyA9IG52bWVfc3VibWl0X3N5bmNfY21k
KGN0cmwtPmFkbWluX3EsICZjLCBpZCwgc2l6ZW9mKCppZCkpOwo+KwlpZiAoc3RhdHVzKSB7Cj4r
CQlrZnJlZShpZCk7Cj4rCQlyZXR1cm4gc3RhdHVzOwo+Kwl9Cj4rCj4rCWN0cmwtPm1heF96b25l
X2FwcGVuZCA9IDEgPDwgKGlkLT56YW1kcyArIDMpOwo+KwlrZnJlZShpZCk7Cj4rCXJldHVybiAw
Owo+K30KPisKPitpbnQgbnZtZV91cGRhdGVfem9uZV9pbmZvKHN0cnVjdCBnZW5kaXNrICpkaXNr
LCBzdHJ1Y3QgbnZtZV9ucyAqbnMsCj4rCQkJICB1bnNpZ25lZCBsYmFmKQo+K3sKPisJc3RydWN0
IG52bWVfZWZmZWN0c19sb2cgKmxvZyA9IG5zLT5oZWFkLT5lZmZlY3RzOwo+KwlzdHJ1Y3QgcmVx
dWVzdF9xdWV1ZSAqcSA9IGRpc2stPnF1ZXVlOwo+KwlzdHJ1Y3QgbnZtZV9jb21tYW5kIGMgPSB7
IH07Cj4rCXN0cnVjdCBudm1lX2lkX25zX3pucyAqaWQ7Cj4rCWludCBzdGF0dXM7Cj4rCj4rCS8q
IERyaXZlciByZXF1aXJlcyB6b25lIGFwcGVuZCBzdXBwb3J0ICovCj4rCWlmICghKGxvZy0+aW9j
c1tudm1lX2NtZF96b25lX2FwcGVuZF0gJiBOVk1FX0NNRF9FRkZFQ1RTX0NTVVBQKSkKPisJCXJl
dHVybiAtRU5PREVWOwoKRm9sbG93aW5nIHVwIG9uIHRoZSBpbml0aWFsIGNvbW1lbnQsIHRoaXMg
Y2hlY2sgc2hvdWxkIGdvLgoKPisKPisJLyogTGF6aWx5IHF1ZXJ5IGNvbnRyb2xsZXIgYXBwZW5k
IGxpbWl0IGZvciB0aGUgZmlyc3Qgem9uZWQgbmFtZXNwYWNlICovCj4rCWlmICghbnMtPmN0cmwt
Pm1heF96b25lX2FwcGVuZCkgewo+KwkJc3RhdHVzID0gbnZtZV9zZXRfbWF4X2FwcGVuZChucy0+
Y3RybCk7Cj4rCQlpZiAoc3RhdHVzKQo+KwkJCXJldHVybiBzdGF0dXM7Cj4rCX0KClRoaXMgc2hv
dWxkIG9ubHkgYmUgYXBwbGllZCBpZiBhcHBlbmQgaXMgc3VwcG9ydGVkLgoKPisKPisJaWQgPSBr
emFsbG9jKHNpemVvZigqaWQpLCBHRlBfS0VSTkVMKTsKPisJaWYgKCFpZCkKPisJCXJldHVybiAt
RU5PTUVNOwo+Kwo+KwljLmlkZW50aWZ5Lm9wY29kZSA9IG52bWVfYWRtaW5faWRlbnRpZnk7Cj4r
CWMuaWRlbnRpZnkubnNpZCA9IGNwdV90b19sZTMyKG5zLT5oZWFkLT5uc19pZCk7Cj4rCWMuaWRl
bnRpZnkuY25zID0gTlZNRV9JRF9DTlNfQ1NfTlM7Cj4rCWMuaWRlbnRpZnkuY3NpID0gTlZNRV9D
U0lfWk5TOwo+Kwo+KwlzdGF0dXMgPSBudm1lX3N1Ym1pdF9zeW5jX2NtZChucy0+Y3RybC0+YWRt
aW5fcSwgJmMsIGlkLCBzaXplb2YoKmlkKSk7Cj4rCWlmIChzdGF0dXMpCj4rCQlnb3RvIGZyZWVf
ZGF0YTsKPisKPisJLyoKPisJICogV2UgY3VycmVudGx5IGRvIG5vdCBoYW5kbGUgZGV2aWNlcyBy
ZXF1aXJpbmcgYW55IG9mIHRoZSB6b25lZAo+KwkgKiBvcGVyYXRpb24gY2hhcmFjdGVyaXN0aWNz
Lgo+KwkgKi8KPisJaWYgKGlkLT56b2MpIHsKPisJCXN0YXR1cyA9IC1FSU5WQUw7Cj4rCQlnb3Rv
IGZyZWVfZGF0YTsKPisJfQoKSSB1bmRlcnN0YW5kIHRoYXQgIlZhcmlhYmxlIFpvbmUgQ2FwYWNp
dHkiIGlzIG5vdCBzdXBwb3J0ZWQgYXMgaXQKcmVxdWlyZXMgbWFqb3IgY2hhbmdlcyBhdCB0aGlz
IG1vbWVudCwgYnV0IHdlIHNob3VsZCBzdXBwb3J0IGNvbnRyb2xsZXJzCnRoYXQgZW5hYmxlICJa
b25lIEFjdGl2ZSBFeGN1cnNpb25zIiwgZXZlbiB3aGVuIHRoZSBBRVIgZXZlbnQgaXMgbm90Cmlt
cGxlbWVudGVkIGluIHRoaXMgcGF0Y2hzZXQuCgo+Kwo+Kwlucy0+enN6ZSA9IG52bWVfbGJhX3Rv
X3NlY3QobnMsIGxlNjRfdG9fY3B1KGlkLT5sYmFmZVtsYmFmXS56c3plKSk7Cj4rCWlmICghbnMt
PnpzemUpIHsKPisJCXN0YXR1cyA9IC1FSU5WQUw7Cj4rCQlnb3RvIGZyZWVfZGF0YTsKPisJfQo+
Kwo+KwlxLT5saW1pdHMuem9uZWQgPSBCTEtfWk9ORURfSE07Cj4rCWJsa19xdWV1ZV9mbGFnX3Nl
dChRVUVVRV9GTEFHX1pPTkVfUkVTRVRBTEwsIHEpOwo+K2ZyZWVfZGF0YToKPisJa2ZyZWUoaWQp
Owo+KwlyZXR1cm4gc3RhdHVzOwo+K30KPisKPitzdGF0aWMgdm9pZCAqbnZtZV96bnNfYWxsb2Nf
cmVwb3J0X2J1ZmZlcihzdHJ1Y3QgbnZtZV9ucyAqbnMsCj4rCQkJCQkgIHVuc2lnbmVkIGludCBu
cl96b25lcywgc2l6ZV90ICpidWZsZW4pCj4rewo+KwlzdHJ1Y3QgcmVxdWVzdF9xdWV1ZSAqcSA9
IG5zLT5kaXNrLT5xdWV1ZTsKPisJc2l6ZV90IGJ1ZnNpemU7Cj4rCXZvaWQgKmJ1ZjsKPisKPisJ
Y29uc3Qgc2l6ZV90IG1pbl9idWZzaXplID0gc2l6ZW9mKHN0cnVjdCBudm1lX3pvbmVfcmVwb3J0
KSArCj4rCQkJCSAgIHNpemVvZihzdHJ1Y3QgbnZtZV96b25lX2Rlc2NyaXB0b3IpOwo+Kwo+Kwlu
cl96b25lcyA9IG1pbl90KHVuc2lnbmVkIGludCwgbnJfem9uZXMsCj4rCQkJIGdldF9jYXBhY2l0
eShucy0+ZGlzaykgPj4gaWxvZzIobnMtPnpzemUpKTsKPisKPisJYnVmc2l6ZSA9IHNpemVvZihz
dHJ1Y3QgbnZtZV96b25lX3JlcG9ydCkgKwo+KwkJbnJfem9uZXMgKiBzaXplb2Yoc3RydWN0IG52
bWVfem9uZV9kZXNjcmlwdG9yKTsKPisJYnVmc2l6ZSA9IG1pbl90KHNpemVfdCwgYnVmc2l6ZSwK
PisJCQlxdWV1ZV9tYXhfaHdfc2VjdG9ycyhxKSA8PCBTRUNUT1JfU0hJRlQpOwo+KwlidWZzaXpl
ID0gbWluX3Qoc2l6ZV90LCBidWZzaXplLCBxdWV1ZV9tYXhfc2VnbWVudHMocSkgPDwgUEFHRV9T
SElGVCk7Cj4rCj4rCXdoaWxlIChidWZzaXplID49IG1pbl9idWZzaXplKSB7Cj4rCQlidWYgPSBf
X3ZtYWxsb2MoYnVmc2l6ZSwKPisJCQkJR0ZQX0tFUk5FTCB8IF9fR0ZQX1pFUk8gfCBfX0dGUF9O
T1JFVFJZKTsKPisJCWlmIChidWYpIHsKPisJCQkqYnVmbGVuID0gYnVmc2l6ZTsKPisJCQlyZXR1
cm4gYnVmOwo+KwkJfQo+KwkJYnVmc2l6ZSA+Pj0gMTsKPisJfQo+KwlyZXR1cm4gTlVMTDsKPit9
Cj4rCj4rc3RhdGljIGludCBfX252bWVfbnNfcmVwb3J0X3pvbmVzKHN0cnVjdCBudm1lX25zICpu
cywgc2VjdG9yX3Qgc2VjdG9yLAo+KwkJCQkgIHN0cnVjdCBudm1lX3pvbmVfcmVwb3J0ICpyZXBv
cnQsCj4rCQkJCSAgc2l6ZV90IGJ1ZmxlbikKPit7Cj4rCXN0cnVjdCBudm1lX2NvbW1hbmQgYyA9
IHsgfTsKPisJaW50IHJldDsKPisKPisJYy56bXIub3Bjb2RlID0gbnZtZV9jbWRfem9uZV9tZ210
X3JlY3Y7Cj4rCWMuem1yLm5zaWQgPSBjcHVfdG9fbGUzMihucy0+aGVhZC0+bnNfaWQpOwo+Kwlj
Lnptci5zbGJhID0gY3B1X3RvX2xlNjQobnZtZV9zZWN0X3RvX2xiYShucywgc2VjdG9yKSk7Cj4r
CWMuem1yLm51bWQgPSBjcHVfdG9fbGUzMihudm1lX2J5dGVzX3RvX251bWQoYnVmbGVuKSk7Cj4r
CWMuem1yLnpyYSA9IE5WTUVfWlJBX1pPTkVfUkVQT1JUOwo+KwljLnptci56cmFzZiA9IE5WTUVf
WlJBU0ZfWk9ORV9SRVBPUlRfQUxMOwo+KwljLnptci5wciA9IE5WTUVfUkVQT1JUX1pPTkVfUEFS
VElBTDsKPisKPisJcmV0ID0gbnZtZV9zdWJtaXRfc3luY19jbWQobnMtPnF1ZXVlLCAmYywgcmVw
b3J0LCBidWZsZW4pOwo+KwlpZiAocmV0KQo+KwkJcmV0dXJuIHJldDsKPisKPisJcmV0dXJuIGxl
NjRfdG9fY3B1KHJlcG9ydC0+bnJfem9uZXMpOwo+K30KPisKPitzdGF0aWMgaW50IG52bWVfem9u
ZV9wYXJzZV9lbnRyeShzdHJ1Y3QgbnZtZV9ucyAqbnMsCj4rCQkJCSBzdHJ1Y3QgbnZtZV96b25l
X2Rlc2NyaXB0b3IgKmVudHJ5LAo+KwkJCQkgdW5zaWduZWQgaW50IGlkeCwgcmVwb3J0X3pvbmVz
X2NiIGNiLAo+KwkJCQkgdm9pZCAqZGF0YSkKPit7Cj4rCXN0cnVjdCBibGtfem9uZSB6b25lID0g
eyB9Owo+Kwo+KwlpZiAoKGVudHJ5LT56dCAmIDB4ZikgIT0gTlZNRV9aT05FX1RZUEVfU0VRV1JJ
VEVfUkVRKSB7Cj4rCQlkZXZfZXJyKG5zLT5jdHJsLT5kZXZpY2UsICJpbnZhbGlkIHpvbmUgdHlw
ZSAlI3hcbiIsCj4rCQkJCWVudHJ5LT56dCk7Cj4rCQlyZXR1cm4gLUVJTlZBTDsKPisJfQo+Kwo+
Kwl6b25lLnR5cGUgPSBCTEtfWk9ORV9UWVBFX1NFUVdSSVRFX1JFUTsKPisJem9uZS5jb25kID0g
ZW50cnktPnpzID4+IDQ7Cj4rCXpvbmUubGVuID0gbnMtPnpzemU7Cj4rCXpvbmUuY2FwYWNpdHkg
PSBudm1lX2xiYV90b19zZWN0KG5zLCBsZTY0X3RvX2NwdShlbnRyeS0+emNhcCkpOwo+Kwl6b25l
LnN0YXJ0ID0gbnZtZV9sYmFfdG9fc2VjdChucywgbGU2NF90b19jcHUoZW50cnktPnpzbGJhKSk7
Cj4rCXpvbmUud3AgPSBudm1lX2xiYV90b19zZWN0KG5zLCBsZTY0X3RvX2NwdShlbnRyeS0+d3Ap
KTsKPisKPisJcmV0dXJuIGNiKCZ6b25lLCBpZHgsIGRhdGEpOwo+K30KPisKPitzdGF0aWMgaW50
IG52bWVfbnNfcmVwb3J0X3pvbmVzKHN0cnVjdCBudm1lX25zICpucywgc2VjdG9yX3Qgc2VjdG9y
LAo+KwkJCXVuc2lnbmVkIGludCBucl96b25lcywgcmVwb3J0X3pvbmVzX2NiIGNiLCB2b2lkICpk
YXRhKQo+K3sKPisJc3RydWN0IG52bWVfem9uZV9yZXBvcnQgKnJlcG9ydDsKPisJaW50IHJldCwg
em9uZV9pZHggPSAwOwo+Kwl1bnNpZ25lZCBpbnQgbnosIGk7Cj4rCXNpemVfdCBidWZsZW47Cj4r
Cj4rCXJlcG9ydCA9IG52bWVfem5zX2FsbG9jX3JlcG9ydF9idWZmZXIobnMsIG5yX3pvbmVzLCAm
YnVmbGVuKTsKPisJaWYgKCFyZXBvcnQpCj4rCQlyZXR1cm4gLUVOT01FTTsKPisKPisJc2VjdG9y
ICY9IH4obnMtPnpzemUgLSAxKTsKPisJd2hpbGUgKHpvbmVfaWR4IDwgbnJfem9uZXMgJiYgc2Vj
dG9yIDwgZ2V0X2NhcGFjaXR5KG5zLT5kaXNrKSkgewo+KwkJbWVtc2V0KHJlcG9ydCwgMCwgYnVm
bGVuKTsKPisJCXJldCA9IF9fbnZtZV9uc19yZXBvcnRfem9uZXMobnMsIHNlY3RvciwgcmVwb3J0
LCBidWZsZW4pOwo+KwkJaWYgKHJldCA8IDApCj4rCQkJZ290byBvdXRfZnJlZTsKPisKPisJCW56
ID0gbWluX3QodW5zaWduZWQgaW50LCByZXQsIG5yX3pvbmVzKTsKPisJCWlmICghbnopCj4rCQkJ
YnJlYWs7Cj4rCj4rCQlmb3IgKGkgPSAwOyBpIDwgbnogJiYgem9uZV9pZHggPCBucl96b25lczsg
aSsrKSB7Cj4rCQkJcmV0ID0gbnZtZV96b25lX3BhcnNlX2VudHJ5KG5zLCAmcmVwb3J0LT5lbnRy
aWVzW2ldLAo+KwkJCQkJCSAgICB6b25lX2lkeCwgY2IsIGRhdGEpOwo+KwkJCWlmIChyZXQpCj4r
CQkJCWdvdG8gb3V0X2ZyZWU7Cj4rCQkJem9uZV9pZHgrKzsKPisJCX0KPisKPisJCXNlY3RvciAr
PSBucy0+enN6ZSAqIG56Owo+Kwl9Cj4rCj4rCXJldCA9IHpvbmVfaWR4Owo+K291dF9mcmVlOgo+
KwlrdmZyZWUocmVwb3J0KTsKPisJcmV0dXJuIHJldDsKPit9Cj4rCj4raW50IG52bWVfcmVwb3J0
X3pvbmVzKHN0cnVjdCBnZW5kaXNrICpkaXNrLCBzZWN0b3JfdCBzZWN0b3IsCj4rCQkgICAgICB1
bnNpZ25lZCBpbnQgbnJfem9uZXMsIHJlcG9ydF96b25lc19jYiBjYiwgdm9pZCAqZGF0YSkKPit7
Cj4rCXN0cnVjdCBudm1lX25zX2hlYWQgKmhlYWQgPSBOVUxMOwo+KwlzdHJ1Y3QgbnZtZV9ucyAq
bnM7Cj4rCWludCBzcmN1X2lkeCwgcmV0Owo+Kwo+KwlucyA9IG52bWVfZ2V0X25zX2Zyb21fZGlz
ayhkaXNrLCAmaGVhZCwgJnNyY3VfaWR4KTsKPisJaWYgKHVubGlrZWx5KCFucykpCj4rCQlyZXR1
cm4gLUVXT1VMREJMT0NLOwo+Kwo+KwlpZiAobnMtPmhlYWQtPmlkcy5jc2kgPT0gTlZNRV9DU0lf
Wk5TKQo+KwkJcmV0ID0gbnZtZV9uc19yZXBvcnRfem9uZXMobnMsIHNlY3RvciwgbnJfem9uZXMs
IGNiLCBkYXRhKTsKPisJZWxzZQo+KwkJcmV0ID0gLUVJTlZBTDsKPisJbnZtZV9wdXRfbnNfZnJv
bV9kaXNrKGhlYWQsIHNyY3VfaWR4KTsKPisKPisJcmV0dXJuIHJldDsKPit9Cj4rCj4rYmxrX3N0
YXR1c190IG52bWVfc2V0dXBfem9uZV9tZ210X3NlbmQoc3RydWN0IG52bWVfbnMgKm5zLCBzdHJ1
Y3QgcmVxdWVzdCAqcmVxLAo+KwkJc3RydWN0IG52bWVfY29tbWFuZCAqYywgZW51bSBudm1lX3pv
bmVfbWdtdF9hY3Rpb24gYWN0aW9uKQo+K3sKPisJYy0+em1zLm9wY29kZSA9IG52bWVfY21kX3pv
bmVfbWdtdF9zZW5kOwo+KwljLT56bXMubnNpZCA9IGNwdV90b19sZTMyKG5zLT5oZWFkLT5uc19p
ZCk7Cj4rCWMtPnptcy5zbGJhID0gY3B1X3RvX2xlNjQobnZtZV9zZWN0X3RvX2xiYShucywgYmxr
X3JxX3BvcyhyZXEpKSk7Cj4rCWMtPnptcy5hY3Rpb24gPSBhY3Rpb247Cj4rCj4rCWlmIChyZXFf
b3AocmVxKSA9PSBSRVFfT1BfWk9ORV9SRVNFVF9BTEwpCj4rCQljLT56bXMuc2VsZWN0ID0gMTsK
PisKPisJcmV0dXJuIEJMS19TVFNfT0s7Cj4rfQo+ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
bnZtZS5oIGIvaW5jbHVkZS9saW51eC9udm1lLmgKPmluZGV4IGVhMjVkYTU3MmVlZC4uN2IzZmE3
ZGUwN2JkIDEwMDY0NAo+LS0tIGEvaW5jbHVkZS9saW51eC9udm1lLmgKPisrKyBiL2luY2x1ZGUv
bGludXgvbnZtZS5oCj5AQCAtMzc0LDYgKzM3NCwzMCBAQCBzdHJ1Y3QgbnZtZV9pZF9ucyB7Cj4g
CV9fdTgJCQl2c1szNzEyXTsKPiB9Owo+Cj4rc3RydWN0IG52bWVfem5zX2xiYWZlIHsKPisJX19s
ZTY0CQkJenN6ZTsKPisJX191OAkJCXpkZXM7Cj4rCV9fdTgJCQlyc3ZkOVs3XTsKPit9Owo+Kwo+
K3N0cnVjdCBudm1lX2lkX25zX3pucyB7Cj4rCV9fbGUxNgkJCXpvYzsKPisJX19sZTE2CQkJb3pj
czsKPisJX19sZTMyCQkJbWFyOwo+KwlfX2xlMzIJCQltb3I7Cj4rCV9fbGUzMgkJCXJybDsKPisJ
X19sZTMyCQkJZnJsOwo+KwlfX3U4CQkJcnN2ZDIwWzI3OTZdOwo+KwlzdHJ1Y3QgbnZtZV96bnNf
bGJhZmUJbGJhZmVbMTZdOwo+KwlfX3U4CQkJcnN2ZDMwNzJbNzY4XTsKPisJX191OAkJCXZzWzI1
Nl07Cj4rfTsKPisKPitzdHJ1Y3QgbnZtZV9pZF9jdHJsX3pucyB7Cj4rCV9fdTgJemFtZHM7Cj4r
CV9fdTgJcnN2ZDFbNDA5NV07Cj4rfTsKPisKPiBlbnVtIHsKPiAJTlZNRV9JRF9DTlNfTlMJCQk9
IDB4MDAsCj4gCU5WTUVfSURfQ05TX0NUUkwJCT0gMHgwMSwKPkBAIC0zOTIsNiArNDE2LDcgQEAg
ZW51bSB7Cj4KPiBlbnVtIHsKPiAJTlZNRV9DU0lfTlZNCQkJPSAwLAo+KwlOVk1FX0NTSV9aTlMJ
CQk9IDIsCj4gfTsKPgo+IGVudW0gewo+QEAgLTUzMiw2ICs1NTcsMjcgQEAgc3RydWN0IG52bWVf
YW5hX3JzcF9oZHIgewo+IAlfX2xlMTYJcnN2ZDEwWzNdOwo+IH07Cj4KPitzdHJ1Y3QgbnZtZV96
b25lX2Rlc2NyaXB0b3Igewo+KwlfX3U4CQl6dDsKPisJX191OAkJenM7Cj4rCV9fdTgJCXphOwo+
KwlfX3U4CQlyc3ZkM1s1XTsKPisJX19sZTY0CQl6Y2FwOwo+KwlfX2xlNjQJCXpzbGJhOwo+Kwlf
X2xlNjQJCXdwOwo+KwlfX3U4CQlyc3ZkMzJbMzJdOwo+K307Cj4rCj4rZW51bSB7Cj4rCU5WTUVf
Wk9ORV9UWVBFX1NFUVdSSVRFX1JFUQk9IDB4MiwKPit9Owo+Kwo+K3N0cnVjdCBudm1lX3pvbmVf
cmVwb3J0IHsKPisJX19sZTY0CQlucl96b25lczsKPisJX191OAkJcmVzdjhbNTZdOwo+KwlzdHJ1
Y3QgbnZtZV96b25lX2Rlc2NyaXB0b3IgZW50cmllc1tdOwo+K307Cj4rCj4gZW51bSB7Cj4gCU5W
TUVfU01BUlRfQ1JJVF9TUEFSRQkJPSAxIDw8IDAsCj4gCU5WTUVfU01BUlRfQ1JJVF9URU1QRVJB
VFVSRQk9IDEgPDwgMSwKPkBAIC02MjYsNiArNjcyLDkgQEAgZW51bSBudm1lX29wY29kZSB7Cj4g
CW52bWVfY21kX3Jlc3ZfcmVwb3J0CT0gMHgwZSwKPiAJbnZtZV9jbWRfcmVzdl9hY3F1aXJlCT0g
MHgxMSwKPiAJbnZtZV9jbWRfcmVzdl9yZWxlYXNlCT0gMHgxNSwKPisJbnZtZV9jbWRfem9uZV9t
Z210X3NlbmQJPSAweDc5LAo+Kwludm1lX2NtZF96b25lX21nbXRfcmVjdgk9IDB4N2EsCj4rCW52
bWVfY21kX3pvbmVfYXBwZW5kCT0gMHg3ZCwKPiB9Owo+Cj4gI2RlZmluZSBudm1lX29wY29kZV9u
YW1lKG9wY29kZSkJeyBvcGNvZGUsICNvcGNvZGUgfQo+QEAgLTc2NCw2ICs4MTMsNyBAQCBzdHJ1
Y3QgbnZtZV9yd19jb21tYW5kIHsKPiBlbnVtIHsKPiAJTlZNRV9SV19MUgkJCT0gMSA8PCAxNSwK
PiAJTlZNRV9SV19GVUEJCQk9IDEgPDwgMTQsCj4rCU5WTUVfUldfQVBQRU5EX1BJUkVNQVAJCT0g
MSA8PCA5LAo+IAlOVk1FX1JXX0RTTV9GUkVRX1VOU1BFQwkJPSAwLAo+IAlOVk1FX1JXX0RTTV9G
UkVRX1RZUElDQUwJPSAxLAo+IAlOVk1FX1JXX0RTTV9GUkVRX1JBUkUJCT0gMiwKPkBAIC04Mjks
NiArODc5LDUzIEBAIHN0cnVjdCBudm1lX3dyaXRlX3plcm9lc19jbWQgewo+IAlfX2xlMTYJCQlh
cHBtYXNrOwo+IH07Cj4KPitlbnVtIG52bWVfem9uZV9tZ210X2FjdGlvbiB7Cj4rCU5WTUVfWk9O
RV9DTE9TRQkJPSAweDEsCj4rCU5WTUVfWk9ORV9GSU5JU0gJPSAweDIsCj4rCU5WTUVfWk9ORV9P
UEVOCQk9IDB4MywKPisJTlZNRV9aT05FX1JFU0VUCQk9IDB4NCwKPisJTlZNRV9aT05FX09GRkxJ
TkUJPSAweDUsCj4rCU5WTUVfWk9ORV9TRVRfREVTQ19FWFQJPSAweDEwLAo+K307Cj4rCj4rc3Ry
dWN0IG52bWVfem9uZV9tZ210X3NlbmRfY21kIHsKPisJX191OAkJCW9wY29kZTsKPisJX191OAkJ
CWZsYWdzOwo+KwlfX3UxNgkJCWNvbW1hbmRfaWQ7Cj4rCV9fbGUzMgkJCW5zaWQ7Cj4rCV9fbGUz
MgkJCWNkdzJbMl07Cj4rCV9fbGU2NAkJCW1ldGFkYXRhOwo+Kwl1bmlvbiBudm1lX2RhdGFfcHRy
CWRwdHI7Cj4rCV9fbGU2NAkJCXNsYmE7Cj4rCV9fbGUzMgkJCWNkdzEyOwo+KwlfX3U4CQkJYWN0
aW9uOwoKV2h5IG5vdCB6c2EgdG8gbWFrZSBpdCBlYXNpZXIgdG8gbWF0Y2ggdG8gdGhlIHNwZWMK
Cgo+KwlfX3U4CQkJc2VsZWN0OwoKc2VsX2FsbD8KCj4rCV9fdTgJCQlyc3ZkMTNbMl07Cj4rCV9f
bGUzMgkJCWNkdzE0WzJdOwo+K307Cj4rCj4rc3RydWN0IG52bWVfem9uZV9tZ210X3JlY3ZfY21k
IHsKPisJX191OAkJCW9wY29kZTsKPisJX191OAkJCWZsYWdzOwo+KwlfX3UxNgkJCWNvbW1hbmRf
aWQ7Cj4rCV9fbGUzMgkJCW5zaWQ7Cj4rCV9fbGU2NAkJCXJzdmQyWzJdOwo+Kwl1bmlvbiBudm1l
X2RhdGFfcHRyCWRwdHI7Cj4rCV9fbGU2NAkJCXNsYmE7Cj4rCV9fbGUzMgkJCW51bWQ7Cj4rCV9f
dTgJCQl6cmE7Cj4rCV9fdTgJCQl6cmFzZjsKPisJX191OAkJCXByOwoKUGFydGlhbCBSZXBvcnQg
aXMganVzdCBvbmUgYml0IGluIHRoZSAiWm9uZSBSZWNlaXZlIEFjdGlvbiBTcGVjaWZpYwpGZWF0
dXJlcyIuIFdoYXQgYWJvdXQgenJhc2ZlPwoKPisJX191OAkJCXJzdmQxMzsKPisJX19sZTMyCQkJ
Y2R3MTRbMl07Cj4rfTsKPisKPitlbnVtIHsKPisJTlZNRV9aUkFfWk9ORV9SRVBPUlQJCT0gMCwK
PisJTlZNRV9aUkFTRl9aT05FX1JFUE9SVF9BTEwJPSAwLAo+KwlOVk1FX1JFUE9SVF9aT05FX1BB
UlRJQUwJPSAxLAo+K307Cj4rCj4gLyogRmVhdHVyZXMgKi8KPgo+IGVudW0gewo+QEAgLTEzMDAs
NiArMTM5Nyw4IEBAIHN0cnVjdCBudm1lX2NvbW1hbmQgewo+IAkJc3RydWN0IG52bWVfZm9ybWF0
X2NtZCBmb3JtYXQ7Cj4gCQlzdHJ1Y3QgbnZtZV9kc21fY21kIGRzbTsKPiAJCXN0cnVjdCBudm1l
X3dyaXRlX3plcm9lc19jbWQgd3JpdGVfemVyb2VzOwo+KwkJc3RydWN0IG52bWVfem9uZV9tZ210
X3NlbmRfY21kIHptczsKPisJCXN0cnVjdCBudm1lX3pvbmVfbWdtdF9yZWN2X2NtZCB6bXI7Cj4g
CQlzdHJ1Y3QgbnZtZV9hYm9ydF9jbWQgYWJvcnQ7Cj4gCQlzdHJ1Y3QgbnZtZV9nZXRfbG9nX3Bh
Z2VfY29tbWFuZCBnZXRfbG9nX3BhZ2U7Cj4gCQlzdHJ1Y3QgbnZtZl9jb21tb25fY29tbWFuZCBm
YWJyaWNzOwo+QEAgLTE0MzMsNiArMTUzMiwxOCBAQCBlbnVtIHsKPiAJTlZNRV9TQ19ESVNDT1ZF
UllfUkVTVEFSVAk9IDB4MTkwLAo+IAlOVk1FX1NDX0FVVEhfUkVRVUlSRUQJCT0gMHgxOTEsCj4K
PisJLyoKPisJICogSS9PIENvbW1hbmQgU2V0IFNwZWNpZmljIC0gWm9uZWQgY29tbWFuZHM6Cj4r
CSAqLwo+KwlOVk1FX1NDX1pPTkVfQk9VTkRBUllfRVJST1IJPSAweDFiOCwKPisJTlZNRV9TQ19a
T05FX0ZVTEwJCT0gMHgxYjksCj4rCU5WTUVfU0NfWk9ORV9SRUFEX09OTFkJCT0gMHgxYmEsCj4r
CU5WTUVfU0NfWk9ORV9PRkZMSU5FCQk9IDB4MWJiLAo+KwlOVk1FX1NDX1pPTkVfSU5WQUxJRF9X
UklURQk9IDB4MWJjLAo+KwlOVk1FX1NDX1pPTkVfVE9PX01BTllfQUNUSVZFCT0gMHgxYmQsCj4r
CU5WTUVfU0NfWk9ORV9UT09fTUFOWV9PUEVOCT0gMHgxYmUsCj4rCU5WTUVfU0NfWk9ORV9JTlZB
TElEX1RSQU5TSVRJT04JPSAweDFiZiwKPisKPiAJLyoKPiAJICogTWVkaWEgYW5kIERhdGEgSW50
ZWdyaXR5IEVycm9yczoKPiAJICovCj4tLSAKPjIuMjQuMQo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
