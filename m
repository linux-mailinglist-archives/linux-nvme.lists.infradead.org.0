Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6EBE9BB5
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 13:44:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jySbh82K8wTxoVpHCZLEUklSkRwD+kjgQE7LZLBPXe4=; b=b8t
	nGVZ4GUvM0H+qP+iPKM2RpnMAMaNuzpTpRJe9TYDjq0siUQZUd3+mmAODrm/ixW3Qnimut7Md/Wzp
	H0VYD8hVA/hcQxqA8Ul+3snQ3onnH5iYio5JP1+GmDCI+C1huyWe6XnWV7A8CxaqQwu1q3EChRGeM
	g4ORkInBtLJpymu8qbrQdSHojJ1t845V2QBbVVxeGMlsZBSwTgU8+Z/ndHoNhiuIwmAPSP3Z2wa19
	FGjPVpLDj3f2mvKxilkxGMlZ6preFzS0/RqpwmCCamp61QkpqZEPo6I7/wbaG0EIkDW04NWKHU8hA
	tSuX4O8D1mSjnW648+dan7kKDmATNqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPnKO-0006Zi-KY; Wed, 30 Oct 2019 12:43:56 +0000
Received: from cox.onestopsystems.com ([98.187.250.34]
 helo=osserver.onestopsystems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPnKK-0006Z4-3F
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 12:43:53 +0000
Received: from OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203]) by
 OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203%10]) with mapi id
 14.03.0468.000; Wed, 30 Oct 2019 05:43:48 -0700
From: Mark Ruijter <MRuijter@onestopsystems.com>
To: Keith Busch <kbusch@kernel.org>
Subject: A patch for review that allows dynamic configuration of the
 subsystem model.
Thread-Topic: A patch for review that allows dynamic configuration of the
 subsystem model.
Thread-Index: AQHVjx+sAaoxMqipMUmy81vjmrKwLw==
Date: Wed, 30 Oct 2019 12:43:47 +0000
Message-ID: <A878D715-7DAC-4547-BAAE-DE837096B76A@onestopsystems.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.f.191014
x-originating-ip: [89.220.153.177]
Content-Type: multipart/mixed;
 boundary="_002_A878D7157DAC4547BAAEDE837096B76Aonestopsystemscom_"
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_054352_162741_31B960B4 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--_002_A878D7157DAC4547BAAEDE837096B76Aonestopsystemscom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <46A95873B24674458AE2155559A3E983@onestopsystems.com>
Content-Transfer-Encoding: base64

DQpUaGUgYXR0YWNoZWQgcGF0Y2ggYWxsb3dzIHRvIGR5bmFtaWNhbGx5IGNoYW5nZSB0aGUgc3Vi
c3lzdGVtIG1vZGVsIHdoaWxlIGtlZXBpbmcgJ0xpbnV4JyBhcyB0aGUgZGVmYXVsdC4NCkZvciBl
eGFtcGxlOg0KDQpkZXY6L3N5cy9rZXJuZWwvY29uZmlnL252bWV0L3N1YnN5c3RlbXMvbG9vcCAj
IGNhdCBhdHRyX21vZGVsIA0KTGludXgNCg0KIyBudm1lIGxpc3QNCk5vZGUgICAgICAgICAgICAg
U04gICAgICAgICAgICAgICAgICAgTW9kZWwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBOYW1lc3BhY2UgVXNhZ2UgICAgICAgICAgICAgICAgICAgICAgRm9ybWF0ICAgICAgICAg
ICBGVyBSZXYgIA0KLS0tLS0tLS0tLS0tLS0tLSAtLS0tLS0tLS0tLS0tLS0tLS0tLSAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tIC0tLS0tLS0tLSAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLSAtLS0tLS0tLS0tLS0tLS0tIC0tLS0tLS0tDQovZGV2L252bWUwbjEgICAg
IDRkMTFlYjU3YzcwNzhmMTkgICAgIExpbnV4ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgMSAgICAgICAgIDEwNCw4NiAgTUIgLyAxMDQsODYgIE1CICAgIDUxMiAgIEIgKyAgMCBC
ICAgNS4zLjUNCg0KIyBlY2hvIG15cG9vbC9teXZvbHVtZSA+IGF0dHJfbW9kZWwgDQoNCnJvb3RA
Y3J1bmNoaWU6L3RtcCMgbnZtZSBsaXN0DQpOb2RlICAgICAgICAgICAgIFNOICAgICAgICAgICAg
ICAgICAgIE1vZGVsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgTmFtZXNwYWNl
IFVzYWdlICAgICAgICAgICAgICAgICAgICAgIEZvcm1hdCAgICAgICAgICAgRlcgUmV2ICANCi0t
LS0tLS0tLS0tLS0tLS0gLS0tLS0tLS0tLS0tLS0tLS0tLS0gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLSAtLS0tLS0tLS0gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0g
LS0tLS0tLS0tLS0tLS0tLSAtLS0tLS0tLQ0KL2Rldi9udm1lMG4xICAgICA0ZDExZWI1N2M3MDc4
ZjE5ICAgICBteXBvb2wvbXl2b2x1bWUgICAgICAgICAgICAgICAgICAgICAgICAgIDEgICAgICAg
ICAxMDQsODYgIE1CIC8gMTA0LDg2ICBNQiAgICA1MTIgICBCICsgIDAgQiAgIDUuMy41DQoNClRo
ZSBhdHRyX21vZGVsIGlucHV0IGlzIHZhbGlkYXRlZCB0byB3aGF0IHRoZSBOVk1FIHNwZWNpZmlj
YXRpb24gYWxsb3dzIGZvciBhIGFzY2lpIHN0cmluZzoNCg0KZWNobyAtZSAibXlcdCBwb29sIiA+
IGF0dHJfbW9kZWwgDQotYmFzaDogZWNobzogd3JpdGUgZXJyb3I6IEludmFsaWQgYXJndW1lbnQN
CmRldjovc3lzL2tlcm5lbC9jb25maWcvbnZtZXQvc3Vic3lzdGVtcy9sb29wICMNCg0KSSBob3Bl
IHRoaXMgaXMgdXNlZnVsLA0KDQpUaGFua3MsDQoNCk1hcmsgUnVpanRlcg0KDQo=

