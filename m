Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E12E1FB97C
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 18:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXcz/O7kPfeIFMXP0LGtluVoCCnnnD5h9H7onSbzhKY=; b=fMoixSrPX4kaH2
	rcZ74wtH+0q7HtF13Lbop+9JXsdlwcV3N2vjVzuvulpxKelsd9PQ3Ion63p0eRV3GSsxvsk8rQ9cy
	Pw4iA5AtTdt7mvVK1mu6TGd/24x7GKx6pFAJ7DNq/gPwtGSMisJyaIP3kGl3qe1uBesBbhcY/wHNc
	Nt73DHUnSZNNPItd912sAJ/dULiKXW1ZfmymwJb8MSCObam/rL+oZVLzamdp7BGSh9+4H+ZMQa2tx
	6Q2ck3UsYs6VF2Z2q91s44BLAmok8q00feVEa14Vk6UE5VvW8SM0IriX9GAMSNvOOuFPEEWS5wuFc
	tvkzKwMXtuKstHF58fvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlE4b-0000EU-4H; Tue, 16 Jun 2020 16:04:29 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlE4V-0000DT-Ez
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 16:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592323463; x=1623859463;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wTyXJ6g4Ph/FZP1mOFNmEWDsAQd9R2IolU6OrjJSD3Y=;
 b=Xhf8ivDxLHhULkiLKn4vINGgTvZxRwxwExv1LFmxXr38UoHYU23/gboK
 vmSHD0zu7/da9xp6PlG7ntEefl6JeWObZm1/rDRte+9oL2v/4Sr8ADQzs
 E3zmujqm/wEOhub/KkhAcWt61y97ONnTpIpAFRwEkDjTCvfnFHbMEcohC
 h54lfs9sq9CIJtQL04Bp0g5n75TUmBoz6vJgpeJQH5OTtQkhzWuGsb7eL
 je1d6yqddy6Zh5yA6yUbayOfZOB1HXvC/lj4tm3hNsgfNpqLIh7sdRyUg
 zLR6+DEKGGLmqs6k6Ca+hqZgBghziugGWxFvLSLkbDFalMtoJjvO1892C Q==;
IronPort-SDR: 34VODjzWg03aRXiX5lnxow8tk0F1GVSqZX2pxZ2H/YxzZ6yvP0KCI1YbX1QHEyRGSlzt9zb9kE
 0kSuVR+QSkyL5qt6TW5iAUAzgiX4IS+6dr1sPcWqbjXsW0kwg4yVxXljTXrYzpRbZKMeYmluAz
 GRFPqCiWMAq9EAZiaINjGuz+aauK5aZr+UMkTJnGyU64eJVS77MlCbDmJCGJnc5meC6WNalN20
 zQ79iEZhhHYM39nimM0oU7H0/lpZpdJeseiEikmCJSD7NTHunuKdckYeJ7RbqsWOzSpb1nNsLj
 Qyk=
