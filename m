Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9EAFCA55
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 16:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZKLNzJCNh4Rpf4aLzQ9QyQNZnlwgwucMkaFp5l2mzmA=; b=Ga0TIsuJi0ys7c
	jWa2C65aWHQGm2vNl5k45HuFc8H58WMpOtVpsTJ+ex/8kssfrNjjhZa0C4NVwVDNJaG+WmBCgDyhY
	WUPhi5Ao9m8oB7y3DXShV82ZtH0oYOUaA0olUXHyRLfXsZANRghKO/GC3E/nkJPCmm1qb5J8rE2Sz
	ZPzYbfon66XrTRT2EfBhJ/4XC857g3P3S3YlrZMSCcg209t/pw+CVwX9Gwoo6lxUptG4XT82BtFOg
	11XcJvAOV57Au3Zh/2tnQ0Il/71Aji8+N6zFjsYp8ScM8NZcVHYrsxChJTr5/BgfyZ2mrU4lZWrjl
	BRl5a0yXId1uvkaTlEpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHTP-00048H-TN; Thu, 14 Nov 2019 15:55:55 +0000
Received: from cox.onestopsystems.com ([98.187.250.34]
 helo=osserver.onestopsystems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHTG-00047C-M9
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 15:55:51 +0000
Received: from OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203]) by
 OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203%10]) with mapi id
 14.03.0468.000; Thu, 14 Nov 2019 07:55:38 -0800
From: Mark Ruijter <MRuijter@onestopsystems.com>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Sagi Grimberg
 <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, Max Gurtovoy
 <maxg@mellanox.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: make ctrl-id configurable
Thread-Topic: [PATCH] nvmet: make ctrl-id configurable
Thread-Index: AQHVknKB085Gn2d/PkqsHei3HhUGjqeLeeMA
Date: Thu, 14 Nov 2019 15:55:38 +0000
Message-ID: <91F68864-CBD0-43F9-B740-E10A0597A679@onestopsystems.com>
References: <20191103181343.3011-1-chaitanya.kulkarni@wdc.com>
 <409804f3-158b-cc3e-9b04-6499bfe1638d@mellanox.com>
 <3381ACB3-3ACC-4124-8925-09CED68BA11E@onestopsystems.com>
 <b79e612f-4b49-a80f-bc34-e672ae98c1af@mellanox.com>
 <B500B4ED-DF25-41F3-83F8-6E239718564A@onestopsystems.com>
 <c8472575-1041-c44e-e26a-1201161c22c6@broadcom.com>
 <802cb171-34de-65cc-75c5-83ef7c200dc4@grimberg.me>
 <3D590371-4C4F-4355-B36E-7795FB218FC6@onestopsystems.com>
 <2f3ea2c4-f59a-22e3-ed09-91cf737818ea@grimberg.me>
 <BYAPR04MB5749590C4171F548680DEB7686760@BYAPR04MB5749.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5749590C4171F548680DEB7686760@BYAPR04MB5749.namprd04.prod.outlook.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.f.191014
