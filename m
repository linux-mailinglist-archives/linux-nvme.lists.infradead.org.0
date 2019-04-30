Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAE1EF20
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 05:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUh5jnf3DUgzSqNnhlCmAWlNmiCZg8UMYdfgqtbs83c=; b=eJ3lIxbnWy3RbS
	1NfL56K3FZ9jtK5fk8oOhl5K3OEmJmIaUZ+13jHUtoRmwbtZ5Yv5BsFSA9URaYMCK/juXapw2s8bn
	6UqmPRRllKezqYjidRAqr/oSNKgaB1a+i7zEaRNBaxiy/FMgcrqXw+dQudUKA5LakpCEoGq9SqSRv
	0tcdthUGc/QTOOR3Odhlw78tbKlv2rOOJCXa3jLRe61WeGZkMplxf+zqCyJkDLGoHLvEdbsh/kulU
	76Ndhj6bFvE7XP5RdJ4VGEGebmc89RbmWUTiVi2WAnLte22sihR9RC7eZL9Yk2mBwoBkkY41Fm6TP
	aTvnafnNajjKZpuBfJjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLJHz-0005Ht-Gf; Tue, 30 Apr 2019 03:18:39 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLJHt-0005HI-Ra
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 03:18:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556594313; x=1588130313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DNWvhXaHbtiqJ2lbH9ueAVdGUw94wM4Hzl+xeoI62HU=;
 b=UloxixTPsYe3hub+v11Q+qIxoz/Z/myYKug05ci3qLsQSH2JZLviZeo8
 U7lxBNIDcz/+w8Pt07wUL1tS+ZMVI7H6UXtrdTrdSEFp1q+k/0F9OFcaM
 sUmwQmYsJ9Tvk9/gOeD7ds1+NbGLVacsYmDchkRe87unyEzEgPEcZOT95
 +6Xhmog7R4741yueMDFFnGreuow1WjVQt07e8cYts7Jtr4Ar6isafmY1N
 ujnY59vahYLha/haoKVtCG31ThBIRMbDq6ILZcImqWwhaWtX+vgykI13Z
 G8yqUHaqTLyXABwjMHu6igMIdc1CmUhJLKc+HUzMn3395HcLODgoiL3At g==;
