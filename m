Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F821FFD1A
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jun 2020 23:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERtrfHVSAwWSAj+AD9oMfNm8rBh4Cn2W4DFE9TiKsZQ=; b=o4GdNSE5kCIccb
	bSe7k3YreDseTJbQjHx6A3pzlncm/Ub9/u4Meq2ysnWYrld8CqRRIPflzvRwiB7r6LaysSsA08kay
	zp2sGPXx0yejKa5MBoVqzfHPgbn0ydVqvvFPGnwaNRg7pUsL2dclVeB9/agIGLayyl3nhyDddSGQZ
	rsTH7S0vPx6ZKpVifc+QDClWjQIvqRkT8XZCiPQ02Ixphwp2Cbhz1jblRn9JwM+Lp/A6nv2rRPqpZ
	nE90hPTz9XW/50RWm+YHLAVNzICMQV3YqKtZ5nDeNZ2QFw5mayO5Tne7OM1g48MoBjuEKxCc5kupk
	+t7HMrdbN38XbFmtYHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm1i1-0006tD-Tp; Thu, 18 Jun 2020 21:04:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm1hw-0006sH-2j
 for linux-nvme@lists.infradead.org; Thu, 18 Jun 2020 21:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592514264; x=1624050264;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a5uBWhzcB7/z74vhaHI0CjDWlIRSxuqrxurgo1pSgyo=;
 b=iveNlu2zIpoWMEQzCY/E5Aa8qRuZf+bzLjv/i6qSJSk0/Vdsch+LmPdv
 e9pMslmxmpf2yWo/4c/pnI1dayMFNpTU6nto/EGpNYfarc6HRoaIJiLpW
 vgCYJSqY1KlaE6hLVb01xuPXUEDPZ8Pva1JzmNeP9wm7WdagDTpbuopHE
 /3L/JdiDE7CZrxXNfOTkfFL6tND3v52LZewlOYnuyxy0F6OBm0mz9+4cF
 Mu9wXvc8uLn8bHJHi7uEAjDdjdeyd47p/tu5JQveLyWUhO2+H+QSbNPiF
 ghiTwqsDNX8r535IjGPv0T7JY36NEdoQkmQZr1zGsTT20ov7vFtcwqK32 A==;
IronPort-SDR: 5J3rDVlrtcXm2gBDmbZxfHimu/eOVBDXzIGygiCuw1U5dCfgbZwtfsYsHQaXtqno3lUV0RLv3O
 LdTpjctO6WlkYTQ/byTFbC6H4GTpGenWUewe5geez+zDbRyWO+Dw/swd0fZq5bakMJ5Qs+7bZ8
 nMO64ARS8Fgp6HatacCKLRgF3UOkFnO3O0Od6Nz/tZm+cM2LzHMlOtQtYOene+Vkt4qhOWXq6r
 Zw6YQFO+BcZjUIYrhnCyQViyLYMty+IW8d26VH6xg92d//HVtVJ3ZQ+AJ+rAtn+utXPR58etYt
 T1o=
