Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFF1EDCC6
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 11:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1Yc/jg72fa3xuhjbo+rUhCr8HYNkOL1aNIAuwdAIPs=; b=p9UWj3ACjyDBv3
	+dYlTnnHbk08dpDMhs3JnWyPqOx55+G0/Tsw7DgJlSeco4JHSayzDZQGW1s8npVlA5NqIDpDhphzN
	8vMPNkVTVLQIZb/Mfps/7qpWS7GyTyy3zR8Yi1uDrN9agvWeWdUOlQBdZepF0YdkqE4gjn2OrRwOp
	ohmZKFIcqYrAZlaoO7iVUmgzzjYgu+cb+Cdaq/j6HsALqyZHHXPGlPj/E2ZzJQa3sCv1coBiXUcsZ
	ob1mnx8xp39720ODi8kI4VxtmHFTOKbesxEoX9xgi6pb1X6a8htlSHMpSjtpDSG6EiEZ6Qg/l8laz
	3MUa3CDOpg766mzJ5q9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRZrX-0001ay-8i; Mon, 04 Nov 2019 10:45:31 +0000
Received: from cox.onestopsystems.com ([98.187.250.34]
 helo=osserver.onestopsystems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRZrQ-0001Zz-T3
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 10:45:27 +0000
Received: from OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203]) by
 OSSERVER.OSS.local ([fe80::792d:7e8d:4995:9203%10]) with mapi id
 14.03.0468.000; Mon, 4 Nov 2019 02:45:21 -0800
From: Mark Ruijter <MRuijter@onestopsystems.com>
To: Max Gurtovoy <maxg@mellanox.com>, Chaitanya Kulkarni
 <chaitanya.kulkarni@wdc.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvmet: make ctrl-id configurable
Thread-Topic: [PATCH] nvmet: make ctrl-id configurable
Thread-Index: AQHVknKB085Gn2d/PkqsHei3HhUGjqd7R8OAgAAkHQA=
Date: Mon, 4 Nov 2019 10:45:19 +0000
Message-ID: <3381ACB3-3ACC-4124-8925-09CED68BA11E@onestopsystems.com>
References: <20191103181343.3011-1-chaitanya.kulkarni@wdc.com>
 <409804f3-158b-cc3e-9b04-6499bfe1638d@mellanox.com>
