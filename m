Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CC571CCF
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6Ed7XSvKwBr1XD0TkR5KO6nt4CDhwE3e4xJQmgByv4=; b=IrzHsaP5RcZ7TQ
	GHBCfi6j2n84haEJvv6LmQwTPAHUF3iv+9Noa2J7bdS0K/GonRiqOtB348CE9VbVKOa/BwKn6zFF/
	Jp4wh/5THl3LkocG0yONdSTTHdy/Vc2D3PvkGV8eqstdIlb0177ToeVMlXFDfGEjBjvA3PyQ6wO1J
	i7i91iuM43CxUlYzhggB7KDXueAM3Y9pLk76k5emCklzR70Dv3n5Okj4iuqg1c5F4on03unj7uDdK
	ExxkKBGATmHHYNgkVzlEXDgN2Nm2t6+eYnnhRDvA7akNvEQT/HpUz6aWd/TR3tRDmaizmsf84TF0L
	lEIJQzLLWJN1EluBbqYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxZg-0003yB-5q; Tue, 23 Jul 2019 16:23:36 +0000
Received: from mail-eopbgr770053.outbound.protection.outlook.com
 ([40.107.77.53] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxZW-0003xf-LD
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 16:23:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROG4Mn9nsW26B9AoMxSmnAx05Gd2ZEb4EFTkDgV0JYM0wv6tGrVEYvXspwMl9Zv6flDK1ExLwtoUwXpRHihRhH75qOVCk08qTr4w37uRznOXAehWsuF76Kcl7p6Zlh+8EClw6gPGtbNa0oMMgw5xOCD6LWkTFQ2VI/J680AdtddZWlql+7U84ycb1aq8a/Uc2tVUcPZACy29KpW1TEbmWh+aqWC+ZIFKEWwnXt7vj6a4WJVLZzkh3FvvwObTvLRn7I02qhmnBh5A/fpYPlmR9HxLwMBCKDqBPeCPZy8IetsQHNknZOuK9D//Pq7n9dVckpm5fF+287UJiSmhMKdrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1H+PUymqNmgS/222ucsZnxhkrs0RPcKhEUVFrNKW/X0=;
 b=eTxwudOeIMPOV3VeEEjw1NzBFzv8htNxSpUUxaOEW02rFbF+9bzo4xwipTvIW8IVxjoYIB6JngOgo/8jWOvo37db3h3P1qfyA3nzcVwCQfIJ+YSmoK9TXh4BFbd61y/Et7sQR2c5CaLip3mnRT4fMdN9e0LNXlqmzHwn5jp5O8UsL4zdq65hYVZvkqQq7VkW7j3XivexIBVmTkHzWR/bLoHeILXq+aAQMxsS/ILW4c79LCy3n7jOj1CejWj11oWi8P063hzR4OgwftU9lclRjss32ExdUfFKKVWKfwBkUwjF40SHdcs6sDRuJpXep0YFohoe4V73aAESqsizImfk+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1H+PUymqNmgS/222ucsZnxhkrs0RPcKhEUVFrNKW/X0=;
 b=ELjMKWsWkIe3ZeVNIu5UwnsBfDJPbS8cBcjuWkA0Up4UtM2J9UU5qixR/Ae5nLmdSp5ijWGL/F1XGF8OE/80c3etU95u5xGTNhiA2bVCxxOsv30+YjI4hxt6ujdp9eCoW9TqQ4zA3K4fB+pyvK4trkDu2IwT3yTIJwvBKe0O+hE=
Received: from DM5PR12MB1546.namprd12.prod.outlook.com (10.172.36.23) by
 DM5PR12MB2358.namprd12.prod.outlook.com (52.132.141.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Tue, 23 Jul 2019 16:23:24 +0000
Received: from DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7]) by DM5PR12MB1546.namprd12.prod.outlook.com
 ([fe80::cda7:cfc1:ce62:bcb7%10]) with mapi id 15.20.2094.013; Tue, 23 Jul
 2019 16:23:24 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-rdma@vger.kernel.org"
 <linux-rdma@vger.kernel.org>
