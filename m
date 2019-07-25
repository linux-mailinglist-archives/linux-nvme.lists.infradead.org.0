Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0124B754F7
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4M7nSrJZh4yqnvAf8Ls+dXe21kIGRSL/q49tPxE/rY=; b=UYwfVozmHYKFkK
	a5bXfeNjshytMY/eaZkMK6DVRPNL6PRD/zlGCvpHvl6/MP+jgCzGD+5eC9PfU/SFnkJfFhnZ4e6J0
	YUCINB3rzlhylR8Sn8LyM7tubKeVY23lta5tFKjmeieXxm/vg+3o0iDwcOodtcaBZGeAhlhgEg38t
	M0KCqHE2tO2WXzp8xpkfVC6pThf6ORMpMNvfC/on/hekGBXzPyh3Ot3Dx2ye97Il2lu+bmvtEdZUq
	Cu1wfOWSsC8/zFrqVl4LegvRChlV34CP6xPxZDiSG3ikesuCqU+bPRHc+rN5JiQo5y39CNbdYUvxq
	9fDBMuLPguXkXGSZSqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqh6e-0006hS-Oa; Thu, 25 Jul 2019 17:00:40 +0000
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqh6C-0006NC-8Z
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:00:13 +0000
Received: by mail-ot1-f48.google.com with SMTP id q20so52313391otl.0
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 10:00:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nu/6Jl+HBxw+VOc7p7gwAZO2Ah9nif6btTNqwzyXHtE=;
 b=ml18wCCs5brZcTpBTRW6KpEpnRPxy+0AVWtxSwRpj+yOspEgFwhJofyG/hTN/IW3WW
 /dP/1D6iw2/H2jfbggZqBTqwfZO9Okggt3zqjGYCnfBCwcWbigEsWKfHrcmT3lKx/rgn
 NT6DArf6IW+rMp2pg6CJwAnv4GuI2mek/biDiuc4FNHnSiTV4jud0CXSY5lXs8Pp75JA
 9vHCzLnRuLfwR4yorg/r3HsAeWYV8q3CH5V4cx7cR7uP/0CQ3FvxzUQJwyZ/yxbqnjyT
 wNPl+LAKS6wLHsvGG4KhXBQc9Ro/OJobQFqTrzPprZ1Y1T8W74UCGNPFhWv+WaTwEdoH
 1xWQ==
X-Gm-Message-State: APjAAAXrqR1ra/FbMEHNwWKyDnV4P9N2eEnFiAu+cNHPfLBg6CXtJvwl
 Shwa0QZb/OhJsAXFQaTfp2w/vo6dk+Ua4oLcEmY=
X-Google-Smtp-Source: APXvYqzMgHXa1Gkf/c/ovl2wHUVQ2oCDhTGepbQxnE05RSibxMVYVgLmVpuyMF6RzbOdNMUmQ/gQHjcIFBrqMNisrZo=
X-Received: by 2002:a05:6830:1516:: with SMTP id
 k22mr61254051otp.189.1564074010668; 
 Thu, 25 Jul 2019 10:00:10 -0700 (PDT)
MIME-Version: 1.0
References: <2332799.izEFUvJP67@kreacher>
 <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
