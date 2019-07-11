Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5450F65760
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 14:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84qnQ//DI9ZZ6pWcoZy+Gj4gfuUUo02zl56mY1SMX/0=; b=TO6XDjIv7da2jq
	1imRAuh2FTlSw4swpveLf8AbUQf2nWRr9IONbl20Ecw6Y/zrcYHNVpkaeyT3EHRcAsX0YPr3UFHSB
	2YIg5CI7doQaPuwaRfQE+YPpTob03JMmH9URuJU6ma4Kk8Jxpz0ZflSE175A0FIh4kWq7vfO9W/PS
	DfK30BZZQ9oRU77ATMx9EXsQwqdDtWU6JvurIiNaactU/g29EDyUEsqiP1Wt3Mha0HyNXirvK+UYy
	JlCiY8sdKci03nTxLP2gk9xMqQR4hmrlwjTECxhDRw9AzSLriS+RoYNzRY/o21H9qGylzP3bv7CdT
	7yJLnTbRm6aSA1hltb0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYbV-0007c9-M4; Thu, 11 Jul 2019 12:55:17 +0000
Received: from mail-eopbgr20066.outbound.protection.outlook.com ([40.107.2.66]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYb1-0007R7-HM
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 12:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K2VD+xakf/T80QRY4ak/k/nwlbyH4CzrgRiSjITLx1Q=;
 b=LxRmnZ3hgYAFJB+pGADng3tue5paQ+knVYTWa265n/ZvwVqbQvpIywL9zjCghI2vV3wEToyl9XSRAQxWjhVb9LU5B8UYqKjf8s01GUwySLE5vqCCQwH686mqmevxbWGo3+MTErz5V6EWfhqSlnbxDoL4UHAGg+6NMC1MPsSDpJA=
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com (20.176.214.160) by
 AM0PR05MB4113.eurprd05.prod.outlook.com (52.134.125.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.21; Thu, 11 Jul 2019 12:54:42 +0000
Received: from AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279]) by AM0PR05MB4866.eurprd05.prod.outlook.com
 ([fe80::217d:2cd7:c8da:9279%5]) with mapi id 15.20.2052.020; Thu, 11 Jul 2019
 12:54:42 +0000
From: Parav Pandit <parav@mellanox.com>
To: Yi Zhang <yi.zhang@redhat.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: RE: regression: nvme rdma with bnxt_re0 broken
Thread-Topic: regression: nvme rdma with bnxt_re0 broken
Thread-Index: 2UfSPBB7aurhIBgBOMtlZZ/Acg5lQJrLV3lw
Date: Thu, 11 Jul 2019 12:54:42 +0000
Message-ID: <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
References: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
 <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