--_002_A878D7157DAC4547BAAEDE837096B76Aonestopsystemscom_
Content-Type: application/octet-stream; name="subsystem_model.patch"
Content-Description: subsystem_model.patch
Content-Disposition: attachment; filename="subsystem_model.patch"; size=3477;
	creation-date="Wed, 30 Oct 2019 12:43:47 GMT";
	modification-date="Wed, 30 Oct 2019 12:43:47 GMT"
Content-ID: <28D5679124BC7F4B9C9C0CF806E8FE1C@onestopsystems.com>
Content-Transfer-Encoding: base64

ZGlmZiAtLWdpdCBhL2FkbWluLWNtZC5jIGIvYWRtaW4tY21kLmMKaW5kZXggNTE4MDBhOS4uYmJm
NmZlYyAxMDA2NDQKLS0tIGEvYWRtaW4tY21kLmMKKysrIGIvYWRtaW4tY21kLmMKQEAgLTI4OSw3
ICsyODksNiBAQCBzdGF0aWMgdm9pZCBudm1ldF9leGVjdXRlX2lkZW50aWZ5X2N0cmwoc3RydWN0
IG52bWV0X3JlcSAqcmVxKQogCXN0cnVjdCBudm1ldF9jdHJsICpjdHJsID0gcmVxLT5zcS0+Y3Ry
bDsKIAlzdHJ1Y3QgbnZtZV9pZF9jdHJsICppZDsKIAl1MTYgc3RhdHVzID0gMDsKLQljb25zdCBj
aGFyIG1vZGVsW10gPSAiTGludXgiOwogCiAJaWQgPSBremFsbG9jKHNpemVvZigqaWQpLCBHRlBf
S0VSTkVMKTsKIAlpZiAoIWlkKSB7CkBAIC0zMDQsNyArMzAzLDggQEAgc3RhdGljIHZvaWQgbnZt
ZXRfZXhlY3V0ZV9pZGVudGlmeV9jdHJsKHN0cnVjdCBudm1ldF9yZXEgKnJlcSkKIAltZW1zZXQo
aWQtPnNuLCAnICcsIHNpemVvZihpZC0+c24pKTsKIAliaW4yaGV4KGlkLT5zbiwgJmN0cmwtPnN1
YnN5cy0+c2VyaWFsLAogCQltaW4oc2l6ZW9mKGN0cmwtPnN1YnN5cy0+c2VyaWFsKSwgc2l6ZW9m
KGlkLT5zbikgLyAyKSk7Ci0JbWVtY3B5X2FuZF9wYWQoaWQtPm1uLCBzaXplb2YoaWQtPm1uKSwg
bW9kZWwsIHNpemVvZihtb2RlbCkgLSAxLCAnICcpOworCW1lbWNweV9hbmRfcGFkKGlkLT5tbiwg
c2l6ZW9mKGlkLT5tbiksIGN0cmwtPnN1YnN5cy0+bW9kZWwsCisJCXN0cmxlbihjdHJsLT5zdWJz
eXMtPm1vZGVsKSwgJyAnKTsKIAltZW1jcHlfYW5kX3BhZChpZC0+ZnIsIHNpemVvZihpZC0+ZnIp
LAogCQkgICAgICAgVVRTX1JFTEVBU0UsIHN0cmxlbihVVFNfUkVMRUFTRSksICcgJyk7CiAKZGlm
ZiAtLWdpdCBhL2NvbmZpZ2ZzLmMgYi9jb25maWdmcy5jCmluZGV4IDU5YzJiNzkuLjEyMzI4OWQg
MTAwNjQ0Ci0tLSBhL2NvbmZpZ2ZzLmMKKysrIGIvY29uZmlnZnMuYwpAQCAtODkxLDEwICs4OTEs
NTYgQEAgc3RhdGljIHNzaXplX3QgbnZtZXRfc3Vic3lzX2F0dHJfc2VyaWFsX3N0b3JlKHN0cnVj
dCBjb25maWdfaXRlbSAqaXRlbSwKIH0KIENPTkZJR0ZTX0FUVFIobnZtZXRfc3Vic3lzXywgYXR0
cl9zZXJpYWwpOwogCitzdGF0aWMgc3NpemVfdCBudm1ldF9zdWJzeXNfYXR0cl9tb2RlbF9zaG93
KHN0cnVjdCBjb25maWdfaXRlbSAqaXRlbSwKKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNoYXIgKnBhZ2UpCit7CisgICAgICAgIHN0cnVjdCBudm1ldF9zdWJz
eXMgKnN1YnN5cyA9IHRvX3N1YnN5cyhpdGVtKTsKKworICAgICAgICByZXR1cm4gc25wcmludGYo
cGFnZSwgUEFHRV9TSVpFLCAiJXNcbiIsIHN1YnN5cy0+bW9kZWwpOworfQorCitzdGF0aWMgc3Np
emVfdCBudm1ldF9zdWJzeXNfYXR0cl9tb2RlbF9zdG9yZShzdHJ1Y3QgY29uZmlnX2l0ZW0gKml0
ZW0sCisgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qg
Y2hhciAqcGFnZSwgc2l6ZV90IGNvdW50KQoreworICAgICAgICBzdHJ1Y3QgbnZtZXRfc3Vic3lz
ICpzdWJzeXMgPSB0b19zdWJzeXMoaXRlbSk7CisJaW50IGxlbjsKKwlpbnQgcmV0ID0gLUVJTlZB
TDsKKwljaGFyIGM7CisJaW50IHBvcyA9IDA7CisKKyAgICAgICAgZG93bl93cml0ZSgmbnZtZXRf
Y29uZmlnX3NlbSk7CisgICAgICAgIGxlbiA9IHN0cmNzcG4ocGFnZSwgIlxuIik7CisgICAgICAg
IGlmICghbGVuKQorICAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKKworCS8qIE9ubHkg
MjBoIHVudGlsIDdlaCBpcyBhbGxvd2VkICovCisJYyA9IHBhZ2VbcG9zXTsKKwl3aGlsZSAocG9z
IDwgbGVuKQorCXsKKwkJaWYgKGMgPCAweDIwIHx8IGMgPiAweDdlKSB7CisJCQlnb3RvIG91dF91
bmxvY2s7CisJCX0KKwkJcG9zKys7CisJCWMgPSBwYWdlW3Bvc107CisJfQorCisJa2ZyZWUoc3Vi
c3lzLT5tb2RlbCk7CisJcmV0ID0gLUVOT01FTTsKKwlzdWJzeXMtPm1vZGVsID0ga3N0cm5kdXAo
cGFnZSwgbGVuLCBHRlBfS0VSTkVMKTsKKwlpZihzdWJzeXMtPm1vZGVsKQorCQlyZXQgPSBjb3Vu
dDsKK291dF91bmxvY2s6CisgICAgICAgIHVwX3dyaXRlKCZudm1ldF9jb25maWdfc2VtKTsKKyAg
ICAgICAgcmV0dXJuIHJldDsKK30KKworQ09ORklHRlNfQVRUUihudm1ldF9zdWJzeXNfLCBhdHRy
X21vZGVsKTsKKwogc3RhdGljIHN0cnVjdCBjb25maWdmc19hdHRyaWJ1dGUgKm52bWV0X3N1YnN5
c19hdHRyc1tdID0gewogCSZudm1ldF9zdWJzeXNfYXR0cl9hdHRyX2FsbG93X2FueV9ob3N0LAog
CSZudm1ldF9zdWJzeXNfYXR0cl9hdHRyX3ZlcnNpb24sCiAJJm52bWV0X3N1YnN5c19hdHRyX2F0
dHJfc2VyaWFsLAorCSZudm1ldF9zdWJzeXNfYXR0cl9hdHRyX21vZGVsLAogCU5VTEwsCiB9Owog
CkBAIC05MzAsNiArOTc2LDcgQEAgc3RhdGljIHN0cnVjdCBjb25maWdfZ3JvdXAgKm52bWV0X3N1
YnN5c19tYWtlKHN0cnVjdCBjb25maWdfZ3JvdXAgKmdyb3VwLAogCX0KIAogCXN1YnN5cyA9IG52
bWV0X3N1YnN5c19hbGxvYyhuYW1lLCBOVk1FX05RTl9OVk1FKTsKKwlzdWJzeXMtPm1vZGVsID0g
a3N0cmR1cCgiTGludXgiLCBHRlBfS0VSTkVMKTsKIAlpZiAoSVNfRVJSKHN1YnN5cykpCiAJCXJl
dHVybiBFUlJfQ0FTVChzdWJzeXMpOwogCmRpZmYgLS1naXQgYS9jb3JlLmMgYi9jb3JlLmMKaW5k
ZXggOWYxN2QwNy4uNjA0OWU2YSAxMDA2NDQKLS0tIGEvY29yZS5jCisrKyBiL2NvcmUuYwpAQCAt
MTQxOCw2ICsxNDE4LDEyIEBAIHN0cnVjdCBudm1ldF9zdWJzeXMgKm52bWV0X3N1YnN5c19hbGxv
Yyhjb25zdCBjaGFyICpzdWJzeXNucW4sCiAJCWtmcmVlKHN1YnN5cyk7CiAJCXJldHVybiBFUlJf
UFRSKC1FTk9NRU0pOwogCX0KKwlzdWJzeXMtPm1vZGVsID0ga3N0cmR1cCgiTGludXgiLCBHRlBf
S0VSTkVMKTsKKwlpZiAoIXN1YnN5cy0+bW9kZWwpIHsKKwkJa2ZyZWUoc3Vic3lzLT5zdWJzeXNu
cW4pOworCQlrZnJlZShzdWJzeXMpOworCQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKKwl9CiAK
IAlrcmVmX2luaXQoJnN1YnN5cy0+cmVmKTsKIApAQCAtMTQzNyw2ICsxNDQzLDcgQEAgc3RhdGlj
IHZvaWQgbnZtZXRfc3Vic3lzX2ZyZWUoc3RydWN0IGtyZWYgKnJlZikKIAlXQVJOX09OX09OQ0Uo
IWxpc3RfZW1wdHkoJnN1YnN5cy0+bmFtZXNwYWNlcykpOwogCiAJa2ZyZWUoc3Vic3lzLT5zdWJz
eXNucW4pOworCWtmcmVlKHN1YnN5cy0+bW9kZWwpOwogCWtmcmVlKHN1YnN5cyk7CiB9CiAKZGlm
ZiAtLWdpdCBhL252bWV0LmggYi9udm1ldC5oCmluZGV4IDIwYWE4MzAuLjIwMGMwM2MgMTAwNjQ0
Ci0tLSBhL252bWV0LmgKKysrIGIvbnZtZXQuaApAQCAtMjIzLDYgKzIyMyw3IEBAIHN0cnVjdCBu
dm1ldF9zdWJzeXMgewogCXU2NAkJCXZlcjsKIAl1NjQJCQlzZXJpYWw7CiAJY2hhcgkJCSpzdWJz
eXNucW47CisJY2hhcgkJCSptb2RlbDsKIAogCXN0cnVjdCBjb25maWdfZ3JvdXAJZ3JvdXA7CiAK

--_002_A878D7157DAC4547BAAEDE837096B76Aonestopsystemscom_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--_002_A878D7157DAC4547BAAEDE837096B76Aonestopsystemscom_--

