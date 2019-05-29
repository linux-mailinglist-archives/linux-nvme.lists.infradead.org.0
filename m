Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EB32E1BD
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXkghZeNJ6rtNBSeJyEMsnvXCqRLMNzvpHuwsMlAkOk=; b=l2SSsf9R5Uzwmi
	AsvSu0C+U6L3kXTKFX3MezNBwAQ3vOFNQ8NMtugJ7MG0+Y3mZQTAvuUz97bUnohLJNWuMQIRolOtR
	eo3RWMPfVKhjr2HUlmjuGTMtA+V1qIK0POqt0hX2bnv8RB1bVCnNR3iz0sEHw3OX0tJ/4EqMYrNk1
	jeZsKHFtaseW5RUMoI0ahbwBTVe7LqSwfB7rwgT1C/WrIIKxG4At75cDktUxULwQ+sC3huxG88wOn
	tdqQVFMSAswqbNlrlz4WUKC0k4qe3c4cMItz8nAAnaj0vwLXREYW3KWtk/8JcsUNwjWJtaPbum61y
	zpPZ3drc+AIKRDier8xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0vP-0003iT-2u; Wed, 29 May 2019 15:55:35 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0vJ-0003hs-Ae
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:55:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 08:55:28 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 08:55:28 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 29 May 2019 08:55:26 -0700
Received: from fmsmsx105.amr.corp.intel.com ([169.254.4.170]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.130]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 08:55:25 -0700
From: "Harris, James R" <james.r.harris@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2 2/2] nvme-tcp: fix queue mapping when queue count is
 limited
Thread-Topic: [PATCH v2 2/2] nvme-tcp: fix queue mapping when queue count is
 limited
Thread-Index: AQHVFeJAQcO2Z1x8V0uV2FKXrzvxxqaCQhaA
Date: Wed, 29 May 2019 15:55:24 +0000
Message-ID: <7DD1C983-28CE-4C59-95CE-4087C5211A39@intel.com>
References: <20190529054905.16279-1-sagi@grimberg.me>
 <20190529054905.16279-2-sagi@grimberg.me>
