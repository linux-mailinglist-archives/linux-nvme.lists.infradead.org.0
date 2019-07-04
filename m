Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E485F286
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 08:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zo7LSEuN+UZwnwm8FMqy1Dag8o5qsHCKBibjNKpwswE=; b=meuKd6imxgdE/e
	FtxtV8gah7er636v8q4VEMBOIDr4CXj37Tko8kEktY4k1OW3gE0IuER5rWbcHxQQo56RDJsZTvTwm
	6W7RkIamz1IVTkxwa/B71GXDdZ+k7eJEx39Q/rg6g7saaeKyIikrQJJHDTFLs3zcZXDTIIghU9f2x
	eSd0qDZHnB5qqhrjzaI2br4qK552tyKy8pVcnDly0MlwYiS8nrtuYOYitQ18bVKdBt0G2MxwO5R6U
	Gx740npAImrjIqo0hc3ADHB6PQcUnIizwiGNHdYG4//SMkIAWWwKdYqoZIkfJPadyz/XX00oVnhov
	JGoFqAwACxNw0NcXJYZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiunf-0003oW-2I; Thu, 04 Jul 2019 06:00:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiunR-0003nZ-JT
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 06:00:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 38510AF87;
 Thu,  4 Jul 2019 06:00:35 +0000 (UTC)
Subject: Re: [PATCH 2/2] nvme-multipath: do not select namespaces which are
 about to be removed
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
References: <20190703131232.58595-1-hare@suse.de>
 <20190703131232.58595-3-hare@suse.de> <20190703132133.GA8948@lst.de>
 <c355b6ef-12b9-6a57-f091-a459e937f2ec@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <ad40ac7c-ba0a-db72-6ee4-81556816f633@suse.de>
