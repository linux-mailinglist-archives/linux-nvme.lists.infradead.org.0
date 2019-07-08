Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508EE627D4
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 20:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3qYXS+AZhhESI2uM+ioK5Hs9CPgO0RyZPZnmY554jJU=; b=RP1jbDqL9LjVT2EymRIPxN3ah
	ANkNBGdpjlZ2qUVAuEkxk79RsCznzETPHU7Kpc4rxgaDpWAQoddSaU074taUSEAGgci0R+4SUHzMm
	4PklqVQsqOyovKRJW2EFjX+vh2jXtrJmFwFRmwnNBvTKzWfkPBNf/uA962ci0HY1uojiYjjwQ0dBl
	gj8r/xNtpe6FR7ZcLxpYGv6OGL79LKGIQ04S+J+ZE9l2y6NlgNA/bHmBmrbObahnQGBvxZwgabs6r
	iiArGW1wBVIccyjfA89Xsul1ZEKaLdIdR8aT6RJazcgzeG4z5sdPt0eteZY7ejhbobEng9OZh7K9J
	SrfhwFPrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkXvx-0006Xm-Vy; Mon, 08 Jul 2019 18:00:14 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkXvo-0005z9-Em
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 18:00:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 11:00:03 -0700
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="159199002"
Received: from unknown (HELO [10.232.112.163]) ([10.232.112.163])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Jul 2019 11:00:03 -0700
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
To: Bart Van Assche <bvanassche@acm.org>,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
 <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <30b4d27a-e195-87f5-e10a-7873d5ed9e5d@intel.com>
Date: Mon, 8 Jul 2019 12:00:02 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_110004_557900_485F04DA 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA3LzgvMjAxOSA5OjA5IEFNLCBCYXJ0IFZhbiBBc3NjaGUgd3JvdGU6Cj4gT24gNy80LzE5
IDE6MDEgQU0sIE1pa2hhaWwgU2tvcnpoaW5za2lpIHdyb3RlOgo+PiBBZGRpbmcgdGhpcyBoaW50
IGZvciB0aGUgc2FrZSBvZiBjb252ZW5pZW5jZS4KPj4KPj4gSXQgd2FzIHNwb3R0ZWQgdGhhdCBh
IGZldyB0aW1lcyBwZW9wbGUgc3BlbnQgc29tZSB0aW1lIGJlZm9yZSAKPj4gdW5kZXJzdGFuZGlu
Zwo+PiB3aGF0IGlzIGV4YWN0bHkgd3JvbmcgaW4gY29uZmlndXJhdGlvbiBwcm9jZXNzLiBUaGlz
IHNob3VsZCBzYXZlIGEgZmV3IAo+PiB0aW1lCj4+IGluIHN1Y2ggc2l0dWF0aW9ucywgZXNwZWNp
YWxseSBmb3IgcGVvcGxlIHdobyBpcyBub3QgdmVyeSBjb25maWRlbnQgd2l0aAo+PiBOVk1lIHJl
cXVpcmVtZW50cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWlraGFpbCBTa29yemhpbnNraWkgPG1z
a29yemhpbnNraXlAc29sYXJmbGFyZS5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL252bWUvdGFy
Z2V0L2NvbmZpZ2ZzLmMgfCA0ICsrKy0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3Rhcmdl
dC9jb25maWdmcy5jIAo+PiBiL2RyaXZlcnMvbnZtZS90YXJnZXQvY29uZmlnZnMuYwo+PiBpbmRl
eCAwOGRkNWFmMzU3ZjcuLmNkNTJiOWYxNTM3NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1l
L3RhcmdldC9jb25maWdmcy5jCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvY29uZmlnZnMu
Ywo+PiBAQCAtNTg4LDggKzU4OCwxMCBAQCBzdGF0aWMgc3RydWN0IGNvbmZpZ19ncm91cCAqbnZt
ZXRfbnNfbWFrZShzdHJ1Y3QgCj4+IGNvbmZpZ19ncm91cCAqZ3JvdXAsCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCBnb3RvIG91dDsKPj4gwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFMOwo+PiAtwqDCoMKg
IGlmIChuc2lkID09IDAgfHwgbnNpZCA9PSBOVk1FX05TSURfQUxMKQo+PiArwqDCoMKgIGlmIChu
c2lkID09IDAgfHwgbnNpZCA9PSBOVk1FX05TSURfQUxMKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBw
cl9lcnIoImludmFsaWQgbnNpZCAlI3giLCBuc2lkKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdv
dG8gb3V0Owo+PiArwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCByZXQgPSAtRU5PTUVNOwo+PiDCoMKg
wqDCoMKgIG5zID0gbnZtZXRfbnNfYWxsb2Moc3Vic3lzLCBuc2lkKTsKPiAKPiBJZiBMaW51eCB1
c2VycyB3YW50IHRvIGZpZ3VyZSBvdXQgd2hpY2ggY29kZSByZXBvcnRlZCBhbiBlcnJvciBtZXNz
YWdlIAo+IHRoZXkgc29tZXRpbWVzIHJ1biBncmVwIG92ZXIgdGhlIExpbnV4IGtlcm5lbCBzb3Vy
Y2UgY29kZS4gU2VlaW5nIHRoZSAKPiBhYm92ZSBtZXNzYWdlIG1ha2VzIG1lIHdvbmRlciB3aGV0
aGVyIGVub3VnaCBjb250ZXh0IGluZm9ybWF0aW9uIGlzIAo+IHByb3ZpZGVkIHRvIGFsbG93IHVz
ZXJzIHRvIGZpZ3VyZSBvdXQgdW5hbWJpZ3VvdXNseSB3aGljaCBjb2RlIHJlcG9ydGVkIAo+IHRo
ZSBlcnJvciBtZXNzYWdlPyBIYXZlIHlvdSBjb25zaWRlcmVkIHRvIGluY2x1ZGUgdGhlIGZ1bmN0
aW9uIG5hbWUgaW4gCj4gdGhlIGVycm9yIG1lc3NhZ2UKCkl0IGxvb2tzIGxpa2UgJ3ByX2ZtdCcg
aXMgc2V0IGluIHRoaXMgZmlsZSBzbyB0aGUgbW9kdWxlIG5hbWUgd2lsbCBhdCAKbGVhc3QgYmUg
aWRlbnRpZmllZC4KCgo+IFRoYW5rcywKPiAKPiBCYXJ0Lgo+IAo+IAo+IAo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKPiBMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0Ckxp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