In-Reply-To: <409804f3-158b-cc3e-9b04-6499bfe1638d@mellanox.com>
Accept-Language: nl-NL, en-US
Content-Language: nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.10.f.191014
x-originating-ip: [89.220.153.177]
Content-ID: <DAED464223821E4FB595F993BC02E82F@onestopsystems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_024524_986683_BAE48CA3 
X-CRM114-Status: GOOD (  27.82  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQpIaSBNYXgsDQoNCldoZW4geW91IGNyZWF0ZSBhIEhBIGNsdXN0ZXIgdXNpbmcgdHdvIG5vZGVz
IGV4cG9ydGluZyB0aGUgc2FtZSB2b2x1bWUgdGhlIGNvbnRyb2xsZXIgSURzIGNhbiBjb2xsaWRl
Lg0KPj4gWzExMjI3ODkuMDU0Njc3XSBudm1lIG52bWUxOiBEdXBsaWNhdGUgY250bGlkIDQgd2l0
aCBudm1lMCwgcmVqZWN0aW5nDQpTbyB0aGUgdXNlIGNhc2UgZm9yIHRoaXMgY2hhbmdlIGlzIHJl
bGF0ZWQgdG8gSEEgc2V0dXBzLg0KDQpBcmUgeW91IHNheWluZyB0aGF0IHRoZSBzdWdnZXN0ZWQg
c29sdXRpb24gdG8gdGhpcyBwcm9ibGVtIHdvdWxkIGJlIHRvIGZvcmNlIHRoZSB1c2VyIHRvIHVz
ZSB0aGUgLUQgb3B0aW9uPw0KDQpAQ2hhaXRhbnlhIDogQWJvdXQgdGhlIHByb3Bvc2VkIHBhdGNo
Og0KSSBqdXN0IHRlc3RlZCBpdC4gSXQgZG9lcyB3b3JrIGJ1dCBpdCBoYXMgc29tZSBpc3N1ZXM6
DQoNCjEuIFdoZW4geW91IHJlYWQgdGhlIGF0dHJfaWQgd2l0aG91dCB3cml0aW5nIGFueXRoaW5n
IHRvIGl0IHRoZSBjb250cm9sbGVyIGlkIHNlZW1zIHRvIGJlIDAsIHdoaWNoIGlzIG5vdCB0aGUg
Y2FzZS4NCkkgdGhpbmsgd2Ugc2hvdWxkIGZpeCB0aGF0IHNpbmNlIHRoaXMgaXMgY29uZnVzaW5n
Lg0KDQoyLiBXaGVuIGFuIGluaXRpYXRvciBoYXMgY29ubmVjdGVkIGFuZCAgaWRfc2ltcGxlX2dl
dCB3YXMgY2FsbGVkIHdlIGNhbiBzdGlsbCB3cml0ZSB0byBhdHRyX2lkLg0KSW4gdGhhdCBjYXNl
IHRoZSBnZW5lcmF0ZWQgSUQgd2lsbCBubyBsb25nZXIgY2FsbCBpZGFfc2ltcGxlX3JlbW92ZSgp
IHNpbmNlIHN1YnN5cy0+aWQgaXMgbm93IHNldD8NCg0KVGhhbmtzLA0KDQpNYXJrIFJ1aWp0ZXIN
Cg0KDQrvu79PcCAwNC0xMS0xOSAxMDozNyBoZWVmdCBMaW51eC1udm1lIG5hbWVucyBNYXggR3Vy
dG92b3kgPGxpbnV4LW52bWUtYm91bmNlc0BsaXN0cy5pbmZyYWRlYWQub3JnIG5hbWVucyBtYXhn
QG1lbGxhbm94LmNvbT4gZ2VzY2hyZXZlbjoNCg0KICAgIA0KICAgIE9uIDExLzMvMjAxOSA4OjEz
IFBNLCBDaGFpdGFueWEgS3Vsa2Fybmkgd3JvdGU6DQogICAgPiBUaGlzIHBhdGNoIGFkZHMgYSBu
ZXcgdGFyZ2V0IHN1YnN5cyBhdHRyaWJ1dGUgd2hpY2ggYWxsb3dzIHVzZXIgdG8NCiAgICA+IG9w
dGlvbmFsbHkgc3BlY2lmeSB0YXJnZXQgY29udHJvbGxlciB3aGljaCB0aGVuIHVzZWQgaW4gdGhl
DQogICAgPiBudm1ldF9leGVjdXRlX2lkZW50aWZ5X2N0cmwoKSB0byBmaWxsIHVwIHRoZSBudm1l
X2lkX2N0cmwgc3RydWN0dXJlLg0KICAgIA0KICAgIGhpLA0KICAgIA0KICAgIGNhbiB5b3UgZXhw
bGFpbiB3aHkgd2Ugc2hvdWxkIGdpdmUgdGhlIHVzZXIgdGhlIGFiaWxpdHkgdG8gY29udHJvbCB0
aGlzID8NCiAgICANCiAgICBJbiB0aGlzIGNhc2UgeW91IHdpbGwgaGF2ZSBtdWx0aXBsZSBjb250
cm9sbGVycyB3aXRoIHRoZSBzYW1lIGlkLCBhbmQgDQogICAgSSdtIG5vdCBzdXJlIHRoYXQgd2Ug
d2FudCB0aGF0Lg0KICAgIA0KICAgIERpZCB5b3UgdHJ5IHRvIGNvbm5lY3QgdG8gaXQgd2l0aCAt
RCAoZHVwbGljYXRpb24pIGZsYWcgPw0KICAgIA0KICAgID4NCiAgICA+IFdoZW4gbmV3IGF0dHJp
YnV0ZSBpcyBub3Qgc3BlY2lmaWVkIHRhcmdldCB3aWxsIGZhbGwgYmFjayB0byBvcmlnaW5hbA0K
ICAgID4gY250bGlkIGNhbGN1bGF0aW9uIG1ldGhvZC4NCiAgICA+DQogICAgPiBTaWduZWQtb2Zm
LWJ5OiBDaGFpdGFueWEgS3Vsa2FybmkgPGNoYWl0YW55YS5rdWxrYXJuaUB3ZGMuY29tPg0KICAg
ID4gLS0tDQogICAgPiBIaSBNYXJrLA0KICAgID4NCiAgICA+IFRoaXMgcGF0Y2ggYWxsb3dzIHVz
ZXIgdG8gc2V0IHRoZSBjb250b2xsZXIgSUQgdGhyb3VnaCBjb25maWdmcw0KICAgID4gd2hpY2gg
aXMgdGFyZ2V0IHN1c2JzeSBhdHRyaWJ1dGUuDQogICAgPg0KICAgID4gQ2FuIHlvdSBwbGVhc2Ug
dGFrZSBhIGxvb2sgYW5kIHByb3ZpZGUgZmVlZGJhY2sgPyBzbyB0aGF0IHdlIGNhbiBnZXQNCiAg
ICA+IGl0IHRvIHVwc3RyZWFtID8gSSdtIHBsYW5uaW5nIHRvIHNlbmQgdGhpcyBvbiBTdW5kYXku
DQogICAgPg0KICAgID4gLVJlZ2FyZHMsDQogICAgPiBDaGFpdGFueWENCiAgICA+IC0tLQ0KICAg
ID4gICBkcml2ZXJzL252bWUvdGFyZ2V0L2NvbmZpZ2ZzLmMgfCAyMyArKysrKysrKysrKysrKysr
KysrKysrKw0KICAgID4gICBkcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYyAgICAgfCAyMyArKysr
KysrKysrKysrKystLS0tLS0tLQ0KICAgID4gICBkcml2ZXJzL252bWUvdGFyZ2V0L252bWV0Lmgg
ICAgfCAgMSArDQogICAgPiAgIDMgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkNCiAgICA+DQogICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL3Rhcmdl
dC9jb25maWdmcy5jIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jDQogICAgPiBpbmRl
eCA5ODYxM2E0NWJkM2IuLjgzMzkxZTU0ZWQxMiAxMDA2NDQNCiAgICA+IC0tLSBhL2RyaXZlcnMv
bnZtZS90YXJnZXQvY29uZmlnZnMuYw0KICAgID4gKysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9j
b25maWdmcy5jDQogICAgPiBAQCAtODYyLDEwICs4NjIsMzMgQEAgc3RhdGljIHNzaXplX3QgbnZt
ZXRfc3Vic3lzX2F0dHJfc2VyaWFsX3N0b3JlKHN0cnVjdCBjb25maWdfaXRlbSAqaXRlbSwNCiAg
ICA+ICAgfQ0KICAgID4gICBDT05GSUdGU19BVFRSKG52bWV0X3N1YnN5c18sIGF0dHJfc2VyaWFs
KTsNCiAgICA+ICAgDQogICAgPiArc3RhdGljIHNzaXplX3QgbnZtZXRfc3Vic3lzX2F0dHJfaWRf
c2hvdyhzdHJ1Y3QgY29uZmlnX2l0ZW0gKml0ZW0sDQogICAgPiArCQkJCQkgICAgIGNoYXIgKnBh
Z2UpDQogICAgPiArew0KICAgID4gKwlzdHJ1Y3QgbnZtZXRfc3Vic3lzICpzdWJzeXMgPSB0b19z
dWJzeXMoaXRlbSk7DQogICAgPiArDQogICAgPiArCXJldHVybiBzbnByaW50ZihwYWdlLCBQQUdF
X1NJWkUsICIlZFxuIiwgc3Vic3lzLT5pZCk7DQogICAgPiArfQ0KICAgID4gKw0KICAgID4gK3N0
YXRpYyBzc2l6ZV90IG52bWV0X3N1YnN5c19hdHRyX2lkX3N0b3JlKHN0cnVjdCBjb25maWdfaXRl
bSAqaXRlbSwNCiAgICA+ICsJCQkJCSAgY29uc3QgY2hhciAqcGFnZSwgc2l6ZV90IGNvdW50KQ0K
ICAgID4gK3sNCiAgICA+ICsJc3RydWN0IG52bWV0X3N1YnN5cyAqc3Vic3lzID0gdG9fc3Vic3lz
KGl0ZW0pOw0KICAgID4gKw0KICAgID4gKwlkb3duX3dyaXRlKCZudm1ldF9jb25maWdfc2VtKTsN
CiAgICA+ICsJLyogc2hvdWxkIHRoaXMgYmUgJXggPyAqLw0KICAgID4gKwlzc2NhbmYocGFnZSwg
IiVodVxuIiwgJnN1YnN5cy0+aWQpOw0KICAgID4gKwl1cF93cml0ZSgmbnZtZXRfY29uZmlnX3Nl
bSk7DQogICAgPiArDQogICAgPiArCXJldHVybiBjb3VudDsNCiAgICA+ICt9DQogICAgPiArQ09O
RklHRlNfQVRUUihudm1ldF9zdWJzeXNfLCBhdHRyX2lkKTsNCiAgICA+ICsNCiAgICA+ICAgc3Rh
dGljIHN0cnVjdCBjb25maWdmc19hdHRyaWJ1dGUgKm52bWV0X3N1YnN5c19hdHRyc1tdID0gew0K
ICAgID4gICAJJm52bWV0X3N1YnN5c19hdHRyX2F0dHJfYWxsb3dfYW55X2hvc3QsDQogICAgPiAg
IAkmbnZtZXRfc3Vic3lzX2F0dHJfYXR0cl92ZXJzaW9uLA0KICAgID4gICAJJm52bWV0X3N1YnN5
c19hdHRyX2F0dHJfc2VyaWFsLA0KICAgID4gKwkmbnZtZXRfc3Vic3lzX2F0dHJfYXR0cl9pZCwN
CiAgICA+ICAgCU5VTEwsDQogICAgPiAgIH07DQogICAgPiAgIA0KICAgID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbnZtZS90YXJnZXQvY29yZS5jIGIvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMN
CiAgICA+IGluZGV4IDI4NDM4YjgzM2MxYi4uMjM5NjIxNWEyM2M5IDEwMDY0NA0KICAgID4gLS0t
IGEvZHJpdmVycy9udm1lL3RhcmdldC9jb3JlLmMNCiAgICA+ICsrKyBiL2RyaXZlcnMvbnZtZS90
YXJnZXQvY29yZS5jDQogICAgPiBAQCAtMTI2NywxMyArMTI2NywxOCBAQCB1MTYgbnZtZXRfYWxs
b2NfY3RybChjb25zdCBjaGFyICpzdWJzeXNucW4sIGNvbnN0IGNoYXIgKmhvc3RucW4sDQogICAg
PiAgIAlpZiAoIWN0cmwtPnNxcykNCiAgICA+ICAgCQlnb3RvIG91dF9mcmVlX2NxczsNCiAgICA+
ICAgDQogICAgPiAtCXJldCA9IGlkYV9zaW1wbGVfZ2V0KCZjbnRsaWRfaWRhLA0KICAgID4gLQkJ
CSAgICAgTlZNRV9DTlRMSURfTUlOLCBOVk1FX0NOVExJRF9NQVgsDQogICAgPiAtCQkJICAgICBH
RlBfS0VSTkVMKTsNCiAgICA+IC0JaWYgKHJldCA8IDApIHsNCiAgICA+IC0JCXN0YXR1cyA9IE5W
TUVfU0NfQ09OTkVDVF9DVFJMX0JVU1kgfCBOVk1FX1NDX0ROUjsNCiAgICA+IC0JCWdvdG8gb3V0
X2ZyZWVfc3FzOw0KICAgID4gLQl9DQogICAgPiArCWlmICghc3Vic3lzLT5pZCkgew0KICAgID4g
KwkJcmV0ID0gaWRhX3NpbXBsZV9nZXQoJmNudGxpZF9pZGEsDQogICAgPiArCQkJCU5WTUVfQ05U
TElEX01JTiwgTlZNRV9DTlRMSURfTUFYLA0KICAgID4gKwkJCQlHRlBfS0VSTkVMKTsNCiAgICA+
ICsJCWlmIChyZXQgPCAwKSB7DQogICAgPiArCQkJc3RhdHVzID0gTlZNRV9TQ19DT05ORUNUX0NU
UkxfQlVTWSB8IE5WTUVfU0NfRE5SOw0KICAgID4gKwkJCWdvdG8gb3V0X2ZyZWVfc3FzOw0KICAg
ID4gKwkJfQ0KICAgID4gKwkJY3RybC0+Y250bGlkID0gcmV0Ow0KICAgID4gKwl9IGVsc2UNCiAg
ICA+ICsJCXJldCA9IHN1YnN5cy0+aWQ7DQogICAgPiArDQogICAgPiAgIAljdHJsLT5jbnRsaWQg
PSByZXQ7DQogICAgPiAgIA0KICAgID4gICAJY3RybC0+b3BzID0gcmVxLT5vcHM7DQogICAgPiBA
QCAtMTMzMCw3ICsxMzM1LDggQEAgc3RhdGljIHZvaWQgbnZtZXRfY3RybF9mcmVlKHN0cnVjdCBr
cmVmICpyZWYpDQogICAgPiAgIAlmbHVzaF93b3JrKCZjdHJsLT5hc3luY19ldmVudF93b3JrKTsN
CiAgICA+ICAgCWNhbmNlbF93b3JrX3N5bmMoJmN0cmwtPmZhdGFsX2Vycl93b3JrKTsNCiAgICA+
ICAgDQogICAgPiAtCWlkYV9zaW1wbGVfcmVtb3ZlKCZjbnRsaWRfaWRhLCBjdHJsLT5jbnRsaWQp
Ow0KICAgID4gKwlpZiAoIXN1YnN5cy0+aWQpDQogICAgPiArCQlpZGFfc2ltcGxlX3JlbW92ZSgm
Y250bGlkX2lkYSwgY3RybC0+Y250bGlkKTsNCiAgICA+ICAgDQogICAgPiAgIAlrZnJlZShjdHJs
LT5zcXMpOw0KICAgID4gICAJa2ZyZWUoY3RybC0+Y3FzKTsNCiAgICA+IEBAIC0xNDE2LDYgKzE0
MjIsNyBAQCBzdHJ1Y3QgbnZtZXRfc3Vic3lzICpudm1ldF9zdWJzeXNfYWxsb2MoY29uc3QgY2hh
ciAqc3Vic3lzbnFuLA0KICAgID4gICAJCWtmcmVlKHN1YnN5cyk7DQogICAgPiAgIAkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7DQogICAgPiAgIAl9DQogICAgPiArCXN1YnN5cy0+aWQgPSAwOw0K
ICAgID4gICANCiAgICA+ICAgCWtyZWZfaW5pdCgmc3Vic3lzLT5yZWYpOw0KICAgID4gICANCiAg
ICA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmggYi9kcml2ZXJzL252
bWUvdGFyZ2V0L252bWV0LmgNCiAgICA+IGluZGV4IDQ2ZGY0NWU4MzdjOS4uYTNkMzQ3MWJkZjJk
IDEwMDY0NA0KICAgID4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9udm1ldC5oDQogICAgPiAr
KysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgNCiAgICA+IEBAIC0yMTEsNiArMjExLDcg
QEAgc3RydWN0IG52bWV0X3N1YnN5cyB7DQogICAgPiAgIAlzdHJ1Y3QgbGlzdF9oZWFkCW5hbWVz
cGFjZXM7DQogICAgPiAgIAl1bnNpZ25lZCBpbnQJCW5yX25hbWVzcGFjZXM7DQogICAgPiAgIAl1
bnNpZ25lZCBpbnQJCW1heF9uc2lkOw0KICAgID4gKwl1MTYJCQlpZDsNCiAgICA+ICAgDQogICAg
PiAgIAlzdHJ1Y3QgbGlzdF9oZWFkCWN0cmxzOw0KICAgID4gICANCiAgICANCiAgICBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KICAgIExpbnV4LW52bWUg
bWFpbGluZyBsaXN0DQogICAgTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnDQogICAgaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lDQogICAg
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
