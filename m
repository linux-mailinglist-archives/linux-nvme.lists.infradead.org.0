Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3209717F0C8
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 07:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEfJ9+uInQnevQNdKQyvEerwMJpYhtFXOSG7K6JqZXI=; b=sFk4Vzee/ZIJYd
	e270bDp+TgJ4xQrw1+h1SmOa0nvvh7ZQanX8muiW3m0wUpGxT4j3Fjxk74WfIm9oFBGtHCWsdOTck
	sxS8TbJ6eFmLtpPwMH4zIGY47bZnrF4iGW2dSHCt1QlUBtCRfutBH34fNPHyttVWfKG3jAAMzB0Rd
	cWe+ztkk7fgDR9138+GHpyU27jZy/cLFTeBkLKfOgd5CDTJw/7HEfiW0S23Yw16uijYHFuLbiwxgA
	wcWPdBVdIWhh7TYToKReBYNsHWnBgQp3dwPA78t++kyKnuRNKYPb9Gn0vajbCJpO6CZVFF0P5Ejle
	efIcgBFfGJA4Yj5UFhCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBYoG-0001lf-2I; Tue, 10 Mar 2020 06:56:12 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBYo9-0001l9-DC
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 06:56:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7DD75AEA7;
 Tue, 10 Mar 2020 06:56:00 +0000 (UTC)
Subject: Re: [PATCH RFC] nvme/fc: sq flow control
To: James Smart <james.smart@broadcom.com>, Keith Busch <keith.busch@wdc.com>
References: <20200225235956.28475-1-hare@suse.de>
 <f3d3dc5e-f7d0-b33a-db59-c303a57d343a@broadcom.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <cec299ab-bf39-bdcf-96e9-6380c151cba1@suse.de>