X-IronPort-AV: E=Sophos;i="5.60,412,1549900800"; d="scan'208";a="112086461"
Received: from mail-bn3nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.58])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 11:18:30 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNWvhXaHbtiqJ2lbH9ueAVdGUw94wM4Hzl+xeoI62HU=;
 b=AJlJgZ4Nqrs/HRndjKuv01qjMWQMpSd+haIXHO64IXf1GUfNRNyj2KhBQ9u+rEYBoYQ4JJ/8hgG/eopQOrSIwJvuBH0uw+nnO9Ac5CYtOEi28HW18q2Ph0cxbdLrOKcjpP+83cEtubHj4LeJVdD9tXaS6KLcCEzNd6J65DeL9lw=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4656.namprd04.prod.outlook.com (52.135.120.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.12; Tue, 30 Apr 2019 03:18:28 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 03:18:28 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, Bart Van Assche <bvanassche@acm.org>,
 "Heitke, Kenneth" <kenneth.heitke@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
Thread-Topic: [PATCH V2 1/3] nvme: introduce nvme-ctrl state name string array
Thread-Index: AQHU/jsbSpPrZgEDa0m7M4oze4sBGqZTyaUAgAAAigD//8rEAA==
Date: Tue, 30 Apr 2019 03:18:28 +0000
Message-ID: <78EA0B2C-0CD6-4C6E-9853-AFBE6F869E6D@wdc.com>
References: <20190429032442.5923-1-chaitanya.kulkarni@wdc.com>
 <20190429032442.5923-2-chaitanya.kulkarni@wdc.com>
 <067b8ef5-abea-2bc8-9da5-a39ac3b54a1b@intel.com>
 <SN6PR04MB452783333EA5F5FE1190294886390@SN6PR04MB4527.namprd04.prod.outlook.com>
 <1556580424.161891.170.camel@acm.org>
 <091fabba-234c-d3bb-a882-43b599fb0b21@grimberg.me>
In-Reply-To: <091fabba-234c-d3bb-a882-43b599fb0b21@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.18.0.190414
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:c1dd:18db:34d3:7ddc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15c62073-9220-4ad7-dad1-08d6cd1a842c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4656; 
x-ms-traffictypediagnostic: SN6PR04MB4656:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4656A5E4047B472667019201863A0@SN6PR04MB4656.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(376002)(396003)(136003)(366004)(199004)(189003)(256004)(14444005)(82746002)(46003)(36756003)(186003)(476003)(446003)(2616005)(7736002)(11346002)(486006)(6506007)(93886005)(2906002)(305945005)(6116002)(102836004)(6486002)(229853002)(2501003)(6436002)(76176011)(33656002)(8676002)(8936002)(72206003)(478600001)(81156014)(81166006)(91956017)(71200400001)(97736004)(5660300002)(14454004)(66946007)(25786009)(68736007)(4744005)(76116006)(966005)(110136005)(6512007)(54906003)(4326008)(58126008)(53936002)(64756008)(99286004)(6306002)(6246003)(316002)(66476007)(66556008)(66446008)(71190400001)(73956011)(83716004)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4656;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GSY1mReL8iBDlOHLHrbKyyY/T6DEB6s7oejmqZleZ9ag95F6BLVfid+pKLJwVsMDpND94J7aCNiC3jc4UHO6jmW57JNjqJoTNZmSgsnY7UQMV2Mm7Ju/8C4IsIrKWcfdrbGlj+1QvExP6HV0UHNXkK7y29NhFtodxygj7sKAv/+xw6DVa4QaIRPQXqK4LY9DOgaLLOmKemnJAAu4+BgVRPzVQ0mBGOomsWgqup8byqSMLsgvWd3sq7DGZSrzMEGbw+eRQRrISRUczbNSEnD14PfBzFgifg0njhCM1+Goc6Co6ffTb1Sv04XIYG77nIRFa26wVWUOFCDz1IAdSckUDN9si27mmBqwmfrCK6K3AgwlFGOtGLXa0DGHjxcOlIpY5+ZdjDxHeOpm0WWxWxSOCKiymvUfrjdF+6MjjQNmGqk=
Content-ID: <EBFAA5627726D54FA0A7516098DEB6C2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15c62073-9220-4ad7-dad1-08d6cd1a842c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 03:18:28.8899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_201834_083413_AD8300D6 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "hare@suse.com" <hare@suse.com>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

U2VlbXMgbGlrZSBJIG1pc3NlZCBpdC4gTGV0IG1lIHNlbmQgdGhlIFYzIGFsb25nIHdpdGggb3Ro
ZXIgY29tbWVudHMgZnJvbSBTYWdpLg0KDQrvu79PbiA0LzI5LzE5LCA0OjI5IFBNLCAiTGludXgt
bnZtZSBvbiBiZWhhbGYgb2YgU2FnaSBHcmltYmVyZyIgPGxpbnV4LW52bWUtYm91bmNlc0BsaXN0
cy5pbmZyYWRlYWQub3JnIG9uIGJlaGFsZiBvZiBzYWdpQGdyaW1iZXJnLm1lPiB3cm90ZToNCg0K
ICAgIA0KICAgID4+PiBJIGhhdmVuJ3QgYmVlbiBwYXlpbmcgYXR0ZW50aW9uIGlmIHRoaXMgd2Fz
IGJvdWdodCB1cCBiZWZvcmUgYnV0IHdvbid0DQogICAgPj4+IHRoaXMgY3JlYXRlIG11bHRpcGxl
IGNvcGllcyBvZiB0aGlzIGRhdGEgZm9yIGV2ZXJ5IHNvdXJjZSBmaWxlIHRoZQ0KICAgID4+PiBp
bmNsdWRlcyB0aGUgaGVhZGVyIGZpbGU/DQogICAgPj4NCiAgICA+PiBZZXMsIHdlIGRpZCBkaXNj
dXNzIHRoaXMuDQogICAgPiANCiAgICA+IEhpIENoYWl0YW55YSwNCiAgICA+IA0KICAgID4gSW4g
YW4gZS1tYWlsIGZyb20gQ2hyaXN0b3BoIEkgZm91bmQgdGhlIGZvbGxvd2luZyByZWNvbW1lbmRh
dGlvbiB3aXRoIHJlZ2FyZA0KICAgID4gdG8gdGhlIG52bWVfY3RybF9zdGF0ZV9uYW1lW10gYXJy
YXk6ICJKdXN0IGtlZXAgaXQgbmVhciB0aGUgdG9wIG9mIG11bHRpcGF0aC5jLiINCiAgICA+IGFu
ZCB5b3UgcmVwbGllZCAiT2theSwgdGhhdCB3b3JrcyB0b28uIg0KICAgID4gDQogICAgPiBEaWQg
SSBwZXJoYXBzIG1pc3Mgc29tZXRoaW5nPw0KICAgIA0KICAgIFRoYXQgd2FzIG15IHJlY29sbGVj
dGlvbiB0b28uLi4NCiAgICANCiAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KICAgIExpbnV4LW52bWUgbWFpbGluZyBsaXN0DQogICAgTGludXgtbnZt
ZUBsaXN0cy5pbmZyYWRlYWQub3JnDQogICAgaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lDQogICAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52
bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LW52bWUK
