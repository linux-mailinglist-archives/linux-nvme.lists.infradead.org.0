Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5931FB9D6
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 18:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qDpNppZHQe3V3/Fgnpkhv4VO1MLBVlb6PBtPFHNRj2E=; b=Wy4RsDQxjRDmpJ
	x/NBCxOh/5W+vX5weh47vs11/ctDZq8AMAVNA4SThXF1msXGbRQtC+BhGTi1tN9veWGQqQfmrwqle
	x+j1f/86QRUJnFkIIYIvf5JkZd8TIMiMNGSqPiFR+pctDIlmMURmyNm0QHFnXMOE0zDWHcY89glQr
	sY/lj37ivs6onY6IyQHm0VMmEokXQWYqOXPWwDeFZtSpn5ZOY51Mmuq/9EDBTaB8oJ4j2SCt9vbU6
	eIx/XI/5AY5walZzl1C1Za4ybKKpbnKB9HxriFrqKbkPa04XmYhO1F27hCCiJJsBmUR+cFWJ06onV
	OtlErCGFOKNCB9GUKsdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE7F-0003Pv-81; Tue, 16 Jun 2020 16:07:13 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlE79-0003Ov-Fr
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 16:07:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592323627; x=1623859627;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=idB5vZEuC9NbSNFcfkqrWVZx7tHz8vRnBUliSuPKP7U=;
 b=bgWaq6IQadchE4UKkyUqbhygmRDZmOOhuc4MIX91hlyepBKgdhyZjn88
 lTVwwkI9L66pX7yiAkFxpA2Hv4H5Trt1NdmFSdqXwATJNMtWpWLtPNGsO
 kYWPHAnJvb3O8Q9kHZLdJS+KKgnPt2vUle2PXOJDycCZ2kcKgQUkHBSz8
 hYxIFst+2tiQYfpMCibQYS0KaLiy3+0VWC+2O4gk5XFDYxl7+ZWqRm4yH
 Bb4PbArUSHMIhzElZrket4YbaioTPMzMnFP+QL1KSwjMYOwdXGq4czbHG
 8hD9LTxgpKJYodEaC0PjKo+5f8tUhouXTtQD9Dts2AfLVdSi0HTfWWyFp w==;
IronPort-SDR: UzabuSMv6pgTMoTzt8b/aXnJkJTc9aBCrA2BkdMMKoGNVJUHYe8yajiu1EWBVECOXyAjmLvrNp
 NkO93AUir3eCbNIGS6DJ76Z6vx2CZP93Ywdgw80N2QITUHvuHthRyEBWLmrYW88J9ZtMxLr4bG
 PWaJxequEwuW2bIdJPcgwO+cRTvfnNC7eHwh/qAAfASi3EnrXfpT6lUP/xQTreN1ojIzOPT5kL
 XXnwjJshbxBv6EeRWCnaZmVC5Sn/vtJxvTrVjLK//HO4m5ldXf5GHpdsO3u35e4wzi8/9Yt6Mp
 Ldg=
X-IronPort-AV: E=Sophos;i="5.73,518,1583164800"; d="scan'208";a="140140146"
Received: from mail-bn8nam12lp2173.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.173])
 by ob1.hgst.iphmx.com with ESMTP; 17 Jun 2020 00:07:02 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S8VKha+alO38zCWPzvXZZHREgRJKEQEIV9bCh0WqtezhpA3SRbFT2HDEI6ty4Fs0nrrV/ztWy093dJAwuBW1IiLUlDsqBtoIZJLQW98TBle+BYeAygyyTwnSglp0OeVzVuD0NNFQ0Bv62Lk5u3NVme50YK3asrvVrZaHGtyvw5mZESaREACyxhHFyddlK0eAJ571lpe22crutf3eRISPoT1gZc/4nV7lF+zdQ3eJwABQxZChhqBt9V66+PR4kxxpoimorF1KE9j4j77qDuFhXxkULJJOvwHA+D1XS6ada7Wpgh16vQMZbyZnGzuRM5NRfjlyjv4y0ggOVFStoNgHrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idB5vZEuC9NbSNFcfkqrWVZx7tHz8vRnBUliSuPKP7U=;
 b=gEdvdAvqVW1iDOaUYjU9lve1hD17fu5TaVXtnpu5fX1/DeDV/tDQBjhLky/InlJ5QFVhYUp1yY0yk/6jKjclFwXEZVE9X9HJCvKZlNUuXJTVbNCivK2uIABXTKozWd9uUdhOLf5AFX67hCzz1v7A0OuAOq88rkCvSjLCO4vRKpYH+5dFlhcZYR02/eZynP88NzMbnQOkLNL1fYYWId7AK3zkcP/aaUCdbEcEYsEZ7yxPdIMWGFJ0ri8K5bBf00/kLPQQfzFtItWwuXEO74LljDax0Bae2HLgAZI3gl3KvVpXoON5cPCO13yOU0wcz8R5hXovIwHKwmTPb3ptYv3trQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idB5vZEuC9NbSNFcfkqrWVZx7tHz8vRnBUliSuPKP7U=;
 b=t7dQw+zj4/2AmJZt1DsbChaFTz/I1c/GgMojB74/mlmWuOVG3G9/RISiLaKHpkbv+hdyyC91ez6hOkvnWiw5Lnyw4VGcHXgA9MMft8NVBbQrABQu4AxWYkkMKx9E47r95bvoYUPhlAeZDbYwEC2QtHJip98dxAzYsqybhM5KVQ0=