Date: Tue, 10 Mar 2020 07:55:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <f3d3dc5e-f7d0-b33a-db59-c303a57d343a@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_235605_742885_A828B88E 
X-CRM114-Status: GOOD (  21.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 John Meneghini <john.meneghini@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMy85LzIwIDEwOjU5IFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPiAKPiAKPiBPbiAyLzI1LzIw
MjAgMzo1OSBQTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+PiBBcyBwZXIgTlZNZS1vRiBzcGVj
IHNxIGZsb3cgY29udHJvbCBpcyBhY3R1YWxseSBtYW5kYXRvcnksIGFuZCB3ZSBzaG91bGQKPj4g
YmUgaW1wbGVtZW50aW5nIGl0IHRvIGF2b2lkIHRoZSBjb250cm9sbGVyIHRvIHJldHVybiBhIGZh
dGFsIHN0YXR1cwo+PiBlcnJvciwgYW5kIHRyeSB0byBwbGF5IG5pY2VseSB3aXRoIGNvbnRyb2xs
ZXJzIHVzaW5nIHNxIGZsb3cgY29udHJvbAo+PiB0byBpbXBsZW1lbnQgUW9TLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBIYW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5kZT4KPj4gLS0tCj4+IMKgIGRy
aXZlcnMvbnZtZS9ob3N0L2ZjLmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+
PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmMuYyBiL2RyaXZlcnMvbnZtZS9ob3N0
L2ZjLmMKPj4gaW5kZXggYTE5ZGRiNjEwMzlkLi42MjgzOTdiZDUwNjUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+
PiBAQCAtMTIsNiArMTIsNyBAQAo+PiDCoCDCoCAjaW5jbHVkZSAibnZtZS5oIgo+PiDCoCAjaW5j
bHVkZSAiZmFicmljcy5oIgo+PiArI2luY2x1ZGUgInRyYWNlLmgiCj4+IMKgICNpbmNsdWRlIDxs
aW51eC9udm1lLWZjLWRyaXZlci5oPgo+PiDCoCAjaW5jbHVkZSA8bGludXgvbnZtZS1mYy5oPgo+
PiDCoCAjaW5jbHVkZSA8c2NzaS9zY3NpX3RyYW5zcG9ydF9mYy5oPgo+PiBAQCAtMzQsNyArMzUs
OCBAQCBzdHJ1Y3QgbnZtZV9mY19xdWV1ZSB7Cj4+IMKgwqDCoMKgwqAgc2l6ZV90wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbW5kX2NhcHN1bGVfbGVuOwo+PiDCoMKgwqDCoMKgIHUzMsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcW51bTsKPj4gwqDCoMKgwqDCoCB1MzLCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHNlcW5vOwo+PiAtCj4+ICvCoMKgwqAgaW50wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzcV9o
ZWFkOwo+PiArwqDCoMKgIGludMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3FfdGFpbDsKPj4gwqDC
oMKgwqDCoCB1NjTCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rpb25faWQ7Cj4+IMKgwqDC
oMKgwqAgYXRvbWljX3TCoMKgwqDCoMKgwqDCoCBjc247Cj4+IMKgIEBAIC0xNjcxLDYgKzE2NzMs
OCBAQCBudm1lX2ZjX2ZjcGlvX2RvbmUoc3RydWN0IG52bWVmY19mY3BfcmVxICpyZXEpCj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3FlLT5jb21tYW5kX2lkKTsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBkb25lOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
fQo+PiArwqDCoMKgwqDCoMKgwqAgV1JJVEVfT05DRShxdWV1ZS0+c3FfaGVhZCwgY3B1X3RvX2xl
MTYoY3FlLT5zcV9oZWFkKSk7Cj4+ICvCoMKgwqDCoMKgwqDCoCB0cmFjZV9udm1lX3NxKHJxLCBj
cWUtPnNxX2hlYWQsIHF1ZXVlLT5zcV90YWlsKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlc3Vs
dCA9IGNxZS0+cmVzdWx0Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gY3FlLT5zdGF0
dXM7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4gQEAgLTIxNzcsNiArMjE4MSwxOCBA
QCBudm1lX2ZjX3VubWFwX2RhdGEoc3RydWN0IG52bWVfZmNfY3RybCAqY3RybCwKPj4gc3RydWN0
IHJlcXVlc3QgKnJxLAo+PiDCoMKgwqDCoMKgIGZyZXEtPnNnX2NudCA9IDA7Cj4+IMKgIH0KPj4g
wqAgK3N0YXRpYyBpbnQgbnZtZV9mY191cGRhdGVfc3FfdGFpbChzdHJ1Y3QgbnZtZV9mY19xdWV1
ZSAqcXVldWUsIGludAo+PiBpbmNyKQo+PiArewo+PiArwqDCoMKgIGludCBvbGRfc3F0bCwgbmV3
X3NxdGw7Cj4+ICsKPj4gK8KgwqDCoCBkbyB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBvbGRfc3F0bCA9
IHF1ZXVlLT5zcV90YWlsOwo+PiArwqDCoMKgwqDCoMKgwqAgbmV3X3NxdGwgPSAob2xkX3NxdGwg
KyBpbmNyKSAlIHF1ZXVlLT5jdHJsLT5jdHJsLnNxc2l6ZTsKPj4gK8KgwqDCoCB9IHdoaWxlIChj
bXB4Y2hnKCZxdWV1ZS0+c3FfdGFpbCwgb2xkX3NxdGwsIG5ld19zcXRsKSAhPQo+PiArwqDCoMKg
wqDCoMKgwqDCoCBvbGRfc3F0bCk7Cj4+ICvCoMKgwqAgcmV0dXJuIG5ld19zcXRsOwo+PiArfQo+
PiArCj4+IMKgIC8qCj4+IMKgwqAgKiBJbiBGQywgdGhlIHF1ZXVlIGlzIGEgbG9naWNhbCB0aGlu
Zy4gQXQgdHJhbnNwb3J0IGNvbm5lY3QsIHRoZQo+PiB0YXJnZXQKPj4gwqDCoCAqIGNyZWF0ZXMg
aXRzICJxdWV1ZSIgYW5kIHJldHVybnMgYSBoYW5kbGUgdGhhdCBpcyB0byBiZSBnaXZlbiB0byB0
aGUKPj4gQEAgLTIyMTksNiArMjIzNSwxNCBAQCBudm1lX2ZjX3N0YXJ0X2ZjcF9vcChzdHJ1Y3Qg
bnZtZV9mY19jdHJsICpjdHJsLAo+PiBzdHJ1Y3QgbnZtZV9mY19xdWV1ZSAqcXVldWUsCj4+IMKg
wqDCoMKgwqAgaWYgKCFudm1lX2ZjX2N0cmxfZ2V0KGN0cmwpKQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIEJMS19TVFNfSU9FUlI7Cj4+IMKgICvCoMKgwqAgaWYgKCFjdHJsLT5jdHJsLm9w
dHMtPmRpc2FibGVfc3FmbG93KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAobnZtZV9mY191cGRh
dGVfc3FfdGFpbChxdWV1ZSwgMSkgPT0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkVBRF9P
TkNFKHF1ZXVlLT5zcV9oZWFkKSkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBudm1lX2Zj
X3VwZGF0ZV9zcV90YWlsKHF1ZXVlLCAtMSk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybiBCTEtfU1RTX1JFU09VUkNFOwo+PiArwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIH0K
Pj4gKwo+PiDCoMKgwqDCoMKgIC8qIGZvcm1hdCB0aGUgRkMtTlZNRSBDTUQgSVUgYW5kIGZjcF9y
ZXEgKi8KPj4gwqDCoMKgwqDCoCBjbWRpdS0+Y29ubmVjdGlvbl9pZCA9IGNwdV90b19iZTY0KHF1
ZXVlLT5jb25uZWN0aW9uX2lkKTsKPj4gwqDCoMKgwqDCoCBjbWRpdS0+ZGF0YV9sZW4gPSBjcHVf
dG9fYmUzMihkYXRhX2xlbik7Cj4+IEBAIC0yMjg0LDYgKzIzMDgsOSBAQCBudm1lX2ZjX3N0YXJ0
X2ZjcF9vcChzdHJ1Y3QgbnZtZV9mY19jdHJsICpjdHJsLAo+PiBzdHJ1Y3QgbnZtZV9mY19xdWV1
ZSAqcXVldWUsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBx
dWV1ZS0+bGxkZF9oYW5kbGUsICZvcC0+ZmNwX3JlcSk7Cj4+IMKgIMKgwqDCoMKgwqAgaWYgKHJl
dCkgewo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKGN0cmwtPmN0cmwub3B0cy0+ZGlzYWJsZV9zcWZs
b3cpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVfZmNfdXBkYXRlX3NxX3RhaWwocXVl
dWUsIC0xKTsKPj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyoKPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiBJZiB0aGUgbGxkIGZhaWxzIHRvIHNlbmQgdGhlIGNvbW1hbmQgaXMgdGhlcmUgYW4g
aXNzdWUgd2l0aAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHRoZSBjc24gdmFsdWU/wqAgSWYg
dGhlIGNvbW1hbmQgdGhhdCBmYWlscyBpcyB0aGUgQ29ubmVjdCwKPiAKPiBmeWkgLSBJIE5BSydk
IHRoaXMgcGF0Y2ggbWFpbmx5IGFzIGl0IHdhc24ndCBvcmRlcmluZyBFUlNQJ3MgYmVmb3JlCj4g
cHJvY2Vzc2luZyBTUUhELgo+IApJIGtub3cuCgpJJ20gd29ya2luZyBvbiBWMiwgYXMgSSd2ZSBm
b3VuZCB0aGF0IEknbGwgbmVlZCB0byBtb2RpZnkgbnZtZXQsIHRvbwood2hpY2ggY3VycmVudGx5
IGRvZXNuJ3Qgc2VuZCBTUUhEIHVwZGF0ZXMgYXQgYWxsKQpBbmQgdGhlICdQJyBiaXQgaGFuZGxp
bmcgaXMgbWlzc2luZyBjb21wbGV0ZWx5LgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVz
IFJlaW5lY2tlCQkgICAgICAgICAgIEtlcm5lbCBTdG9yYWdlIEFyY2hpdGVjdApoYXJlQHN1c2Uu
ZGUJCQkgICAgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNv
bHV0aW9ucyBHZXJtYW55IEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpIUkIg
MzY4MDkgKEFHIE7DvHJuYmVyZyksIEdGOiBGZWxpeCBJbWVuZMO2cmZmZXIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