X-IronPort-AV: E=Sophos;i="5.75,252,1589212800"; d="scan'208";a="141738092"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
 by ob1.hgst.iphmx.com with ESMTP; 19 Jun 2020 05:04:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hVE0JYlr6UekPv0K3XP9H5IOWy+vkjdsuuMW8e8/OpGhLl6WRMKUer3m1MdjhYXcQ5MCTGEG5bfV0BgBacxR9IyqL/zMVp1MI9sID4tjQ0jww0o2WI/xRU1KD54i76rRlOlgopUbb2C0Z2orHsDdhI7pseqjFKsjx4gfbE09Q7DsEPXau58iiEj94B6TptIbNhLJDjKRg5HUPnBr40x4db3b9d/Xi3dvcaZwwHVzyvDpY3L+HcnrVurnKLaNddjGIAqVlqHYIUvnpko2x9zsP2If3C9u/mJfembEUOv58EjPDEhQypezPfa9hzXJnwLx4BOP8Wns8auULvyXFyK60g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5uBWhzcB7/z74vhaHI0CjDWlIRSxuqrxurgo1pSgyo=;
 b=VBTd753hB3g+xoc761mSnGVbQl8GP/V1gsPO+vYvjHa/86FpyFXEPUtwh9VU+WV6WLBcax0DqPos/KuJkO2JP3kZq3wrHWIsBPKGdSf+uujC43VHg8iJFlR+A5McSrONqXgxfp7sw3c1DRWkLv+OrSZV9R1btXNKILVfGOL06vxz4FUpU8b0X7yLOY9GJDhspaY543SgN+ukYNRQ8hzMWZ2SKCmsaJ5VoXzqkYtntJSmdq8JXau//e9gqiYKA8k9YnFNGOuRZ0dQiozKBuD8dwMA4RrNyu7/gXJkxykLSvPvHqMMzLTWkNLeNbiEgQjxpXwHWReUtoiwO/+pQAfrvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a5uBWhzcB7/z74vhaHI0CjDWlIRSxuqrxurgo1pSgyo=;
 b=VwNbmxlbE3ntNE09ssB50hoqEqy2va4ghVWHPSMdR0YLoQhB7Pj327ipMJJlQN2fIKQXWn+qRxT6rH3DJq/ZCTJhW+RWD7MEX3E3vhTMP28kimhRHg9OPFgqbEBStkb3NdWYnbPfzjh6I4gP3sLk+3LHKZ/xFWLHAVCBTIqzYo0=
