Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAE916932
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sw4+jLLyEFIY731Sd3tHaHvts/bl88MfDUVjWK597mo=; b=Cap/YxysT8hLTosUHNpzb0Mw+
	ttAvwvxWpAVBMIZglmo2RasMQPWp6D4bpEnSHNvOAJ717G/G0gAgVeb7Hz+dgAiqmkb+5WVT5fj8a
	gZ9d0xfiNh5M6H9pgBLFA8b/LTAgMwpDsrVJHUF3O9xzPex0G3WzaGl4Ct0zMkeqzUpHave51MBTB
	on+9k97zBmeJlwyNc8fpq1BHYR1PDr5pGSohka8bvRTi3lfIO+U3qjmykyJUlEZRggLGXOoYp0mPN
	01T/30v54MtS3UJ8cCYp3dCGItDNHNaDEX16zXpn1d1XsyvwxUWanilBIvHo7QJalms/oN79OnLfZ
	fTUjkiOPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3tE-0005jM-UZ; Tue, 07 May 2019 17:28:28 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3t5-0005aU-Np
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:28:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 10:28:18 -0700
Received: from unknown (HELO [10.232.112.171]) ([10.232.112.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 10:28:16 -0700
Subject: Re: [PATCH v2 4/7] nvme.h: add telemetry log page definisions
To: Akinobu Mita <akinobu.mita@gmail.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
 <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <81c0d1bd-c117-3fcb-959b-4507504021dd@intel.com>
Date: Tue, 7 May 2019 11:28:16 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557248314-4238-5-git-send-email-akinobu.mita@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_102820_090620_3C86509A 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
aWZpZXIgMDdoKQo+ICsgKi8KPiArc3RydWN0IG52bWVfdGVsZW1ldHJ5X2xvZ19wYWdlX2hkciB7
Cj4gKwlfX3U4ICAgIGxwaTsgLyogTG9nIHBhZ2UgaWRlbnRpZmllciAqLwo+ICsJX191OCAgICBy
c3ZkWzRdOwo+ICsJX191OCAgICBpZWVfb3VpWzNdOwo+ICsJX19sZTE2ICBkYWxiMTsgLyogRGF0
YSBhcmVhIDEgbGFzdCBibG9jayAqLwo+ICsJX19sZTE2ICBkYWxiMjsgLyogRGF0YSBhcmVhIDIg
bGFzdCBibG9jayAqLwo+ICsJX19sZTE2ICBkYWxiMzsgLyogRGF0YSBhcmVhIDMgbGFzdCBibG9j
ayAqLwo+ICsJX191OCAgICByc3ZkMVszNjhdOyAvKiBUT0RPIHZlcmlmeSAqLwoKUmVtb3ZlIHRo
ZSBUT0RPCgo+ICsJX191OCAgICBjdHJsYXZhaWw7IC8qIENvbnRyb2xsZXIgaW5pdGlhdGVkIGRh
dGEgYXZhaWw/Ki8KPiArCV9fdTggICAgY3RybGRnbjsgLyogQ29udHJvbGxlciBpbml0aWF0ZWQg
dGVsZW1ldHJ5IERhdGEgR2VuICMgKi8KPiArCV9fdTggICAgcnNuaWRlbnRbMTI4XTsKPiArCS8q
IFdlJ2xsIGhhdmUgdG8gZG91YmxlIGZldGNoIHNvIHdlIGNhbiBnZXQgdGhlIGhlYWRlciwKPiAr
CSAqIHBhcnNlIGRhbGIxLT4zIGRldGVybWluZSBob3cgbXVjaCBzaXplIHdlIG5lZWQgZm9yIHRo
ZQo+ICsJICogbG9nIHRoZW4gYWxsb2MgYmVsb3cuIE9yIGp1c3QgZG8gYSBzZWNvbmRhcnkgbm9u
LXN0cnVjdAo+ICsJICogYWxsb2NhdGlvbi4KPiArCSAqLwoKVGhpcyBjb21tZW50IGlzbid0IG5l
Y2Vzc2FyeS4gWW91IHVzdWFsbHkgY2FuJ3QgcmVhZCB0aGUgZW50aXJlCnRlbGVtZXRyeSBsb2cg
YXQgb25jZSBhbmQgdGhlIGhlYWRlciBpcyBhIGZpeGVkIHNpemUuIFlvdSB3b3VsZCBsaWtlbHkK
anVzdCByZWFkIHRoZSBoZWFkZXIgZm9sbG93ZWQgYnkgcmVhZHMgb2YgdGhlIGRpZmZlcmVudCBk
YXRhIGFyZWFzLgoKPiArCV9fdTggICAgdGVsZW1ldHJ5X2RhdGFhcmVhWzBdOwo+ICt9Owo+ICsK
PiAgIHN0cnVjdCBudm1lX3NtYXJ0X2xvZyB7Cj4gICAJX191OAkJCWNyaXRpY2FsX3dhcm5pbmc7
Cj4gICAJX191OAkJCXRlbXBlcmF0dXJlWzJdOwo+IEBAIC04MzIsNiArODU0LDcgQEAgZW51bSB7
Cj4gICAJTlZNRV9MT0dfRldfU0xPVAk9IDB4MDMsCj4gICAJTlZNRV9MT0dfQ0hBTkdFRF9OUwk9
IDB4MDQsCj4gICAJTlZNRV9MT0dfQ01EX0VGRkVDVFMJPSAweDA1LAo+ICsJTlZNRV9MT0dfVEVM
RU1FVFJZX0NUUkwJPSAweDA4LAo+ICAgCU5WTUVfTE9HX0FOQQkJPSAweDBjLAo+ICAgCU5WTUVf
TE9HX0RJU0MJCT0gMHg3MCwKPiAgIAlOVk1FX0xPR19SRVNFUlZBVElPTgk9IDB4ODAsCj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
