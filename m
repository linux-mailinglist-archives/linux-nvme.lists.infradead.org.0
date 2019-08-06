Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D7283005
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 12:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEXE7Ah6jClVKot9G+5aJfwAwr2fWJw9mZJ6ymgAXfI=; b=DV1NT9OTkSAqBH
	Dc0Yi7iuu4SrfZ5nMA28mbVceT+D6l8Mh1JA/wIp94L27aeIzyfraPeITkXoNGCZxjd/zCZB5FLvD
	igVI6IpQlM0fEvsv4P90nDkTixcF8gxmMAjmFpG3ItRPf4mMPwpuuTWbvsntdTzK76eaxh1S8fyT/
	0eiIamW3MdmBSjeWRxHj03+cdJbDh/oG6AnX7dIft+JEegm3rfLkhsY+34dwVGiO522Sd7mWbTw5z
	kFWtwOj9d94lkx4jsU6x9qtfVK948qVdhfIY/joz81Y8fQYbHSZBycMMaWfuSKSFB7K1qAy43LVkU
	6cniZZbMbknF2ZemTHdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hux1o-00053M-SC; Tue, 06 Aug 2019 10:49:16 +0000
Received: from mail-eopbgr20074.outbound.protection.outlook.com ([40.107.2.74]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hux1k-00052f-5L
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 10:49:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mCnUl5DvO2k74kXuksd+iIwrBeEmhpmRLAPdXaxHBuY8kK5Ca9IpLcVo9kkGM9EZCXO7PsaireJrdRj6jsGjzkdiN47LQjCgmnEGgvaP1BHnbiZ/PPD1AaIoMAe3Trt/tjm5YIB+zMiG6pLDOssfOTFVgvCkmn+93c3SJfXD3uwqypQlmsdULJbA4wK5ATY4r65cw+PUr1OyS0CCImjZAXP805UtG3DWRrjj0IXGxYqzX6dGfEDVFgLSllyj/VuZ1My14JWJujwQi/T6eHrV4kjAcDhq+ZT84TzHfl5/0A/uJD5nJUG3L+olE6rBz0EK2H6EHTulnwe1m3YbVlUuHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3gZ5+KT5bTnzy+tmj/llBHRRXqFKlH7lsEG5qY/oj0=;
 b=JmcjgaRX+6TF9m0/PYH0nWhDbkiczE3NBypbEvjd+DtqXdw5iAVf7YskreY63D5jNBMK6PfYIrV0MFiOFDS5sFu/G+r4ksvBnsA/uqWDh1IGrLGeZ2ByPTsLXsPP5F8heud0QWXFIuUPSbRPU546enTDxJi7Yn1BlhNm9CP/famgC/yltyx0G076WbO9pZOPESLHPJKj4lxipRoJgBCGyzrx0wZiVB8N1GvY1r0t/l5pLmFBZXmMDgdeN8ZDHh96pVrUOG6fq6C5uI8P6wqkv9/zIj/U6zqbdGA77yCtBpgb+b/ov9Fx2pVP92GpG8BwZD4iq41RuA+XBoKjLxQizw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y3gZ5+KT5bTnzy+tmj/llBHRRXqFKlH7lsEG5qY/oj0=;
 b=mu77NnNg8TgaShT7aG7V4ItfZnUUbE18nslETr53j9bZme2oVgRGTgoTNEiiQoJpyrrOJ++ezmgRGcQuXigieNonQ2WPs0Rzjz2QeyWinwTrJo6DxjRNL4LtNduYzLxOsYY1DS1LAxNlpXadVqFAUfAlOoSTqSgZNVw7wJPzwRw=
Received: from DB7PR05MB5461.eurprd05.prod.outlook.com (20.177.192.26) by
 DB7PR05MB5067.eurprd05.prod.outlook.com (20.176.236.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Tue, 6 Aug 2019 10:49:03 +0000
Received: from DB7PR05MB5461.eurprd05.prod.outlook.com
 ([fe80::1d4f:bce7:6362:c8b0]) by DB7PR05MB5461.eurprd05.prod.outlook.com
 ([fe80::1d4f:bce7:6362:c8b0%7]) with mapi id 15.20.2136.018; Tue, 6 Aug 2019
 10:49:03 +0000
From: Tom Wu <tomwu@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Linux-nvme
 <linux-nvme@lists.infradead.org>, "keith.busch@intel.com"
 <keith.busch@intel.com>, "hch@lst.de" <hch@lst.de>
Subject: Re: [PATCH] nvmet: fix data units read and written counters in SMART
 log
Thread-Topic: [PATCH] nvmet: fix data units read and written counters in SMART
 log
Thread-Index: AQHVSzE0IjY3aXL/ekOoBJ8VgA2cp6bs37qAgAES9QA=
Date: Tue, 6 Aug 2019 10:49:03 +0000
Message-ID: <dedb990d-ef45-0cd9-b662-e98b911fe45a@mellanox.com>
References: <1564970259-12279-1-git-send-email-tomwu@mellanox.com>
 <8cbab0aa-51c7-b33a-46a3-5a85debc023c@grimberg.me>
In-Reply-To: <8cbab0aa-51c7-b33a-46a3-5a85debc023c@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SG2PR06CA0204.apcprd06.prod.outlook.com (2603:1096:4:1::36)
 To DB7PR05MB5461.eurprd05.prod.outlook.com
 (2603:10a6:10:58::26)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=tomwu@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [58.101.22.144]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9d037c5-88a3-456e-86a0-08d71a5bb25d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR05MB5067; 
x-ms-traffictypediagnostic: DB7PR05MB5067:
x-microsoft-antispam-prvs: <DB7PR05MB5067C872068B2BC9CDF9FB01D1D50@DB7PR05MB5067.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(189003)(199004)(2501003)(6246003)(476003)(3846002)(6116002)(229853002)(26005)(110136005)(107886003)(478600001)(486006)(8936002)(68736007)(186003)(81156014)(81166006)(36756003)(54906003)(8676002)(25786009)(6486002)(2906002)(53936002)(102836004)(4326008)(256004)(86362001)(305945005)(66476007)(66556008)(64756008)(31696002)(66946007)(7736002)(66446008)(6512007)(99286004)(5660300002)(52116002)(66066001)(71190400001)(76176011)(2201001)(11346002)(71200400001)(316002)(2616005)(31686004)(53546011)(386003)(6506007)(14454004)(446003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR05MB5067;
 H:DB7PR05MB5461.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r/iGb4mL/rPqiNo1wRrnKiST+sTTGhnGI+f0Z2NKFh2G7Q6tcLOVfsuOWRT4h0fj1c+xXj5loxGMsL222WCt6yTUyyIXyy5/vlY5uaeRPa2bTaqP1B95WEbrHsxQJD+PcvFUUM6JNDXKTeKtJYrl/R1VFtLTv8T+mEZnl/YVkZKcNdj/nQxo6EKTeJ9Rk8dyZW/QVFYgg+bWCK4X4KZk678URfeufuuUN5F/91WnwxFpNr4nz+h/D6DeiGf7X8KPO9zM66Px4+LvTwgedc749wGoAUKDKCc6KBYmldIwbvSeM6ZVY62mqN0psd5euvQnKAXd/occvJVw7IUSuvibRdBQ9CVbDp8IA6SU4j4CFEdywW0Iw+raPxJvpNcs0eLrMX4No2gaChLODrOZtAzIi12QUu0MfCD71NWxceSAt6I=
Content-ID: <59A81E001CA9C44A95C22EE1CAF64C14@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9d037c5-88a3-456e-86a0-08d71a5bb25d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 10:49:03.4403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tomwu@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB5067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_034912_272702_5AAFAAAF 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGksIFNhZ2kNCg0Kd2hlbiB5b3Ugc2F5IEkgY2FuICdtb2RpZnlpbmcgdGhlIGFjdHVhbCByZXRy
aWV2YWwnLCB5b3UgYXJlIHRyeSB0byANCnN1Z2dlc3QgdGhhdCBJIGNhbiBkbyB0aGUgY2hhbmdl
cyBhcyBiZWxvdywgcmlnaHQ/DQoNCi0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQvYWRtaW4tY21k
LmMNCisrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvYWRtaW4tY21kLmMNCkBAIC04MSw5ICs4MSwx
MSBAQCBzdGF0aWMgdTE2IG52bWV0X2dldF9zbWFydF9sb2dfbnNpZChzdHJ1Y3QgbnZtZXRfcmVx
IA0KKnJlcSwNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBvdXQ7DQoNCiDC
oMKgwqDCoMKgwqDCoCBob3N0X3JlYWRzID0gcGFydF9zdGF0X3JlYWQobnMtPmJkZXYtPmJkX3Bh
cnQsIGlvc1tSRUFEXSk7DQotwqDCoMKgwqDCoMKgIGRhdGFfdW5pdHNfcmVhZCA9IHBhcnRfc3Rh
dF9yZWFkKG5zLT5iZGV2LT5iZF9wYXJ0LCBzZWN0b3JzW1JFQURdKTsNCivCoMKgwqDCoMKgwqAg
ZGF0YV91bml0c19yZWFkID0gRElWX1JPVU5EX1VQKHBhcnRfc3RhdF9yZWFkKG5zLT5iZGV2LT5i
ZF9wYXJ0LA0KK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2VjdG9yc1tSRUFEXSksIDEw
MDApOw0KIMKgwqDCoMKgwqDCoMKgIGhvc3Rfd3JpdGVzID0gcGFydF9zdGF0X3JlYWQobnMtPmJk
ZXYtPmJkX3BhcnQsIGlvc1tXUklURV0pOw0KLcKgwqDCoMKgwqDCoCBkYXRhX3VuaXRzX3dyaXR0
ZW4gPSBwYXJ0X3N0YXRfcmVhZChucy0+YmRldi0+YmRfcGFydCwgDQpzZWN0b3JzW1dSSVRFXSk7
DQorwqDCoMKgwqDCoMKgIGRhdGFfdW5pdHNfd3JpdHRlbiA9IERJVl9ST1VORF9VUChwYXJ0X3N0
YXRfcmVhZChucy0+YmRldi0+YmRfcGFydCwNCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNlY3RvcnNbV1JJVEVdKSwgMTAwMCk7DQoNCiDCoMKgwqDCoMKgwqDCoCBwdXRfdW5hbGlnbmVk
X2xlNjQoaG9zdF9yZWFkcywgJnNsb2ctPmhvc3RfcmVhZHNbMF0pOw0KIMKgwqDCoMKgwqDCoMKg
IHB1dF91bmFsaWduZWRfbGU2NChkYXRhX3VuaXRzX3JlYWQsICZzbG9nLT5kYXRhX3VuaXRzX3Jl
YWRbMF0pOw0KQEAgLTExMiwxMCArMTE0LDEwIEBAIHN0YXRpYyB1MTYgbnZtZXRfZ2V0X3NtYXJ0
X2xvZ19hbGwoc3RydWN0IA0KbnZtZXRfcmVxICpyZXEsDQogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb250aW51ZTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaG9zdF9yZWFkcyArPSBwYXJ0X3N0YXRfcmVhZChucy0+YmRldi0+YmRfcGFy
dCwgaW9zW1JFQURdKTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGF0YV91bml0
c19yZWFkICs9DQotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cGFydF9zdGF0X3JlYWQobnMtPmJkZXYtPmJkX3BhcnQsIHNlY3RvcnNbUkVBRF0pOw0KKyBESVZf
Uk9VTkRfVVAocGFydF9zdGF0X3JlYWQobnMtPmJkZXYtPmJkX3BhcnQsIHNlY3RvcnNbUkVBRF0p
LCAxMDAwKTsNCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaG9zdF93cml0ZXMgKz0g
cGFydF9zdGF0X3JlYWQobnMtPmJkZXYtPmJkX3BhcnQsIA0KaW9zW1dSSVRFXSk7DQogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRhdGFfdW5pdHNfd3JpdHRlbiArPQ0KLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBhcnRfc3RhdF9yZWFkKG5zLT5i
ZGV2LT5iZF9wYXJ0LCBzZWN0b3JzW1dSSVRFXSk7DQorIERJVl9ST1VORF9VUChwYXJ0X3N0YXRf
cmVhZChucy0+YmRldi0+YmRfcGFydCwgc2VjdG9yc1tXUklURV0pLCAxMDAwKTsNCg0KIMKgwqDC
oMKgwqDCoMKgIH0NCg0KT24gOC82LzIwMTkgMjoyNCBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToN
Cj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0L2FkbWluLWNtZC5jIA0KPj4g
Yi9kcml2ZXJzL252bWUvdGFyZ2V0L2FkbWluLWNtZC5jDQo+PiBpbmRleCA5ZjcyZDUxLi5hY2Jh
ZGJlIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9udm1lL3RhcmdldC9hZG1pbi1jbWQuYw0KPj4g
KysrIGIvZHJpdmVycy9udm1lL3RhcmdldC9hZG1pbi1jbWQuYw0KPj4gQEAgLTg1LDYgKzg1LDkg
QEAgc3RhdGljIHUxNiBudm1ldF9nZXRfc21hcnRfbG9nX25zaWQoc3RydWN0IA0KPj4gbnZtZXRf
cmVxICpyZXEsDQo+PiDCoMKgwqDCoMKgIGhvc3Rfd3JpdGVzID0gcGFydF9zdGF0X3JlYWQobnMt
PmJkZXYtPmJkX3BhcnQsIGlvc1tXUklURV0pOw0KPj4gwqDCoMKgwqDCoCBkYXRhX3VuaXRzX3dy
aXR0ZW4gPSBwYXJ0X3N0YXRfcmVhZChucy0+YmRldi0+YmRfcGFydCwgDQo+PiBzZWN0b3JzW1dS
SVRFXSk7DQo+PiDCoCArwqDCoMKgIGRhdGFfdW5pdHNfcmVhZCA9IERJVl9ST1VORF9VUChkYXRh
X3VuaXRzX3JlYWQsIDEwMDApOw0KPj4gK8KgwqDCoCBkYXRhX3VuaXRzX3dyaXR0ZW4gPSBESVZf
Uk9VTkRfVVAoZGF0YV91bml0c193cml0dGVuLCAxMDAwKTsNCj4+ICsNCj4NCj4gSG93IGFib3V0
IGVpdGhlciBtb2RpZnlpbmcgdGhlIGFjdHVhbCByZXRyaWV2YWwgb3IgbW92ZSB0aGUgZml4dXBz
IA0KPiByaWdodCBuZXh0IHRvIHRoZSBpbml0aWFsIHNldHRpbmcuLi4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
