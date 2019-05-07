Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C6E16998
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eogW/HZ/ob8J+5t+8s+CSHBRI9P5ttyUG8xCaODQCvo=; b=firONtA7sfTTUJFfpSzRAbd8D
	X9t2zmSlIdVZNSR+Dvd9uG43MrgiOsPNEj6tMOfKBNTHUkdhPtc0n4EaZWm5EFPYK4i+2zAbw9u1O
	FIQixE759/SCgx1/1JY+6OBbw/dBNRe+byX6smFatkL+EmfB8lVvqh/1QXJU1nKtcIW0Jtay+5qoA
	wSMYJm4H8d5g+ztxHr32SRSTz2MH0Vfqw8SGxyE/vYyJuInUHyFlsq8FeieOwkHjnVmNVhusEzh8k
	Wyr+kjSvAKnrRFijlIOwhN0CmtEarX/eNcm0ar/YrgQ0X2qUL/DiJtkIojLsaPcJmI05LqPs5iGXX
	8XjZkab1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4H3-0006lk-Cb; Tue, 07 May 2019 17:53:05 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4Gz-0006lP-0U
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:53:02 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 10:53:00 -0700
Received: from unknown (HELO [10.232.112.171]) ([10.232.112.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 10:52:59 -0700
Subject: Re: [PATCH v2 4/7] nvme.h: add telemetry log page definisions
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <67f0d1ab-2edb-24ea-a4b5-62c90c1ef0fb@intel.com>
Date: Tue, 7 May 2019 11:52:58 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_105301_105170_D4413F70 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA1LzcvMjAxOSAxMDo1OCBBTSwgQWtpbm9idSBNaXRhIHdyb3RlOgo+IENvcHkgdGVsZW1l
dHJ5IGxvZyBwYWdlIGRlZmluaXNpb25zIGZyb20gbnZtZS1jbGkuCj4gCj4gQ2M6IEpvaGFubmVz
IEJlcmcgPGpvaGFubmVzQHNpcHNvbHV0aW9ucy5uZXQ+Cj4gQ2M6IEtlaXRoIEJ1c2NoIDxrZWl0
aC5idXNjaEBpbnRlbC5jb20+Cj4gQ2M6IEplbnMgQXhib2UgPGF4Ym9lQGZiLmNvbT4KPiBDYzog
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lA
Z3JpbWJlcmcubWU+Cj4gQ2M6IE1pbndvbyBJbSA8bWlud29vLmltLmRldkBnbWFpbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogQWtpbm9idSBNaXRhIDxha2lub2J1Lm1pdGFAZ21haWwuY29tPgo+IC0t
LQo+ICogdjIKPiAtIE5ldyBwYXRjaCBpbiB0aGlzIHZlcnNpb24uCj4gCj4gICBpbmNsdWRlL2xp
bnV4L252bWUuaCB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMjMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L252bWUu
aCBiL2luY2x1ZGUvbGludXgvbnZtZS5oCj4gaW5kZXggYzQwNzIwYy4uNTIxN2ZlNCAxMDA2NDQK
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L252bWUuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvbnZtZS5o
Cj4gQEAgLTM5Niw2ICszOTYsMjggQEAgZW51bSB7Cj4gICAJTlZNRV9OSURUX1VVSUQJCT0gMHgw
MywKPiAgIH07Cj4gICAKPiArLyogRGVyaXZlZCBmcm9tIDEuM2EgRmlndXJlIDEwMTogR2V0IExv
ZyBQYWdlIOKAkyBUZWxlbWV0cnkgSG9zdAo+ICsgKiAtSW5pdGlhdGVkIExvZyAoTG9nIElkZW50
aWZpZXIgMDdoKQo+ICsgKi8KCklzIHRoaXMgSG9zdCBJbml0aWF0ZWQgb3IgQ29udHJvbGxlciBJ
bml0aWF0ZWQ/IFRoZSBjb21tZW50IHNheXMgaG9zdAppbml0aWF0ZWQgYnV0IGV2ZXJ5dGhpbmcg
ZWxzZSBzZWVtcyB0byBpbmRpY2F0ZWQgY29udHJvbGxlciBpbml0aWF0ZWQuCklzIGNvbnRyb2xs
ZXIgaW5pdGlhdGVkIGV2ZW4gdGhlIGNvcnJlY3QgY2hvaWNlIGJlY2F1c2UgdGhlIGNvbnRyb2xs
ZXIKd291bGQgaGF2ZSBzZW50IGFuIEFFUiB0byBpbmRpY2F0ZSB0aGF0IHRoZSBob3N0IHNob3Vs
ZCBwdWxsIHRoZQp0ZWxlbWV0cnkgZGF0YS4KCgo+ICtzdHJ1Y3QgbnZtZV90ZWxlbWV0cnlfbG9n
X3BhZ2VfaGRyIHsKPiArCV9fdTggICAgbHBpOyAvKiBMb2cgcGFnZSBpZGVudGlmaWVyICovCj4g
KwlfX3U4ICAgIHJzdmRbNF07Cj4gKwlfX3U4ICAgIGllZV9vdWlbM107Cj4gKwlfX2xlMTYgIGRh
bGIxOyAvKiBEYXRhIGFyZWEgMSBsYXN0IGJsb2NrICovCj4gKwlfX2xlMTYgIGRhbGIyOyAvKiBE
YXRhIGFyZWEgMiBsYXN0IGJsb2NrICovCj4gKwlfX2xlMTYgIGRhbGIzOyAvKiBEYXRhIGFyZWEg
MyBsYXN0IGJsb2NrICovCj4gKwlfX3U4ICAgIHJzdmQxWzM2OF07IC8qIFRPRE8gdmVyaWZ5ICov
Cj4gKwlfX3U4ICAgIGN0cmxhdmFpbDsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQgZGF0YSBhdmFp
bD8qLwo+ICsJX191OCAgICBjdHJsZGduOyAvKiBDb250cm9sbGVyIGluaXRpYXRlZCB0ZWxlbWV0
cnkgRGF0YSBHZW4gIyAqLwo+ICsJX191OCAgICByc25pZGVudFsxMjhdOwo+ICsJLyogV2UnbGwg
aGF2ZSB0byBkb3VibGUgZmV0Y2ggc28gd2UgY2FuIGdldCB0aGUgaGVhZGVyLAo+ICsJICogcGFy
c2UgZGFsYjEtPjMgZGV0ZXJtaW5lIGhvdyBtdWNoIHNpemUgd2UgbmVlZCBmb3IgdGhlCj4gKwkg
KiBsb2cgdGhlbiBhbGxvYyBiZWxvdy4gT3IganVzdCBkbyBhIHNlY29uZGFyeSBub24tc3RydWN0
Cj4gKwkgKiBhbGxvY2F0aW9uLgo+ICsJICovCj4gKwlfX3U4ICAgIHRlbGVtZXRyeV9kYXRhYXJl
YVswXTsKPiArfTsKPiArCj4gICBzdHJ1Y3QgbnZtZV9zbWFydF9sb2cgewo+ICAgCV9fdTgJCQlj
cml0aWNhbF93YXJuaW5nOwo+ICAgCV9fdTgJCQl0ZW1wZXJhdHVyZVsyXTsKPiBAQCAtODMyLDYg
Kzg1NCw3IEBAIGVudW0gewo+ICAgCU5WTUVfTE9HX0ZXX1NMT1QJPSAweDAzLAo+ICAgCU5WTUVf
TE9HX0NIQU5HRURfTlMJPSAweDA0LAo+ICAgCU5WTUVfTE9HX0NNRF9FRkZFQ1RTCT0gMHgwNSwK
PiArCU5WTUVfTE9HX1RFTEVNRVRSWV9DVFJMCT0gMHgwOCwKPiAgIAlOVk1FX0xPR19BTkEJCT0g
MHgwYywKPiAgIAlOVk1FX0xPR19ESVNDCQk9IDB4NzAsCj4gICAJTlZNRV9MT0dfUkVTRVJWQVRJ
T04JPSAweDgwLAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
