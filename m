Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F44F50D1
	for <lists+linux-nvme@lfdr.de>; Fri,  8 Nov 2019 17:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YxkLSSV8/a+8HGCN1vnOSwpiA7yHdKVdMJlgxBC+ecw=; b=i/nfVkHMr+G2rsnY6pY5+oIDN
	ZgWjzs1B/t95hBpYE1i+hMI0eGdqasjOrzumqtDiQt5c1KzXGKFwUaITru8aQWyle6pUXzAMWei0E
	AfNx7HZvMCHd4GfyHfpA4tfu7eO0BB+715eMkEwSdbuB+txzA07jCcbOTfC8eC/9U2ssajYfnMIcb
	9FhmjoGGGhDmjkRQTq60VJQMfwTWDh3kdCjoAn55UkrkVWkAe824JcQK/EaHMptK/b9iPCifolO5b
	zJO/Uq59BH3aaibS9k7Z0njNJnBlxPkbUeVkbFMaB3P1B1s01lz2A+tvNVOcXvpqFIByIRxo4ex7C
	/lcgl2dCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6vM-0000wh-MQ; Fri, 08 Nov 2019 16:15:48 +0000
Received: from cox.onestopsystems.com ([98.187.250.34]
 helo=osserver.onestopsystems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6vG-0000vi-OU
 for linux-nvme@lists.infradead.org; Fri, 08 Nov 2019 16:15:44 +0000
Received: from OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203]) by
 OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203%10]) with mapi id
 14.03.0468.000; Fri, 8 Nov 2019 08:15:35 -0800
From: Mark Ruijter <MRuijter@onestopsystems.com>
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, 
 Max Gurtovoy <maxg@mellanox.com>, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: make ctrl-id configurable
Thread-Topic: [PATCH] nvmet: make ctrl-id configurable
Thread-Index: AQHVknKB085Gn2d/PkqsHei3HhUGjqd7R8OAgAAkHQCAACb2gIAAOzMAgAHmsQCAATE7AIADK4IA
Date: Fri, 8 Nov 2019 16:15:34 +0000
Message-ID: <3D590371-4C4F-4355-B36E-7795FB218FC6@onestopsystems.com>
References: <20191103181343.3011-1-chaitanya.kulkarni@wdc.com>
 <409804f3-158b-cc3e-9b04-6499bfe1638d@mellanox.com>
 <3381ACB3-3ACC-4124-8925-09CED68BA11E@onestopsystems.com>
 <b79e612f-4b49-a80f-bc34-e672ae98c1af@mellanox.com>
 <B500B4ED-DF25-41F3-83F8-6E239718564A@onestopsystems.com>
 <c8472575-1041-c44e-e26a-1201161c22c6@broadcom.com>
 <802cb171-34de-65cc-75c5-83ef7c200dc4@grimberg.me>
In-Reply-To: <802cb171-34de-65cc-75c5-83ef7c200dc4@grimberg.me>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.f.191014
x-originating-ip: [89.220.153.177]
Content-Type: multipart/mixed;
 boundary="_002_3D5903714C4F4355B36E7795FB218FC6onestopsystemscom_"
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_081542_844562_26E26281 
X-CRM114-Status: GOOD (  15.58  )
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--_002_3D5903714C4F4355B36E7795FB218FC6onestopsystemscom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <AB30D6DFBBCADF44B7576D62E1C3DCE9@onestopsystems.com>
Content-Transfer-Encoding: base64

