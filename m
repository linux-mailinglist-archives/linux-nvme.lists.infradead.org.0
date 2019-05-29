Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D623F2E893
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqNQDlbn9TJNz/BKTvVuwg0EEHphX5NnwkgxXV0ZO5M=; b=N9ucGg87BDo+2V
	NA98she7Id9k94GQenLlUxJzcZqP0W02yixsPl/bjLaEmVaNWt9bUzxxQjDOQnYSi1aX8r8nQ7r7T
	1lfyinSJGLbD3i0ptzHX6l+M3d6l5RkzwMuu57R0gc/CQu5xwN77hOzTidaV/WBpBydBCsT8NpsyY
	2DdpY2rHe9cjWZK7AhsD4d/dAZXL4L/ijrpyfWICAYil7Jwbue0nqLEbbAqRn1q9pS8DrvNL7v0WW
	KdV+rxrsWTJieaAIJBz5xLqXhxcn+CQoZi84ZWXCKx4ECsM05/e94vHNkk83iVF9MxM5m3LUNB6Le
	m4CfCdV0C5GHdRWX4lTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW7QM-0003VW-Ko; Wed, 29 May 2019 22:51:58 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW7QF-0003V0-Sb
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:51:53 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4TMouYV029523; Wed, 29 May 2019 15:51:49 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=47aemy2A49x0BUzqfTiZxHtXjHdadhrU2i2JKPRoqjc=;
 b=Q6AOmr3sNeTrUXV0+J945hgmR1xidKboPK5BrH/jRzFnvccz8SmKrFdwqvTfW5yQ9XpT
 ZAm+v9fluHK/cU+P2FgYz++vu0jC563jkW+1wkxRzwL4jACQJvcBO2vROFbTubWSvj/j
 qFziGy3ewSwEi5fLqX0mEWWviyX4Bn7hXlNEVEUPn5wTMqpTdIkRhi2w9xU+XrBT3Lkb
 p0s5gsJqyw4gPJvwC/M6LUJXUDyQJG2rgR3czv3iw/cKzY81KT3RBVKbk6fq2ShPHtBn
 phbpobbgkKx0m8ZgmSHq131SPIA8Lijc3g+ukv/4/Elh644UX8NxjJv+48gznTKLIg0r 6g== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2sskp8bxv5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 29 May 2019 15:51:49 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 29 May
 2019 15:51:48 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.52) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 29 May 2019 15:51:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=47aemy2A49x0BUzqfTiZxHtXjHdadhrU2i2JKPRoqjc=;
 b=PG2Zkc1frNMp0THs9fUIfd6gOVxANiRT0xTSeF6eTyRcEKr+wYuEj7bDYGe1gHmGVPNhQZws2++Ws11LC4NnY1s6x5b7Q7kU9Z7H7ZIxXv63qeBxAiM8hCso3wB77viSIAeQdCIHgtfpFfsBjg6OnmHy0kQbj+0MuP8gP/AcJ9I=