X-IronPort-AV: E=Sophos;i="5.73,518,1583164800"; d="scan'208";a="249318714"
Received: from mail-bn8nam12lp2175.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.175])
 by ob1.hgst.iphmx.com with ESMTP; 17 Jun 2020 00:04:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FGTGHLwTvugJWQjKXp/C2s7GqZy+YVI5E3GoXZP9nK76MUsGkfG96Z3q4A2vGOD0qIsaQnleQp1DJUcgPTaoWclf2GWkModb/sbjINdiquiLmDAfmK5r1UAdDfIj+Vh7xQXAuvc3VBiuQpIbu3j+kDOHsQ4MB1tFZUGxmi+mXlYi3xJ+n3hl7/AsvE7pd6t6wUwwVyKysvNq546tUxfTunQQPYJlR1wCSl+rtoT6nky2kaWFEetc6VPwZuaptmc4SKYUUON2Vu9iOpEJD5eNdNb8RKxgjT26NHFYX+F/K+d7mHGm/zPg1JJrWybBQRUqHkaf/eRn7Waep7qSwnOx3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wTyXJ6g4Ph/FZP1mOFNmEWDsAQd9R2IolU6OrjJSD3Y=;
 b=G3exppTNPgElIaCfPWW08XLqavtn53Dhhw/KxBMxOIFnYqcBX3uA0CeqtcGGudYHv/Tm4EWpEnroYy0hrJn+rTzoZRu7zqmMZY1OIlYGIN6Eg4VyJML9Z0vvhE0FK+UtVyt9i2Uxebju7wlJ3DogFzI79djCzGfzOGCvkhJ4ndhJkL2Oo7KQSxyMAD7sr+lTr/SrIvXfZZpe+nfqVU+TVbjxx2vXWSu+OLwr4P1jzdWK23jGNvL0qNXJGNYOl8iqf6ieNoMkHbL3NwGELSjugvdIDjYnNCrZpRVYSHJSTIPSE1OgKYfZEuz7/zx9CJXPdUZaWCX48BdlgMnHqmScZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wTyXJ6g4Ph/FZP1mOFNmEWDsAQd9R2IolU6OrjJSD3Y=;
 b=WrJkTawJ3hikvpCVNAX2rffagfEL1Q0coGRuiZ/SBdeis9Umq28NuCr+nFcbxU6dVj4iQYnxiZYCdEa/5CPI0/mH++7VZp3TibMav/8vvIXz/+c8W9J84q6v9v5i7qz0ncLlRPUP7SMsFrwfFelpAEb64eBosE6lMECkci/+df4=
Received: from MN2PR04MB6223.namprd04.prod.outlook.com (2603:10b6:208:db::14)
 by MN2PR04MB5917.namprd04.prod.outlook.com (2603:10b6:208:3c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.19; Tue, 16 Jun
 2020 16:04:20 +0000
Received: from MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e]) by MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e%4]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 16:04:20 +0000
From: Matias Bjorling <Matias.Bjorling@wdc.com>
To: =?utf-8?B?SmF2aWVyIEdvbnrDoWxleg==?= <javier@javigon.com>, Keith Busch
 <kbusch@kernel.org>
Subject: RE: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Topic: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Index: AQHWQ22nWIvFisdy3k6SEN4VUPnblajbV2WAgAAM1ACAAAIFAIAAAivg
Date: Tue, 16 Jun 2020 16:04:20 +0000
Message-ID: <MN2PR04MB62233520539D8CD908A8F5BBF19D0@MN2PR04MB6223.namprd04.prod.outlook.com>
References: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <d433450a-6e18-217c-d133-ea367d8936be@lightnvm.io>
 <20200616120018.en337lcs5y2jh5ne@mpHalley.local>
 <cf899cd9-c3de-7436-84d4-744c0988a6c9@lightnvm.io>
 <20200616122448.4e3slfghv4cojafq@mpHalley.local>
 <CY4PR04MB3751CC8FE4BDFC256F9E9CD1E79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616141620.omqf64up523of35t@MacBook-Pro.localdomain>
 <CY4PR04MB37512BCDD74996057697F5CAE79D0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <20200616150217.inezhntsehtcbjsw@MacBook-Pro.localdomain>
 <20200616154812.GA521206@dhcp-10-100-145-180.wdl.wdc.com>
 <20200616155526.wxjoufhhxkwet5ya@MacBook-Pro.localdomain>
