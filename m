Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63377CDB8
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q1Boqyd8ec74/ktRrjtqhUfxjz6KDcY73ARbUjwQNhU=; b=F5Xk2UDR+Ai9SJvXaaCdR0wtU
	xaXhC5duVt/RH5HEqrW6/JhrWyrk+S1QcHpL5101aEt+ZMtfjQW3QFhjjj0xYBo67qChL7Uzur1I9
	BPiPdKqpgVxf7V3osRWbpPdkLoHw6MUMgkSX50RuKo8CK6jXSpLLZy05+/xUaNi/Z/apL+kD+NMaC
	9Z++BFjoqg2AoVgV4GglLmt/3xv/isblCGWgiSje2bubV1mb7wsL8chIVtfNPcaxNhuRyCoJnEtx5
	wMTcm+ulNrcaMbiyaA9q5B5xBmcMio7/pRBSkn2Pnn2hhtn6CHqZgawfdILkn7cnkhvlFRsB72wHd
	G/qWskB9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsupm-0004d9-3Q; Wed, 31 Jul 2019 20:04:26 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsupf-0004cp-No
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:04:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 66D7AAC45;
 Wed, 31 Jul 2019 20:04:18 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <993aee4e-9f9e-4af1-07e6-69218a12bc1b@suse.de>
 <886831d7-7035-7c38-7b1f-9945c222564e@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <695cad74-aaed-d1aa-9381-b4430cd27925@suse.de>
Date: Wed, 31 Jul 2019 22:04:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <886831d7-7035-7c38-7b1f-9945c222564e@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130419_934606_501FFD64 
X-CRM114-Status: GOOD (  22.16  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMS8xOSA4OjE2IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
Pj4gaW5kZXggZmEzMWRhMDc2MmI5Li41ZjY5NzBlN2JhNzMgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+
Pj4gQEAgLTM0MjgsNyArMzQyOCw4IEBAIHN0YXRpYyB2b2lkIG52bWVfdmFsaWRhdGVfbnMoc3Ry
dWN0IG52bWVfY3RybCAKPj4+ICpjdHJsLCB1bnNpZ25lZCBuc2lkKQo+Pj4gwqDCoMKgwqDCoCBu
cyA9IG52bWVfZmluZF9nZXRfbnMoY3RybCwgbnNpZCk7Cj4+PiDCoMKgwqDCoMKgIGlmIChucykg
ewo+Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChucy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rpc2sobnMt
PmRpc2spKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChucy0+ZGlzayAmJiByZXZhbGlkYXRlX2Rp
c2sobnMtPmRpc2spICYmCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5zdGF0ZSAh
PSBOVk1FX0NUUkxfTElWRSkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVfbnNf
cmVtb3ZlKG5zKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX3B1dF9ucyhucyk7Cj4+PiDC
oMKgwqDCoMKgIH0gZWxzZQo+Pj4KPj4gVGhlIHRoaW5nIEknbSB3b3JyaWVkIGFib3V0IGhlcmUg
aXMgY29uY3VycmVuY3kgKHRoaXMgd2FzIGFsc28gd2hhdAo+PiBjYXVzZWQgbXkgZWFybGllciBh
dHRlbXB0cyB0byBiZSByZWplY3RlZCkuCj4+IFRoaW5nIGlzLCB0aGUgY29udHJvbGxlciBzdGF0
ZSBjYW4gYmUgc2V0IGFzeW5jaHJvbm91c2x5LiBXaGljaCBpbgo+PiBpdHNlbGYgaXMgcHJvdGVj
dGVkIGJ5IGN0cmwtPmxvY2ssIGJ1dCBoZXJlIHdlJ3JlIG5vdCB0YWtpbmcgdGhlIGxvY2sgYXQK
Pj4gYWxsLiBIZW5jZSB3ZSBtaWdodCBiZSBzZWVpbmcgYSBzdGFsZSB2YWx1ZSwgY2F1c2luZyB1
cyB0byBtYWt0IHRoZQo+PiB3cm9uZyBkZWNpc2lvbi4KPiAKPiBUaGlzIGlzIHdoeSB0aGUgc3Rh
dGUgY2hlY2sgaXMgX2FmdGVyXyB0aGUgZmFpbHVyZSwgaWYgd2UgZmFpbGVkIHRvIGRvCj4gSS9P
IGJlY2F1c2Ugb2YgYSByZXNldCwgaXQgd2lsbCBiZSByZWZsZWN0ZWQgaW4gdGhlIHN0YXRlLgo+
IAo+PiBJIGhhdmUgYSBwYXRjaHNldCBjaGVja2luZyAnY3RybC0+c3RhdGUnIHVuZGVyIGxvY2s7
IHdpbGwgYmUgcG9zdGluZyBpdAo+PiBsYXRlci4KPiAKPiBVbmxlc3MgdGhlIHdyYXBzIHlvdXIg
YWN0aW9ucyBhY2NvcmRpbmcgdGhlIHN0YXRlLCB0aGUgc3RhdGUgc3RpbGwKPiBhZHZpc29yeS4K
PiAKPj4gQW5kIGFub3RoZXIgdGhpbmc6IHdoZXJlJ3MgdGhlIHBvaW50IGluICdyZXZhbGlkYXRl
X2Rpc2soKScgdG8gYmUgY2FsbGVkCj4+IGlmIHRoZSBjb250cm9sbGVyIGlzIG5vdCBsaXZlPyBB
dCBiZXN0IGl0IHdvbid0IGRvIGFueXRoaW5nOyBhdCB3b3JzdAo+PiB3ZSdsbCBzdGFsbCBpZiB3
ZSBoYXZlIHRvIGRvIG1vcmUgdGhhbiBvbmUgSS9PICh0aGUgcmVzZXQgY3ljbGUgd2lsbAo+PiBh
Ym9ydCBfb25lXyBJL08sIGJ1dCBpZiB3ZSBoYXZlIHRvIHN1Ym1pdCBtb3JlIHRoYW4gb25lIHdl
J2xsIGJlIHN0dWNrLAo+PiB0b28pLgo+IAo+IEV4YWN0bHkgYmVjYXVzZSBvZiB0aGUgcmFjZSB0
aGF0IHlvdSBhcmUgaW5kaWNhdGluZy4gV2UgY2FuJ3QgcmVsaWFibHkKPiBrbm93IGlmIHRoZSBj
b250cm9sbGVyIGlzIHJlc2V0dGluZyAob3Igd2lsbCBiZSBzdGFydGluZyBhIHJlc2V0IHNvb24p
Cj4gc28gd2UgZ28gYWhlYWQgd2l0aCB0aGUgcmV2YWxpZGF0ZSBrbm93aW5nIHRoYXQgaWYgdGhl
IGNvbnRyb2xsZXIgaXMKPiByZXNldHRpbmcgaXQgd2lsbCBmYWlsLiBUaGF0IGlzIHdoeSB0aGUg
c3RhdGUgY2hlY2sgaXMgYWZ0ZXIgKHRoaXMgdGVsbHMKPiB1cyBpZiB0aGUgcmV2YWxpZGF0aW9u
IGZhaWxlZCBiZWNhdXNlIG9mIGEgcmVzZXQgb3Igc29tZXRoaW5nIGVsc2UpLgoKT2theSwgZmFp
ciBlbm91Z2guCgpSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgoK
Q2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlICAgICAgICAgICAgVGVhbWxl
YWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5VWCBHbWJILCBNYXhmZWxkc3RyLiA1
LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwgTWFyeSBIaWdnaW5zLCBT
cmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgt
bnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtbnZtZQo=