In-Reply-To: <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=parav@mellanox.com; 
x-originating-ip: [49.207.52.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef24065f-d6a4-4510-fd9c-08d705fef16b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR05MB4113; 
x-ms-traffictypediagnostic: AM0PR05MB4113:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR05MB4113C84B0ED884A33D0C223BD1F30@AM0PR05MB4113.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:241;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(189003)(199004)(13464003)(14454004)(4326008)(186003)(99286004)(25786009)(26005)(53546011)(102836004)(55236004)(6506007)(86362001)(478600001)(476003)(110136005)(76176011)(446003)(3846002)(316002)(966005)(11346002)(14444005)(7696005)(6116002)(68736007)(256004)(5660300002)(6436002)(66946007)(9686003)(7736002)(66476007)(81166006)(8676002)(81156014)(66446008)(64756008)(305945005)(53936002)(8936002)(486006)(107886003)(52536014)(76116006)(55016002)(6306002)(71190400001)(71200400001)(66066001)(2501003)(229853002)(2906002)(33656002)(74316002)(66556008)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4113;
 H:AM0PR05MB4866.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 15taHEOH5UBa3DcRUnNPp4eCIvdMRIOjEHQ6zz/ki68K6JeyK5pTOr3pdyg9mKRhPT97ZjzyN2FM9DCuaQuEVYUV3eT0VkCZnoWio+eOXHhSjogjGZu5EPIOGeX7dkLsstc0SEwkAIKO7FzKxhN4X4cEayFC1KJb+xUdsXfGWeWTWge8HDKw0sBEIhpNpuCpYw6nD6H6FAorXJG28UFMxwi3jdsOSricnnvv3cG8joy20Z0NQB8DK5ew52f6VEcYi5kmSSq9K34K7GRvcAjMgL6az2neYTqkH9xbev3bWs5HPaOsAsHXMC/4v+LhD5dg3aPJGNUnvVV0aNKwuprNKJyutyKIXUS+STmk8nzOH7eBB8UGfoJ+bnw6JZ1ZW+koyq9XWTjYyS4Y2GblssiKGVThQCf2o03WRAPliUiuzP0=
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef24065f-d6a4-4510-fd9c-08d705fef16b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 12:54:42.4923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: parav@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_055447_689528_62BB5944 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Daniel Jurgens <danielj@mellanox.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgWWkgWmhhbmcsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogWWkg
WmhhbmcgPHlpLnpoYW5nQHJlZGhhdC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDExLCAy
MDE5IDM6MTcgUE0NCj4gVG86IGxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBDYzog
RGFuaWVsIEp1cmdlbnMgPGRhbmllbGpAbWVsbGFub3guY29tPjsgUGFyYXYgUGFuZGl0DQo+IDxw
YXJhdkBtZWxsYW5veC5jb20+DQo+IFN1YmplY3Q6IHJlZ3Jlc3Npb246IG52bWUgcmRtYSB3aXRo
IGJueHRfcmUwIGJyb2tlbg0KPiANCj4gSGVsbG8NCj4gDQo+ICdudm1lIGNvbm5lY3QnIGZhaWxl
ZCB3aGVuIHVzZSBibnh0X3JlMCBvbiBsYXRlc3QgdXBzdHJlYW0gYnVpbGRbMV0sIGJ5DQo+IGJp
c2VjdGluZyBJIGZvdW5kIGl0IHdhcyBpbnRyb2R1Y2VkIGZyb20gdjUuMi4wLXJjMSB3aXRoIFsy
XSwgaXQgd29ya3MgYWZ0ZXIgSQ0KPiByZXZlcnQgaXQuDQo+IExldCBtZSBrbm93IGlmIHlvdSBu
ZWVkIG1vcmUgaW5mbywgdGhhbmtzLg0KPiANCj4gWzFdDQo+IFtyb290QHJkbWEtcGVyZi0wNyB+
XSQgbnZtZSBjb25uZWN0IC10IHJkbWEgLWEgMTcyLjMxLjQwLjEyNSAtcyA0NDIwIC1uDQo+IHRl
c3RucW4gRmFpbGVkIHRvIHdyaXRlIHRvIC9kZXYvbnZtZS1mYWJyaWNzOiBCYWQgYWRkcmVzcw0K
PiANCj4gW3Jvb3RAcmRtYS1wZXJmLTA3IH5dJCBkbWVzZw0KPiBbICA0NzYuMzIwNzQyXSBibnh0
X2VuIDAwMDA6MTk6MDAuMDogUVBMSUI6IGNtZHFbMHg0YjldPTB4MTUgc3RhdHVzIDB4NSBbDQo+
IDQ3Ni4zMjcxMDNdIGluZmluaWJhbmQgYm54dF9yZTA6IEZhaWxlZCB0byBhbGxvY2F0ZSBIVyBB
SCBbICA0NzYuMzMyNTI1XQ0KPiBudm1lIG52bWUyOiByZG1hX2Nvbm5lY3QgZmFpbGVkICgtMTQp
Lg0KPiBbICA0NzYuMzQzNTUyXSBudm1lIG52bWUyOiByZG1hIGNvbm5lY3Rpb24gZXN0YWJsaXNo
bWVudCBmYWlsZWQgKC0xNCkNCj4gDQo+IFtyb290QHJkbWEtcGVyZi0wNyB+XSQgbHNwY2kgIHwg
Z3JlcCAtaSBCcm9hZGNvbQ0KPiAwMTowMC4wIEV0aGVybmV0IGNvbnRyb2xsZXI6IEJyb2FkY29t
IEluYy4gYW5kIHN1YnNpZGlhcmllcyBOZXRYdHJlbWUNCj4gQkNNNTcyMCAyLXBvcnQgR2lnYWJp
dCBFdGhlcm5ldCBQQ0llDQo+IDAxOjAwLjEgRXRoZXJuZXQgY29udHJvbGxlcjogQnJvYWRjb20g
SW5jLiBhbmQgc3Vic2lkaWFyaWVzIE5ldFh0cmVtZQ0KPiBCQ001NzIwIDItcG9ydCBHaWdhYml0
IEV0aGVybmV0IFBDSWUNCj4gMTg6MDAuMCBSQUlEIGJ1cyBjb250cm9sbGVyOiBCcm9hZGNvbSAv
IExTSSBNZWdhUkFJRCBTQVMtMyAzMDA4IFtGdXJ5XSAocmV2DQo+IDAyKQ0KPiAxOTowMC4wIEV0
aGVybmV0IGNvbnRyb2xsZXI6IEJyb2FkY29tIEluYy4gYW5kIHN1YnNpZGlhcmllcyBCQ001NzQx
Mg0KPiBOZXRYdHJlbWUtRSAxMEdiIFJETUEgRXRoZXJuZXQgQ29udHJvbGxlciAocmV2IDAxKQ0K
PiAxOTowMC4xIEV0aGVybmV0IGNvbnRyb2xsZXI6IEJyb2FkY29tIEluYy4gYW5kIHN1YnNpZGlh
cmllcyBCQ001NzQxMg0KPiBOZXRYdHJlbWUtRSAxMEdiIFJETUEgRXRoZXJuZXQgQ29udHJvbGxl
ciAocmV2IDAxKQ0KPiANCj4gDQo+IFsyXQ0KPiBjb21taXQgODIzYjIzZGE3MTEzMmI4MGQ5ZjQx
YWI2NjdjNjhiMTEyNDU1ZjNiNg0KPiBBdXRob3I6IFBhcmF2IFBhbmRpdCA8cGFyYXZAbWVsbGFu
b3guY29tPg0KPiBEYXRlOiAgIFdlZCBBcHIgMTAgMTE6MjM6MDMgMjAxOSArMDMwMA0KPiANCj4g
ICAgIElCL2NvcmU6IEFsbG93IHZsYW4gbGluayBsb2NhbCBhZGRyZXNzIGJhc2VkIFJvQ0UgR0lE
cw0KPiANCj4gICAgIElQdjYgbGluayBsb2NhbCBhZGRyZXNzIGZvciBhIFZMQU4gbmV0ZGV2aWNl
IGhhcyBub3RoaW5nIHRvIGRvIHdpdGggaXRzDQo+ICAgICByZXNlbWJsYW5jZSB3aXRoIHRoZSBk
ZWZhdWx0IEdJRCwgYmVjYXVzZSBWTEFOIGxpbmsgbG9jYWwgR0lEIGlzIGluDQo+ICAgICBkaWZm
ZXJlbnQgbGF5ZXIgMiBkb21haW4uDQo+IA0KPiAgICAgTm93IHRoYXQgUm9DRSBNQUQgcGFja2V0
IHByb2Nlc3NpbmcgYW5kIHJvdXRlIHJlc29sdXRpb24gY29uc2lkZXIgdGhlDQo+ICAgICByaWdo
dCBHSUQgaW5kZXgsIHRoZXJlIGlzIG5vIG5lZWQgZm9yIGFuIHVubmVjZXNzYXJ5IGNoZWNrIHdo
aWNoIHByZXZlbnRzDQo+ICAgICB0aGUgYWRkaXRpb24gb2YgdmxhbiBiYXNlZCBJUHY2IGxpbmsg
bG9jYWwgR0lEcy4NCj4gDQo+ICAgICBTaWduZWQtb2ZmLWJ5OiBQYXJhdiBQYW5kaXQgPHBhcmF2
QG1lbGxhbm94LmNvbT4NCj4gICAgIFJldmlld2VkLWJ5OiBEYW5pZWwgSnVyZ2VucyA8ZGFuaWVs
akBtZWxsYW5veC5jb20+DQo+ICAgICBTaWduZWQtb2ZmLWJ5OiBMZW9uIFJvbWFub3Zza3kgPGxl
b25yb0BtZWxsYW5veC5jb20+DQo+ICAgICBTaWduZWQtb2ZmLWJ5OiBKYXNvbiBHdW50aG9ycGUg
PGpnZ0BtZWxsYW5veC5jb20+DQo+IA0KPiANCj4gDQo+IEJlc3QgUmVnYXJkcywNCj4gICBZaSBa
aGFuZw0KPiANCg0KSSBuZWVkIHNvbWUgbW9yZSBpbmZvcm1hdGlvbiBmcm9tIHlvdSB0byBkZWJ1
ZyB0aGlzIGlzc3VlIGFzIEkgZG9u4oCZdCBoYXZlIHRoZSBody4NClRoZSBoaWdobGlnaHRlZCBw
YXRjaCBhZGRlZCBzdXBwb3J0IGZvciBJUHY2IGxpbmsgbG9jYWwgYWRkcmVzcyBmb3Igdmxhbi4g
SSBhbSB1bnN1cmUgaG93IHRoaXMgY2FuIGFmZmVjdCBJUHY0IEFIIGNyZWF0aW9uIGZvciB3aGlj
aCB0aGVyZSBpcyBmYWlsdXJlLg0KDQoxLiBCZWZvcmUgeW91IGFzc2lnbiB0aGUgSVAgYWRkcmVz
cyB0byB0aGUgbmV0ZGV2aWNlLA0KUGxlYXNlIGRvLCANCmVjaG8gLW4gIm1vZHVsZSBpYl9jb3Jl
ICtwIiA+IC9zeXMva2VybmVsL2RlYnVnL2R5bmFtaWNfZGVidWcvY29udHJvbA0KDQpQbGVhc2Ug
c2hhcmUgYmVsb3cgb3V0cHV0IGJlZm9yZSBkb2luZyBudm1lIGNvbm5lY3QuDQoyLiBPdXRwdXQg
b2Ygc2NyaXB0IFsxXQ0KJCBzaG93X2dpZHMgc2NyaXB0DQpJZiBnZXR0aW5nIHRoaXMgc2NyaXB0
IGlzIHByb2JsZW1hdGljLCBzaGFyZSB0aGUgb3V0cHV0IG9mLA0KDQokIGNhdCAvc3lzL2NsYXNz
L2luZmluaWJhbmQvYm54dF9yZTAvcG9ydHMvMS9naWRzLyoNCiQgY2F0IC9zeXMvY2xhc3MvaW5m
aW5pYmFuZC9ibnh0X3JlMC9wb3J0cy8xL2dpZF9hdHRycy9uZGV2cy8qDQokIGlwIGxpbmsgc2hv
dw0KJGlwIGFkZHIgc2hvdw0KJCBkbWVzZw0KDQpbMV0gaHR0cHM6Ly9jb21tdW5pdHkubWVsbGFu
b3guY29tL3MvYXJ0aWNsZS91bmRlcnN0YW5kaW5nLXNob3ctZ2lkcy1zY3JpcHQjaml2ZV9jb250
ZW50X2lkX1RoZV9TY3JpcHQNCg0KSSBzdXNwZWN0IHRoYXQgZHJpdmVyJ3MgYXNzdW1wdGlvbiBh
Ym91dCBHSUQgaW5kaWNlcyBtaWdodCBoYXZlIGdvbmUgd3JvbmcgaGVyZSBpbiBkcml2ZXJzL2lu
ZmluaWJhbmQvaHcvYm54dF9yZS9pYl92ZXJicy5jLg0KTGV0cyBzZWUgYWJvdXQgcmVzdWx0cyB0
byBjb25maXJtIHRoYXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
