Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C510484694
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 10:03:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pnr4w9TVI2jAK58NKtZ+U4tIgpdXUQxBrCLzttKM0aw=; b=Dn/ZqY4tkEKNQU
	OhVPRZxrYqf4Ag5qOXg6x5jDmT58RiJ8m68xuTsqbEKz7vDAeOgPk7rleBhxcq2kTFXS5WfsCafD0
	Q9sjnTHumQVMwDCjlvILi6kKGt2y/rCRzE4tKHp64dzCmjo3s1+w3PEMMDpkSRDH+/RTqp8JYzfQM
	rXMUvS69de9VJENBJUi2Sp7RwWBjcXMAmYowNAjLX/by4cHzT4kuB/wdwMpowoZronO9zHndsJESL
	IHlQuy4AD6ilvyxMuMibjgmYzNtR1+t7OdM2nhJV/nFcM/TMhEmjE3QschHokLQDCDJHcUGI+KaS2
	9BkGE8rcoM891pZG1Kbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGue-0003EL-6l; Wed, 07 Aug 2019 08:03:12 +0000
Received: from mail-eopbgr140082.outbound.protection.outlook.com
 ([40.107.14.82] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGuV-0003De-B5
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 08:03:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jopxQ5jMZmalwCaylVYzsBPnmvJDsUiMOoB3m0vMXVKBD2YT7a4VwpNpnEH+KOua4thtjJzDgk7Tym2JGt9hbOS9WpSjH7eW1FwwEeXVNlO0jUuFmSDyLAxxzD9jyBbWc1BpZSxlg+aTtRNotKOZDCiI7FPy4xxNnkIFYAoSBKdD5xFVEjHKyi0FspZdTj1Y4qEeFBwA7Vuaw6NKQnMz/UOwgBH7/64ENXDFIBFuf8EecD1lOOvZOLn0VIXWX8V+rXKBKw569C3nQtIS/bvjb8OciUD9fTwcB+UMuZf8qP/jKatc6vxULj8tFntEcXpPMJBcyICAxExzQZ18oWHf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ukuw442qXEaN9zy9KK01/maIb8G9rF669z83nP+tpMk=;
 b=FYYR6Typ7kp/BU+QiVKFy4m6K/KR6kATmKaS5JosSrBgbJvhlBcu4FyUibSWzhs6WfcrhnSY8x3F8A+br9W/fI8vQn+tyEClyG8GU9UBwGiOjbm/Qws6/ad+S1t/wCX1DNeKfxfUgy7alWRFBEz4nE7rP1Rm7OdX/eZlxWKGOzuDvEfWJbiLWFzgtU3fJtgRCdgtVJR21hworJyHRRshswUCoGu3fx91VbwklUZC9wWL3C4eL8m5PjDz06lh3am1YjoEVi0wEugkYYklFzPOp8m+K7Aj2DLeaa+yko5adYk+HFkvbV9uBp4JC1n/3KA/0huMjUG7+rthM3yyCg3oww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ukuw442qXEaN9zy9KK01/maIb8G9rF669z83nP+tpMk=;
 b=Om/jxjgvff0mflYfP1xU58IpOpjqbEjuwvUZo7X4tfro2klASclHD2c6VMM26AecQq9pHD15VxtuCjuq8g6e2X169jZ2koFiSZJnxgW6RbZdJm9aJYIpghb24A1N+4OVo+PqwODld7OGfa+UXxoUQD9yah4YaaT10pG5wgVz+oU=
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com (52.133.28.22) by
 AM6PR0502MB4023.eurprd05.prod.outlook.com (52.133.27.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Wed, 7 Aug 2019 08:02:55 +0000
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3]) by AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3%7]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 08:02:55 +0000
From: Israel Rukshin <israelr@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Linux-nvme
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Topic: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Index: AQHVSqrJyniEbpiJHkWA9FONndt1cKbsqpkAgAKtFwA=
Date: Wed, 7 Aug 2019 08:02:54 +0000
Message-ID: <806d9809-2c24-fcf9-e4c0-e07eaac88d13@mellanox.com>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
In-Reply-To: <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0096.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::36) To AM6PR0502MB4070.eurprd05.prod.outlook.com
 (2603:10a6:209:18::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=israelr@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.165.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4e4e651-75eb-4958-cb3e-08d71b0da718
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0502MB4023; 
x-ms-traffictypediagnostic: AM6PR0502MB4023:
x-microsoft-antispam-prvs: <AM6PR0502MB4023F176480FCE869B5BE258D7D40@AM6PR0502MB4023.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(39860400002)(136003)(376002)(346002)(199004)(189003)(446003)(6512007)(31696002)(86362001)(478600001)(8936002)(53936002)(81156014)(3846002)(8676002)(7736002)(316002)(81166006)(5660300002)(110136005)(6116002)(2616005)(476003)(11346002)(66476007)(229853002)(66946007)(6486002)(6436002)(66446008)(68736007)(305945005)(26005)(64756008)(66556008)(486006)(186003)(102836004)(99286004)(256004)(71200400001)(71190400001)(2906002)(107886003)(14454004)(66066001)(25786009)(4326008)(76176011)(36756003)(53546011)(6506007)(31686004)(52116002)(54906003)(6246003)(386003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB4023;
 H:AM6PR0502MB4070.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k8GfZ0UI9quIlPpBmpb8UF3dNA8d2p0SQyHfvKHbr/Cvv/eG5ysFgIGQloT0lW4oSycBm1D1eCiUqD2XAZjRMlxpIHftzned35HaW50VnGI9lWGtyd70d4I2QoNg4FH7XTYGGVdMkoEHeCzUQXPGH36FxNr77upvuMOhTSHG6r2V7nys79k9UVieyn4vn0jfHcoGPT9Qaxrsr/OU04RuLvDgLoMh1KiDXrjcB1TxvxsoXeHwaqInVWov/db7aey1PJCQfQa3jwvbg/NhkJURVOCsoQzfjHO6jUqAZsEjaj/2v/tFQn05C0lpw40cb86Bf21ZJh8CwVE+c68MlhRIVDLOU9CkpTyvG+wF769JwLmty9WKvxcXoiviNzwfUQTKuaSITWdntYxw9mM0mS/Zt8W0Aa6almvhUmiKmprAxlY=
Content-ID: <8979043B5DE23944A7924938873554C4@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4e4e651-75eb-4958-cb3e-08d71b0da718
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:02:55.0208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: israelr@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_010303_385765_7F2A8E54 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.82 listed in list.dnswl.org]
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC81LzIwMTkgNjoxMCBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToNCj4NCj4+IFRPUyBpcyB1
c2VyLWRlZmluZWQgYW5kIG5lZWRzIHRvIGJlIGNvbmZpZ3VyZWQgdmlhIG52bWUtY2xpLg0KPj4g
SXQgbXVzdCBiZSBzZXQgYmVmb3JlIGluaXRpYXRpbmcgYW55IHRyYWZmaWMgYW5kIG9uY2Ugc2V0
IHRoZSBUT1MNCj4+IGNhbm5vdCBiZSBjaGFuZ2VkLg0KPg0KPiBDYW4geW91IHBsZWFzZSBoYXZl
IHRjcCBzdXBwb3J0IGl0IHRvbyBpbiB0aGUgcGF0Y2ggc2V0IChhbmQgdGVzdA0KPiB0aGF0IGl0
IHdvcmtzKT8NCj4NCj4gSXRzIHNpbXBseSBzZXRzb2Nrb3B0IHdpdGggU09fUFJJT1JJVFkuDQoN
CkhpIFNhZ2ksDQoNCkkgaW1wbGVtZW50ZWQgeW91ciBzdWdnZXN0aW9uIGJ1dCBpdCBkb2Vzbid0
IHdvcmsgZm9yIG1lLg0KDQpUaGUga2VybmVsX3NldHNvY2tvcHQoKSBzdWNjZWVkIGFuZCBJIHNl
ZSB0aGF0IA0KcXVldWUtPnNvY2stPnNrLT5za19wcmlvcml0eSB3YXMgY2hhbmdlZCB0byB0aGUg
Y29ycmVjdCB2YWx1ZSwNCg0KYnV0IEkgZG9uJ3Qgc2VlIHRoYXQgdGhlIHByaW9yaXR5IHdhcyBj
aGFuZ2VkIG9uIFdpcmVzaGFyay4NCg0KRG8gSSBtaXNzIGFueXRoaW5nPw0KDQpIZXJlIGlzIG15
IGNoYW5nZToNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L3RjcC5jIGIvZHJpdmVy
cy9udm1lL2hvc3QvdGNwLmMNCmluZGV4IDYwNmIxM2QuLmMwZWZiMmEgMTAwNjQ0DQotLS0gYS9k
cml2ZXJzL252bWUvaG9zdC90Y3AuYw0KKysrIGIvZHJpdmVycy9udm1lL2hvc3QvdGNwLmMNCkBA
IC0xMzAxLDYgKzEzMDEsMTkgQEAgc3RhdGljIGludCBudm1lX3RjcF9hbGxvY19xdWV1ZShzdHJ1
Y3QgbnZtZV9jdHJsIA0KKm5jdHJsLA0KIMKgwqDCoMKgIMKgwqDCoCBnb3RvIGVycl9zb2NrOw0K
IMKgwqDCoMKgIH0NCg0KK8KgwqDCoCAvKiBTZXQgc29ja2V0IHByaW9yaXR5ICovDQorwqDCoMKg
IGlmIChuY3RybC0+b3B0cy0+dG9zID49IDApIHsNCivCoMKgwqAgwqDCoMKgIG9wdCA9IG5jdHJs
LT5vcHRzLT50b3M7DQorwqDCoMKgIMKgwqDCoCByZXQgPSBrZXJuZWxfc2V0c29ja29wdChxdWV1
ZS0+c29jaywgU09MX1NPQ0tFVCwgU09fUFJJT1JJVFksDQorwqDCoMKgIMKgwqDCoCDCoMKgwqAg
wqDCoMKgIChjaGFyICopJm9wdCwgc2l6ZW9mKG9wdCkpOw0KK8KgwqDCoCDCoMKgwqAgaWYgKHJl
dCkgew0KK8KgwqDCoCDCoMKgwqAgwqDCoMKgIGRldl9lcnIobmN0cmwtPmRldmljZSwNCivCoMKg
wqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgImZhaWxlZCB0byBzZXQgU09fUFJJT1JJVFkgc29jayBv
cHQgJWRcbiIsIHJldCk7DQorwqDCoMKgIMKgwqDCoCDCoMKgwqAgZ290byBlcnJfc29jazsNCivC
oMKgwqAgwqDCoMKgIH0NCivCoMKgwqAgfQ0KKw0KIMKgwqDCoMKgIHF1ZXVlLT5zb2NrLT5zay0+
c2tfYWxsb2NhdGlvbiA9IEdGUF9BVE9NSUM7DQogwqDCoMKgwqAgaWYgKCFxaWQpDQogwqDCoMKg
wqAgwqDCoMKgIG4gPSAwOw0KLS0gDQoNCg0KUmVnYXJkcywNCg0KSXNyYWVsDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGlu
ZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