Received: from MN2PR04MB6223.namprd04.prod.outlook.com (2603:10b6:208:db::14)
 by MN2PR04MB5917.namprd04.prod.outlook.com (2603:10b6:208:3c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Tue, 16 Jun
 2020 16:07:02 +0000
Received: from MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e]) by MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e%4]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 16:07:01 +0000
From: Matias Bjorling <Matias.Bjorling@wdc.com>
To: =?utf-8?B?SmF2aWVyIEdvbnrDoWxleg==?= <javier@javigon.com>,
 =?utf-8?B?TWF0aWFzIEJqw7hybGluZw==?= <mb@lightnvm.io>
Subject: RE: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Topic: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Index: AQHWQ22nWIvFisdy3k6SEN4VUPnblajbV2WAgAAE9oCAAAwfAIAAAFUg
Date: Tue, 16 Jun 2020 16:07:01 +0000
Message-ID: <MN2PR04MB6223BC554A2C881DD60D0E5EF19D0@MN2PR04MB6223.namprd04.prod.outlook.com>
References: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616141620.omqf64up523of35t@MacBook-Pro.localdomain>
 <CY4PR04MB37512BCDD74996057697F5CAE79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
 <506571d0-52f4-de88-9438-878618ff738d@lightnvm.io>
 <20200616160326.jxs4e37bayxpyyae@MacBook-Pro.localdomain>