In-Reply-To: <E62786E4-5DA9-4542-899A-658D0E021190@canonical.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 25 Jul 2019 18:59:59 +0200
Message-ID: <CAJZ5v0h++56je0z_3f9K9g3qtZMcquKC=7Ew+fmu6+KjCsjMWA@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_100012_362986_8E064D30 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBKdWwgMjUsIDIwMTkgYXQgNDowMiBQTSBLYWktSGVuZyBGZW5nCjxrYWkuaGVuZy5m
ZW5nQGNhbm9uaWNhbC5jb20+IHdyb3RlOgo+Cj4gSGkgUmFmYWVsLAo+Cj4gYXQgMTc6NTEsIFJh
ZmFlbCBKLiBXeXNvY2tpIDxyandAcmp3eXNvY2tpLm5ldD4gd3JvdGU6Cj4KPiA+IEhpIEtlaXRo
LAo+ID4KPiA+IFVuZm9ydHVuYXRlbHksCj4gPgo+ID4gY29tbWl0IGQ5MTZiMWJlOTRiNmRjOGQy
OTNhYmVkMjQ1MWYzMDYyZjZhZjc1NTEKPiA+IEF1dGhvcjogS2VpdGggQnVzY2ggPGtlaXRoLmJ1
c2NoQGludGVsLmNvbT4KPiA+IERhdGU6ICAgVGh1IE1heSAyMyAwOToyNzozNSAyMDE5IC0wNjAw
Cj4gPgo+ID4gICAgIG52bWUtcGNpOiB1c2UgaG9zdCBtYW5hZ2VkIHBvd2VyIHN0YXRlIGZvciBz
dXNwZW5kCj4gPgo+ID4gZG9lc24ndCB1bml2ZXJzYWxseSBpbXByb3ZlIHRoaW5ncy4gIEluIGZh
Y3QsIGluIHNvbWUgY2FzZXMgaXQgbWFrZXMKPiA+IHRoaW5ncyB3b3JzZS4KPiA+Cj4gPiBGb3Ig
ZXhhbXBsZSwgb24gdGhlIERlbGwgWFBTMTMgOTM4MCBJIGhhdmUgaGVyZSBpdCBwcmV2ZW50cyB0
aGUgcHJvY2Vzc29yCj4gPiBwYWNrYWdlCj4gPiBmcm9tIHJlYWNoaW5nIGlkbGUgc3RhdGVzIGRl
ZXBlciB0aGFuIFBDMiBpbiBzdXNwZW5kLXRvLWlkbGUgKHdoaWNoLCBvZgo+ID4gY291cnNlLCBh
bHNvCj4gPiBwcmV2ZW50cyB0aGUgU29DIGZyb20gcmVhY2hpbmcgYW55IGtpbmQgb2YgUzBpeCku
Cj4gPgo+ID4gVGhhdCBjYW4gYmUgcmVhZGlseSBleHBsYWluZWQgdG9vLiAgTmFtZWx5LCB3aXRo
IHRoZSBjb21taXQgYWJvdmUgdGhlCj4gPiBOVk1lIGRldmljZQo+ID4gc3RheXMgaW4gRDAgb3Zl
ciBzdXNwZW5kL3Jlc3VtZSwgc28gdGhlIHJvb3QgcG9ydCBpdCBpcyBjb25uZWN0ZWQgdG8gYWxz
bwo+ID4gaGFzIHRvIHN0YXkgaW4KPiA+IEQwIGFuZCB0aGF0ICJibG9ja3MiIHBhY2thZ2UgQy1z
dGF0ZXMgZGVlcGVyIHRoYW4gUEMyLgo+ID4KPiA+IEluIG9yZGVyIGZvciB0aGUgcm9vdCBwb3J0
IHRvIGJlIGFibGUgdG8gZ28gdG8gRDMsIHRoZSBkZXZpY2UgY29ubmVjdGVkCj4gPiB0byBpdCBh
bHNvIG5lZWRzCj4gPiB0byBnbyBpbnRvIEQzLCBzbyBpdCBsb29rcyBsaWtlIChhdCBsZWFzdCBv
biB0aGlzIHBhcnRpY3VsYXIgbWFjaGluZSwgYnV0Cj4gPiBtYXliZSBpbgo+ID4gZ2VuZXJhbCks
IGJvdGggRDMgYW5kIHRoZSBOVk1lLXNwZWNpZmljIFBNIGFyZSBuZWVkZWQuCj4gPgo+ID4gSSdt
IG5vdCBzdXJlIHdoYXQgdG8gZG8gaGVyZSwgYmVjYXVzZSBldmlkZW50bHkgdGhlcmUgYXJlIHN5
c3RlbXMgd2hlcmUKPiA+IHRoYXQgY29tbWl0Cj4gPiBoZWxwcy4gIEkgd2FzIHRoaW5raW5nIGFi
b3V0IGFkZGluZyBhIG1vZHVsZSBvcHRpb24gYWxsb3dpbmcgdGhlIHVzZXIgdG8KPiA+IG92ZXJy
aWRlIHRoZQo+ID4gZGVmYXVsdCBiZWhhdmlvciB3aGljaCBpbiB0dXJuIHNob3VsZCBiZSBjb21w
YXRpYmxlIHdpdGggNS4yIGFuZCBlYXJsaWVyCj4gPiBrZXJuZWxzLgo+Cj4gSSBqdXN0IGJyaWVm
bHkgdGVzdGVkIHMyaSBvbiBYUFMgOTM3MCwgYW5kIHRoZSBwb3dlciBtZXRlciBzaG93cyBhIDAu
OH4wLjlXCj4gcG93ZXIgY29uc3VtcHRpb24gc28gYXQgbGVhc3QgSSBkb27igJl0IHNlZSB0aGUg
aXNzdWUgb24gWFBTIDkzNzAuCgpJdCB3b3JrcyBmb3IgbWUgb24gYSBYUFMxMyA5MzYwIHRvbywg
b25seSB0aGUgOTM4MCBpcyBwcm9ibGVtYXRpYy4KCj4gQ2FuIHlvdSBwbGVhc2UgcHJvdmlkZSB0
aGUgb3V0cHV0IG9mIGBudm1lIGlkLWN0cmwgL2Rldi9udm1lKmAgYW5kIEnigJlsbAo+IHRlc3Qg
dGhlIE5WTWUgY29udHJvbGxlciBvbiBYUFMgOTM4MC4KCkknbGwgcmVwbHkgdG8gS2VpdGggd2l0
aCB0aGF0IGxhdGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