DQpJIGhhdmUgc2V0dXAgYSBjbHVzdGVyIHVzaW5nIHR3byBub2RlcyB3aXRoIGEgZHVhbCBwb3J0
ZWQgbnZtZSBkcml2ZSBhbmQgdGVzdGVkIGV4cG9ydGluZyB0aGUgZHJpdmUgZnJvbSBib3RoIG5v
ZGVzLg0KDQpUaGUgY29uZmlndXJhdGlvbiBvbiBib3RoIG5vZGVzLCB3aXRoIHRoZSBleGNlcHRp
b24gb2YgdGhlIGlwIGFkZHJlc3MsIGxvb2tzIGxpa2UgdGhpczoNCiAgICB7DQogICAgICAiYWRk
ciI6IHsNCiAgICAgICAgImFkcmZhbSI6ICJpcHY0IiwgDQogICAgICAgICJ0cmFkZHIiOiAiMTky
LjE2OC4xLjExIiwgDQogICAgICAgICJ0cmVxIjogIm5vdCBzcGVjaWZpZWQiLCANCiAgICAgICAg
InRyc3ZjaWQiOiAiNDQyMCIsIA0KICAgICAgICAidHJ0eXBlIjogInRjcCINCiAgICAgIH0sIA0K
ICAgICAgInBvcnRpZCI6IDMyMiwgDQogICAgICAicmVmZXJyYWxzIjogW10sIA0KICAgICAgInN1
YnN5c3RlbXMiOiBbDQogICAgICAgICJjbHZvbCINCiAgICAgIF0NCiAgICB9LA0KDQogICJzdWJz
eXN0ZW1zIjogWw0KICAgIHsNCiAgICAgICJhbGxvd2VkX2hvc3RzIjogW10sIA0KICAgICAgImF0
dHIiOiB7DQogICAgICAgICJhbGxvd19hbnlfaG9zdCI6ICIxIiwgDQogICAgICAgICJtb2RlbCI6
ICJjbHBvb2wvY2x2b2wiLCANCiAgICAgICAgInNlcmlhbCI6ICJlOTQ0MzA5MjBmNjEwM2FmIiwg
DQogICAgICAgICJ2ZXJzaW9uIjogIjEuMyINCiAgICAgIH0sIA0KICAgICAgIm5hbWVzcGFjZXMi
OiBbDQogICAgICAgIHsNCiAgICAgICAgICAiZGV2aWNlIjogew0KICAgICAgICAgICAgIm5ndWlk
IjogIjAwMDAwMDAwLTAwMDAtMDAwMC0wMDAwLTAwMDAwMDAwMDAwMCIsIA0KICAgICAgICAgICAg
InBhdGgiOiAiL2Rldi9jbHBvb2wvY2x2b2wiLCANCiAgICAgICAgICAgICJ1dWlkIjogIjk5NDUx
NTk2LTk2NzUtNDM4Mi1iZmY4LWI3OGVlMzRkZTU2NyINCiAgICAgICAgICB9LCANCiAgICAgICAg
ICAiZW5hYmxlIjogMSwgDQogICAgICAgICAgIm5zaWQiOiAxDQogICAgICAgIH0NCiAgICAgIF0s
IA0KICAgICAgIm5xbiI6ICJjbHZvbCINCiAgICB9LA0KDQpXaGVuIEkgbm93IGNvbm5lY3QgdGhl
IGluaXRpYXRvciB0byB0aGUgdHdvIGNsdXN0ZXIgbm9kZXMgd2l0aG91dCB0aGUgcGF0Y2ggdGhl
IHJlc3VsdCB3aWxsIGJlIGEgY29udHJvbGxlciBpZCBjb2xsaXNpb24uDQpBbmQgdGhlIGluaXRp
YXRvciByZWZ1c2VzIHRvIGNvbm5lY3QgdG8gdGhlIHNlY29uZCBub2RlIHRoYXQgeW91IHRyeSB0
byBjb25uZWN0Lg0KLS0NClsgNzg5NS4wNTIzMDJdIG52bWUgbnZtZTA6IG5ldyBjdHJsOiBOUU4g
ImNsdm9sIiwgYWRkciAxOTIuMTY4LjguMTA6NDQyMA0KWyA3ODk1LjA1MzI5N10gbnZtZTBuMTog
ZGV0ZWN0ZWQgY2FwYWNpdHkgY2hhbmdlIGZyb20gMCB0byAxMDczNzQxODI0MDANClsgNzg5OC4x
ODgzMjFdIG52bWUgbnZtZTE6IER1cGxpY2F0ZSBjbnRsaWQgMSB3aXRoIG52bWUwLCByZWplY3Rp
bmcNCi0tDQoNCldpdGggdGhlIGF0dGFjaGVkIHBhdGNoIEkgYW0gYWJsZSB0byBmb3JjZSB0aGUg
c2Vjb25kIG5vZGUgdG8gdXNlIGEgaGlnaGVyIG9mZnNldCB3aGVuIGVudW1lcmF0aW5nIGNvbnRy
b2xsZXIgaWRzOg0Kbm9kZWE6DQovc3lzL2tlcm5lbC9jb25maWcvbnZtZXQvc3Vic3lzdGVtcy9j
bHZvbCAjIGNhdCBjbnRsaWRfbWluIA0KMQ0Kbm9kZWI6L3N5cy9rZXJuZWwvY29uZmlnL252bWV0
L3N1YnN5c3RlbXMvY2x2b2wgIyBjYXQgY250bGlkX21pbiANCjMyDQoNCkluIHJlYWwgbGlmZSB0
aGUgbnVtYmVyIHVzZWQgZm9yIHRoZSBvZmZzZXRzIGNvdWxkIGJlIGRlcml2ZWQgZnJvbSBzb21l
dGhpbmcgbGlrZSB0aGUgUGFjZW1ha2VyIG5vZGUgbnVtYmVyLg0KQW5kIHRoZSBQYWNlbWFrZXIg
KyBETE0gY291bGQgYmUgdXNlZCBmb3IgbnZtZSBwZXJzaXN0ZW50IHJlc2VydmF0aW9ucy4NCg0K
VGhlIGNvbnRyb2xsZXIgaWQgY29sbGlzaW9uIG5vdyBubyBsb25nZXIgb2NjdXJzLg0KQW5kIHRo
ZSBpbml0aWF0b3IgY2FuIGNvbm5lY3QsIGFuZCB0d28gcGF0aHMgd2lsbCBiZSBzaG93bjoNCg0K
cm9vdEByMTFpMTp+IyBudm1lIGxpc3Qtc3Vic3lzDQpudm1lLXN1YnN5czAgLSBOUU49Y2x2b2wN
ClwNCiArLSBudm1lMCB0Y3AgdHJhZGRyPTE5Mi4xNjguMS4xMCB0cnN2Y2lkPTQ0MjANCiArLSBu
dm1lMSB0Y3AgdHJhZGRyPTE5Mi4xNjguMS4xMSB0cnN2Y2lkPTQ0MjANCg0KRG9lcyB0aGlzIGFs
bCBtYWtlIHNlbnNlPw0KDQpUaGFua3MsDQoNCk1hcmsNCg0KDQoNCu+7v09wIDA2LTExLTE5IDE3
OjUxIGhlZWZ0IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+IGdlc2NocmV2ZW46DQoN
CiAgICANCiAgICA+PiBIaSBNYXggJiBDaGFpdGFueWEsDQogICAgPj4NCiAgICA+PiBEb2VzIHRo
ZSBOVk1FIHNwZWNpZmljYXRpb24gZXZlbiBhbGxvdyBkdXBsaWNhdGUgY29udHJvbGxlciBpZCdz
Pw0KICAgID4gTm90IHdpdGhpbiBhIHNpbmdsZSBzdWJzeXN0ZW0uDQogICAgPiBCdXQgYWNyb3Nz
IG11bHRpcGxlIHN1YnN5c3RlbXMgdGhlcmUgY2FuIGJlLg0KICAgIA0KICAgIFllcywgdGhpcyBw
YXRjaCBpcyBicm9rZW4uLg0KICAgIA0KDQo=

