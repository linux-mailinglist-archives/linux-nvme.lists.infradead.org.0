Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6FC1397B
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 13:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jlc/pgMKpnJHGtv0heCXO3oAl42yH/KZ6MINn26QSo8=; b=PQ+nrhd9oq6VCVrt2iuAyU6df
	CHoCth2cEv1mckdzA0IIac5ZcDggi+zfYjjFrG0fHYCdOsBKoZVjTLoBi95xz/iX8znPCxdYv6VTr
	uOtH9+FgoeOX4/UKxXZFT1YG+xj5m/FUFoNmYqR9H+HKxoB9m9yXlt0R+JmSk6a4CwDzkR2UZhG/2
	jc/bnaEwpsvNOaBF0FEJOQFlr3FOCRKm888W4JFgq+17TLcAMKnLWvrLSzDUi2xnpq4mZZ6mMticQ
	6FtYjkpULVmPy/sYI8fezvjvL8Sj76goDH6l5cNuOtWXZ2eL3vLcWIhYuCaeEbIJLfygQXwYm1Yrk
	cJoHkoKFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMsvl-0005hG-HF; Sat, 04 May 2019 11:34:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMsvg-0005gv-0g
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 11:34:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2706FABF0;
 Sat,  4 May 2019 11:34:03 +0000 (UTC)
Subject: Re: [PATCH] nvme-fc: trace sq head updates
To: James Smart <james.smart@broadcom.com>, Hannes Reinecke <hare@suse.de>
References: <20190503141459.111641-1-hare@suse.de>
 <d72fb9fe-f142-7e29-8de5-72a471cfc43e@broadcom.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <6fb209dd-9387-c412-f942-19d33660aecd@suse.com>
