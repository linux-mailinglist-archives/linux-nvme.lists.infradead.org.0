Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89877A3D
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Jul 2019 17:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3IAtlLa8i+0vxKvsEV7sAzWDchFUsfDHubcZ3+a96o=; b=B+3BDDDAVYUywS
	a0E0jQdHpd02IdGN2XSGu3+gss0uLqPeIHaDTOlvtyxC3K/Dd6Bl33xWJPjsrBpFL5MNd9F3kiZsE
	jKwjw1BH5/Z30zN7bgL+HAGE/UkxgLv3EF8bjwAKo5ug5f9Zp/akW3oWKVOUFwUmVGCBeeHLRlkBw
	v6RjVBdcjUDr6is97AZqIOFAQHl5TP1BvK6hk49cjeTB1gMd7aS+fPeLyzyDTTVNupqxgixtHcopQ
	GUG1nDD4xTWhkExbjzn9LIv9Pct3zj+K8hO3YBlB62vSn7lz9yKzZ1Jg4bWKhn4kYUAVpTx7PWri/
	vBCAoqB0aZ6OBVn3T7fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOa2-0003hq-4h; Sat, 27 Jul 2019 15:25:54 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOZm-0003hQ-GE
 for linux-nvme@lists.infradead.org; Sat, 27 Jul 2019 15:25:40 +0000
Received: by mail-lf1-x142.google.com with SMTP id x3so39179790lfc.0
 for <linux-nvme@lists.infradead.org>; Sat, 27 Jul 2019 08:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lightnvm-io.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ym6q/Tk5ubnbRozwRL7P2B558NBkwxlmyFsCh6d0YF4=;
 b=Z7lMnFR91KUHTA+Wd1JL+M9mq9zbNsFqDwZCJ68V5rZzMzpEjFVS90UGqG9OXfCpoJ
 4xNPTuu5nfm0GLtaMRNXV+Ww/WVLGf9B7stnz4Kfqg1yVDHtUhlx9SFaVFXHV0QT+/nR
 PPIiqGsZiHSGTcujYLHKgXtF7lwXxQ8dzUKHLq4TsNoPZyjRchkMf+KiTAr6Wxlnc9QA
 fvNZGp4ibuANSS4ELGgyjYLPdaUltlVGZR8UBDbM8OCsx/oTAUW22V5K26eHCznYNiKZ
 MKf+1rwhaaEmgj4WOTrS7kThqDs5qv4i6v565lDuXVVDKBjVbtrxPRccM97i2ctkWIx/
 25fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ym6q/Tk5ubnbRozwRL7P2B558NBkwxlmyFsCh6d0YF4=;
 b=nOcNhY+RQ8lD8wTZuRW/PC+U56Ne2mgJ7dvlf3ucYFGbV21VkmNobJ0+sN2dpCJ1QT
 3YikdvKJgOWoMlE9fOhYlukbVPNhrDQKSANKHjHuMH1dKJrebSQuwspYgCypWphXi5zd
 Vz9mNKhznp/vvoR7bTT+viiEU8iYhd/pasp6IGXf7cv9SF+QBV16pSKK+DWxy7WgNBN9
 dGTPjdpU7AabGFuz0mCY97flkh9S3M+BEpIiSdajwv7m3Eruil82zVAUtaIaef9jGoWI
 Mw/E6roNrxeBmE9HFBk00jPx73X0zpAY+9gMs6A7GztmsVXed3cwlwksP+0IGBTLALd8
 XcSQ==
X-Gm-Message-State: APjAAAXxNgvXbEj9H6U8e9/19bjuAItquP9mWoWNCVp/oYjngO4Z+WX+
 x/frfC6KmTWoc7oBcV/Tpc3jRTJQvpy3FK0Cavc=
X-Google-Smtp-Source: APXvYqwpfD40Gd+wd99wYFN9JYFnSsS3gxFU17UvwNH2BtgxcaNlFrzfn668cyvS5zdvsU8w7yO73MtM1384yTdkSjo=
X-Received: by 2002:a19:7616:: with SMTP id c22mr48345379lff.115.1564241135760; 
 Sat, 27 Jul 2019 08:25:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
 <20190723183601.29370-5-minwoo.im.dev@gmail.com>
 <a40ea502-e293-e07c-9f7b-e5f9cc118adf@lightnvm.io>
 <20190725152926.GF3018@minwoo-desktop>