Subject: Re: [PATCH 03/14] PCI/P2PDMA: Apply host bridge white list for ACS
Thread-Topic: [PATCH 03/14] PCI/P2PDMA: Apply host bridge white list for ACS
Thread-Index: AQHVQOJ/hJntFdbC7U+X8XDxXeMMNKbYZBcA
Date: Tue, 23 Jul 2019 16:23:23 +0000
Message-ID: <7ced9658-33f9-4496-4335-a6852f08ed12@amd.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-4-logang@deltatee.com>
In-Reply-To: <20190722230859.5436-4-logang@deltatee.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR2P264CA0022.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::34)
 To DM5PR12MB1546.namprd12.prod.outlook.com
 (2603:10b6:4:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a29deadf-5a1c-432b-2120-08d70f8a1574
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR12MB2358; 
x-ms-traffictypediagnostic: DM5PR12MB2358:
x-microsoft-antispam-prvs: <DM5PR12MB23583D8824C5743D0BEC7C8883C70@DM5PR12MB2358.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(136003)(39860400002)(396003)(189003)(199004)(65806001)(65826007)(65956001)(31686004)(71200400001)(8936002)(36756003)(316002)(58126008)(110136005)(6486002)(6512007)(54906003)(71190400001)(6436002)(8676002)(99286004)(7736002)(5660300002)(64756008)(64126003)(66446008)(68736007)(4326008)(66946007)(66556008)(305945005)(66476007)(46003)(256004)(6506007)(52116002)(11346002)(446003)(76176011)(86362001)(476003)(53936002)(2501003)(6246003)(186003)(14454004)(2906002)(2201001)(386003)(478600001)(102836004)(2616005)(25786009)(81156014)(229853002)(486006)(7416002)(81166006)(6116002)(31696002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR12MB2358;
 H:DM5PR12MB1546.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eTlI2kZPMY780FBUghE11PfWYHVCVxtMd1tdXYXFA9ibpPYAquas7Pg+XJwpkK6msFX2KRIoWVtMI2Zba10Zd+/WZhfsaVjD32iJW3IhJo1f75MF049NIu/Y6SfYL4JrYX0Oi1dh4hgqsIhRjjs5yC7yXzy4NuW6pzu6yiPUcUmXl/tmsNjbPnPADLU6mgwMVC6NiDM9dPq5PFRz5UU8nEpVreTVLrA+2lB0xl5iB3fcsfSI/duy0jcKWdSgAP1EJg/0im/JKeSE39JLneXIcllLhJ50tdi+B8uO8F+ZiQJYzIm6eQoDjsAZZNEQOotvTyC0mSPISsBk70LUz0Rtg4TPb/hNEjPxb058JxpxK8iX2YLNiKarwoupS/pUmwzvOhh9kYXus6kJ8Ncl8J7FzowPBhFkFt98SyTOTIuus8Y=
Content-ID: <F27F267EF2060F4AB0608F6D12974C74@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a29deadf-5a1c-432b-2120-08d70f8a1574
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 16:23:23.8992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2358
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_092326_699585_396A4FF4 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Eric Pilmore <epilmore@gigaio.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Bates <sbates@raithlin.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

QW0gMjMuMDcuMTkgdW0gMDE6MDggc2NocmllYiBMb2dhbiBHdW50aG9ycGU6DQo+IFdoZW4gYSBQ
MlBETUEgdHJhbnNmZXIgaXMgcmVqZWN0ZWQgZHVlIHRvIEFDUyBiZWluZyBzZXQsIHdlDQo+IGNh
biBhbHNvIGNoZWNrIHRoZSB3aGl0ZSBsaXN0IGFuZCBhbGxvdyB0aGUgdHJhbnNhY3Rpb25zLg0K
Pg0KPiBEbyB0aGlzIGJ5IHB1c2hpbmcgdGhlIHdoaXRlbGlzdCBjaGVjayBpbnRvIHRoZQ0KPiB1
cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2UoKSBmdW5jdGlvbi4NCj4NCj4gU2lnbmVkLW9mZi1ieTog
TG9nYW4gR3VudGhvcnBlIDxsb2dhbmdAZGVsdGF0ZWUuY29tPg0KDQpUaGlzIG9uZSBhbmQgcGF0
Y2ggIzIgYXJlIFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIA0KPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4uDQoNCkJ1dCBJIGFjdHVhbGx5IHRoaW5rIHRoZSB0d28gcGF0Y2hlcyBjb3Vs
ZCBiZSBtZXJnZWQuDQoNCkNocmlzdGlhbi4NCg0KPiAtLS0NCj4gICBkcml2ZXJzL3BjaS9wMnBk
bWEuYyB8IDI1ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BjaS9wMnBkbWEuYyBiL2RyaXZlcnMvcGNpL3AycGRtYS5jDQo+IGluZGV4IDI4OWQwM2Ez
MWU3ZC4uZDUwMzRlMjhkMWUxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL3BjaS9wMnBkbWEuYw0K
PiArKysgYi9kcml2ZXJzL3BjaS9wMnBkbWEuYw0KPiBAQCAtMzI0LDE1ICszMjQsNyBAQCBzdGF0
aWMgaW50IF9fdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpwcm92aWRl
ciwNCj4gICAJCWRpc3RfYSsrOw0KPiAgIAl9DQo+ICAgDQo+IC0JLyoNCj4gLQkgKiBBbGxvdyB0
aGUgY29ubmVjdGlvbiBpZiBib3RoIGRldmljZXMgYXJlIG9uIGEgd2hpdGVsaXN0ZWQgcm9vdA0K
PiAtCSAqIGNvbXBsZXgsIGJ1dCBhZGQgYW4gYXJiaXRyYXJ5IGxhcmdlIHZhbHVlIHRvIHRoZSBk
aXN0YW5jZS4NCj4gLQkgKi8NCj4gLQlpZiAocm9vdF9jb21wbGV4X3doaXRlbGlzdChwcm92aWRl
cikgJiYNCj4gLQkgICAgcm9vdF9jb21wbGV4X3doaXRlbGlzdChjbGllbnQpKQ0KPiAtCQlyZXR1
cm4gKGRpc3RfYSArIGRpc3RfYikgfCBQMlBETUFfVEhSVV9IT1NUX0JSSURHRTsNCj4gLQ0KPiAt
CXJldHVybiAoZGlzdF9hICsgZGlzdF9iKSB8IFAyUERNQV9OT1RfU1VQUE9SVEVEOw0KPiArCXJl
dHVybiAoZGlzdF9hICsgZGlzdF9iKSB8IFAyUERNQV9USFJVX0hPU1RfQlJJREdFOw0KPiAgIA0K
PiAgIGNoZWNrX2JfcGF0aF9hY3M6DQo+ICAgCWJiID0gYjsNCj4gQEAgLTM1MCw3ICszNDIsOCBA
QCBzdGF0aWMgaW50IF9fdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHN0cnVjdCBwY2lfZGV2ICpw
cm92aWRlciwNCj4gICAJfQ0KPiAgIA0KPiAgIAlpZiAoYWNzX2NudCkNCj4gLQkJcmV0dXJuIFAy
UERNQV9OT1RfU1VQUE9SVEVEIHwgUDJQRE1BX0FDU19GT1JDRVNfVVBTVFJFQU07DQo+ICsJCXJl
dHVybiAoZGlzdF9hICsgZGlzdF9iKSB8IFAyUERNQV9BQ1NfRk9SQ0VTX1VQU1RSRUFNIHwNCj4g
KwkJCVAyUERNQV9USFJVX0hPU1RfQlJJREdFOw0KPiAgIA0KPiAgIAlyZXR1cm4gZGlzdF9hICsg
ZGlzdF9iOw0KPiAgIH0NCj4gQEAgLTM5Nyw3ICszOTAsMTcgQEAgc3RhdGljIGludCB1cHN0cmVh
bV9icmlkZ2VfZGlzdGFuY2Uoc3RydWN0IHBjaV9kZXYgKnByb3ZpZGVyLA0KPiAgIAkJCQkgICAg
c3RydWN0IHBjaV9kZXYgKmNsaWVudCwNCj4gICAJCQkJICAgIHN0cnVjdCBzZXFfYnVmICphY3Nf
bGlzdCkNCj4gICB7DQo+IC0JcmV0dXJuIF9fdXBzdHJlYW1fYnJpZGdlX2Rpc3RhbmNlKHByb3Zp
ZGVyLCBjbGllbnQsIGFjc19saXN0KTsNCj4gKwlpbnQgZGlzdDsNCj4gKw0KPiArCWRpc3QgPSBf
X3Vwc3RyZWFtX2JyaWRnZV9kaXN0YW5jZShwcm92aWRlciwgY2xpZW50LCBhY3NfbGlzdCk7DQo+
ICsNCj4gKwlpZiAoIShkaXN0ICYgUDJQRE1BX1RIUlVfSE9TVF9CUklER0UpKQ0KPiArCQlyZXR1
cm4gZGlzdDsNCj4gKw0KPiArCWlmIChyb290X2NvbXBsZXhfd2hpdGVsaXN0KHByb3ZpZGVyKSAm
JiByb290X2NvbXBsZXhfd2hpdGVsaXN0KGNsaWVudCkpDQo+ICsJCXJldHVybiBkaXN0Ow0KPiAr
DQo+ICsJcmV0dXJuIGRpc3QgfCBQMlBETUFfTk9UX1NVUFBPUlRFRDsNCj4gICB9DQo+ICAgDQo+
ICAgc3RhdGljIGludCB1cHN0cmVhbV9icmlkZ2VfZGlzdGFuY2Vfd2FybihzdHJ1Y3QgcGNpX2Rl
diAqcHJvdmlkZXIsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52
bWUK
