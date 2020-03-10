Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB6180B33
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 23:08:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eax9FNt0XJgVdooffmwMl+hPq2ZFZ7j68Kth6bIucow=; b=K/fTRLi9ELAzkF
	F+cfZmpG1rTM18oHOax4JkNVmYTu/n5O0d9pXdzeEMT/noiWYCWLnJUC4uUdTC9mBmO7bh/gF6B/p
	Nobe+siwP7esYWhduIzvZDJwXG5Gx/9n9GKj9/Eua3IZYa/i5rZOwHOiBW43LsywNxcloK4tz3H+k
	kjlD91uE8+6XgtGcuhHHzGzp1HGpX9ahpDCqVlMmGMK/5+CFz0LqskNWQ2B4UL5515XnsNwPsdhSN
	Xm3jkMK9Z+n6JksBa9vDiAPpzlKufZhCzt4IWSEmVIvjdNImmvi+Org7GRlnliHkx9lw0tESEfML8
	rYqcOPlcWEjYdbpo08ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBn3E-0005xL-Ui; Tue, 10 Mar 2020 22:08:36 +0000
Received: from mail-mw2nam10on2049.outbound.protection.outlook.com
 ([40.107.94.49] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBn39-0005wk-0j
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 22:08:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ifN5Bt+vzcgI8rp9e9yG1gws5P44MIgxyFIrCFF/tzRag3fPIVYu25Jl5YnIDAuKt21AfJYoVIcbcFZQUZ8+l8dRcz1tXBn514OS71QFwi+bQp1YrgFdupfiBYC4jeojBEU5FOiAvNIofgQI0oAaJvvIKw7G3hvWj3lC9x7UjHwE/LE4AJW1dfoi/KD4h678/WOKVpGSlaYZLpMvGyCuyYa4LNlAcy9tI46awfOHugFvqVY9cNXKmNnX4z+XrH0Fiv81/iU6w608ryQzsvkc0qEVmkANkIM2mic3hBLF2bWUMuPWtXCyGBd+CfyiR/oh4bDoDiWy3NMo0pJ1y3dVEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=epBD1OP52QnR95/OgA090NCpFRT+O+t6gV6RA0EoTwI=;
 b=d6jIuK96jgM9XOMmMcG41DzW78BE8zqZK67StSJrKdKcNKCl1A6lLTcfHHznzMcf/reK1XpMeibZpcaNR96T4o8kO1jcohyuP9faOetWJu2TkMk4GFzWvj9O3h8qaBmGrNvegMOmPD6hvudBEYE+hy/he7huz2CypnR5DbWE1eDAN8QFrf0kEwbHtrFMGKe5dFkNtIk56sEa+v4yPb2oVOtjxUsmYOhuixLNWotaODnw23DlLzyE1Ip9cOiOSokeRppS/2BYMTVUnSeq1VL4oLnmxtT66WNLpjtv389lvkXcVjIqDCBeOsUNmfIW3FWWpeYTUQ4VtUmwOg2j5Td/Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=netapp.com; dmarc=pass action=none header.from=netapp.com;
 dkim=pass header.d=netapp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netapp.onmicrosoft.com; s=selector1-netapp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=epBD1OP52QnR95/OgA090NCpFRT+O+t6gV6RA0EoTwI=;
 b=jWGPbteDeBtg9R5RZ8wA0iadzcJG+BTirND5PDMjPq1wEDR8albG59t8CEUoMi9XGZS/EVvc2WAM9fh1Ebz5fZ7kobooksnXSVotajliXJjA0fMcpPZ1CCq0QRU8ii9A2j1OPsLUpDDK6D06qx+RbIfsUETDVxCK8wr8CTNXaOo=
Received: from BN7PR06MB3811.namprd06.prod.outlook.com (2603:10b6:406:8a::14)
 by BN7PR06MB4082.namprd06.prod.outlook.com (2603:10b6:406:82::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Tue, 10 Mar
 2020 22:08:24 +0000
Received: from BN7PR06MB3811.namprd06.prod.outlook.com
 ([fe80::fc4a:9b42:e2db:5ebb]) by BN7PR06MB3811.namprd06.prod.outlook.com
 ([fe80::fc4a:9b42:e2db:5ebb%3]) with mapi id 15.20.2793.018; Tue, 10 Mar 2020
 22:08:24 +0000
From: "Meneghini, John" <John.Meneghini@netapp.com>
To: Keith Busch <keith.busch@gmail.com>, Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-multipath: do not reset on unknown status
Thread-Topic: [PATCH] nvme-multipath: do not reset on unknown status
Thread-Index: AQHV5/2PqYkeE5X3R0qtHkiG+ngvBKhCb4uA///OQIA=
Date: Tue, 10 Mar 2020 22:08:24 +0000
Message-ID: <33B65F80-279A-4D25-8AAD-6E340D53D2D3@netapp.com>
References: <20200220145241.12982-1-kbusch@kernel.org>
 <CAOSXXT7CP+4OGkQ+W9GR7kXYMvC=5iuAzgc2t5mv4BcEF+mBbA@mail.gmail.com>
In-Reply-To: <CAOSXXT7CP+4OGkQ+W9GR7kXYMvC=5iuAzgc2t5mv4BcEF+mBbA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.22.0.200209
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=John.Meneghini@netapp.com; 
x-originating-ip: [216.240.30.23]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff909671-23cb-4890-dd60-08d7c53f8d6a
x-ms-traffictypediagnostic: BN7PR06MB4082:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN7PR06MB40829D1F2BF830F18D10E054E4FF0@BN7PR06MB4082.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(396003)(376002)(189003)(199004)(81156014)(66476007)(107886003)(2616005)(478600001)(33656002)(64756008)(76116006)(66556008)(91956017)(66946007)(86362001)(66446008)(81166006)(8936002)(4326008)(71200400001)(36756003)(6486002)(6506007)(53546011)(6512007)(5660300002)(186003)(2906002)(55236004)(110136005)(26005)(316002)(8676002)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR06MB4082;
 H:BN7PR06MB3811.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: netapp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /N1YyY4Dx+nfXW60m7bu9rZLoRMv/ArCjS20F3z+MdcxAr4ARtZ+NjrtVxTqJ9ZaZXMvjz8AVUrF2wqPOnBmtKrsDNcKxGt7n5jmiuiAjb/+VCy2ELXI4/c6u+Us2n8ropJbtvV3LqC+bLDbnpvXEszj8dPdraQL2IkCoKvKq5k+y3lURM3ZgzLN/xJovms1YPav+CpCzpFQgl0tFBQ3jIpUqLUIn3/t0SXf4em95rte+MWevN7RIxNTHbbJ8no3930QoHb8ZlL8LFLAmFn0cLtaG6nDmvxkZOXXawuUaYWtoHzYB9gYLd9mGbmPZYzw7L+82G2CkU3JbEIzUU6o6BEtDYcNQCG2MOJyhvo0n0EUNyCLgAfXTEHgqz0peFOSd77stvWcFGYUSw5CRrLaw6kCxl23lZ1+0612Q0g0PQNLFc6oiu1YOvjqwkea3p9k
x-ms-exchange-antispam-messagedata: siBeLZoif2NFrZhebTFpC1ciUgfsMacT2nz1fnMobD7JwpEdjum33753YGqq40FyI4yRp+XDjxAaVq96BmUkDETLJLOWcJEZ/GEq205ILcxfz0OyQheOeTJZkt2uWx7Cumhln5N9jEHjllRTcp9GSg==
Content-ID: <F716D8EBFE32394E91B3B5E8A8E47E7F@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: netapp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff909671-23cb-4890-dd60-08d7c53f8d6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 22:08:24.0867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4b0911a0-929b-4715-944b-c03745165b3a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T29/B9zUmAo3Y6C9RxgfIXFvu+712bPpk2y2vEGLL+fSNg2P5c0Q4wU9OGZmvqpPgIibjwymq0l+ioILDEl74w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR06MB4082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_150831_118143_275921CF 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.de>, "Meneghini,
 John" <John.Meneghini@netapp.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SSB0aGluayB0aGUgYW5zd2VyIHRvIHRoaXMgcXVlc3Rpb24gbmVlZHMgdG8gY29tZSBmcm9tIEhh
bm5lcyBhbmQgQ2hyaXN0b3BoLg0KDQpUaGlzIHBhdGNoIGlzIGEgdmVyc2lvbiBvZiBhIGNoYW5n
ZSBIYW5uZXMgYW5kIEkgd29ya2VkIG9uIHByaXZhdGVseSBmb3Igc29tZSB0aW1lLg0KDQpJIHJl
cG9ydGVkIHRoaXMgcHJvYmxlbSBvbiB0aGlzIGxpc3QgbW9udGhzIGFnbywgd2hlbiBJIHByb3Bv
c2VkIGFuIEFDUkUgcGF0Y2gsDQphbmQgd2UndmUgaGFkIGEgQlogb3BlbiB3aXRoIFNVU0UgZm9y
IHRoaXMgcHJvYmxlbS4gIEFmdGVyIHNvbWUgdGltZSB3b3JraW5nIG9uDQp0aGlzIEJaIEhhbm5l
cyB0b29rIG9uZSBvZiBteSBzdWdnZXN0aW9ucyBhbmQgcHVzaGVkIGEgcHJvcG9zZWQgcGF0Y2gg
b3V0Lg0KDQpDaHJpc3RvcGggdGhlbiBzaWduaWZpY2FudGx5IG1vZGlmaWVkIHRoZSBwYXRjaCwg
YW5kIEkgdG9vayBib3RoIENocmlzdG9waCdzDQpjaGFuZ2VzIGFuZCBIYW5uZXMnIGNoYW5nZXMg
YW5kIHB1c2hlZCB1cCB0aGUgZmluYWwgcGF0Y2guDQoNCi9Kb2huDQoNClAuUy4gdGhhdOKAmXMg
Zm9yIHdvcmtpbmcgb24gdGhpcyBLZWl0aCwgSSByZWFsaXplIG15IHBhdGNoIGRpZCBub3QgYXBw
bHkgY2xlYW5seS4NCg0K77u/T24gMy8xMC8yMCwgNTowNiBQTSwgIktlaXRoIEJ1c2NoIiA8a2Vp
dGguYnVzY2hAZ21haWwuY29tPiB3cm90ZToNCiAgICANCiAgICBPbiBUaHUsIEZlYiAyMCwgMjAy
MCBhdCA3OjUzIEFNIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz4gd3JvdGU6DQogICAg
Pg0KICAgID4gRnJvbTogSm9obiBNZW5lZ2hpbmkgPGpvaG5tQG5ldGFwcC5jb20+DQogICAgPg0K
ICAgID4gVGhlIG52bWUgbXVsdGlwYXRoIGVycm9yIGhhbmRsaW5nIGRlZmF1bHRzIHRvIGNvbnRy
b2xsZXIgcmVzZXQgaWYgdGhlDQogICAgPiBlcnJvciBpcyB1bmtub3duLiBUaGVyZSBhcmUsIGhv
d2V2ZXIsIG5vIGV4aXN0aW5nIG52bWUgc3RhdHVzIGNvZGVzIHRoYXQNCiAgICA+IGluZGljYXRl
IGEgcmVzZXQgc2hvdWxkIGJlIHVzZWQsIGFuZCByZXNldHRpbmcgY2F1c2VzIHVubmVjZXNzYXJ5
DQogICAgPiBkaXNydXB0aW9uIHRvIHRoZSByZXN0IG9mIElPLg0KICAgID4NCiAgICA+IENoYW5n
ZSBudm1lJ3MgZXJyb3IgaGFuZGxpbmcgdG8gZmlyc3QgY2hlY2sgaWYgZmFpbG92ZXIgc2hvdWxk
IGhhcHBlbi4NCiAgICA+IElmIG5vdCwgbGV0IHRoZSBub3JtYWwgZXJyb3IgaGFuZGxpbmcgdGFr
ZSBvdmVyIHJhdGhlciB0aGFuIHJlc2V0IHRoZQ0KICAgID4gY29udHJvbGxlci4NCiAgICANCiAg
ICANCiAgICBJJ3ZlIGFwcGxpZWQgdGhpcyB0byA1LjcuIE1hbnkgZGV2ZWxvcGVycyBoYWQgaW5w
dXQgdG8gdGhpcyBwYXRjaC4NCiAgICBQbGVhc2UgbGV0IG1lIGtub3cgaWYgYXR0cmlidXRpb24g
c2hvdWxkIGJlIGFkanVzdGVkLCBhbmQgSSB3aWxsIGZpeA0KICAgIEFTQVAuDQogICAgDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUg
bWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