In-Reply-To: <20190725152926.GF3018@minwoo-desktop>
From: =?UTF-8?Q?Matias_Bj=C3=B8rling?= <mb@lightnvm.io>
Date: Sat, 27 Jul 2019 17:25:24 +0200
Message-ID: <CAOA7RkOe_pOvuSJZVhYkm8c=pC6bOu1g4Y0cN7wARrcMqoCEVA@mail.gmail.com>
Subject: Re: [PATCH 4/5] lnvm: introduce chunk-log command for chunk info
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_082538_601078_CB6C86AC 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Keith Busch <kbusch@kernel.org>,
 =?UTF-8?Q?Javier_Gonz=C3=A1lez?= <javier@javigon.com>,
 Klaus Birkelund <klaus@birkelund.eu>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTWlud29vLAoKU29tZXRoaW5nIGxpa2UgdGhpcyB3b3VsZCBkbzoKClRvdGFsIGNodW5rcyBp
biBuYW1lc3BhY2U6ICVkCi4uLgpTTEJBOiAweGVlNDAwMDAgIFdQOiAweDEyMzQ1Njc4ICBDTkxC
OiAweDEyMzQ1IFdMSTogWFhYICAgU3RhdGU6IEZSRUUKICAgICAgVHlwZTogU0VRV1JJVEVfUkVR
ICAgQXR0cnM6IDB4MDAKLi4uCgpUaGFuayB5b3UsCk1hdGlhcwoKT24gVGh1LCBKdWwgMjUsIDIw
MTkgYXQgNToyOSBQTSBNaW53b28gSW0gPG1pbndvby5pbS5kZXZAZ21haWwuY29tPiB3cm90ZToK
Pgo+IE9uIDE5LTA3LTI0IDE0OjI3OjEwLCBNYXRpYXMgQmrDuHJsaW5nIHdyb3RlOgo+ID4gQ291
bGQgeW91IHNxdWFzaCBwYXRjaCAyLCAzIGFuZCA0IHRvZ2V0aGVyICg0IGJlaW5nIHRoZSBtYWlu
IHBhdGNoKSAtIFRoZXkKPiA+IGJlbG9uZyB0b2dldGhlciB0byBpbXBsZW1lbnQgb25lIGZlYXR1
cmUuCj4gPgo+ID4gQXMgYSBzaWRlLW5vdGUsIHdlIGhhdmUgdGhlIHNhbWUgY29tbWFuZCBmb3Ig
Wk5TICh0aGF0IHdpbGwgYmUgcHVzaGVkIHdoZW4KPiA+IHRoZSBaTlMgVFAgaXMgcmF0aWZpZWQp
IC0gSW4gdGhhdCwgd2UndmUgYWxzbyBhZGRlZCBzdXBwb3J0IGZvciBzdXBwbHlpbmcKPiA+IHN0
YXJ0IGxiYSBhbmQgbnVtYmVyIG9mIGNodW5rcyAoem9uZXMpIHRvIHJldHVybi4gQ291bGQgeW91
IGFkZCB0aGF0IGFzIHdlbGwKPiA+IHRvIHRoaXM/IFRoZW4gdGhlcmUgaXMgY29oZXJlbmN5IGJl
dHdlZW4gdGhlIHR3bz8KPgo+IE1hdGlhcywKPgo+IEkganVzdCBoYWQgYSBkZWVwIGxvb2sgYXQg
eW91ciBzbGlkZSBhYm91dCB0aGUgWk5TIHdoaWNoIGNhbiBiZSBmb3VuZCBhdAo+IFsxXS4gIFNv
cnJ5LCBJIG1pc3VuZGVyc3Rvb2QgeW91ciBtZWFuaW5nIGhlcmUuCj4KPiBUaGlzIHBhdGNoIGFs
cmVhZHkgaW50cm9kdWNlZCB0aGUgU0xCQSBpbiBpdHMgY2h1bmssIGJ1dCBubyBucl9jaHVua3Mg
aW4KPiBhIHNpbmdsZSBzdW1tYXJ5IGxpbmUuICBEbyB5b3Ugd2FudCBtZSB0byBwcmludCBpdCBs
aWtlOgo+Cj4gICAgICAgICByb290QGhvc3Q6fi9udm1lLWNsaS5naXQjIG52bWUgbG52bSBjaHVu
ay1sb2cgL2Rldi9udm1lMG4xCj4gICAgICAgICBucl9jaHVua3M6IDQ4MAo+ICAgICAgICAgIFsg
ICAgMF0geyBjczogMHgyLCBjdDogMHgxLCB3bGk6IDIsIHNsYmE6IDB4MDAwMDAwMDAwMDAwMDAw
MCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3cDogMHgwMDAwMDAwMDAwMDAxMDAwIH0KPiAg
ICAgICAgICBbICAgIDFdIHsgY3M6IDB4MiwgY3Q6IDB4MSwgd2xpOiAxLCBzbGJhOiAweDAwMDAw
MDAwMDAwMDEwMDAsIGNubGI6IDB4MDAwMDAwMDAwMDAwMTAwMCwgd3A6IDB4MDAwMDAwMDAwMDAw
MTAwMCB9Cj4gICAgICAgICAgWyAgICAyXSB7IGNzOiAweDEsIGN0OiAweDEsIHdsaTogMCwgc2xi
YTogMHgwMDAwMDAwMDAwMDAyMDAwLCBjbmxiOiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAw
MDAwMDAwMDAwMDAwMDAgfQo+ICAgICAgICAgIFsgICAgM10geyBjczogMHgxLCBjdDogMHgxLCB3
bGk6IDAsIHNsYmE6IDB4MDAwMDAwMDAwMDAwMzAwMCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAw
LCB3cDogMHgwMDAwMDAwMDAwMDAwMDAwIH0KPiAgICAgICAgICBbICAgIDRdIHsgY3M6IDB4MSwg
Y3Q6IDB4MSwgd2xpOiAwLCBzbGJhOiAweDAwMDAwMDAwMDAwMDQwMDAsIGNubGI6IDB4MDAwMDAw
MDAwMDAwMTAwMCwgd3A6IDB4MDAwMDAwMDAwMDAwMDAwMCB9Cj4gICAgICAgICAgWyAgICA1XSB7
IGNzOiAweDEsIGN0OiAweDEsIHdsaTogMCwgc2xiYTogMHgwMDAwMDAwMDAwMDA1MDAwLCBjbmxi
OiAweDAwMDAwMDAwMDAwMDEwMDAsIHdwOiAweDAwMDAwMDAwMDAwMDAwMDAgfQo+ICAgICAgICAg
IFsgICAgNl0geyBjczogMHgxLCBjdDogMHgxLCB3bGk6IDAsIHNsYmE6IDB4MDAwMDAwMDAwMDAw
NjAwMCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3cDogMHgwMDAwMDAwMDAwMDAwMDAwIH0K
PiAgICAgICAgIC4uLgo+ICAgICAgICAgIFsgIDQ3OF0geyBjczogMHgxLCBjdDogMHgxLCB3bGk6
IDAsIHNsYmE6IDB4MDAwMDAwMDAwMDFmYTAwMCwgY25sYjogMHgwMDAwMDAwMDAwMDAxMDAwLCB3
cDogMHgwMDAwMDAwMDAwMDAwMDAwIH0KPiAgICAgICAgICBbICA0NzldIHsgY3M6IDB4MSwgY3Q6
IDB4MSwgd2xpOiAwLCBzbGJhOiAweDAwMDAwMDAwMDAxZmIwMDAsIGNubGI6IDB4MDAwMDAwMDAw
MDAwMTAwMCwgd3A6IDB4MDAwMDAwMDAwMDAwMDAwMCB9Cj4KPiBUaGFua3MhCj4KPiBbMV0gaHR0
cHM6Ly9udm1leHByZXNzLm9yZy93cC1jb250ZW50L3VwbG9hZHMvTlZNZUFubnVhbE1lZXRpbmcy
MDE5LVpOU3YzLnBwdHgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
