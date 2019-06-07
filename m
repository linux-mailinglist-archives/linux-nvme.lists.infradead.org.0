Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC8038ED7
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 17:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1pqmaqbkw5+piBs+/avQvMvpYITfLwshsoEgYB+dWo=; b=akvYLLJpA0NbGd
	VP9JbXtXq56LXsfcOWpr77KBiSV/tqxWzZ0N3nXnSYEdmgKxJ3pQRwEr3J8FbWYCNvsTCvXBXSLJx
	XmwrkaPNKmEmIj72Fp35zJfvlToFhMvWS1o7hHuqiAz6chP+J8v0FmrOoFkdOXGCAQrA4Hx7v5nks
	H3G755nebieh5tTX9mDV7mCqKZT5oRx4RTm14Pl/lHX5WCpNhkUSGPwfMEkcyFgzN3KhP2TXnVQiO
	gaycWfc1YG2560OgItIedWaaifwkSFsOBnMoRcmZPb1lEZLFlBEy3/o+KkGhVHPoKhzt4BQvPGu0N
	2OEhseN13p0bFv1mrn3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGgW-0004Hw-0q; Fri, 07 Jun 2019 15:21:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGgG-00049W-Fc
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 15:21:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so1367983pfy.13
 for <linux-nvme@lists.infradead.org>; Fri, 07 Jun 2019 08:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oNhcytXWveMc1nWQXL0zsbU1lBhZzb+MlCG0A16RJKo=;
 b=eyvoLvzghHynrn1+OQBDCBIUIXbaDiLRNd6cJpHLPzTozwEPK/5GseynaQHAuy2d+w
 7miYvVloGp+LAE+ZVtQ8ej/BQdN8fmlJoOTgg//bX1gIkCILKVpGO1UlDKYh+XOECT1I
 WffQCHdhCw8pOfTgWsq9HCStKSwR28LHSFPXGMtR686QKZp/3hr69MSMzS1d0hOTSb5T
 KVmL34DnGXZBjYRMVZame93Z+7vfWMRVjqwc9S8TDq72G/Qi6rN8UTCy+5oIJOvYXgS6
 A6Tmem6DWhwYpPLLqJg4pU8s783e9UaPvK781Lh3Cqu3B9PW0xbmlcPegYUTyWVFH8U3
 sYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oNhcytXWveMc1nWQXL0zsbU1lBhZzb+MlCG0A16RJKo=;
 b=GDYXaHkBGA6Hv9poZNRGOrhwsiWioqDiT1gf26h/9eb4IAwstaZhT7farnf/iEZP6Z
 FE4o8rt4A/FxiLHMwsscLglcWWK27jxw4a1ngXAcgDgeJb9j+jvYy/xlvGigH9lthy7q
 8SbYT6AxwKBUa7PLB98RkdSlAEL/GBXbw13f+C9lykworGdQ31G4u7SJ2NCkM+ysKA9v
 5HuQE795LDQElphq8gM/Nq2K6kL9zN7ZhiAR6sFbKwSIZSR3f/jhgDYmqfMSH32UMAQ0
 htiPI2hGXkFX44+jSOf+klb5xvb8MKDMi7+pbyZCFg0WkDkCyOYkyMvK6xISwnT5B+0Q
 HzgA==
X-Gm-Message-State: APjAAAVmO5rqeFQZg0lstiBSD5It5X4A4y3Nc9l6GKdIcpMWgv3sm6ag
 Pu5WXZG5y/FJmcw/xggYmAh5ubW/95BxijcyZ9U=
X-Google-Smtp-Source: APXvYqyHReH6jcihT1B/TsQx30br/y2rARxpg6BevwsP0DcCGDuoBVi8+DSDP3nR9p9TTOsyioNYygZN1uyO4rZzDwQ=
X-Received: by 2002:a62:585:: with SMTP id 127mr57713584pff.231.1559920883371; 
 Fri, 07 Jun 2019 08:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
 <20190603023617.GA8567@localhost.localdomain>
 <CAC5umyj9V0sTD-ZsK6Q684wPdMpJGs434vDtZDm6a8gwoz3D7Q@mail.gmail.com>
 <20190606040506.GA1913@localhost.localdomain>