x-originating-ip: [89.220.153.177]
Content-ID: <FE9DC4D8D39F2642BBA1B960E115CC50@onestopsystems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_075549_875763_2BD9CECA 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ICAgPj4gQWx0aG91Z2ggd2Ugc3RpbGwgaGF2ZSB0aGUgb3V0c3RhbmRpbmcgaXNzdWUgcG9pbnRl
ZCBieSBNYXJrLg0KDQpBc3N1bWluZyB0aGF0IHRoZSByYW5nZSBtaW4vbWF4IGlzIGdyZWF0ZXIg
b3IgZXF1YWwgdGhhbiB0aGUgbnVtYmVyDQpvZiB0YXJnZXQgcG9ydHMgeW91IHVzZSBmb3IgZXhw
b3J0aW5nIHRoZSBzdWJzeXN0ZW0geW91IHdpbGwgbm90IHJ1biBpbnRvIHByb2JsZW1zLg0KDQog
ICA+PiBTaW5jZSB3ZSBkZWZpbmUgY29udHJvbGxlciBpZCBhdCB0aGUgbGV2ZWwgb2Ygc3Vic3lz
dGVtIGhhdmluZyBtaW4gYW5kDQogICA+PiBtYXggc3RpbGwgcmVzdWx0IGluIHRoZSBlcnJvciB3
aGVuIHdlIGFyZSB0cnlpbmcgdG8gZXhwb3J0IHNhbWUNCiAgID4+IHN1YnN5cyB3aXRoIHR3byBk
aWZmZXJlbnQgcG9ydHMuDQpUaGF0IGlzIG5vIGxvbmdlciB0aGUgY2FzZSB3aGVuIGNudGxpZF9t
YXggLSBjbnRsaWRfbWluID49IG51bWJlciBvZiBleHBvcnRzLg0KVGhlIGZpcnN0IHBhdGNoIHdl
IGNyZWF0ZWQgaGFyZCB3aXJlZCB0aGUgY250bGlkLCB3aGljaCB3YXMgYSBwcm9ibGVtLg0KDQpX
aGVuIHlvdSBzZXQgY250bGlkX21heCB0byBjbnRsaWRfbWluICsgdGhlIChleHBlY3RlZCkgbnVt
YmVyIG9mIHRhcmdldCBwb3J0cyBpbiB0aGUgc3lzdGVtIHlvdSBzaG91bGQgYWx3YXlzIGJlIGZp
bmUuIA0KSW4gYSBjbHVzdGVyIHRoZSBwb3J0X2lkIGNhbiBiZSBpZGVudGljYWwgd2VsbCBzbyBh
ZGRpbmcgdGhhdCBkb2VzIG5vdCBtYWtlIG11Y2ggc2Vuc2UgZWl0aGVyLg0KDQpBcyBJIHNlZSBp
dCwgdGhpcyBwYXRjaCBpcyBzdWZmaWNpZW50Og0KRWl0aGVyIHlvdSBkb24ndCBkbyBhbnl0aGlu
ZywgaW4gd2hpY2ggY2FzZSB0aGluZ3Mgd29yayBsaWtlIGJlZm9yZS4gVGhlIGNudGxpZCBpcyBh
dXRvbWF0aWNhbGx5IGFzc2lnbmVkLg0KT3IgeW91IGNhbiBjb25maWd1cmUgdGhlIGNudGxpZC4g
U2hvdWxkIHlvdSBtYWtlIGEgbWlzdGFrZSB0aGUgaW5pdGlhdG9yIHdpbGwgc2ltcGx5IHJlZnVz
ZSB0byBjb25uZWN0Lg0KVGhlIGluaXRpYXRvciB3aWxsIGFsc28gY2xlYXJseSBsb2cgdGhlIHBy
b2JsZW0uDQpJbiB0aGF0IGNhc2Ugbm8gcmVhbCBoYXJtIGlzIGRvbmUgYW5kIHlvdSBjYW4gc2lt
cGx5IGNoYW5nZSB0aGUgdGFyZ2V0IGNvbmZpZ3VyYXRpb24gdG8gbWFrZSBpdCB3b3JrLg0KDQpN
YXJrDQoNCg0K77u/T3AgMTQtMTEtMTkgMDA6NDAgaGVlZnQgQ2hhaXRhbnlhIEt1bGthcm5pIDxD
aGFpdGFueWEuS3Vsa2FybmlAd2RjLmNvbT4gZ2VzY2hyZXZlbjoNCg0KICAgIE9uIDExLzEyLzIw
MTkgMTE6MDEgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6DQogICAgPj4gPnJvb3RAcjExaTE6fiMg
bnZtZSBsaXN0LXN1YnN5cw0KICAgID4+ID5udm1lLXN1YnN5czAgLSBOUU49Y2x2b2wNCiAgICA+
PiA+XA0KICAgID4+ID4gICArLSBudm1lMCB0Y3AgdHJhZGRyPTE5Mi4xNjguMS4xMCB0cnN2Y2lk
PTQ0MjANCiAgICA+PiA+ICAgKy0gbnZtZTEgdGNwIHRyYWRkcj0xOTIuMTY4LjEuMTEgdHJzdmNp
ZD00NDIwDQogICAgPj4gPg0KICAgID4+ID5Eb2VzIHRoaXMgYWxsIG1ha2Ugc2Vuc2U/DQogICAg
PiBJIHRoaW5rIHdlIG5lZWQgYSBjbnRsaWRfbWF4IHRvIG1ha2Ugc3VyZSB3ZSBkb24ndCBoYXZl
IGNvbGxpc2lvbnMuLg0KICAgID4NCiAgICBIb3cgYWJvdXQgZm9sbG93aW5nIHBhdGNoIHdoaWNo
IHVzZWQgY250bF9taW4gYW5kIGNudGxfbWF4ID8NCiAgICANCiAgICAoY29tcGlsZSBvbmx5KQ0K
ICAgIA0KICAgICtzdGF0aWMgYm9vbCBudm1ldF9zdWJzeXNfY250bGlkX3N0b3JlKHN0cnVjdCBu
dm1ldF9zdWJzeXMgKnMsIGNvbnN0IA0KICAgIGNoYXIgKnBhZ2UsDQogICAgKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBib29sIG1pbikNCiAgICArew0KICAgICsgICAgICAg
Ym9vbCByZXQgPSB0cnVlOw0KICAgICsgICAgICAgdTE2IGNpZDsNCiAgICArDQogICAgKyAgICAg
ICBkb3duX3dyaXRlKCZudm1ldF9jb25maWdfc2VtKTsNCiAgICArICAgICAgIHNzY2FuZihwYWdl
LCAiJWh1XG4iLCAmY2lkKTsNCiAgICArICAgICAgIGlmIChjaWQgPCAgTlZNRV9DTlRMSURfTUlO
IHx8IGNpZCA+IE5WTUVfQ05UTElEX01BWCkgew0KICAgICsgICAgICAgICAgICAgICByZXQgPSBm
YWxzZTsNCiAgICArICAgICAgICAgICAgICAgZ290byBvdXQ7DQogICAgKyAgICAgICB9DQogICAg
Kw0KICAgICsgICAgICAgaWYgKG1pbikNCiAgICArICAgICAgICAgICAgICAgcy0+Y250bGlkX21p
biA9IGNpZDsNCiAgICArICAgICAgIGVsc2UNCiAgICArICAgICAgICAgICAgICAgcy0+Y250bGlk
X21heCA9IGNpZDsNCiAgICArb3V0Og0KICAgICsgICAgICAgdXBfd3JpdGUoJm52bWV0X2NvbmZp
Z19zZW0pOw0KICAgICsNCiAgICArICAgICAgIHJldHVybiByZXQ7DQogICAgK30NCiAgICArDQog
ICAgK3N0YXRpYyBib29sIG52bWV0X3N1YnN5c19jbnRsaWRfc2hvdyhzdHJ1Y3QgbnZtZXRfc3Vi
c3lzICpzLCBjaGFyICpwYWdlLA0KICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBib29sIG1pbikNCiAgICArew0KICAgICsgICAgICAgdTE2IGNpZCA9IG1pbiA/IHMtPmNu
dGxpZF9taW4gOiBzLT5jbnRsaWRfbWF4Ow0KICAgICsNCiAgICArICAgICAgIHJldHVybiBzbnBy
aW50ZihwYWdlLCBQQUdFX1NJWkUsICIldVxuIiwgY2lkKTsNCiAgICArfQ0KICAgICsNCiAgICAr
c3RhdGljIHNzaXplX3QgbnZtZXRfc3Vic3lzX2NudGxpZF9taW5fc2hvdyhzdHJ1Y3QgY29uZmln
X2l0ZW0gKml0ZW0sDQogICAgKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjaGFyICpwYWdlKQ0KICAgICt7DQogICAgKyAgICAgICByZXR1cm4gbnZtZXRfc3Vic3lz
X2NudGxpZF9zaG93KHRvX3N1YnN5cyhpdGVtKSwgcGFnZSwgdHJ1ZSk7DQogICAgK30NCiAgICAr
DQogICAgK3N0YXRpYyBzc2l6ZV90IG52bWV0X3N1YnN5c19jbnRsaWRfbWluX3N0b3JlKHN0cnVj
dCBjb25maWdfaXRlbSAqaXRlbSwNCiAgICArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25zdCBjaGFyICpwYWdlLCBzaXplX3QgY291bnQpDQogICAgK3sNCiAg
ICArICAgICAgIHN0cnVjdCBudm1ldF9zdWJzeXMgKnMgPSB0b19zdWJzeXMoaXRlbSk7DQogICAg
Kw0KICAgICsgICAgICAgcmV0dXJuIG52bWV0X3N1YnN5c19jbnRsaWRfc3RvcmUocywgcGFnZSwg
dHJ1ZSkgPyBjb3VudCA6IC1FSU5WQUw7DQogICAgK30NCiAgICArQ09ORklHRlNfQVRUUihudm1l
dF9zdWJzeXNfLCBjbnRsaWRfbWluKTsNCiAgICArDQogICAgK3N0YXRpYyBzc2l6ZV90IG52bWV0
X3N1YnN5c19jbnRsaWRfbWF4X3Nob3coc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLA0KICAgICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhciAqcGFnZSkNCiAg
ICArew0KICAgICsgICAgICAgcmV0dXJuIG52bWV0X3N1YnN5c19jbnRsaWRfc2hvdyh0b19zdWJz
eXMoaXRlbSksIHBhZ2UsIGZhbHNlKTsNCiAgICArfQ0KICAgICsNCiAgICArc3RhdGljIHNzaXpl
X3QgbnZtZXRfc3Vic3lzX2NudGxpZF9tYXhfc3RvcmUoc3RydWN0IGNvbmZpZ19pdGVtICppdGVt
LA0KICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0
IGNoYXIgKnBhZ2UsIHNpemVfdCBjb3VudCkNCiAgICArew0KICAgICsgICAgICAgc3RydWN0IG52
bWV0X3N1YnN5cyAqcyA9IHRvX3N1YnN5cyhpdGVtKTsNCiAgICArDQogICAgKyAgICAgICByZXR1
cm4gbnZtZXRfc3Vic3lzX2NudGxpZF9zdG9yZShzLCBwYWdlLCBmYWxzZSkgPyBjb3VudCA6IC1F
SU5WQUw7DQogICAgK30NCiAgICArQ09ORklHRlNfQVRUUihudm1ldF9zdWJzeXNfLCBjbnRsaWRf
bWF4KTsNCiAgICArDQogICAgICBzdGF0aWMgc3RydWN0IGNvbmZpZ2ZzX2F0dHJpYnV0ZSAqbnZt
ZXRfc3Vic3lzX2F0dHJzW10gPSB7DQogICAgICAgICAgICAgJm52bWV0X3N1YnN5c19hdHRyX2F0
dHJfYWxsb3dfYW55X2hvc3QsDQogICAgICAgICAgICAgJm52bWV0X3N1YnN5c19hdHRyX2F0dHJf
dmVyc2lvbiwNCiAgICAgICAgICAgICAmbnZtZXRfc3Vic3lzX2F0dHJfYXR0cl9zZXJpYWwsDQog
ICAgKyAgICAgICAmbnZtZXRfc3Vic3lzX2F0dHJfY250bGlkX21pbiwNCiAgICArICAgICAgICZu
dm1ldF9zdWJzeXNfYXR0cl9jbnRsaWRfbWF4LA0KICAgICAgICAgICAgIE5VTEwsDQogICAgICB9
Ow0KICAgIA0KICAgIGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYyBiL2Ry
aXZlcnMvbnZtZS90YXJnZXQvY29yZS5jDQogICAgaW5kZXggMjg0MzhiODMzYzFiLi5kNWE1YWYz
ZjIxYjYgMTAwNjQ0DQogICAgLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMNCiAgICAr
KysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYw0KICAgIEBAIC0xMjY4LDcgKzEyNjgsNyBA
QCB1MTYgbnZtZXRfYWxsb2NfY3RybChjb25zdCBjaGFyICpzdWJzeXNucW4sIGNvbnN0IA0KICAg
IGNoYXIgKmhvc3RucW4sDQogICAgICAgICAgICAgICAgICAgICBnb3RvIG91dF9mcmVlX2NxczsN
CiAgICANCiAgICAgICAgICAgICByZXQgPSBpZGFfc2ltcGxlX2dldCgmY250bGlkX2lkYSwNCiAg
ICAtICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5WTUVfQ05UTElEX01JTiwgTlZNRV9DTlRM
SURfTUFYLA0KICAgICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3Vic3lzLT5jbnRsaWRf
bWluLCBzdWJzeXMtPmNudGxpZF9taW4sDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgR0ZQX0tFUk5FTCk7DQogICAgICAgICAgICAgaWYgKHJldCA8IDApIHsNCiAgICAgICAgICAg
ICAgICAgICAgIHN0YXR1cyA9IE5WTUVfU0NfQ09OTkVDVF9DVFJMX0JVU1kgfCBOVk1FX1NDX0RO
UjsNCiAgICBAQCAtMTQxNiw3ICsxNDE2LDggQEAgc3RydWN0IG52bWV0X3N1YnN5cyAqbnZtZXRf
c3Vic3lzX2FsbG9jKGNvbnN0IGNoYXIgDQogICAgKnN1YnN5c25xbiwNCiAgICAgICAgICAgICAg
ICAgICAgIGtmcmVlKHN1YnN5cyk7DQogICAgICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BU
UigtRU5PTUVNKTsNCiAgICAgICAgICAgICB9DQogICAgLQ0KICAgICsgICAgICAgc3Vic3lzLT5j
bnRsaWRfbWluID0gTlZNRV9DTlRMSURfTUlOOw0KICAgICsgICAgICAgc3Vic3lzLT5jbnRsaWRf
bWF4ID0gTlZNRV9DTlRMSURfTUFYOw0KICAgICAgICAgICAgIGtyZWZfaW5pdCgmc3Vic3lzLT5y
ZWYpOw0KICAgIA0KICAgICAgICAgICAgIG11dGV4X2luaXQoJnN1YnN5cy0+bG9jayk7DQogICAg
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaCBiL2RyaXZlcnMvbnZtZS90
YXJnZXQvbnZtZXQuaA0KICAgIGluZGV4IDQ2ZGY0NWU4MzdjOS4uZWNiZDE2ZjUyOTczIDEwMDY0
NA0KICAgIC0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaA0KICAgICsrKyBiL2RyaXZl
cnMvbnZtZS90YXJnZXQvbnZtZXQuaA0KICAgIEBAIC0yMTEsNiArMjExLDggQEAgc3RydWN0IG52
bWV0X3N1YnN5cyB7DQogICAgICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICAgbmFtZXNw
YWNlczsNCiAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgICAgICAgICAgICBucl9uYW1lc3BhY2Vz
Ow0KICAgICAgICAgICAgIHVuc2lnbmVkIGludCAgICAgICAgICAgIG1heF9uc2lkOw0KICAgICsg
ICAgICAgdTE2ICAgICAgICAgICAgICAgICAgICAgY250bGlkX21pbjsNCiAgICArICAgICAgIHUx
NiAgICAgICAgICAgICAgICAgICAgIGNudGxpZF9tYXg7DQogICAgDQogICAgICAgICAgICAgc3Ry
dWN0IGxpc3RfaGVhZCAgICAgICAgY3RybHM7DQogICAgDQogICAgQWx0aG91Z2ggd2Ugc3RpbGwg
aGF2ZSB0aGUgb3V0c3RhbmRpbmcgaXNzdWUgcG9pbnRlZCBieSBNYXJrLg0KICAgIFNpbmNlIHdl
IGRlZmluZSBjb250cm9sbGVyIGlkIGF0IHRoZSBsZXZlbCBvZiBzdWJzeXN0ZW0gaGF2aW5nIG1p
biBhbmQNCiAgICBtYXggc3RpbGwgcmVzdWx0IGluIHRoZSBlcnJvciB3aGVuIHdlIGFyZSB0cnlp
bmcgdG8gZXhwb3J0IHNhbWUNCiAgICBzdWJzeXMgd2l0aCB0d28gZGlmZmVyZW50IHBvcnRzLg0K
ICAgIA0KICAgIE1hcmsgcGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nLg0KICAgIA0KICAg
IEZvciB0aGF0IGNhc2Ugc2hvdWxkIHdlIHVzZSBzdWJzeXMtaWQgKyBwb3J0LWlkIGFzIGEgY29t
YmluYXRpb24gb2YgdGhlDQogICAgY29udHJvbGxlciBpZCA/DQogICAgDQogICAgQW55IHRob3Vn
aHRzID8NCiAgICANCiAgICANCiAgICANCiAgICANCiAgICANCiAgICANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxp
c3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