In-Reply-To: <20200616160326.jxs4e37bayxpyyae@MacBook-Pro.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: javigon.com; dkim=none (message not signed)
 header.d=none;javigon.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [185.50.194.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 42c4692f-69ee-46ae-2f3a-08d8120f4e46
x-ms-traffictypediagnostic: MN2PR04MB5917:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5917F4C629034C030E004781F19D0@MN2PR04MB5917.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +D0VoliA4Jw5VLMpEynYK4IxwpnftgXVUqsCrwlSyfLLeGdtqNaGY0qNh1xFFL5ejWqM3111liCkzLyOaw8O948b0NK8dvWx018lQdRWKFkAsTg2zjdyWoBEurH+8XcoROmZJpqISkOOyEY+XjwPWyyYv67lqKeUSsZLA4QHx+N2l/uebCyZ2ezCGPSESgPAudzTCqb9yrZgPhzKepLZpreSQNQgmMp6MuaAeX9HPDPxVo7inqtCMGadV7PpWxhUbACqYEGZdobkf1pYhKZ/+F8jcTLVGgiplBgzE3qPiOgwwgaJa+VQCCkbhyw88Dh1EIRi/92NWbgkBpjYk0RHxJcEO1MZsK55nYNs8/vEJ2lE7CGdRlnILc4npGAq/+/U8NUqOOcvsXDxYcjFGWueAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6223.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39850400004)(86362001)(186003)(478600001)(53546011)(6506007)(5660300002)(2906002)(52536014)(4326008)(966005)(26005)(55016002)(7696005)(71200400001)(54906003)(9686003)(8676002)(316002)(66946007)(33656002)(66476007)(66556008)(64756008)(66446008)(66574015)(76116006)(8936002)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0B2CHAKpwlPUJdcsyiNTbZFU+OpMpeisLhplRPb0hfX47J66kRG/K7pvR7oGSKb7l1Fh8wvaOfsJkd27+FJZFCDWuEfFjABCfpbtnGfxJSqE9cehqJjaBPffxDNTpF3YcXd0dW7pBfCmpf6A+kurMq5wz1APMgp6GQjtvklxKpu5/krECDEHDpXjb8mooTTeySDlujAwOtZUEIlGvpOVbYwjOZCGCQR1UdLE7XoYD6BdH8dSE9EWME5CgdCoZViDRcT0XpcYSkhtGYNtCRcocCUkvrtPmijVEytmYrSU6NJFp07ENr4RHjrvc8n1Jt8KlC/grvJHJs9I9kvtY0CvyWM7QwicHbtYzumjHYBPev/KvBb3w3G9ru4PezvPYJraV2qZG4LgV16/e24LygjLtR4BIAsw7tUzFlHa2rz7ksQfQ0Vkgq9w8G4YDuxsGeEwYxL/31Sb20CEoJ2Z3iftwfLJmP0a8nWqbT8tmFkTb3Fyt9Km16fMxqgbkjj2TrxT
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42c4692f-69ee-46ae-2f3a-08d8120f4e46
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 16:07:01.7688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uDq2VFNDVbde3zy5JMy4ya/MfeIcpHPwWlJrTVQSzhHuF6xAndeBqybkLRnFTvKjfh95y2sg1/+rkapNPOW/HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_090707_629549_69277BB0 
X-CRM114-Status: GOOD (  25.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, Niklas Cassel <Niklas.Cassel@wdc.com>,
 Damien Le Moal <Damien.LeMoal@wdc.com>, Ajay Joshi <Ajay.Joshi@wdc.com>,
 Sagi Grimberg <sagi@grimberg.me>, Keith Busch <Keith.Busch@wdc.com>,
 Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmF2aWVyIEdvbnrDoWxl
eiA8amF2aWVyQGphdmlnb24uY29tPg0KPiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjAgMTgu
MDMNCj4gVG86IE1hdGlhcyBCasO4cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPg0KPiBDYzogRGFtaWVu
IExlIE1vYWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT47IEplbnMgQXhib2UNCj4gPGF4Ym9lQGtl
cm5lbC5kaz47IE5pa2xhcyBDYXNzZWwgPE5pa2xhcy5DYXNzZWxAd2RjLmNvbT47IEFqYXkgSm9z
aGkNCj4gPEFqYXkuSm9zaGlAd2RjLmNvbT47IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcu
bWU+OyBLZWl0aCBCdXNjaA0KPiA8S2VpdGguQnVzY2hAd2RjLmNvbT47IERtaXRyeSBGb21pY2hl
diA8RG1pdHJ5LkZvbWljaGV2QHdkYy5jb20+Ow0KPiBBcmF2aW5kIFJhbWVzaCA8QXJhdmluZC5S
YW1lc2hAd2RjLmNvbT47IGxpbnV4LQ0KPiBudm1lQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4
LWJsb2NrQHZnZXIua2VybmVsLm9yZzsgSGFucyBIb2xtYmVyZw0KPiA8SGFucy5Ib2xtYmVyZ0B3
ZGMuY29tPjsgQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+OyBNYXRpYXMgQmpvcmxpbmcN
Cj4gPE1hdGlhcy5Cam9ybGluZ0B3ZGMuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDUvNV0g
bnZtZTogc3VwcG9ydCBmb3Igem9uZWQgbmFtZXNwYWNlcw0KPiANCj4gT24gMTYuMDYuMjAyMCAx
NzoyMCwgTWF0aWFzIEJqw7hybGluZyB3cm90ZToNCj4gPk9uIDE2LzA2LzIwMjAgMTcuMDIsIEph
dmllciBHb256w6FsZXogd3JvdGU6DQo+ID4+T24gMTYuMDYuMjAyMCAxNDo0MiwgRGFtaWVuIExl
IE1vYWwgd3JvdGU6DQo+ID4+Pk9uIDIwMjAvMDYvMTYgMjM6MTYsIEphdmllciBHb256w6FsZXog
d3JvdGU6DQo+ID4+Pj5PbiAxNi4wNi4yMDIwIDEyOjM1LCBEYW1pZW4gTGUgTW9hbCB3cm90ZToN
Cj4gPj4+Pj5PbiAyMDIwLzA2LzE2IDIxOjI0LCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOg0KPiA+
Pj4+Pj5PbiAxNi4wNi4yMDIwIDE0OjA2LCBNYXRpYXMgQmrDuHJsaW5nIHdyb3RlOg0KPiA+Pj4+
Pj4+T24gMTYvMDYvMjAyMCAxNC4wMCwgSmF2aWVyIEdvbnrDoWxleiB3cm90ZToNCj4gPj4+Pj4+
Pj5PbiAxNi4wNi4yMDIwIDEzOjE4LCBNYXRpYXMgQmrDuHJsaW5nIHdyb3RlOg0KPiA+Pj4+Pj4+
Pj5PbiAxNi8wNi8yMDIwIDEyLjQxLCBKYXZpZXIgR29uesOhbGV6IHdyb3RlOg0KPiA+Pj4+Pj4+
Pj4+T24gMTYuMDYuMjAyMCAwODozNCwgS2VpdGggQnVzY2ggd3JvdGU6DQo+ID4+Pj4+Pj4+Pj4+
QWRkIHN1cHBvcnQgZm9yIE5WTSBFeHByZXNzIFpvbmVkIE5hbWVzcGFjZXMgKFpOUykNCj4gQ29t
bWFuZA0KPiA+Pj4+Pj4+Pj4+PlNldCBkZWZpbmVkIGluIE5WTSBFeHByZXNzIFRQNDA1My4gWm9u
ZWQgbmFtZXNwYWNlcyBhcmUNCj4gPj4+Pj4+Pj4+Pj5kaXNjb3ZlcmVkIGJhc2VkIG9uIHRoZWly
IENvbW1hbmQgU2V0IElkZW50aWZpZXIgcmVwb3J0ZWQgaW4NCj4gPj4+Pj4+Pj4+Pj50aGUgbmFt
ZXNwYWNlcyBOYW1lc3BhY2UgSWRlbnRpZmljYXRpb24gRGVzY3JpcHRvciBsaXN0LiBBDQo+ID4+
Pj4+Pj4+Pj4+c3VjY2Vzc2Z1bGx5IGRpc2NvdmVyZWQgWm9uZWQgTmFtZXNwYWNlIHdpbGwgYmUg
cmVnaXN0ZXJlZA0KPiA+Pj4+Pj4+Pj4+PndpdGggdGhlIGJsb2NrIGxheWVyIGFzIGEgaG9zdCBt
YW5hZ2VkIHpvbmVkIGJsb2NrIGRldmljZQ0KPiA+Pj4+Pj4+Pj4+PndpdGggWm9uZSBBcHBlbmQg
Y29tbWFuZCBzdXBwb3J0LiBBIG5hbWVzcGFjZSB0aGF0IGRvZXMgbm90DQo+ID4+Pj4+Pj4+Pj4+
c3VwcG9ydCBhcHBlbmQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgZHJpdmVyLg0KPiA+Pj4+Pj4+
Pj4+DQo+ID4+Pj4+Pj4+Pj5XaHkgYXJlIHdlIGVuZm9yY2luZyB0aGUgYXBwZW5kIGNvbW1hbmQ/
IEFwcGVuZCBpcyBvcHRpb25hbA0KPiBvbg0KPiA+Pj4+Pj4+Pj4+dGhlIGN1cnJlbnQgWk5TIHNw
ZWNpZmljYXRpb24sIHNvIHdlIHNob3VsZCBub3QgbWFrZSB0aGlzDQo+ID4+Pj4+Pj4+Pj5tYW5k
YXRvcnkgaW4gdGhlIGltcGxlbWVudGF0aW9uLiBTZWUgc3BlY2lmaWNzIGJlbG93Lg0KPiA+Pj4+
Pj4+Pg0KPiA+Pj4+Pj4+Pj4NCj4gPj4+Pj4+Pj4+VGhlcmUgaXMgYWxyZWFkeSBnZW5lcmFsIHN1
cHBvcnQgaW4gdGhlIGtlcm5lbCBmb3IgdGhlIHpvbmUNCj4gPj4+Pj4+Pj4+YXBwZW5kIGNvbW1h
bmQuIEZlZWwgZnJlZSB0byBzdWJtaXQgcGF0Y2hlcyB0byBlbXVsYXRlIHRoZQ0KPiA+Pj4+Pj4+
Pj5zdXBwb3J0LiBJdCBpcyBvdXRzaWRlIHRoZSBzY29wZSBvZiB0aGlzIHBhdGNoc2V0Lg0KPiA+
Pj4+Pj4+Pj4NCj4gPj4+Pj4+Pj4NCj4gPj4+Pj4+Pj5JdCBpcyBmaW5lIHRoYXQgdGhlIGtlcm5l
bCBzdXBwb3J0cyBhcHBlbmQsIGJ1dCB0aGUgWk5TDQo+ID4+Pj4+Pj4+c3BlY2lmaWNhdGlvbiBk
b2VzIG5vdCBpbXBvc2UgdGhlIGltcGxlbWVudGF0aW9uIGZvciBhcHBlbmQsIHNvDQo+ID4+Pj4+
Pj4+dGhlIGRyaXZlciBzaG91bGQgbm90IGRvIHRoYXQgZWl0aGVyLg0KPiA+Pj4+Pj4+Pg0KPiA+
Pj4+Pj4+PlpOUyBTU0RzIHRoYXQgY2hvb3NlIHRvIGxlYXZlIGFwcGVuZCBhcyBhIG5vbi1pbXBs
ZW1lbnRlZA0KPiA+Pj4+Pj4+Pm9wdGlvbmFsIGNvbW1hbmQgc2hvdWxkIG5vdCByZWx5IG9uIGVt
dWxhdGVkIFNXIHN1cHBvcnQsDQo+ID4+Pj4+Pj4+c3BlY2lhbGx5IHdoZW4gdHJhZGl0aW9uYWwg
d3JpdGVzIHdvcmsgdmVyeSBmaW5lIGZvciBhIGxhcmdlDQo+ID4+Pj4+Pj4+cGFydCBvZiBjdXJy
ZW50IFpOUyB1c2UgY2FzZXMuDQo+ID4+Pj4+Pj4+DQo+ID4+Pj4+Pj4+UGxlYXNlLCByZW1vdmUg
dGhpcyB2aXJ0dWFsIGNvbnN0cmFpbnQuDQo+ID4+Pj4+Pj4NCj4gPj4+Pj4+PlRoZSBab25lIEFw
cGVuZCBjb21tYW5kIGlzIG1hbmRhdG9yeSBmb3Igem9uZWQgYmxvY2sgZGV2aWNlcy4NCj4gPj4+
Pj4+PlBsZWFzZSBzZWUgaHR0cHM6Ly9sd24ubmV0L0FydGljbGVzLzgxODcwOS8gZm9yIHRoZSBi
YWNrZ3JvdW5kLg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+SSBkbyBub3Qgc2VlIGFueXdoZXJlIGluIHRo
ZSBibG9jayBsYXllciB0aGF0IGFwcGVuZCBpcyBtYW5kYXRvcnkNCj4gPj4+Pj4+Zm9yIHpvbmVk
IGRldmljZXMuIEFwcGVuZCBpcyBlbXVsYXRlZCBvbiBaQkMsIGJ1dCBiZXlvbmQgdGhhdA0KPiA+
Pj4+Pj50aGVyZSBpcyBubyBtYW5kYXRvcnkgYml0cy4gUGxlYXNlIGV4cGxhaW4uDQo+ID4+Pj4+
DQo+ID4+Pj4+VGhpcyBpcyB0byBhbGxvdyBhIHNpbmdsZSB3cml0ZSBJTyBwYXRoIGZvciBhbGwg
dHlwZXMgb2Ygem9uZWQNCj4gPj4+Pj5ibG9jayBkZXZpY2UgZm9yIGhpZ2hlciBsYXllcnMsIGUu
ZyBmaWxlIHN5c3RlbXMuIFRoZSBvbi1nb2luZw0KPiA+Pj4+PnJlLXdvcmsgb2YgYnRyZnMgem9u
ZSBzdXBwb3J0IGZvciBpbnN0YW5jZSBub3cgcmVsaWVzIDEwMCUgb24gem9uZQ0KPiA+Pj4+PmFw
cGVuZCBiZWluZyBzdXBwb3J0ZWQuIFRoYXQgc2lnbmlmaWNhbnRseSBzaW1wbGlmaWVzIHRoZSBm
aWxlDQo+ID4+Pj4+c3lzdGVtIHN1cHBvcnQgYW5kIG1vcmUgaW1wb3J0YW50bHkgcmVtb3ZlIHRo
ZSBuZWVkIGZvciBsb2NraW5nDQo+ID4+Pj4+YXJvdW5kIGJsb2NrIGFsbG9jYXRpb24gYW5kIEJJ
TyBpc3N1aW5nLCBhbGxvd2luZyB0byBwcmVzZXJ2ZSBhDQo+ID4+Pj4+ZnVsbHkgYXN5bmNocm9u
b3VzIHdyaXRlIHBhdGggdGhhdCBjYW4gaW5jbHVkZSB3b3JrcXVldWVzIGZvcg0KPiA+Pj4+PmVm
ZmljaWVudCBDUFUgdXNhZ2Ugb2YgdGhpbmdzIGxpa2UgZW5jcnlwdGlvbiBhbmQgY29tcHJlc3Np
b24uDQo+ID4+Pj4+V2l0aG91dCB6b25lIGFwcGVuZCwgZmlsZSBzeXN0ZW0gd291bGQgZWl0aGVy
ICgxKSBoYXZlIHRvIHJlamVjdA0KPiA+Pj4+PnRoZXNlIGRyaXZlcyB0aGF0IGRvIG5vdCBzdXBw
b3J0IHpvbmUgYXBwZW5kLCBvciAoMikgaW1wbGVtZW50IDINCj4gPj4+Pj5kaWZmZXJlbnQgd3Jp
dGUgSU8gcGF0aCAoc2xvd2VyIHJlZ3VsYXIgd3JpdGUgYW5kIHpvbmUgYXBwZW5kKS4NCj4gPj4+
Pj5Ob25lIG9mIHRoZXNlIG9wdGlvbnMgYXJlIGlkZWFsLCB0byBzYXkgdGhlIGxlYXN0Lg0KPiA+
Pj4+Pg0KPiA+Pj4+PlNvIHRoZSBhcHByb2FjaCBpczogbWFuZGF0ZSB6b25lIGFwcGVuZCBzdXBw
b3J0IGZvciBaTlMgZGV2aWNlcy4gVG8NCj4gPj4+Pj5hbGxvdyBvdGhlciBaTlMgZHJpdmVzLCBh
biBlbXVsYXRpb24gc2ltaWxhciB0byBTQ1NJIGNhbiBiZQ0KPiA+Pj4+PmltcGxlbWVudGVkLCB3
aXRoIHRoYXQgZW11bGF0aW9uIGlkZWFsbHkgY29tYmluZWQgdG8gd29yayBmb3IgYm90aA0KPiA+
Pj4+PnR5cGVzIG9mIGRyaXZlcyBpZiBwb3NzaWJsZS4NCj4gPj4+Pg0KPiA+Pj4+RW5mb3JjaW5n
IFFEPTEgYmVjb21lcyBhIHByb2JsZW0gb24gZGV2aWNlcyB3aXRoIGxhcmdlIHpvbmVzLiBJbiBh
DQo+ID4+Pj5aTlMgZGV2aWNlIHRoYXQgaGFzIHNtYWxsZXIgem9uZXMgdGhpcyBzaG91bGQgbm90
IGJlIGEgcHJvYmxlbS4NCj4gPj4+DQo+ID4+PkxldCdzIGJlIHByZWNpc2U6IHRoaXMgaXMgbm90
IHJ1bm5pbmcgdGhlIGRyaXZlIGF0IFFEPTEsIGl0IGlzICJhdA0KPiA+Pj5tb3N0IG9uZSB3cml0
ZSAqcmVxdWVzdCogcGVyIHpvbmUiLiBJZiB0aGUgRlMgaXMgc2ltdWx0YW5lb3VzbHkgdXNpbmcN
Cj4gPj4+bXVsdGlwbGUgYmxvY2sgZ3JvdXBzIG1hcHBlZCB0byBkaWZmZXJlbnQgem9uZXMsIHlv
dSB3aWxsIGdldCBhIHRvdGFsDQo+ID4+PndyaXRlIFFEID4gMSwgYW5kIGFzIG1hbnkgcmVhZHMg
YXMgeW91IHdhbnQuDQo+ID4+Pg0KPiA+Pj4+V291bGQgeW91IGFncmVlIHRoYXQgaXQgaXMgcG9z
c2libGUgdG8gaGF2ZSBhIHdyaXRlIHBhdGggdGhhdCByZWxpZXMNCj4gPj4+Pm9uIFFEPTEsIHdo
ZXJlIHRoZSBGUyAvIGFwcGxpY2F0aW9uIGhhcyB0aGUgcmVzcG9uc2liaWxpdHkgZm9yDQo+ID4+
Pj5lbmZvcmNpbmcgdGhpcz8gRG93biB0aGUgcm9hZCB0aGlzIFFEIGNhbiBiZSBpbmNyZWFzZWQg
aWYgdGhlIGRldmljZQ0KPiA+Pj4+aXMgYWJsZSB0byBidWZmZXIgdGhlIHdyaXRlcy4NCj4gPj4+
DQo+ID4+PkRvaW5nIFFEPTEgcGVyIHpvbmUgZm9yIHdyaXRlcyBhdCB0aGUgRlMgbGF5ZXIsIHRo
YXQgaXMsIGF0IHRoZSBCSU8NCj4gPj4+bGF5ZXIgZG9lcyBub3Qgd29yay4gVGhpcyBpcyBiZWNh
dXNlIEJJT3MgY2FuIGJlIGFzIGxhcmdlIGFzIHRoZSBGUw0KPiA+Pj53YW50cyB0aGVtIHRvIGJl
LiBTdWNoIGxhcmdlIEJJTyB3aWxsIGJlIHNwbGl0IGludG8gbXVsdGlwbGUgcmVxdWVzdHMNCj4g
Pj4+aW4gdGhlIGJsb2NrIGxheWVyLCByZXN1bHRpbmcgaW4gbW9yZSB0aGFuIG9uZSB3cml0ZSBw
ZXIgem9uZS4gVGhhdA0KPiA+Pj5pcyB3aHkgdGhlIHpvbmUgd3JpdGUgbG9ja2luZyBpcyBhdCB0
aGUgc2NoZWR1bGVyIGxldmVsLCBiZXR3ZWVuIEJJTw0KPiA+Pj5zcGxpdCBhbmQgcmVxdWVzdCBk
aXNwYXRjaC4gVGhhdCBhdm9pZHMgdGhlIG11bHRpcGxlIHJlcXVlc3RzDQo+ID4+PmZyYWdtZW50
cyBvZiBhIGxhcmdlIEJJTyB0byBiZSByZW9yZGVyZWQgYW5kIGZhaWwuIFRoYXQgaXMgbWFuZGF0
b3J5DQo+ID4+PmFzIHRoZSBibG9jayBsYXllciBpdHNlbGYgY2FuIG9jY2FzaW9uYWxseSByZW9y
ZGVyIHJlcXVlc3RzIGFuZCBsb3dlcg0KPiA+Pj5sZXZlbHMgc3VjaCBhcyBBSENJIEhXIGlzIGFs
c28gbm90b3Jpb3VzbHkgZ29vZCBhdCByZXZlcnNpbmcNCj4gPj4+c2VxdWVudGlhbCByZXF1ZXN0
cy4gRm9yIE5WTWUgd2l0aCBtdWx0aS1xdWV1ZSwgdGhlIElPIGlzc3VpbmcNCj4gPj4+cHJvY2Vz
cyBnZXR0aW5nIHJlc2NoZWR1bGVkIG9uIGEgZGlmZmVyZW50IENQVSBjYW4gcmVzdWx0IGluDQo+
ID4+PnNlcXVlbnRpYWwgSU9zIGJlaW5nIGluIGRpZmZlcmVudCBxdWV1ZXMsIHdpdGggdGhlIGxp
a2VseSByZXN1bHQgb2YNCj4gPj4+YW4gb3V0LW9mLW9yZGVyIGV4ZWN1dGlvbi4gQWxsIGNhc2Vz
IGFyZSBhdm9pZGVkIHdpdGggem9uZSB3cml0ZQ0KPiA+Pj5sb2NraW5nIGFuZCBhdCBtb3N0IG9u
ZSB3cml0ZSByZXF1ZXN0IGRpc3BhdGNoIHBlciB6b25lIGFzDQo+ID4+PnJlY29tbWVuZGVkIGJ5
IHRoZSBaTlMgc3BlY2lmaWNhdGlvbnMgKFpCQyBhbmQgWkFDIHN0YW5kYXJkcyBmb3IgU01SDQo+
ID4+PkhERHMgYXJlIHNpbGVudCBvbiB0aGlzKS4NCj4gPj4+DQo+ID4+DQo+ID4+SSB1bmRlcnN0
YW5kLiBJIGFncmVlIHRoYXQgdGhlIGN1cnJlbnQgRlNzIHN1cHBvcnRpbmcgWk5TIGZvbGxvdyB0
aGlzDQo+ID4+YXBwcm9hY2ggYW5kIGl0IG1ha2VzIHNlbnNlIHRoYXQgdGhlcmUgaXMgYSBjb21t
b24gaW50ZXJmYWNlIHRoYXQNCj4gPj5zaW1wbGlmaWVzIHRoZSBGUyBpbXBsZW1lbnRhdGlvbi4g
U2VlIHRoZSBjb21tZW50IGJlbG93IG9uIHRoZSBwYXJ0IEkNCj4gPj5iZWxpZXZlIHdlIHNlZSB0
aGluZ3MgZGlmZmVyZW50bHkuDQo+ID4+DQo+ID4+DQo+ID4+Pj5JIHdvdWxkIGJlIE9LIHdpdGgg
c29tZSBGUyBpbXBsZW1lbnRhdGlvbnMgdG8gcmVseSBvbiBhcHBlbmQgYW5kDQo+ID4+Pj5pbXBv
c2UgdGhlIGNvbnN0cmFpbnQgdGhhdCBhcHBlbmQgaGFzIHRvIGJlIHN1cHBvcnRlZCAoYW5kIGl0
IHdvdWxkDQo+ID4+Pj5iZSBvdXIgam9iIHRvIGNoYW5nZSB0aGF0KSwgYnV0IEkgd291bGQgbGlr
ZSB0byBhdm9pZCB0aGUgZHJpdmVyDQo+ID4+Pj5yZWplY3RpbmcgaW5pdGlhbGl6aW5nIHRoZSBk
ZXZpY2UgYmVjYXVzZSBjdXJyZW50IEZTIGltcGxlbWVudGF0aW9ucw0KPiA+Pj4+aGF2ZSBpbXBs
ZW1lbnRlZCB0aGlzIGxvZ2ljLg0KPiA+Pj4NCj4gPj4+V2hhdCBpcyB0aGUgZGlmZmVyZW5jZSBi
ZXR3ZWVuIHRoZSBkcml2ZXIgcmVqZWN0aW5nIGRyaXZlcyBhbmQgdGhlIEZTDQo+ID4+PnJlamVj
dGluZyB0aGUgc2FtZSBkcml2ZXMgPyBUaGF0IGhhcyB0aGUgc2FtZSBlbmQgcmVzdWx0IHRvIG1l
OiBhbg0KPiA+Pj5lbnRpcmUgY2xhc3Mgb2YgZGV2aWNlcyBjYW5ub3QgYmUgdXNlZCBhcyBkZXNp
cmVkIGJ5IHRoZSB1c2VyLg0KPiA+Pj5JbXBsZW1lbnRpbmcgem9uZSBhcHBlbmQgZW11bGF0aW9u
IGF2b2lkcyB0aGUgcmVqZWN0aW9uIGVudGlyZWx5DQo+ID4+PndoaWxlIHN0aWxsIGFsbG93aW5n
IHRoZSBGUyB0byBoYXZlIGEgc2luZ2xlIHdyaXRlIElPIHBhdGgsIHRodXMNCj4gPj4+c2ltcGxp
ZnlpbmcgdGhlIGNvZGUuDQo+ID4+DQo+ID4+VGhlIGRpZmZlcmVuY2UgaXMgdGhhdCB1c2VycyB0
aGF0IHVzZSBhIHJhdyBaTlMgZGV2aWNlIHN1Ym1pdHRpbmcgSS9PDQo+ID4+dGhyb3VnaCB0aGUg
a2VybmVsIHdvdWxkIHN0aWxsIGJlIGFibGUgdG8gdXNlIHRoZXNlIGRldmljZXMuIFRoZQ0KPiA+
PnJlc3VsdCB3b3VsZCBiZSB0aGF0IHRoZSBaTlMgU1NEIGlzIHJlY29nbml6ZWQgYW5kIGluaXRp
YWxpemVkLCBidXQNCj4gPj50aGUgRlMgZm9ybWF0IGZhaWxzLg0KPiA+Pg0KPiA+Pj4NCj4gPj4+
PldlIGNhbiBhZ3JlZSB0aGF0IGEgbnVtYmVyIG9mIGluaXRpYWwgY3VzdG9tZXJzIHdpbGwgdXNl
IHRoZXNlDQo+ID4+Pj5kZXZpY2VzIHJhdywgdXNpbmcgdGhlIGluLWtlcm5lbCBJL08gcGF0aCwg
YnV0IHdpdGhvdXQgYSBGUyBvbiB0b3AuDQo+ID4+Pj4NCj4gPj4+PlRob3VnaHRzPw0KPiA+Pj4+
DQo+ID4+Pj4+YW5kIG5vdGUgdGhhdA0KPiA+Pj4+PnRoaXMgZW11bGF0aW9uIHdvdWxkIHJlcXVp
cmUgdGhlIGRyaXZlIHRvIGJlIG9wZXJhdGVkIHdpdGgNCj4gPj4+Pj5tcS1kZWFkbGluZSB0byBl
bmFibGUgem9uZSB3cml0ZSBsb2NraW5nIGZvciBwcmVzZXJ2aW5nIHdyaXRlDQo+ID4+Pj4+Y29t
bWFuZCBvcmRlci4gV2hpbGUgb24gYSBIREQgdGhlIHBlcmZvcm1hbmNlIHBlbmFsdHkgaXMgbWlu
aW1hbCwNCj4gPj4+Pj5pdCB3aWxsIGxpa2VseSBiZSBzaWduaWZpY2FudCBvbiBhIFNTRC4NCj4g
Pj4+Pg0KPiA+Pj4+RXhhY3RseSBteSBjb25jZXJuLiBJIGRvIG5vdCB3YW50IFpOUyBTU0RzIHRv
IGJlIGltcGFjdGVkIGJ5IHRoaXMNCj4gPj4+PnR5cGUgb2YgZGVzaWduIGRlY2lzaW9uIGF0IHRo
ZSBkcml2ZXIgbGV2ZWwuDQo+ID4+Pg0KPiA+Pj5CdXQgeW91ciBwcm9wb3NlZCBGUyBsZXZlbCBh
cHByb2FjaCB3b3VsZCBlbmQgdXAgZG9pbmcgdGhlIGV4YWN0IHNhbWUNCj4gPj4+dGhpbmcgd2l0
aCB0aGUgc2FtZSBsaW1pdGF0aW9uIGFuZCBzbyB0aGUgc2FtZSBwb3RlbnRpYWwgcGVyZm9ybWFu
Y2UNCj4gPj4+aW1wYWN0Lg0KPiA+Pj5UaGUgYmxvY2sNCj4gPj4+bGF5ZXIgZ2VuZXJpYyBhcHBy
b2FjaCBoYXMgdGhlIGFkdmFudGFnZSB0aGF0IHdlIGRvIG5vdCBib3RoZXIgdGhlDQo+ID4+Pmhp
Z2hlciBsZXZlbHMgd2l0aCB0aGUgaW1wbGVtZW50YXRpb24gb2YgaW4tb3JkZXIgcmVxdWVzdCBk
aXNwYXRjaA0KPiA+Pj5ndWFyYW50ZWVzLg0KPiA+Pj5GaWxlIHN5c3RlbXMNCj4gPj4+YXJlIGNv
bXBsZXggZW5vdWdoLiBUaGUgbGVzcyBjb21wbGV4aXR5IGlzIHJlcXVpcmVkIGZvciB6b25lIHN1
cHBvcnQsDQo+ID4+PnRoZSBiZXR0ZXIuDQo+ID4+DQo+ID4+VGhpcyBkZXBlbmRzIHZlcnkgbXVj
aCBvbiBob3cgdGhlIEZTIC8gYXBwbGljYXRpb24gaXMgbWFuYWdpbmcNCj4gPj5zdHJpcHBpbmcu
IEF0IHRoZSBtb21lbnQgb3VyIG1haW4gdXNlIGNhc2UgaXMgZW5hYmxpbmcgdXNlci1zcGFjZQ0K
PiA+PmFwcGxpY2F0aW9ucyBzdWJtaXR0aW5nIEkvT3MgdG8gcmF3IFpOUyBkZXZpY2VzIHRocm91
Z2ggdGhlIGtlcm5lbC4NCj4gPj4NCj4gPj5DYW4gd2UgZW5hYmxlIHRoaXMgdXNlIGNhc2UgdG8g
c3RhcnQgd2l0aD8NCj4gPg0KPiA+SXQgaXMgZnJlZSBmb3IgZXZlcnlvbmUgdG8gbG9hZCBrZXJu
ZWwgbW9kdWxlcyBpbnRvIHRoZSBrZXJuZWwuIFRob3NlDQo+ID5tb2R1bGVzIG1heSBub3QgaGF2
ZSB0aGUgYXBwcm9wcmlhdGUgY2hlY2tzIG9yIG1heSByZWx5IG9uIHRoZSB6b25lDQo+ID5hcHBl
bmQgZnVuY3Rpb25hbGl0eS4gSGF2aW5nIHBlciB1c2UtY2FzZSBsaW1pdCBpcyBhIG5vLWdvIGFu
ZCBhdCBiZXN0DQo+ID5hIGdhbWUgb2Ygd2hhY2stYS1tb2xlLg0KPiANCj4gTGV0J3MgZm9jdXMg
b24gbWFpbmxpbmUgc3VwcG9ydC4gV2UgYXJlIGxlYXZpbmcgYXBwZW5kIGFzIG5vdCBlbmFibGVk
IGJhc2VkDQo+IG9uIGN1c3RvbWVyIHJlcXVlc3RzIGZvciBzb21lIFpOUyBwcm9kdWN0cyBhbmQg
d291bGQgbGlrZSB0aGlzIGRldmljZXMgdG8gYmUNCj4gc3VwcG9ydGVkLiBUaGlzIGlzIG5vdCBh
dCBhbGwgYSBjb3JuZXIgdXNlLWNhc2UgYnV0IGEgdmVyeSBnZW5lcmFsIG9uZS4NCj4gDQo+ID4N
Cj4gPllvdSBhbHJlYWR5IGFncmVlZCB0byBjcmVhdGUgYSBzZXQgb2YgcGF0Y2hlcyB0byBhZGQg
dGhlIGFwcHJvcHJpYXRlDQo+ID5zdXBwb3J0IGZvciBlbXVsYXRpbmcgem9uZSBhcHBlbmQuIEFz
IHRoZXNlIHdvdWxkIGZpeCB5b3VyIHNwZWNpZmljDQo+ID5pc3N1ZSwgcGxlYXNlIGdvIGFoZWFk
IGFuZCBzdWJtaXQgdGhvc2UuDQo+IA0KPiBJIGFncmVlZCB0byBzb2x2ZSB0aGUgdXNlIGNhc2Ug
dGhhdCBzb21lIG9mIG91ciBjdXN0b21lcnMgYXJlIGVuYWJsaW5nIGFuZCB0aGlzDQo+IGlzIHdo
YXQgSSBhbSBkb2luZy4NCj4gDQo+IEFnYWluLCB0byBzdGFydCB3aXRoIEkgd291bGQgbGlrZSB0
byBoYXZlIGEgcGF0aCB3aGVyZSBaTlMgbmFtZXNwYWNlcyBhcmUNCj4gaWRlbnRpZmllZCBpbmRl
cGVuZGVudGx5IG9mIGFwcGVuZCBzdXBwb3J0LiBUaGVuIHNwZWNpZmljIHVzZXJzIGNhbiByZXF1
aXJlDQo+IGFwcGVuZCBpZiB0aGV5IHBsZWFzZSB0byBkbyBzby4gV2Ugd2lsbCBvZiBjb3Vyc2Ug
dGFrZSBjYXJlIG9mIHNlbmRpbmcgcGF0Y2hlcw0KPiBmb3IgdGhpcy4NCg0KQXMgd2FzIHByZXZp
b3VzbHkgc2FpZCwgdGhlcmUgYXJlIHVzZXJzIGluIHRoZSBrZXJuZWwgdGhhdCBkZXBlbmRzIG9u
IHpvbmUgYXBwZW5kLiBBcyBhIHJlc3VsdCwgaXQgaXMgbm90IGFuIG9wdGlvbiBub3QgdG8gaGF2
ZSB0aGlzLiBQbGVhc2UgZ28gYWhlYWQgYW5kIHNlbmQgdGhlIHBhdGNoZXMgYW5kIHlvdSdsbCBo
YXZlIHRoZSBiZWhhdmlvciB5b3UgYXJlIHNlZWtpbmcuIA0KDQpCZXN0LCBNYXRpYXMNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFp
bGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