Date: Thu, 4 Jul 2019 08:00:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c355b6ef-12b9-6a57-f091-a459e937f2ec@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_230041_942663_73500D69 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zLzE5IDEwOjMzIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4+PiBiL2RyaXZlcnMvbnZtZS9ob3N0
L211bHRpcGF0aC5jCj4+PiBpbmRleCBjOGNjODI2MzkzMjcuLjFmNjEwNWE1YzU5NiAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L211bHRpcGF0aC5jCj4+PiArKysgYi9kcml2ZXJz
L252bWUvaG9zdC9tdWx0aXBhdGguYwo+Pj4gQEAgLTEzMCw3ICsxMzAsOCBAQCBzdGF0aWMgc3Ry
dWN0IG52bWVfbnMgKl9fbnZtZV9maW5kX3BhdGgoc3RydWN0Cj4+PiBudm1lX25zX2hlYWQgKmhl
YWQsIGludCBub2RlKQo+Pj4gwqAgwqDCoMKgwqDCoCBsaXN0X2Zvcl9lYWNoX2VudHJ5X3JjdShu
cywgJmhlYWQtPmxpc3QsIHNpYmxpbmdzKSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKG5z
LT5jdHJsLT5zdGF0ZSAhPSBOVk1FX0NUUkxfTElWRSB8fAo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdGVzdF9iaXQoTlZNRV9OU19BTkFfUEVORElORywgJm5zLT5mbGFncykpCj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB0ZXN0X2JpdChOVk1FX05TX0FOQV9QRU5ESU5HLCAmbnMtPmZs
YWdzKSB8fAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVzdF9iaXQoTlZNRV9OU19SRU1P
VklORywgJm5zLT5mbGFncykpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51
ZTsKPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoUkVBRF9PTkNFKGhlYWQtPnN1YnN5cy0+
aW9wb2xpY3kpID09IE5WTUVfSU9QT0xJQ1lfTlVNQSkKPj4+IEBAIC0xODAsNyArMTgxLDggQEAg
c3RhdGljIHN0cnVjdCBudm1lX25zCj4+PiAqbnZtZV9yb3VuZF9yb2Jpbl9wYXRoKHN0cnVjdCBu
dm1lX25zX2hlYWQgKmhlYWQsCj4+PiDCoCDCoMKgwqDCoMKgIGlmIChsaXN0X2lzX3Npbmd1bGFy
KCZoZWFkLT5saXN0KSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChvbGQtPmN0cmwtPnN0
YXRlICE9IE5WTUVfQ1RSTF9MSVZFIHx8Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0ZXN0
X2JpdChOVk1FX05TX0FOQV9QRU5ESU5HLCAmb2xkLT5mbGFncykpCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB0ZXN0X2JpdChOVk1FX05TX0FOQV9QRU5ESU5HLCAmb2xkLT5mbGFncyl8fAo+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVzdF9iaXQoTlZNRV9OU19SRU1PVklORywgJm9s
ZC0+ZmxhZ3MpKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIE5VTEw7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIG9sZDsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gQEAg
LTE4OSw3ICsxOTEsOCBAQCBzdGF0aWMgc3RydWN0IG52bWVfbnMKPj4+ICpudm1lX3JvdW5kX3Jv
YmluX3BhdGgoc3RydWN0IG52bWVfbnNfaGVhZCAqaGVhZCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgIG5zICE9IG9sZDsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5zID0gbnZtZV9uZXh0X25z
KGhlYWQsIG5zKSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChucy0+Y3RybC0+c3RhdGUg
IT0gTlZNRV9DVFJMX0xJVkUgfHwKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRlc3RfYml0
KE5WTUVfTlNfQU5BX1BFTkRJTkcsICZucy0+ZmxhZ3MpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdGVzdF9iaXQoTlZNRV9OU19BTkFfUEVORElORywgJm5zLT5mbGFncykgfHwKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRlc3RfYml0KE5WTUVfTlNfUkVNT1ZJTkcsICZucy0+Zmxh
Z3MpKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29udGludWU7Cj4+Cj4+IEkgdGhp
bmsgd2UgY2xlYXJseSBuZWVkIGEgcGF0Y2ggYmVmb3JlIHRoZSB0d28gcGF0Y2hlcyBpbiB5b3Vy
Cj4+IHNlcmllcyB0aGF0IGZhY3RvcnMgdGhpcyBjaGVjayBpbnRvIGEgbGl0dGxlIGhlbHBlciB3
aXRoIGEKPj4gZGVzY3JpcHRpdmUgbmFtZS7CoCBBbHNvIGRvZXNuJ3QgbnZtZV9wYXRoX2lzX29w
dGltaXplZCBhbHNvIG5lZWQKPj4gdG8gaGF2ZSB0aGVzZSBjaGVja3Mgd2hpbGUgd2UgYXJlIGF0
IGl0Pwo+IAo+IEkgZGVmaW5pdGVseSBhZ3JlZSBoZXJlLgo+IAo+IEJUVywgd2hpbGUgd2UncmUg
b24gdGhpcywgZG8gd2UgbmVlZCB0aGUgZmxhZ3MgY2hlY2sgdG8gYmUKPiBhdG9taWM/IG9yIGNh
biB3ZSBtaWNyby1vcHRpbWl6ZSB3aXRoIGEgc2ltcGxlIGZsYWcgYXJpdGhtZXRpYz8KCkRlcGVu
ZHMgb24geW91ciBkZWZpbml0aW9uIG9mICdhdG9taWMnIGhlcmUuCk5vLCB0aGUgX2NvbWJpbmVk
XyBjaGVjayBkb2VzIG5vdCBuZWVkIHRvIGJlIGF0b21pYyAoaWUgd2UgZG8gbm90IG5lZWQKdG8g
dGFrZSBhIGxvY2sgYXJvdW5kIHRoZSBjaGVjayBoZXJlKSBhcyB0aGUgZmxhZ3MgYXJlIHNldCBp
biB0d28gd2lsZGx5CmRpZmZlcmVudCBwbGFjZXMuClllcywgdGhlIGNoZWNrIGl0c2VsZiBuZWVk
cyB0byBiZSBhdG9taWMgKGllIGFueSB1cGRhdGUgdG8gdGhlIGZsYWdzCmJpdG1hcCBuZWVkcyB0
byBiZSB2aXNpYmxlKSBhcyB0aGlzIGNoZWNrIHByb3RlY3QgYWdhaW5zdCBhIHJhY2UgY29uZGl0
aW9uLgpXZSBjb3VsZCB0cnkgdG8gbWljcm8tb3B0aW1pemUgaGVyZSB3aXRoIHVzaW5nIGJpdG1h
cF9hbmQoKSwgYnV0IHRoZW4KdGhpcyB3b3VsZCBwcm9iYWJseSBhbW91bnQgdG8gb3V0LWd1ZXNz
IHRoZSBjb21waWxlciwgYW5kIEknZCByYXRoZXIgbm90CmF0dGVtcHQgaXQgZm9yIHRoZSBzYWtl
IG9mIHJlYWRhYmlsaXR5LgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tl
CQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAg
ICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUs
IDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNy
aSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