In-Reply-To: <20200616155526.wxjoufhhxkwet5ya@MacBook-Pro.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: javigon.com; dkim=none (message not signed)
 header.d=none;javigon.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [185.50.194.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6ffc903c-6721-46d8-d0ef-08d8120eeddc
x-ms-traffictypediagnostic: MN2PR04MB5917:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB5917D1B05B791973C5C23DB6F19D0@MN2PR04MB5917.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kFxMethWIM1h2M+lC2Ta2v3Oru4LiMWJc8Ae6Xu4D+gmI4Lfp/snDuBZhlGvvmofI/cXzRvwgpvDEx9/wQGOskyPXvf2XYMIEq7lh5aGo5b5zfaewrK4SOAXf0qdxl38qw/6cNIjOUrdWN+8T3jb3DfX/iOz9tIngvRr1QKsqO9b/W91eJ9K+QHhE/pWa2lyV6+Es3q/g4ilcyxJpi8pLqBpCu4/LCrEGij3PG5v9TlgT0dr89Axm6GSRmBZxcs8qO8ireqC/KgMq8BkqRsyGLHkpj4JN3+OfFFV9dX+JXAEDUsdtRvdAySK8sEfszP5bZRdHd5ZusTmJwJqZQkPog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6223.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(366004)(39850400004)(86362001)(186003)(478600001)(53546011)(6506007)(5660300002)(2906002)(52536014)(4326008)(26005)(55016002)(7696005)(71200400001)(54906003)(9686003)(8676002)(316002)(66946007)(33656002)(66476007)(66556008)(64756008)(66446008)(76116006)(8936002)(110136005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: GBQrL4TMCEjauSXzpBkpStjqH//GPP1mkMnQ6RsBrdIgMii4faba3fvMsTuwaFxU6/bRdSeKTA2wJEA5iLoXguIeKWwM6TbX7mIFXoEIELmSB07EvUzHvB1E1y9wXWObtx9bY0XuNdApmML98ng06Cr9Uxcq+D8/WOAEPlmSD4stbJ8JWXVx9QNS8r3LaFXfC/2F/lsMihewb5BRJWp2S1X4z8z7DGJpQUFIQWTT6aup7rmG8+hAFnNGgztQducVeIrCKu4tKkdr6LhMXWdxOhBzud38BGJb+er/wldt4x6Md8EAM4R8K2vLbN7getVCwFMwtPCpAGwSRCoPtInv3hms6yuvaQJZKK5bvfBkm7NPRf7gkIJk0NbCzWY+Fxu+GqhErudvuEwC8m4nRpbC7BBumO1kzjQqJVQ8WPB1135nHXTBO+YySfnxpbSBopbiBs5MfT9WOmv18dwK3CDGSVECBmZoC+BDMBg5A2jHJ8BSZC7Xxf292T/L9DyMKHFY
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ffc903c-6721-46d8-d0ef-08d8120eeddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 16:04:20.0649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IdsH8zBi0kHo/O+5FTm6KeMsMzPvwI6fXSAR8kjGvlbrrEpLxP5NQFVpr+jyICkEsUwM/TXyb2Tq4oV3AZ6XaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_090423_591547_87EF0246 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
 Hans Holmberg <Hans.Holmberg@wdc.com>,
 =?utf-8?B?TWF0aWFzIEJqw7hybGluZw==?= <mb@lightnvm.io>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYXZpZXIgR29uesOhbGV6IDxq
YXZpZXJAamF2aWdvbi5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDE2IEp1bmUgMjAyMCAxNy41NQ0K
PiBUbzogS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3JnPg0KPiBDYzogRGFtaWVuIExlIE1v
YWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT47IE1hdGlhcyBCasO4cmxpbmcNCj4gPG1iQGxpZ2h0
bnZtLmlvPjsgSmVucyBBeGJvZSA8YXhib2VAa2VybmVsLmRrPjsgTmlrbGFzIENhc3NlbA0KPiA8
TmlrbGFzLkNhc3NlbEB3ZGMuY29tPjsgQWpheSBKb3NoaSA8QWpheS5Kb3NoaUB3ZGMuY29tPjsg
U2FnaSBHcmltYmVyZw0KPiA8c2FnaUBncmltYmVyZy5tZT47IEtlaXRoIEJ1c2NoIDxLZWl0aC5C
dXNjaEB3ZGMuY29tPjsgRG1pdHJ5IEZvbWljaGV2DQo+IDxEbWl0cnkuRm9taWNoZXZAd2RjLmNv
bT47IEFyYXZpbmQgUmFtZXNoIDxBcmF2aW5kLlJhbWVzaEB3ZGMuY29tPjsNCj4gbGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnOyBsaW51eC1ibG9ja0B2Z2VyLmtlcm5lbC5vcmc7IEhhbnMg
SG9sbWJlcmcNCj4gPEhhbnMuSG9sbWJlcmdAd2RjLmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxo
Y2hAbHN0LmRlPjsgTWF0aWFzIEJqb3JsaW5nDQo+IDxNYXRpYXMuQmpvcmxpbmdAd2RjLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSCA1LzVdIG52bWU6IHN1cHBvcnQgZm9yIHpvbmVkIG5hbWVz
cGFjZXMNCj4gDQo+IE9uIDE2LjA2LjIwMjAgMDg6NDgsIEtlaXRoIEJ1c2NoIHdyb3RlOg0KPiA+
T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDU6MDI6MTdQTSArMDIwMCwgSmF2aWVyIEdvbnrDoWxl
eiB3cm90ZToNCj4gPj4gVGhpcyBkZXBlbmRzIHZlcnkgbXVjaCBvbiBob3cgdGhlIEZTIC8gYXBw
bGljYXRpb24gaXMgbWFuYWdpbmcNCj4gPj4gc3RyaXBwaW5nLiBBdCB0aGUgbW9tZW50IG91ciBt
YWluIHVzZSBjYXNlIGlzIGVuYWJsaW5nIHVzZXItc3BhY2UNCj4gPj4gYXBwbGljYXRpb25zIHN1
Ym1pdHRpbmcgSS9PcyB0byByYXcgWk5TIGRldmljZXMgdGhyb3VnaCB0aGUga2VybmVsLg0KPiA+
Pg0KPiA+PiBDYW4gd2UgZW5hYmxlIHRoaXMgdXNlIGNhc2UgdG8gc3RhcnQgd2l0aD8NCj4gPg0K
PiA+SSB0aGluayB0aGlzIGFscmVhZHkgcHJvdmlkZXMgdGhhdC4gWW91IGNhbiBzZXQgdGhlIG5z
aWQgdmFsdWUgdG8NCj4gPndoYXRldmVyIHlvdSB3YW50IGluIHRoZSBwYXNzdGhyb3VnaCBpbnRl
cmZhY2UsIHNvIGEgbmFtZXNwYWNlIGJsb2NrDQo+ID5kZXZpY2UgaXMgbm90IHJlcXVpcmVkIHRv
IGlzc3VlIEkvTyB0byBhIFpOUyBuYW1lc3BhY2UgZnJvbSB1c2VyIHNwYWNlLg0KPiANCj4gTW1t
bW0uIFByb2JsZW0gbm93IGlzIHRoYXQgdGhlIGNoZWNrIG9uIHRoZSBudm1lIGRyaXZlciBwcmV2
ZW50cyB0aGUgWk5TDQo+IG5hbWVzcGFjZSBmcm9tIGJlaW5nIGluaXRpYWxpemVkLiBBbSBJIG1p
c3Npbmcgc29tZXRoaW5nPw0KDQpZb3UgY2FuIGlzc3VlIHRoZSBpbyB0byB0aGUgY2hhciBkZXZp
Y2UgKGUuZy4sIC9kZXYvbnZtZTApLCBhbmQgc3BlY2lmeSB0aGUgbmFtZXNwYWNlLiBUaGF0IHdp
bGwgYmUgaW5pdGlhbGl6ZWQuIElmIHlvdSBsaWtlLCB5b3UgY2FuIHVzZSBLZWl0aCdzIGxpYm52
bWUsIHRoYXQgZXhwb3NlcyBhbGwgb2YgdGhlIGZ1bmN0aW9uYWxpdHkgdG8gaXNzdWUgcGFzc3Ro
cnUgSS9Pcy4NCg0KQmVzdCwgTWF0aWFzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