Date: Sat, 4 May 2019 13:34:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d72fb9fe-f142-7e29-8de5-72a471cfc43e@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_043408_358291_E5356C84 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 John Meneghini <john.meneghini@netapp.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8zLzE5IDc6NTggUE0sIEphbWVzIFNtYXJ0IHdyb3RlOgo+IAo+IAo+IE9uIDUvMy8yMDE5
IDc6MTQgQU0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPj4gRkMtTlZNZSBoYXMgc29tZSBkZXRh
aWxlZCBydWxlcyBpZiBhbmQgd2hlbiBTUSBoZWFkIHBvaW50ZXIgdXBkYXRlcwo+PiBzaG91bGQg
YmUgc2VuZCwgYnV0IHRoZSBzcGVjIGlzIGEgdGFkIHVuY2xlYXIgYWJvdXQgdGhlIHZhbHVlcy4K
Pj4gU28gYWRkIHRyYWNpbmcgdG8gdGhlIEZDLU5WTWUgZHJpdmVyIHRvIHRyYWNrIHRoaXMuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEhhbm5lcyBSZWluZWNrZSA8aGFyZUBzdXNlLmNvbT4KPj4gLS0t
Cj4+IMKgIGRyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgfCA4ICsrKysrKystCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgYi9kcml2ZXJzL252bWUvaG9zdC9mYy5jCj4+IGluZGV4
IDZkODQ1MTM1NmVhYy4uNzU1YzkzYTBjNjY0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL252bWUv
aG9zdC9mYy5jCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gQEAgLTEyLDYgKzEy
LDcgQEAKPj4gwqAgI2luY2x1ZGUgIm52bWUuaCIKPj4gwqAgI2luY2x1ZGUgImZhYnJpY3MuaCIK
Pj4gKyNpbmNsdWRlICJ0cmFjZS5oIgo+PiDCoCAjaW5jbHVkZSA8bGludXgvbnZtZS1mYy1kcml2
ZXIuaD4KPj4gwqAgI2luY2x1ZGUgPGxpbnV4L252bWUtZmMuaD4KPj4gQEAgLTM1LDcgKzM2LDgg
QEAgc3RydWN0IG52bWVfZmNfcXVldWUgewo+PiDCoMKgwqDCoMKgIHUzMsKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcW51bTsKPj4gwqDCoMKgwqDCoCB1MzLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJx
Y250Owo+PiDCoMKgwqDCoMKgIHUzMsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2Vxbm87Cj4+IC0K
Pj4gK8KgwqDCoCB1MTbCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNxX2hlYWQ7Cj4+ICvCoMKgwqAg
dTE2wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcV90YWlsOwo+PiDCoMKgwqDCoMKgIHU2NMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29ubmVjdGlvbl9pZDsKPj4gwqDCoMKgwqDCoCBhdG9taWNfdMKg
wqDCoMKgwqDCoMKgIGNzbjsKPj4gQEAgLTE2NTMsNiArMTY1NSw3IEBAIG52bWVfZmNfZmNwaW9f
ZG9uZShzdHJ1Y3QgbnZtZWZjX2ZjcF9yZXEgKnJlcSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RhdHVzID0gY3B1X3RvX2xlMTYoTlZNRV9TQ19JTlRFUk5BTCA8PCAxKTsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBkb25lOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+PiArwqDCoMKgwqDCoMKgwqAgcXVldWUtPnNxX2hlYWQgPSBjcHVfdG9fbGUxNihjcWUtPnNx
X2hlYWQpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzdWx0ID0gY3FlLT5yZXN1bHQ7Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSBjcWUtPnN0YXR1czsKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgIGJyZWFrOwo+PiBAQCAtMTY3NSw2ICsxNjc4LDggQEAgbnZtZV9mY19mY3Bpb19kb25lKHN0
cnVjdCBudm1lZmNfZmNwX3JlcSAqcmVxKQo+PiDCoMKgwqDCoMKgIH0KPj4gwqDCoMKgwqDCoCBf
X252bWVfZmNfZmNwb3BfY2hrX3RlYXJkb3ducyhjdHJsLCBvcCwgb3BzdGF0ZSk7Cj4+ICvCoMKg
wqAgdHJhY2VfbnZtZV9zcShycSwgcXVldWUtPnNxX2hlYWQsCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBxdWV1ZS0+c3FfdGFpbCAlIGN0cmwtPmN0cmwuc3FzaXplKTsKPj4gwqDCoMKg
wqDCoCBudm1lX2VuZF9yZXF1ZXN0KHJxLCBzdGF0dXMsIHJlc3VsdCk7Cj4+IMKgIGNoZWNrX2Vy
cm9yOgo+PiBAQCAtMjIxNSw2ICsyMjIwLDcgQEAgbnZtZV9mY19zdGFydF9mY3Bfb3Aoc3RydWN0
IG52bWVfZmNfY3RybCAqY3RybCwgCj4+IHN0cnVjdCBudm1lX2ZjX3F1ZXVlICpxdWV1ZSwKPj4g
wqDCoMKgwqDCoCBvcC0+ZmNwX3JlcS5yY3ZfcnNwbGVuID0gMDsKPj4gwqDCoMKgwqDCoCBvcC0+
ZmNwX3JlcS5zdGF0dXMgPSBOVk1FX1NDX1NVQ0NFU1M7Cj4+IMKgwqDCoMKgwqAgb3AtPmZjcF9y
ZXEuc3FpZCA9IGNwdV90b19sZTE2KHF1ZXVlLT5xbnVtKTsKPj4gK8KgwqDCoCBxdWV1ZS0+c3Ff
dGFpbCsrOwo+PiDCoMKgwqDCoMKgIC8qCj4+IMKgwqDCoMKgwqDCoCAqIHZhbGlkYXRlIHBlciBm
YWJyaWMgcnVsZXMsIHNldCBmaWVsZHMgbWFuZGF0ZWQgYnkgZmFicmljIHNwZWMKPiAKPiB0aGlz
IGlzIGZpbmUsIGJ1dC4uLi7CoMKgIHRvIG1ha2UgdGhpcyBiZSBtZWFuaW5nZnVsL3dvcmssIHlv
dSdyZSBnb2luZyB0byAKPiBuZWVkIHRvIHF1ZXVlL3NlcmlhbGl6ZSB0aGUgcHJvY2Vzc2luZyBv
ZiBFUlNQIElVJ3MgYmFzZWQgb24gdGhlIAo+IHJlc3BvbnNlIHNlcXVlbmNlIG51bWJlciAocnNu
KS7CoCBPdGhlcndpc2UsIHRoZXJlJ3Mgbm8gZ3VhcmFudGVlIHRoYXQgCj4gc3FoZCBjb21lcyBi
YWNrIGluIHRoZSBwcm9wZXIgc2VxdWVudGlhbCBvcmRlci7CoMKgIEFuZCBJJ2QgcmVjb21tZW5k
LCBhcyAKPiB0aGVyZSdzIG5vIG90aGVyIHJlYXNvbiBmb3IgRVJTUCBzZXJpYWxpemF0aW9uLCB0
aGF0IHlvdSBkb24ndCBob2xkIHVwIAo+IHRoZSBjb21wbGV0aW9uIGJ1dCBtb3ZlIHRoZSByc24v
c3FoZCB2YWx1ZXMgdG8gc2lkZWJhbmQgdHJhY2tpbmcgd2l0aCAKPiB0aGUgdHJhY2tpbmcgZG9p
bmcgdGhlIHNlcmlhbGl6aW5nIGFuZCB1cGRhdGluZyBvZiBzcWhkLgo+IApSaWdodCwgc2VlLCB3
aGF0IHlvdSBtZWFuLgpXb3VsZCBhbHNvIGhhdmUgdGhlIGJlYXV0eSBvZiBtb3Zpbmcgc3FoZCB0
cmFja2luZyBvZmYgdGhlIGhvdCBwYXRoOyAKYWZ0ZXIgYWxsLCB3ZSBkb24ndCBoYXZlIHRvIGJl
IDEwMCUgY29ycmVjdCBpbiB0cmFja2luZyBzcWhkLCBhbmQgY2FuIAphbGxvdyBmb3IgbGF6eSB1
cGRhdGVzLgoKV2lsbCBiZSB3b3JraW5nIG9uIGFuIHVwZGF0ZWQgcGF0Y2guCgpDaGVlcnMsCgpI
YW5uZXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
