Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0126550
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 16:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jHy8rBK9zCyC6qyQRoQQ8DrcvL7vOCe0iJOv0d3w94c=; b=iXkRuHFO8iuvF2zMxAQA2Xtlh
	oSifbJR3niXP7MzIxx9H385ybqQDGTush9uUsBGWv7Gky2CCBnxaH1W/zWNaqVIdPCYfyx1g3uirs
	U/QcHWjeLRF+7qzbxTQEyEm5Ou5sCuK1S7O8y6F8rrWSfxXenIUx+DkIRS+ZxugeiOxtAtldkEzGL
	SYCdwRISgAugMeSz1CpHbvABiuCO9opUZ3VLE6aCylm8//LkLW4X9HrGTtNrbYUcgskwR7TC2a40n
	kdEGI2Y/De2cxyOrJ1vcZ+mPtheaXSgTHUpt+nZ37uzI9AgqmJaLcHud4IG/6d1mqZ+MDzYjVJy8C
	jFv7bxB0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRns-0005U7-3Y; Wed, 22 May 2019 14:01:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRnj-0005TA-To
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 14:01:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 139E1B023;
 Wed, 22 May 2019 14:01:00 +0000 (UTC)
Subject: Re: [PATCH 4/4] nvme-fc: align nvme_fc_delete_association() with exit
 path
To: James Smart <james.smart@broadcom.com>, Christoph Hellwig <hch@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-5-hare@suse.de>
 <20485830-ae6a-eae1-32f3-940ca2cc1bf3@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6da3909f-cdaa-c6df-81fb-59f71d9f4f30@suse.de>
Date: Wed, 22 May 2019 16:00:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20485830-ae6a-eae1-32f3-940ca2cc1bf3@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_070104_028343_59E53DF4 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yMS8xOSA2OjI1IFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiAKPiAKPiBPbiA1LzE5LzIw
MTkgMTE6MzYgUE0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gbnZtZV9mY19kZWxldGVfYXNz
b2NpYXRpb24oKSBzaG91bGQgYWxpZ24gd2l0aCB0aGUgZXhpdCBwYXRoIGluCj4+IG52bWVfZmNf
Y3JlYXRlX2Fzc29jaWF0aW9uKCkgdG8gZW5zdXJlIHdlIGFyZSBhYmxlIHRvIGhhbmRsZSB0aGUK
Pj4gZmFpbHVyZSBjYXNlIHByb3Blcmx5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIYW5uZXMgUmVp
bmVja2UgPGhhcmVAc3VzZS5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL252bWUvaG9zdC9mYy5j
IHwgMTAgKysrKystLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gaW5kZXggNzFiMjIxMzllNzhiLi5lZDlmNGFmZmJl
MTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gKysrIGIvZHJpdmVy
cy9udm1lL2hvc3QvZmMuYwo+PiBAQCAtMjgzNiw2ICsyODM2LDExIEBAIG52bWVfZmNfZGVsZXRl
X2Fzc29jaWF0aW9uKHN0cnVjdCBudm1lX2ZjX2N0cmwgCj4+ICpjdHJsKQo+PiDCoMKgwqDCoMKg
IGN0cmwtPmZsYWdzICY9IH5GQ0NUUkxfVEVSTUlPOwo+PiDCoMKgwqDCoMKgIHNwaW5fdW5sb2Nr
X2lycSgmY3RybC0+bG9jayk7Cj4+ICvCoMKgwqAgaWYgKGN0cmwtPmN0cmwudGFnc2V0KSB7Cj4+
ICvCoMKgwqDCoMKgwqDCoCBudm1lX2ZjX2RlbGV0ZV9od19pb19xdWV1ZXMoY3RybCk7Cj4+ICvC
oMKgwqDCoMKgwqDCoCBudm1lX2ZjX2ZyZWVfaW9fcXVldWVzKGN0cmwpOwo+PiArwqDCoMKgIH0K
Pj4gKwo+PiDCoMKgwqDCoMKgIG52bWVfZmNfdGVybV9hZW5fb3BzKGN0cmwpOwo+PiDCoMKgwqDC
oMKgIC8qCj4+IEBAIC0yODQ3LDExICsyODUyLDYgQEAgbnZtZV9mY19kZWxldGVfYXNzb2NpYXRp
b24oc3RydWN0IG52bWVfZmNfY3RybCAKPj4gKmN0cmwpCj4+IMKgwqDCoMKgwqAgaWYgKGN0cmwt
PmFzc29jaWF0aW9uX2lkKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgbnZtZV9mY194bXRfZGlzY29u
bmVjdF9hc3NvYyhjdHJsKTsKPj4gLcKgwqDCoCBpZiAoY3RybC0+Y3RybC50YWdzZXQpIHsKPj4g
LcKgwqDCoMKgwqDCoMKgIG52bWVfZmNfZGVsZXRlX2h3X2lvX3F1ZXVlcyhjdHJsKTsKPj4gLcKg
wqDCoMKgwqDCoMKgIG52bWVfZmNfZnJlZV9pb19xdWV1ZXMoY3RybCk7Cj4+IC3CoMKgwqAgfQo+
PiAtCj4+IMKgwqDCoMKgwqAgX19udm1lX2ZjX2RlbGV0ZV9od19xdWV1ZShjdHJsLCAmY3RybC0+
cXVldWVzWzBdLCAwKTsKPj4gwqDCoMKgwqDCoCBudm1lX2ZjX2ZyZWVfcXVldWUoJmN0cmwtPnF1
ZXVlc1swXSk7Cj4gCj4gbm8uwqAgVGhpcyBpcyByZW1vdmluZyB0aGUgdW5kZXJseWluZyBxdWV1
ZXMgd2hpbGUgYmxrLW1xIGlzIHN0aWxsIHRyeWluZyAKPiB0byBzdWJtaXQgdG8gdGhlbSAtIGNh
dXNpbmcgeWV0IGEgZGlmZmVyZW50IHNldCBvZiBpc3N1ZXMgYXMgdGhlIGRyaXZlciAKPiB3aWxs
IGhhdmUgcmVsZWFzZWQgY29udGV4dHMgYnV0IHRoZSBjYWxsZG93bnMgYXJlIHN0aWxsIGhhcHBl
bmluZy4gWWV0IAo+IGFub3RoZXIgZGlmZmVyZW50IHNldCBvZiBpc3N1ZXMgd291bGQgbGlrZWx5
IGFwcGVhci7CoMKgIG5vIG5lZWQgZm9yIHRoaXMgCj4gcmVvcmcuCj4gCkFoLiBIbW0uIFdlbGws
IEkgdGhvdWdodCBieSBoYXZpbmcgYm90aCBwYXRocyBpZGVudGljYWwgd2UgY2FuIGVuc3VyZSAK
dGhhdCB0aGUgZXJyb3IgcGF0aCBpbiB0aGUgZmlyc3Qgd291bGQgYWN0dWFsbHkgd29yay4KTm93
IGl0J3MgcXVpdGUgaGFyZCB0byB0ZXN0LCBsYXQgYWxvbmUgdmFsaWRhdGUuCgpCdXQgaWYgeW91
IGhhdmUgb2JqZWN0aW9ucyB3ZSBjYW4gc3VyZWx5IGRyb3AgdGhpcyBwYXRjaC4KCkNoZWVycywK
Ckhhbm5lcwotLSAKRHIuIEhhbm5lcyBSZWluZWNrZQkJICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5l
dHdvcmtpbmcKaGFyZUBzdXNlLmRlCQkJICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgK
U1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4
IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8
cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