Received: from MN2PR04MB6223.namprd04.prod.outlook.com (2603:10b6:208:db::14)
 by MN2PR04MB5903.namprd04.prod.outlook.com (2603:10b6:208:a4::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 21:04:18 +0000
Received: from MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e]) by MN2PR04MB6223.namprd04.prod.outlook.com
 ([fe80::899f:1d14:ad80:400e%4]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 21:04:17 +0000
From: Matias Bjorling <Matias.Bjorling@wdc.com>
To: Heiner Litz <hlitz@ucsc.edu>, Damien Le Moal <Damien.LeMoal@wdc.com>
Subject: RE: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Topic: [PATCH 5/5] nvme: support for zoned namespaces
Thread-Index: AQHWQ22nWIvFisdy3k6SEN4VUPnblaje3HYAgAAAueA=
Date: Thu, 18 Jun 2020 21:04:17 +0000
Message-ID: <MN2PR04MB62235A95EB79AC28990DA01AF19B0@MN2PR04MB6223.namprd04.prod.outlook.com>
References: <20200616104142.zxw25txhsg2eyhsb@mpHalley.local>
 <20200617074328.GA13474@lst.de>
 <20200617144230.ojzk4f5gcwqonzrf@mpHalley.localdomain>
 <f1bc34e0-c059-6127-d69f-e31c91ce6a9f@lightnvm.io>
 <20200617182841.jnbxgshi7bawfzls@mpHalley.localdomain>
 <MN2PR04MB62236DC26A04A65A242A80D2F19A0@MN2PR04MB6223.namprd04.prod.outlook.com>
 <20200617190901.zpss2lsh6qsu5zuf@mpHalley.local>
 <1ab101ef-7b74-060f-c2bc-d4c36dec91f0@lightnvm.io>
 <20200617194013.3wlz2ajnb6iopd4k@mpHalley.local>
 <CAJbgVnVo53vLYHRixfQmukqFKKgzP5iPDwz87yanqKvSsYBvCg@mail.gmail.com>
 <20200618015526.GA1138429@dhcp-10-100-145-180.wdl.wdc.com>
 <CAJbgVnVKqDobpX8iwqRVeDqvmfdEd-uRzNFC2z5U03X9E3Pi_w@mail.gmail.com>
 <CY4PR04MB3751E6A6D6F04285CAB18514E79B0@CY4PR04MB3751.namprd04.prod.outlook.com>
 <CAJbgVnVnqGQiLx1PctDhAKkjLXRKFwr00tdTPJjkaXZDc+V6Bg@mail.gmail.com>
In-Reply-To: <CAJbgVnVnqGQiLx1PctDhAKkjLXRKFwr00tdTPJjkaXZDc+V6Bg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ucsc.edu; dkim=none (message not signed)
 header.d=none;ucsc.edu; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [185.50.194.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c60de70f-9d29-4279-16a1-08d813cb2a0a
x-ms-traffictypediagnostic: MN2PR04MB5903:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB59035CA287B432645A8AEF2AF19B0@MN2PR04MB5903.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 813zPeIULUPUhucz7jk/Z17VzD0jNI0B318za5REk055aOkoLGNlYbzs6T/q+jChn1RK0Nnnoi34t1zFLRoKeP/Dd6kCPVAN8nC83LkxX3FbPUuhGYl9+++njPgC0ef7WLQIvJXN5vbCJ/clf/XRIYr1tlN0KuX49dSVHge0ZT6sWYMFFl8YOKVVNmbIaveu42E7Og+DHe5sOTeGs89dJUALpwfkiCRIGncKQq+zq51uSKwkJdu5cM0L/KeriCrvoWXke8KgjfsBrn0uyMqDKjjGO37M6tGWUhOOTPEvNcwczgs9VVjQ/0vN1NfVsYLeHIxpjHaIiOXzGfRT6XGv/Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR04MB6223.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(396003)(376002)(39860400002)(366004)(52536014)(53546011)(6506007)(478600001)(66574015)(83380400001)(71200400001)(86362001)(7416002)(8936002)(8676002)(6636002)(26005)(2906002)(4326008)(9686003)(66556008)(64756008)(33656002)(316002)(76116006)(110136005)(54906003)(5660300002)(7696005)(55016002)(186003)(66946007)(66446008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J+8+l6C2Kvr5P8l/sKkAGgGdmYji6oGXYfXqZ9EYqR/tcXwddvOoWeTlQjXwSll7sj/dtionqkQq83wrbHvuQDpUi3gsHVwEjypVD7KbXqvt9C/KWjtybLzQHQ95Dg1okfngASF/lc6Otd5jXC+ks6ccQ121B/hGdX8Kv9BOQIa4a5acAXrR5LqeTI7oP177VTQr5CQUN33BonkkAdV5gB5tbNCRbMF7ENizVPrmjkqQw7ZxTJQPB1HlO/khr9qF14GEVCfqG3DLch1hWBZZ0B/kLxEoU/vXFjKs8tSXFwp6XPxASPbES/i/38svhUU0BrVsRrUUg9+O5UEFADAzaJ0ZXa5jtMNkQRzdPEh543SSNPY0SlOPRTXmgvumK8EWoGtYAMh32gL10L7ngFncyr5xIAG3QYqvflqCjf0BauDCOBbpe+H0zCtbU3GYOik1rrJeb+8xw99de0Kqj3Fq6P1Ja+swbknibt9voROs9oMsEgBga3q3xBpmAeo7hnEm
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c60de70f-9d29-4279-16a1-08d813cb2a0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 21:04:17.6298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1deVeQYW96qTt9XLY8YYkC3uKrguQCiLv2arZt1kdzU4FtXPD/iUkNa7Rq8GP4eNKVpSSPcadve3abr+Nm3w8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5903
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_140424_304968_82802EED 
X-CRM114-Status: GOOD (  27.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 =?utf-8?B?SmF2aWVyIEdvbnrDoWxleg==?= <javier@javigon.com>,
 Ajay Joshi <Ajay.Joshi@wdc.com>, Sagi Grimberg <sagi@grimberg.me>,
 Keith Busch <Keith.Busch@wdc.com>, Dmitry Fomichev <Dmitry.Fomichev@wdc.com>,
 Aravind Ramesh <Aravind.Ramesh@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hans Holmberg <Hans.Holmberg@wdc.com>, Keith Busch <kbusch@kernel.org>,
 =?utf-8?B?TWF0aWFzIEJqw7hybGluZw==?= <mb@lightnvm.io>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhlaW5lciBMaXR6IDxobGl0
ekB1Y3NjLmVkdT4NCj4gU2VudDogVGh1cnNkYXksIDE4IEp1bmUgMjAyMCAyMi40Nw0KPiBUbzog
RGFtaWVuIExlIE1vYWwgPERhbWllbi5MZU1vYWxAd2RjLmNvbT4NCj4gQ2M6IEtlaXRoIEJ1c2No
IDxrYnVzY2hAa2VybmVsLm9yZz47IEphdmllciBHb256w6FsZXogPGphdmllckBqYXZpZ29uLmNv
bT47DQo+IE1hdGlhcyBCasO4cmxpbmcgPG1iQGxpZ2h0bnZtLmlvPjsgTWF0aWFzIEJqb3JsaW5n
DQo+IDxNYXRpYXMuQmpvcmxpbmdAd2RjLmNvbT47IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0
LmRlPjsgS2VpdGggQnVzY2gNCj4gPEtlaXRoLkJ1c2NoQHdkYy5jb20+OyBsaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LQ0KPiBibG9ja0B2Z2VyLmtlcm5lbC5vcmc7IFNhZ2kg
R3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+OyBKZW5zIEF4Ym9lDQo+IDxheGJvZUBrZXJuZWwu
ZGs+OyBIYW5zIEhvbG1iZXJnIDxIYW5zLkhvbG1iZXJnQHdkYy5jb20+OyBEbWl0cnkNCj4gRm9t
aWNoZXYgPERtaXRyeS5Gb21pY2hldkB3ZGMuY29tPjsgQWpheSBKb3NoaSA8QWpheS5Kb3NoaUB3
ZGMuY29tPjsNCj4gQXJhdmluZCBSYW1lc2ggPEFyYXZpbmQuUmFtZXNoQHdkYy5jb20+OyBOaWts
YXMgQ2Fzc2VsDQo+IDxOaWtsYXMuQ2Fzc2VsQHdkYy5jb20+OyBKdWR5IEJyb2NrIDxqdWR5LmJy
b2NrQHNhbXN1bmcuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDUvNV0gbnZtZTogc3VwcG9y
dCBmb3Igem9uZWQgbmFtZXNwYWNlcw0KPiANCj4gVGhhbmtzIERhbWllbiwNCj4gdGhlIHN0cmlw
aW5nIGV4cGxhbmF0aW9uIG1ha2VzIHNlbnNlLiBJbiB0aGlzIGNhc2Ugd2lsbCByZXBoYXNlIHRv
OiBJdCBpcyBzdWZmaWNpZW50DQo+IHRvIHN1cHBvcnQgbGFyZ2UgZW5vdWdoIHVuLXNwbGl0dGFi
bGUgd3JpdGVzIHRvIGFjaGlldmUgZnVsbCBwZXItem9uZSBiYW5kd2lkdGgNCj4gd2l0aCBhIHNp
bmdsZSB3cml0ZXIvc2luZ2xlIFFELg0KDQpIaSBIZWluZXIsDQoNCkZvciBaTlMgaW4gZ2VuZXJh
bCwgdGhlcmUgaXMgbm8gcGVyZm9ybWFuY2UgaW5mb3JtYXRpb24gZm9yIGEgem9uZSwgb3RoZXIg
dGhhbiB3aGF0IGlzIGNvbW11bmljYXRlZCBwZXIgbmFtZXNwYWNlLiBJLmUuLCBJbiBhIHdlbGwt
ZGV2ZWxvcGVkIFpOUyBkcml2ZSwgdGhlIGhvc3Qgc2hvdWxkIG5vdCBoYXZlIHRvIHN0cmlwZSB6
b25lcyB0byBnZXQgdGhlIGZ1bGwgcGVyZm9ybWFuY2Ugb2YgYSBaTlMgZHJpdmUuIFRoaXMgaXMg
aW1wb3J0YW50IGFuZCB3YXMgb25lIG9mIHRoZSBsZWFybmluZ3MgZnJvbSBPQ1NTRC4gV2Ugc2F3
IHRoYXQgdGhlIG1haW4gYm90dGxlbmVja3MgaW4gT0NTU0QgaG9zdCBzb2Z0d2FyZSBpbXBsZW1l
bnRhdGlvbnMgd2VyZSBzdHJpcGluZywgaG9zdCBidWZmZXJpbmcsIGFuZCB2ZW5kb3Itc3BlY2lm
aWMgaGFja3MuIEZvciBaTlMgLSBJIHdhbnRlZCB0byBtYWtlIHN1cmUgdGhhdCB3ZSBkaWQgbm90
IG1ha2UgdGhlIHNhbWUgbWlzdGFrZSwgYW5kIGFzIHN1Y2gsIHRoZSBjb21wbGV4aXR5IHNob3Vs
ZCBzb2xlbHkgYmUgbWFuYWdlZCB3aXRoaW4gYW4gWk5TIFNTRC4NCg0KSWYgb25lIGRvZXMgd2Fu
dCB0byBleHBvc2UgdGhpcyBraW5kIG9mIGFyY2hpdGVjdHVyZSwgZm9yIHdoYXRldmVyIHJlYXNv
bi4gT25lIGNhbiBtYWtlIHVzZSBvZiBFbmR1cmFuY2UgR3JvdXBzIGluIE5WTWUsIGFuZCBhcyBz
dWNoIGV4cG9zZSBncm91cHMsIHRoYXQgYXJlIHBoeXNpY2FsbHkgc2VwYXJhdGVkIGluIHRoZSBk
cml2ZSwgYW5kIGFzIHN1Y2gsIHRoZSBob3N0IGNhbiB0aGVuIHN0cmlwZSB6b25lcyBpcyBzZXBh
cmF0ZSBlbmR1cmFuY2UgZ3JvdXBzIHRvIGdldCB0aGUgbmVjZXNzYXJ5IHBlcmZvcm1hbmNlLg0K
DQpUaGF0IGJlaW5nIHNhaWQsIHNvbWUgdmVuZG9ycyBpbXBsZW1lbnRlZCBaTlMgU1NEcyBhcyBp
dCB3ZXJlIE9DU1NEcywgYW5kIGFzIHN1Y2gsIG9uZSBoYXMgdG8gc3RyaXBlIHpvbmVzIHRvZ2V0
aGVyIHRvIGdldCB0aGUgZXhwZWN0ZWQgcGVyZm9ybWFuY2UuIEZvciBMaW51eCwgdGhhdCBpcyBu
b3Qgc29tZXRoaW5nIHRoYXQnbGwgYmUgc3VwcG9ydGVkIChvdGhlciB0aGFuIGlmIGEgZGV2aWNl
IGRvZXMgaXQgdGhlIGFwcHJvcHJpYXRlIHdheSBieSB1c2luZyB0aGUgc3RhbmRhcmRpemVkIGVu
ZHVyYW5jZSBncm91cHMpLiBUaGF0IGJlaW5nIHNhaWQsIGFkb3B0b3JzIHRoYXQgcnVuIGN1c3Rv
bSBzdG9yYWdlIHN0YWNrcyBjYW4gbWFrZSB1c2Ugb2YgaXQgYXQgdGhlIGNvc3Qgb2YgaGF2aW5n
IHRvIG1hbmFnZSB0aGUgc2FtZSBjaGFsbGVuZ2VzIHRoYXQgT0NTU0QgaGFkLiwgaS5lLiwgbWFu
dWFsbHkgbWFuYWdlIHN0cmlwaW5nLCBob3N0IGJ1ZmZlcmluZywgYW5kIGV2ZW4gdmVuZG9yLXNw
ZWNpZmljIGhhY2tzLg0KDQo+IA0KPiBNeSBtYWluIHBvaW50IGlzOiBUaGVyZSBpcyBubyBmdW5k
YW1lbnRhbCByZWFzb24gZm9yIHNwbGl0dGluZyB1cCByZXF1ZXN0cw0KPiBpbnRlcm1pdHRlbnRs
eSBqdXN0IHRvIHJlLWFzc2VtYmxlIHRoZW0gaW4gdGhlIHNhbWUgZm9ybSBsYXRlci4NCj4gDQo+
IE9uIFdlZCwgSnVuIDE3LCAyMDIwIGF0IDEwOjE1IFBNIERhbWllbiBMZSBNb2FsDQo+IDxEYW1p
ZW4uTGVNb2FsQHdkYy5jb20+IHdyb3RlOg0KPiA+DQo+ID4gT24gMjAyMC8wNi8xOCAxMzoyNCwg
SGVpbmVyIExpdHogd3JvdGU6DQo+ID4gPiBXaGF0IGlzIHRoZSBwdXJwb3NlIG9mIG1ha2luZyB6
b25lcyBsYXJnZXIgdGhhbiB0aGUgZXJhc2UgYmxvY2sgc2l6ZQ0KPiA+ID4gb2YgZmxhc2g/IEFu
ZCB3aHkgYXJlIGxhcmdlIHdyaXRlcyBmdW5kYW1lbnRhbGx5IHVucmVhc29uYWJsZT8NCj4gPg0K
PiA+IEl0IGlzIHVwIHRvIHRoZSBkcml2ZSB2ZW5kb3IgdG8gZGVjaWRlIGhvdyB6b25lcyBhcmUg
bWFwcGVkIG9udG8gZmxhc2ggbWVkaWEuDQo+ID4gRGlmZmVyZW50IG1hcHBpbmcgZ2l2ZSBkaWZm
ZXJlbnQgcHJvcGVydGllcyBmb3IgZGlmZmVyZW50IHVzZSBjYXNlcy4NCj4gPiBab25lcywgaW4g
bWFueSBjYXNlcywgd2lsbCBiZSBtdWNoIGxhcmdlciB0aGFuIGFuIGVyYXNlIGJsb2NrIGR1ZSB0
bw0KPiA+IHN0cmlwcGluZyBhY3Jvc3MgbWFueSBkaWVzIGZvciBleGFtcGxlLiBBbmQgZXJhc2Ug
YmxvY2sgc2l6ZSBhbHNvIGhhcw0KPiA+IGEgdGVuZGVuY3kgdG8gZ3JvdyBvdmVyIHRpbWUgd2l0
aCBuZXcgbWVkaWEgZ2VuZXJhdGlvbnMuDQo+ID4gVGhlIGJsb2NrIGxheWVyIG1hbmFnZW1lbnQg
b2Ygem9uZWQgYmxvY2sgZGV2aWNlcyBhbHNvIGFwcGxpZXMgdG8gU01SDQo+ID4gSEREcywgd2hp
Y2ggY2FuIGhhdmUgYW55IHpvbmUgc2l6ZSB0aGV5IHdhbnQuIFRoaXMgaXMgbm90IGFsbCBhYm91
dCBmbGFzaC4NCj4gPg0KPiA+IEFzIGZvciBsYXJnZSB3cml0ZXMsIHRoZXkgbWF5IG5vdCBiZSBw
b3NzaWJsZSBkdWUgdG8gbWVtb3J5DQo+ID4gZnJhZ21lbnRhdGlvbiBhbmQvb3IgbGltaXRlZCBT
R0wgc2l6ZSBvZiB0aGUgZHJpdmUgaW50ZXJmYWNlLiBFLmcuDQo+ID4gQUhDSSBtYXggb3V0IGF0
IDE2OCBzZWdtZW50cywgbW9zdCBIQkFzIGFyZSBhdCBiZXN0IDI1NiwgZXRjLg0KPiA+DQo+ID4g
PiBJIGRvbid0IHNlZSB3aHkgaXQgc2hvdWxkIGJlIGEgZnVuZGFtZW50YWwgcHJvYmxlbSBmb3Ig
ZS5nLiBSb2Nrc0RCDQo+ID4gPiB0byBpc3N1ZSBzaW5nbGUgem9uZS1zaXplZCB3cml0ZXMgKHdo
YXRldmVyIHRoZSB6b25lIHNpemUgaXMgYmVjYXVzZQ0KPiA+ID4gUm9ja3NEQiBuZWVkcyB0byBj
b3BlIHdpdGggaXQpLiBUaGUgd3JpdGUgYnVmZmVyIGV4aXN0cyBhcyBhIGxldmVsDQo+ID4gPiBp
biBEUkFNIGFueXdheXMgYW5kIGluY3JlYXNpbmcgd3JpdGUgbGF0ZW5jeSB3aWxsIG5vdCBtYXR0
ZXIgZWl0aGVyLg0KPiA+DQo+ID4gUm9ja3NkYiBpcyBhbiBhcHBsaWNhdGlvbiwgc28gb2YgY291
cnNlIGl0IGlzIGZyZWUgdG8gaXNzdWUgYSBzaW5nbGUNCj4gPiB3cml0ZSgpIGNhbGwgd2l0aCBh
IGJ1ZmZlciBzaXplIGVxdWFsIHRvIHRoZSB6b25lIHNpemUuIEJ1dCBkdWUgdG8gdGhlDQo+ID4g
YnVmZmVyIG1hcHBpbmcgbGltaXRhdGlvbnMgc3RhdGVkIGFib3ZlLCB0aGVyZSBpcyBhIHZlcnkg
aGlnaA0KPiA+IHByb2JhYmlsaXR5IHRoYXQgdGhpcyBzaW5nbGUgem9uZS1zaXplZCBsYXJnZSB3
cml0ZSBvcGVyYXRpb24gd2lsbA0KPiA+IGVuZC11cCBiZWluZyBzcGxpdCBpbnRvIG11bHRpcGxl
IHdyaXRlIGNvbW1hbmRzIGluIHRoZSBrZXJuZWwuDQo+ID4NCj4gPiA+DQo+ID4gPiBPbiBXZWQs
IEp1biAxNywgMjAyMCBhdCA2OjU1IFBNIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4g
d3JvdGU6DQo+ID4gPj4NCj4gPiA+PiBPbiBXZWQsIEp1biAxNywgMjAyMCBhdCAwNDo0NDoyM1BN
IC0wNzAwLCBIZWluZXIgTGl0eiB3cm90ZToNCj4gPiA+Pj4gTWFuZGF0aW5nIHpvbmUtc2l6ZWQg
d3JpdGVzIHdvdWxkIGFkZHJlc3MgYWxsIHByb2JsZW1zIHdpdGggZWFzZQ0KPiA+ID4+PiBhbmQg
cmVkdWNlIHJlcXVlc3QgcmF0ZSBhbmQgb3ZlcmhlYWRzIGluIHRoZSBrZXJuZWwuDQo+ID4gPj4N
Cj4gPiA+PiBZaWtlcywgbm8uIFR5cGljYWwgem9uZSBzaXplcyBhcmUgbXVjaCB0byBsYXJnZSBm
b3IgdGhhdCB0byBiZQ0KPiA+ID4+IHJlYXNvbmFibGUuDQo+ID4gPg0KPiA+DQo+ID4NCj4gPiAt
LQ0KPiA+IERhbWllbiBMZSBNb2FsDQo+ID4gV2VzdGVybiBEaWdpdGFsIFJlc2VhcmNoDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1h
aWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