--_002_3D5903714C4F4355B36E7795FB218FC6onestopsystemscom_
Content-Type: application/octet-stream; name="cntlid_min.patch"
Content-Description: cntlid_min.patch
Content-Disposition: attachment; filename="cntlid_min.patch"; size=2611;
	creation-date="Fri, 08 Nov 2019 16:15:34 GMT";
	modification-date="Fri, 08 Nov 2019 16:15:34 GMT"
Content-ID: <B53E63269325CB4EBE843C4FD7F83204@onestopsystems.com>
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvY29uZmlnZnMuYyBiL2RyaXZlcnMvbnZt
ZS90YXJnZXQvY29uZmlnZnMuYwppbmRleCA5ODYxM2E0Li45NTg0OWJjIDEwMDY0NAotLS0gYS9k
cml2ZXJzL252bWUvdGFyZ2V0L2NvbmZpZ2ZzLmMKKysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9j
b25maWdmcy5jCkBAIC04NjIsMTAgKzg2Miw0MCBAQCBzdGF0aWMgc3NpemVfdCBudm1ldF9zdWJz
eXNfYXR0cl9zZXJpYWxfc3RvcmUoc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAogfQogQ09ORklH
RlNfQVRUUihudm1ldF9zdWJzeXNfLCBhdHRyX3NlcmlhbCk7CiAKK3N0YXRpYyBzc2l6ZV90IG52
bWV0X3N1YnN5c19jbnRsaWRfbWluX3Nob3coc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY2hhciAqcGFnZSkKK3sK
KyAgICAgICAgc3RydWN0IG52bWV0X3N1YnN5cyAqc3Vic3lzID0gdG9fc3Vic3lzKGl0ZW0pOwor
CisgICAgICAgIHJldHVybiBzbnByaW50ZihwYWdlLCBQQUdFX1NJWkUsICIlZFxuIiwgc3Vic3lz
LT5jbnRsaWRfbWluKTsKK30KKworc3RhdGljIHNzaXplX3QgbnZtZXRfc3Vic3lzX2NudGxpZF9t
aW5fc3RvcmUoc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAorICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hhciAqcGFnZSwgc2l6ZV90IGNvdW50KQorewor
ICAgICAgICBzdHJ1Y3QgbnZtZXRfc3Vic3lzICpzdWJzeXMgPSB0b19zdWJzeXMoaXRlbSk7Cisg
ICAgICAgIHUxNiBzaWQ7CisgICAgICAgIGludCByZXQgPSAwOworCisgICAgICAgIGRvd25fd3Jp
dGUoJm52bWV0X2NvbmZpZ19zZW0pOworICAgICAgICAvKiBzaG91bGQgdGhpcyBiZSAleCA/ICov
CisgICAgICAgIHNzY2FuZihwYWdlLCAiJWh1XG4iLCAmc2lkKTsKKworICAgICAgICBpZiAoc2lk
ID49IE5WTUVfQ05UTElEX01JTiAmJiBzaWQgPD0gTlZNRV9DTlRMSURfTUFYKQorICAgICAgICAg
ICAgICAgIHN1YnN5cy0+Y250bGlkX21pbiA9IHNpZDsKKyAgICAgICAgZWxzZQorICAgICAgICAg
ICAgICAgIHJldCA9IC1FSU5WQUw7CisgICAgICAgIHVwX3dyaXRlKCZudm1ldF9jb25maWdfc2Vt
KTsKKworICAgICAgICByZXR1cm4gcmV0ID8gcmV0IDogY291bnQ7Cit9CitDT05GSUdGU19BVFRS
KG52bWV0X3N1YnN5c18sIGNudGxpZF9taW4pOworCiBzdGF0aWMgc3RydWN0IGNvbmZpZ2ZzX2F0
dHJpYnV0ZSAqbnZtZXRfc3Vic3lzX2F0dHJzW10gPSB7CiAJJm52bWV0X3N1YnN5c19hdHRyX2F0
dHJfYWxsb3dfYW55X2hvc3QsCiAJJm52bWV0X3N1YnN5c19hdHRyX2F0dHJfdmVyc2lvbiwKIAkm
bnZtZXRfc3Vic3lzX2F0dHJfYXR0cl9zZXJpYWwsCisJJm52bWV0X3N1YnN5c19hdHRyX2NudGxp
ZF9taW4sCiAJTlVMTCwKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvY29y
ZS5jIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKaW5kZXggM2E2N2UyNC4uYTkyYjFhZCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMKKysrIGIvZHJpdmVycy9udm1l
L3RhcmdldC9jb3JlLmMKQEAgLTEyNjgsMTAgKzEyNjgsOSBAQCB1MTYgbnZtZXRfYWxsb2NfY3Ry
bChjb25zdCBjaGFyICpzdWJzeXNucW4sIGNvbnN0IGNoYXIgKmhvc3RucW4sCiAJCQlHRlBfS0VS
TkVMKTsKIAlpZiAoIWN0cmwtPnNxcykKIAkJZ290byBvdXRfZnJlZV9jcXM7Ci0KIAlyZXQgPSBp
ZGFfc2ltcGxlX2dldCgmY250bGlkX2lkYSwKLQkJCSAgICAgTlZNRV9DTlRMSURfTUlOLCBOVk1F
X0NOVExJRF9NQVgsCi0JCQkgICAgIEdGUF9LRVJORUwpOworCQkJc3Vic3lzLT5jbnRsaWRfbWlu
LCBOVk1FX0NOVExJRF9NQVgsCisJCQlHRlBfS0VSTkVMKTsKIAlpZiAocmV0IDwgMCkgewogCQlz
dGF0dXMgPSBOVk1FX1NDX0NPTk5FQ1RfQ1RSTF9CVVNZIHwgTlZNRV9TQ19ETlI7CiAJCWdvdG8g
b3V0X2ZyZWVfc3FzOwpAQCAtMTQxOCw3ICsxNDE3LDcgQEAgc3RydWN0IG52bWV0X3N1YnN5cyAq
bnZtZXRfc3Vic3lzX2FsbG9jKGNvbnN0IGNoYXIgKnN1YnN5c25xbiwKIAkJa2ZyZWUoc3Vic3lz
KTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAJfQotCisJc3Vic3lzLT5jbnRsaWRfbWlu
ID0gTlZNRV9DTlRMSURfTUlOOwogCWtyZWZfaW5pdCgmc3Vic3lzLT5yZWYpOwogCiAJbXV0ZXhf
aW5pdCgmc3Vic3lzLT5sb2NrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZt
ZXQuaCBiL2RyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaAppbmRleCBjNTFmOGRkLi5jNmM3MjFh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgKKysrIGIvZHJpdmVycy9u
dm1lL3RhcmdldC9udm1ldC5oCkBAIC0yMTEsNiArMjExLDcgQEAgc3RydWN0IG52bWV0X3N1YnN5
cyB7CiAJc3RydWN0IGxpc3RfaGVhZAluYW1lc3BhY2VzOwogCXVuc2lnbmVkIGludAkJbnJfbmFt
ZXNwYWNlczsKIAl1bnNpZ25lZCBpbnQJCW1heF9uc2lkOworCXUxNiAgICAgICAgICAgICAgICAg
ICAgIGNudGxpZF9taW47CiAKIAlzdHJ1Y3QgbGlzdF9oZWFkCWN0cmxzOwogCg==

--_002_3D5903714C4F4355B36E7795FB218FC6onestopsystemscom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--_002_3D5903714C4F4355B36E7795FB218FC6onestopsystemscom_--