In-Reply-To: <20190606040506.GA1913@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 8 Jun 2019 00:21:12 +0900
Message-ID: <CAC5umyhx-Ger4ZGcEu+mDNxgPPBCBEROhAEODAKqSv_p9QRw4g@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] nvme: add thermal zone devices
To: Eduardo Valentin <edubezval@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_082124_547151_10A49DCE 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-pm@vger.kernel.org,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDbmnIg25pelKOacqCkgMTM6MDUgRWR1YXJkbyBWYWxlbnRpbiA8ZWR1YmV6dmFsQGdt
YWlsLmNvbT46Cgo+ID4gPiA+ICtzdGF0aWMgc3RydWN0IHRoZXJtYWxfem9uZV9wYXJhbXMgbnZt
ZV90el9wYXJhbXMgPSB7Cj4gPiA+ID4gKyAgICAgLmdvdmVybm9yX25hbWUgPSAidXNlcl9zcGFj
ZSIsCj4gPiA+Cj4gPiA+IEFsc28sCj4gPiA+Cj4gPiA+IFdhcyB0aGVyZSBhbnkgcGFydGljdWxh
ciByZWFzb24gd2h5IGRlZmF1bHRpbmcgdG8gdXNlcl9zcGFjZSBoZXJlPwo+ID4KPiA+IEkgb25s
eSB0ZXN0ZWQgd2l0aCB0aGUgdXNlcl9zcGFjZSBnb3Zlcm5vci4gIFRoZXJlIGlzIG5vIGNvb2xp
bmcgZGV2aWNlCj4gPiB0byBiaW5kIHdpdGggdGhpcy4KPiA+Cj4KPiBobW1tLi4gSSBzZWUuIEJ1
dCB3YXMgdGhlcmUgYW55IHBhcnRpY3VsYXIgcmVhc29uIHRvIHBpY2sgdGhlIHRoZXJtYWwKPiBz
dWJzeXN0ZW0gaGVyZSBpZiB5b3UgZG8gbm90IGhhdmUgYW55IGNvb2xpbmc/IE9yIGlzIHRoZXJl
IGFueSBzcGVjaWZpYwo+IGNvb2xpbmcgdGhhdCBjYW4gYmUgd3JpdHRlbiBpbiBmdXR1cmU/Cj4K
PiBJZiBubyBjb29saW5nIGlzIGV4cGVjdGVkLCB3aHkgbm90IGEgc2ltcGxlIGh3bW9uPwoKRm9y
IGV4YW1wbGUsIHdlIGNhbiB1c2UgVVNCIHBvcnQgcG93ZXJlZCBjb29saW5nIGZhbiB3aXRoIFVT
QiBodWIgdGhhdApzdXBwb3J0cyBwZXItcG9ydCBwb3dlciBzd2l0Y2hpbmcuICBJdCBjYW4gYmUg
dHVybmVkIG9uIGFuZCBvZmYgYnkgdXNlcgpzcGFjZSB0b29sLgoKPiA+ID4gPiArICAgICAubm9f
aHdtb24gPSB0cnVlLAo+ID4gPiA+ICt9Owo+ID4gPiA+ICsKPiA+ID4gPiArc3RhdGljIHN0cnVj
dCB0aGVybWFsX3pvbmVfZGV2aWNlICoKPiA+ID4gPiArbnZtZV90aGVybWFsX3pvbmVfcmVnaXN0
ZXIoc3RydWN0IG52bWVfY3RybCAqY3RybCwgdW5zaWduZWQgaW50IHNlbnNvcikKPiA+ID4gPiAr
ewo+ID4gPiA+ICsgICAgIHN0cnVjdCB0aGVybWFsX3pvbmVfZGV2aWNlICp0emRldjsKPiA+ID4g
PiArICAgICBjaGFyIG5hbWVbVEhFUk1BTF9OQU1FX0xFTkdUSF07Cj4gPiA+ID4gKyAgICAgaW50
IHJldDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgc25wcmludGYobmFtZSwgc2l6ZW9mKG5hbWUp
LCAibnZtZSVkX3RlbXAldSIsIGN0cmwtPmluc3RhbmNlLCBzZW5zb3IpOwo+ID4gPiA+ICsKPiA+
ID4gPiArICAgICB0emRldiA9IHRoZXJtYWxfem9uZV9kZXZpY2VfcmVnaXN0ZXIobmFtZSwgMSwg
MSwgY3RybCwgJm52bWVfdHpfb3BzLAo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAmbnZtZV90el9wYXJhbXMsIDAsIDApOwo+ID4gPiA+ICsgICAgIGlm
IChJU19FUlIodHpkZXYpKSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICBkZXZfZXJyKGN0cmwtPmRl
dmljZSwKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgIkZhaWxlZCB0byByZWdpc3RlciB0
aGVybWFsIHpvbmUgZGV2aWNlOiAlbGRcbiIsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IFBUUl9FUlIodHpkZXYpKTsKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiB0emRldjsKPiA+
ID4gPiArICAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHNucHJpbnRmKG5hbWUsIHNpemVv
ZihuYW1lKSwgInRlbXAlZCIsIHNlbnNvcik7Cj4gPiA+ID4gKyAgICAgcmV0ID0gc3lzZnNfY3Jl
YXRlX2xpbmsoJmN0cmwtPmN0cmxfZGV2aWNlLmtvYmosICZ0emRldi0+ZGV2aWNlLmtvYmosCj4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbmFtZSk7Cj4gPiA+ID4gKyAgICAg
aWYgKHJldCkKPiA+ID4gPiArICAgICAgICAgICAgIGdvdG8gZGV2aWNlX3VucmVnaXN0ZXI7Cj4g
PiA+ID4gKwo+ID4gPiA+ICsgICAgIHJldCA9IHN5c2ZzX2NyZWF0ZV9saW5rKCZ0emRldi0+ZGV2
aWNlLmtvYmosCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmN0cmwtPmN0
cmxfZGV2aWNlLmtvYmosICJkZXZpY2UiKTsKPiA+ID4gPiArICAgICBpZiAocmV0KQo+ID4gPiA+
ICsgICAgICAgICAgICAgZ290byByZW1vdmVfbGluazsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAg
cmV0dXJuIHR6ZGV2Owo+ID4gPiA+ICsKPiA+ID4gPiArcmVtb3ZlX2xpbms6Cj4gPiA+ID4gKyAg
ICAgc3lzZnNfcmVtb3ZlX2xpbmsoJmN0cmwtPmN0cmxfZGV2aWNlLmtvYmosIG5hbWUpOwo+ID4g
PiA+ICtkZXZpY2VfdW5yZWdpc3RlcjoKPiA+ID4gPiArICAgICB0aGVybWFsX3pvbmVfZGV2aWNl
X3VucmVnaXN0ZXIodHpkZXYpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICByZXR1cm4gRVJSX1BU
UihyZXQpOwo+ID4gPiA+ICt9Cj4gPiA+ID4gKwo+ID4gPiA+ICsvKioKPiA+ID4gPiArICogbnZt
ZV90aGVybWFsX3pvbmVzX3JlZ2lzdGVyKCkgLSByZWdpc3RlciBudm1lIHRoZXJtYWwgem9uZSBk
ZXZpY2VzCj4gPiA+ID4gKyAqIEBjdHJsOiBjb250cm9sbGVyIGluc3RhbmNlCj4gPiA+ID4gKyAq
Cj4gPiA+ID4gKyAqIFRoaXMgZnVuY3Rpb24gY3JlYXRlcyB1cCB0byBuaW5lIHRoZXJtYWwgem9u
ZSBkZXZpY2VzIGZvciBhbGwgaW1wbGVtZW50ZWQKPiA+ID4gPiArICogdGVtcGVyYXR1cmUgc2Vu
c29ycyBpbmNsdWRpbmcgdGhlIGNvbXBvc2l0ZSB0ZW1wZXJhdHVyZS4KPiA+ID4gPiArICogRWFj
aCB0aGVybWFsIHpvbmUgZGV2aWNlIHByb3ZpZGVzIGEgc2luZ2xlIHRyaXAgcG9pbnQgdGVtcGVy
YXR1cmUgdGhhdCBpcwo+ID4gPiA+ICsgKiBhc3NvY2lhdGVkIHdpdGggYW4gb3ZlciB0ZW1wZXJh
dHVyZSB0aHJlc2hvbGQuCj4gPiA+ID4gKyAqLwo+ID4gPiA+ICtzdGF0aWMgaW50IG52bWVfdGhl
cm1hbF96b25lc19yZWdpc3RlcihzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsKQo+ID4gPiA+ICt7Cj4g
PiA+ID4gKyAgICAgc3RydWN0IG52bWVfc21hcnRfbG9nICpsb2c7Cj4gPiA+ID4gKyAgICAgaW50
IHJldDsKPiA+ID4gPiArICAgICBpbnQgaTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgbG9nID0g
a3phbGxvYyhzaXplb2YoKmxvZyksIEdGUF9LRVJORUwpOwo+ID4gPiA+ICsgICAgIGlmICghbG9n
KQo+ID4gPiA+ICsgICAgICAgICAgICAgcmV0dXJuIDA7IC8qIG5vbi1mYXRhbCBlcnJvciAqLwo+
ID4gPgo+ID4gPiBJIGFtIG5vdCBzdXJlIGFib3V0IHRoaXMgQVBJIGRlc2lnbiBoZXJlLiBJIHdv
dWxkIGxlYXZlIHRoZSBlcnJvcgo+ID4gPiBoYW5kbGluZyBhbmQganVkZ2luZyBpZiB0aGlzIGlz
IGZhdGFsIG9yIG5vdCB0byB0aGUgY2FsbGVyLgo+ID4gPiBJIG1lYW4sIGlmIEkgYXNrIHRvIHJl
Z2lzdGVyIGEgbnZtZSB0aGVybWFsIHpvbmUgYW5kIEkgZ2V0Cj4gPiA+IGEgMCBhcyByZXNwb25z
ZSwgSSB3b3VsZCBhc3N1bWUgdGhlIHRoZXJtYWwgem9uZSBleGlzdHMgZnJvbQo+ID4gPiBub3cg
b24sIHJpZ2h0Pwo+ID4KPiA+IFRoaXMgcm91dGluZSBpcyBkZXNpZ25lZCB0byByZXR1cm4gZXJy
b3IgY29kZSBvbmx5IHdoZW4gd2UncmUgdW5hYmxlIHRvCj4gPiBjb21tdW5pY2F0ZSB3aXRoIHRo
ZSBkZXZpY2UgYXQgYWxsIChpLmUuIG52bWVfc3VibWl0X3N5bmNfY21kIHJldHVybnMgYQo+ID4g
bmVnYXRpdmUgdmFsdWUpLgo+ID4KPiA+IFdlIGRvbid0IHdhbnQgdG8gYWJhbmRvbiBkZXZpY2Ug
aW5pdGlhbGl6YXRpb24ganVzdCBkdWUgdG8gdGhlcm1hbCB6b25lCj4gPiBmYWlsdXJlcy4gIEJl
Y2F1c2UgdGhlcm1hbCB6b25lIGRldmljZSBpc24ndCBtYW5kYXRvcnkgdG8gbWFuYWdlIHRoZQo+
ID4gY29udHJvbGxlcnMsIGFuZCB0aGUgZGV2aWNlIGxpa2UgcWVtdSBkb2Vzbid0IHByb3ZpZGUg
c21hcnQgbG9nIChhY2NvcmRpbmcKPiA+IHRvIEtlaXRoKS4KPgo+IFRoYXQgaXMgZmFpci4uIGl0
IGlzIGp1c3QgcmVhbGx5IHdlaXJkIHRvIGNvbnRpbnVlIHlvdXIgYnVzaW5lc3Mgd2hlbgo+IHRo
ZSBrZXJuZWwgY2Fubm90IGV2ZW4gYWxsb2NhdGUgbWVtb3J5IGZvciB5b3UuLgoKUmlnaHQuICBU
aGUgc3lzdGVtIGlzIG5vdCB1bmxpa2VseSB0byBjb250aW51ZSB3b3JraW5nIHByb3Blcmx5IHdo
ZW4gdW5kZXIKcGFnZSBzaXplIGFsbG9jYXRpb24gd2l0aCBHRlBfS0VSTkVMIGlzIGZhaWxlZCwg
dW5sZXNzIGZhdWx0IGluamVjdGlvbiBmb3IKYWxsb2NhdGlvbiBpcyBlbmFibGVkLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWls
aW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