Received: from CH2PR18MB3304.namprd18.prod.outlook.com (52.132.245.222) by
 CH2PR18MB3320.namprd18.prod.outlook.com (52.132.246.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Wed, 29 May 2019 22:51:45 +0000
Received: from CH2PR18MB3304.namprd18.prod.outlook.com
 ([fe80::6031:664f:a4f8:70bc]) by CH2PR18MB3304.namprd18.prod.outlook.com
 ([fe80::6031:664f:a4f8:70bc%3]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 22:51:45 +0000
From: Giridhar Malavali <gmalavali@marvell.com>
To: James Smart <jsmart2021@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2] nvme-fc: Add message when creating new association
Thread-Topic: [PATCH v2] nvme-fc: Add message when creating new association
Thread-Index: AQHVFm136P3Sr3MzkEm5y6eLmHD8e6aCP/qA
Date: Wed, 29 May 2019 22:51:45 +0000
Message-ID: <BA12ED73-6418-4E25-A9EE-B204E240BCDF@marvell.com>
References: <20190529222526.3672-1-jsmart2021@gmail.com>
In-Reply-To: <20190529222526.3672-1-jsmart2021@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [199.233.58.37]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abc0abf6-3e4f-43d5-62e8-08d6e48839d9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR18MB3320; 
x-ms-traffictypediagnostic: CH2PR18MB3320:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR18MB3320AC51700F307DF4734A62AC1F0@CH2PR18MB3320.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(366004)(376002)(396003)(39860400002)(189003)(199004)(81156014)(81166006)(102836004)(256004)(14444005)(305945005)(316002)(8676002)(486006)(6306002)(14454004)(6506007)(478600001)(966005)(25786009)(73956011)(3846002)(2501003)(71200400001)(83716004)(71190400001)(229853002)(66446008)(6512007)(64756008)(6486002)(66476007)(91956017)(82746002)(6436002)(76116006)(66066001)(66946007)(66556008)(86362001)(15650500001)(36756003)(6116002)(68736007)(2420400007)(7736002)(7110500001)(8936002)(33656002)(6246003)(53936002)(11346002)(446003)(476003)(2616005)(26005)(110136005)(5660300002)(186003)(76176011)(2906002)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR18MB3320;
 H:CH2PR18MB3304.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: whZE0F9nztubVIebg9XKLwE8RrPMmw0msF2tlVb/Zr+tv0/JhEarBQhyq1fBzqI0Yf50lsLp7J6GnLc7dYmWExAXosDXWLBenh9NBff18I5bBPeWlobEeu31C8YRxHnWkfU+WwCta3Sl4ykTJsdOg5930TcnqhAxwOsgh/SA96OZP9CESL5gg21svFIQ4ayxxcBlmx/443Y496wOZnp7916Rz+VaaN1tvcdW9pP5IhMG/lsFWNLz50m5UoD8958rYo9lSkqnmNhSngg+Psj2BixVW+cuzv7BDaR1k2KPTUqTovBz54IHnMzCRWSRIT+C3FwBr5Q1Wv02P55AgRHlV7B8fht6M6ivWGYF3wT9+awTIKPPocFxBV+Bbt7QfLEUQPM63cVVwtZhV2Iu2RCtz1NK9FZg/DP0HjzLuZ0pAvk=
Content-ID: <CAF791F970C95349852D11C6561F89D3@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: abc0abf6-3e4f-43d5-62e8-08d6e48839d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 22:51:45.5597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmalavali@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR18MB3320
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-29_12:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_155152_096334_309CE0D4 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TG9va3MgZ29vZC4NCg0KUmV2aWV3ZWQtYnk6IEdpcmlkaGFyIE1hbGF2YWxpIDxnbWFsYXZhbGlA
bWFydmVsbC5jb20+DQoNCu+7v09uIDUvMjkvMTksIDM6MjUgUE0sICJMaW51eC1udm1lIG9uIGJl
aGFsZiBvZiBKYW1lcyBTbWFydCIgPGxpbnV4LW52bWUtYm91bmNlc0BsaXN0cy5pbmZyYWRlYWQu
b3JnIG9uIGJlaGFsZiBvZiBqc21hcnQyMDIxQGdtYWlsLmNvbT4gd3JvdGU6DQoNCiAgICBXaGVu
IGxvb2tpbmcgYXQgY29uc29sZSBtZXNzYWdlcyB0byB0cm91Ymxlc2hvb3QsIHRoZXJlIGFyZSBv
bmUNCiAgICBtYXliZSB0d28gbWVzc2FnZXMgYmVmb3JlIGNyZWF0aW9uIG9mIHRoZSBjb250cm9s
bGVyIGlzIGNvbXBsZXRlLg0KICAgIEhvd2V2ZXIsIGEgbG90IG9mIGlvIHRha2VzIHBsYWNlIHRv
IHJlYWNoIHRoYXQgcG9pbnQuIEl0J3MgdW5jbGVhcg0KICAgIHdoZW4gdGhpbmdzIGhhdmUgc3Rh
cnRlZC4NCiAgICANCiAgICBBZGQgYSBtZXNzYWdlIHdoZW4gdGhlIGNvbnRyb2xsZXIgaXMgYXR0
ZW1wdGluZyB0byBjcmVhdGUgYSBuZXcNCiAgICBhc3NvY2lhdGlvbi4gVGh1cyB3ZSBrbm93IHdo
YXQgY29udHJvbGxlciwgYmV0d2VlbiB3aGF0IGhvc3QgYW5kDQogICAgcmVtb3RlIHBvcnQsIGFu
ZCB3aGF0IE5RTiBpcyBiZWluZyBwdXQgaW50byBwbGFjZSBmb3IgYW55DQogICAgc3Vic2VxdWVu
dCBzdWNjZXNzIG9yIGZhaWx1cmUgbWVzc2FnZXMuDQogICAgDQogICAgU2lnbmVkLW9mZi1ieTog
SmFtZXMgU21hcnQgPGpzbWFydDIwMjFAZ21haWwuY29tPg0KICAgIA0KICAgIC0tDQogICAgdjI6
DQogICAgIE1vdmVkIG1lc3NhZ2UgdG8gY3JlYXRlIGFzc29jaWF0aW9uIHNvIGRpc3BsYXllZCBh
dCBpbml0aWFsDQogICAgICBjcmVhdGlvbiBhcyB3ZWxsIGFzIGF0IGVhY2ggcmVjb25uZWN0DQog
ICAgIENoYW5nZWQgbWVzc2FnZSB0byBhZGRpdGlvbmFsbHkgcHJpbnQgaG9zdCBwb3J0IHd3cG4g
YW5kIHRhcmdldCBwb3J0DQogICAgICB3d3BuLg0KICAgIC0tLQ0KICAgICBkcml2ZXJzL252bWUv
aG9zdC9mYy5jIHwgNiArKysrKysNCiAgICAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KQ0KICAgIA0KICAgIGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jIGIvZHJpdmVy
cy9udm1lL2hvc3QvZmMuYw0KICAgIGluZGV4IGMxN2M4ODdmMjE0OC4uYmQxYmU4YWEyZDY1IDEw
MDY0NA0KICAgIC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMNCiAgICArKysgYi9kcml2ZXJz
L252bWUvaG9zdC9mYy5jDQogICAgQEAgLTI2MDcsNiArMjYwNywxMiBAQCBudm1lX2ZjX2NyZWF0
ZV9hc3NvY2lhdGlvbihzdHJ1Y3QgbnZtZV9mY19jdHJsICpjdHJsKQ0KICAgICAJaWYgKG52bWVf
ZmNfY3Rscl9hY3RpdmVfb25fcnBvcnQoY3RybCkpDQogICAgIAkJcmV0dXJuIC1FTk9UVU5JUTsN
CiAgICAgDQogICAgKwlkZXZfaW5mbyhjdHJsLT5jdHJsLmRldmljZSwNCiAgICArCQkiTlZNRS1G
Q3slZH06IGNyZWF0ZSBhc3NvY2lhdGlvbiA6IGhvc3Qgd3dwbiAweCUwMTZsbHggIg0KICAgICsJ
CSIgcnBvcnQgd3dwbiAweCUwMTZsbHg6IE5RTiBcIiVzXCJcbiIsDQogICAgKwkJY3RybC0+Y251
bSwgY3RybC0+bHBvcnQtPmxvY2FscG9ydC5wb3J0X25hbWUsDQogICAgKwkJY3RybC0+cnBvcnQt
PnJlbW90ZXBvcnQucG9ydF9uYW1lLCBjdHJsLT5jdHJsLm9wdHMtPnN1YnN5c25xbik7DQogICAg
Kw0KICAgICAJLyoNCiAgICAgCSAqIENyZWF0ZSB0aGUgYWRtaW4gcXVldWUNCiAgICAgCSAqLw0K
ICAgIC0tIA0KICAgIDIuMTMuNw0KICAgIA0KICAgIA0KICAgIF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQogICAgTGludXgtbnZtZSBtYWlsaW5nIGxpc3QN
CiAgICBMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcNCiAgICBodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUNCiAgICANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