In-Reply-To: <20190529054905.16279-2-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.a.190512
x-originating-ip: [143.182.136.98]
Content-ID: <E99C25B826C7444CBCA048DF7892FD6F@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_085529_414601_8480B9C3 
X-CRM114-Status: GOOD (  20.77  )
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCu+7v09uIDUvMjgvMTksIDEwOjQ5IFBNLCAiU2FnaSBHcmltYmVyZyIgPHNhZ2lAZ3JpbWJl
cmcubWU+IHdyb3RlOg0KDQogICAgV2hlbiB0aGUgY29udHJvbGxlciBzdXBwb3J0cyBsZXNzIHF1
ZXVlcyB0aGFuIHJlcXVlc3RlZCwgd2UNCiAgICBzaG91bGQgbWFrZSBzdXJlIHRoYXQgcXVldWUg
bWFwcGluZyBkb2VzIHRoZSByaWdodCB0aGluZyBhbmQNCiAgICBub3QgYXNzdW1lIHRoYXQgYWxs
IHF1ZXVlcyBhcmUgYXZhaWxhYmxlLiBUaGlzIGZpeGVzIGEgY3Jhc2gNCiAgICB3aGVuIHRoZSBj
b250cm9sbGVyIHN1cHBvcnRzIGxlc3MgcXVldWVzIHRoYW4gcmVxdWVzdGVkLg0KICAgIA0KICAg
IFRoZSBydWxlcyBhcmU6DQogICAgMS4gaWYgbm8gd3JpdGUgcXVldWVzIGFyZSByZXF1ZXN0ZWQs
IHdlIGFzc2lnbiB0aGUgYXZhaWxhYmxlIHF1ZXVlcw0KICAgICAgIHRvIHRoZSBkZWZhdWx0IHF1
ZXVlIG1hcC4gVGhlIGRlZmF1bHQgYW5kIHJlYWQgcXVldWUgbWFwcyBzaGFyZSB0aGUNCiAgICAg
ICBleGlzdGluZyBxdWV1ZXMuDQogICAgMi4gaWYgd3JpdGUgcXVldWVzIGFyZSByZXF1ZXN0ZWQ6
DQogICAgICAtIGZpcnN0IG1ha2Ugc3VyZSB0aGF0IHJlYWQgcXVldWUgbWFwIGdldHMgdGhlIHJl
cXVlc3RlZA0KICAgICAgICBucl9pb19xdWV1ZXMgY291bnQNCiAgICAgIC0gdGhlbiBncmFudCB0
aGUgZGVmYXVsdCBxdWV1ZSBtYXAgdGhlIG1pbmltdW0gYmV0d2VlbiB0aGUgcmVxdWVzdGVkDQog
ICAgICAgIG5yX3dyaXRlX3F1ZXVlcyBhbmQgdGhlIHJlbWFpbmluZyBxdWV1ZXMuIElmIHRoZXJl
IGFyZSBubyBhdmFpbGFibGUNCiAgICAgICAgcXVldWVzIHRvIGRlZGljYXRlIHRvIHRoZSBkZWZh
dWx0IHF1ZXVlIG1hcCwgZmFsbGJhY2sgdG8gKDEpIGFuZA0KICAgICAgICBzaGFyZSBhbGwgdGhl
IHF1ZXVlcyBpbiB0aGUgZXhpc3RpbmcgcXVldWUgbWFwLg0KICAgIA0KICAgIEFsc28sIHByb3Zp
ZGUgYSBsb2cgaW5kaWNhdGlvbiBvbiBob3cgd2UgY29uc3RydWN0ZWQgdGhlIGRpZmZlcmVudA0K
ICAgIHF1ZXVlIG1hcHMuDQogICAgDQogICAgUmVwb3J0ZWQtYnk6IEhhcnJpcywgSmFtZXMgUiA8
amFtZXMuci5oYXJyaXNAaW50ZWwuY29tPg0KICAgIENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9y
Zz4gIyB2NS4wKw0KICAgIFN1Z2dlc3RlZC1ieTogUm95IFNodGVybWFuIDxyb3lzQGxpZ2h0Yml0
c2xhYnMuY29tPg0KICAgIFNpZ25lZC1vZmYtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJl
cmcubWU+DQoNCnYyIGxvb2tzIGdvb2QuDQoNClRlc3RlZC1ieTogSmltIEhhcnJpcyA8amFtZXMu
ci5oYXJyaXNAaW50ZWwuY29tPg0KICAgIC0tLQ0KICAgICBkcml2ZXJzL252bWUvaG9zdC90Y3Au
YyB8IDU3ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tDQogICAgIDEg
ZmlsZSBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KICAgIA0KICAg
IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC90Y3AuYyBiL2RyaXZlcnMvbnZtZS9ob3N0
L3RjcC5jDQogICAgaW5kZXggMmIxMDdhMWQxNTJiLi4wOGEyNTAxYjkzNTcgMTAwNjQ0DQogICAg
LS0tIGEvZHJpdmVycy9udm1lL2hvc3QvdGNwLmMNCiAgICArKysgYi9kcml2ZXJzL252bWUvaG9z
dC90Y3AuYw0KICAgIEBAIC0xMTEsNiArMTExLDcgQEAgc3RydWN0IG52bWVfdGNwX2N0cmwgew0K
ICAgICAJc3RydWN0IHdvcmtfc3RydWN0CWVycl93b3JrOw0KICAgICAJc3RydWN0IGRlbGF5ZWRf
d29yawljb25uZWN0X3dvcms7DQogICAgIAlzdHJ1Y3QgbnZtZV90Y3BfcmVxdWVzdCBhc3luY19y
ZXE7DQogICAgKwl1MzIJCQlpb19xdWV1ZXNbSENUWF9NQVhfVFlQRVNdOw0KICAgICB9Ow0KICAg
ICANCiAgICAgc3RhdGljIExJU1RfSEVBRChudm1lX3RjcF9jdHJsX2xpc3QpOw0KICAgIEBAIC0x
NTY0LDYgKzE1NjUsMzUgQEAgc3RhdGljIHVuc2lnbmVkIGludCBudm1lX3RjcF9ucl9pb19xdWV1
ZXMoc3RydWN0IG52bWVfY3RybCAqY3RybCkNCiAgICAgCXJldHVybiBucl9pb19xdWV1ZXM7DQog
ICAgIH0NCiAgICAgDQogICAgK3N0YXRpYyB2b2lkIG52bWVfdGNwX3NldF9pb19xdWV1ZXMoc3Ry
dWN0IG52bWVfY3RybCAqbmN0cmwsDQogICAgKwkJdW5zaWduZWQgaW50IG5yX2lvX3F1ZXVlcykN
CiAgICArew0KICAgICsJc3RydWN0IG52bWVfdGNwX2N0cmwgKmN0cmwgPSB0b190Y3BfY3RybChu
Y3RybCk7DQogICAgKwlzdHJ1Y3QgbnZtZl9jdHJsX29wdGlvbnMgKm9wdHMgPSBuY3RybC0+b3B0
czsNCiAgICArDQogICAgKwlpZiAob3B0cy0+bnJfd3JpdGVfcXVldWVzICYmIG9wdHMtPm5yX2lv
X3F1ZXVlcyA8IG5yX2lvX3F1ZXVlcykgew0KICAgICsJCS8qDQogICAgKwkJICogc2VwYXJhdGUg
cmVhZC93cml0ZSBxdWV1ZXMNCiAgICArCQkgKiBoYW5kIG91dCBkZWRpY2F0ZWQgZGVmYXVsdCBx
dWV1ZXMgb25seSBhZnRlciB3ZSBoYXZlDQogICAgKwkJICogc3VmZmljaWVudCByZWFkIHF1ZXVl
cy4NCiAgICArCQkgKi8NCiAgICArCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdID0g
b3B0cy0+bnJfaW9fcXVldWVzOw0KICAgICsJCW5yX2lvX3F1ZXVlcyAtPSBjdHJsLT5pb19xdWV1
ZXNbSENUWF9UWVBFX1JFQURdOw0KICAgICsJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVG
QVVMVF0gPQ0KICAgICsJCQltaW4ob3B0cy0+bnJfd3JpdGVfcXVldWVzLCBucl9pb19xdWV1ZXMp
Ow0KICAgICsJCW5yX2lvX3F1ZXVlcyAtPSBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFV
TFRdOw0KICAgICsJfSBlbHNlIHsNCiAgICArCQkvKg0KICAgICsJCSAqIHNoYXJlZCByZWFkL3dy
aXRlIHF1ZXVlcw0KICAgICsJCSAqIGVpdGhlciBubyB3cml0ZSBxdWV1ZXMgd2VyZSByZXF1ZXN0
ZWQsIG9yIHdlIGRvbid0IGhhdmUNCiAgICArCQkgKiBzdWZmaWNpZW50IHF1ZXVlIGNvdW50IHRv
IGhhdmUgZGVkaWNhdGVkIGRlZmF1bHQgcXVldWVzLg0KICAgICsJCSAqLw0KICAgICsJCWN0cmwt
PmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF0gPQ0KICAgICsJCQltaW4ob3B0cy0+bnJfaW9f
cXVldWVzLCBucl9pb19xdWV1ZXMpOw0KICAgICsJCW5yX2lvX3F1ZXVlcyAtPSBjdHJsLT5pb19x
dWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOw0KICAgICsJfQ0KICAgICt9DQogICAgKw0KICAgICBz
dGF0aWMgaW50IG52bWVfdGNwX2FsbG9jX2lvX3F1ZXVlcyhzdHJ1Y3QgbnZtZV9jdHJsICpjdHJs
KQ0KICAgICB7DQogICAgIAl1bnNpZ25lZCBpbnQgbnJfaW9fcXVldWVzOw0KICAgIEBAIC0xNTgx
LDYgKzE2MTEsOCBAQCBzdGF0aWMgaW50IG52bWVfdGNwX2FsbG9jX2lvX3F1ZXVlcyhzdHJ1Y3Qg
bnZtZV9jdHJsICpjdHJsKQ0KICAgICAJZGV2X2luZm8oY3RybC0+ZGV2aWNlLA0KICAgICAJCSJj
cmVhdGluZyAlZCBJL08gcXVldWVzLlxuIiwgbnJfaW9fcXVldWVzKTsNCiAgICAgDQogICAgKwlu
dm1lX3RjcF9zZXRfaW9fcXVldWVzKGN0cmwsIG5yX2lvX3F1ZXVlcyk7DQogICAgKw0KICAgICAJ
cmV0dXJuIF9fbnZtZV90Y3BfYWxsb2NfaW9fcXVldWVzKGN0cmwpOw0KICAgICB9DQogICAgIA0K
ICAgIEBAIC0yMDg5LDIzICsyMTIxLDM0IEBAIHN0YXRpYyBibGtfc3RhdHVzX3QgbnZtZV90Y3Bf
cXVldWVfcnEoc3RydWN0IGJsa19tcV9od19jdHggKmhjdHgsDQogICAgIHN0YXRpYyBpbnQgbnZt
ZV90Y3BfbWFwX3F1ZXVlcyhzdHJ1Y3QgYmxrX21xX3RhZ19zZXQgKnNldCkNCiAgICAgew0KICAg
ICAJc3RydWN0IG52bWVfdGNwX2N0cmwgKmN0cmwgPSBzZXQtPmRyaXZlcl9kYXRhOw0KICAgICsJ
c3RydWN0IG52bWZfY3RybF9vcHRpb25zICpvcHRzID0gY3RybC0+Y3RybC5vcHRzOw0KICAgICAN
CiAgICAtCXNldC0+bWFwW0hDVFhfVFlQRV9ERUZBVUxUXS5xdWV1ZV9vZmZzZXQgPSAwOw0KICAg
IC0Jc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcyA9IGN0cmwtPmN0cmwub3B0cy0+
bnJfaW9fcXVldWVzOw0KICAgIC0JaWYgKGN0cmwtPmN0cmwub3B0cy0+bnJfd3JpdGVfcXVldWVz
KSB7DQogICAgKwlpZiAob3B0cy0+bnJfd3JpdGVfcXVldWVzICYmIGN0cmwtPmlvX3F1ZXVlc1tI
Q1RYX1RZUEVfUkVBRF0pIHsNCiAgICAgCQkvKiBzZXBhcmF0ZSByZWFkL3dyaXRlIHF1ZXVlcyAq
Lw0KICAgICAJCXNldC0+bWFwW0hDVFhfVFlQRV9ERUZBVUxUXS5ucl9xdWV1ZXMgPQ0KICAgIC0J
CQkJY3RybC0+Y3RybC5vcHRzLT5ucl93cml0ZV9xdWV1ZXM7DQogICAgKwkJCWN0cmwtPmlvX3F1
ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07DQogICAgKwkJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFV
TFRdLnF1ZXVlX29mZnNldCA9IDA7DQogICAgKwkJc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5y
X3F1ZXVlcyA9DQogICAgKwkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUkVBRF07DQogICAg
IAkJc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLnF1ZXVlX29mZnNldCA9DQogICAgLQkJCQljdHJs
LT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVlczsNCiAgICArCQkJY3RybC0+aW9fcXVldWVzW0hD
VFhfVFlQRV9ERUZBVUxUXTsNCiAgICAgCX0gZWxzZSB7DQogICAgLQkJLyogbWl4ZWQgcmVhZC93
cml0ZSBxdWV1ZXMgKi8NCiAgICArCQkvKiBzaGFyZWQgcmVhZC93cml0ZSBxdWV1ZXMgKi8NCiAg
ICAgCQlzZXQtPm1hcFtIQ1RYX1RZUEVfREVGQVVMVF0ubnJfcXVldWVzID0NCiAgICAtCQkJCWN0
cmwtPmN0cmwub3B0cy0+bnJfaW9fcXVldWVzOw0KICAgICsJCQljdHJsLT5pb19xdWV1ZXNbSENU
WF9UWVBFX0RFRkFVTFRdOw0KICAgICsJCXNldC0+bWFwW0hDVFhfVFlQRV9ERUZBVUxUXS5xdWV1
ZV9vZmZzZXQgPSAwOw0KICAgICsJCXNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5ucl9xdWV1ZXMg
PQ0KICAgICsJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOw0KICAgICAJCXNl
dC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5xdWV1ZV9vZmZzZXQgPSAwOw0KICAgICAJfQ0KICAgICAJ
YmxrX21xX21hcF9xdWV1ZXMoJnNldC0+bWFwW0hDVFhfVFlQRV9ERUZBVUxUXSk7DQogICAgIAli
bGtfbXFfbWFwX3F1ZXVlcygmc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdKTsNCiAgICArDQogICAg
KwlkZXZfaW5mbyhjdHJsLT5jdHJsLmRldmljZSwNCiAgICArCQkibWFwcGVkICVkLyVkIGRlZmF1
bHQvcmVhZCBxdWV1ZXMuXG4iLA0KICAgICsJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVG
QVVMVF0sDQogICAgKwkJY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXSk7DQogICAgKw0K
ICAgICAJcmV0dXJuIDA7DQogICAgIH0NCiAgICAgDQogICAgLS0gDQogICAgMi4xNy4xDQogICAg
DQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
