Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BFD82008
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 17:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ksQleEypLnalCIVG8x2daHD0WClk7m/amMDFptnHrk=; b=mHlC6iweqwUFvf
	2+N/saFwmXsa85J/gQNHDg2FJtnnS5Nm1p0mbhRRRp12BOutT7c4cmsJZjXciOll3PTw4VmFbuRCw
	YQAkZXUznRnobfZ2ZW3m4mKVuZsxZ8lVedp4arcnPh1We0lEWrxJogIHwlq/oXh9qzp51S5hkgN6O
	kyuLHvceJ/ZH0Z4ujIFBlrCW2Rb5ltbxJ/rD7DL2Ot7Aysx5xkNtbcfgmJHI725dI2ew2mnSQshgn
	+/C10dsyiVQTbrSzATFRWIYbr6CwkP8IVKouz725ASqVtOzYZZSQZLuwoiVQsg0D/kJ5nEfxek9Bp
	+eh+fFkdHwt+6rE0G3XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hueqw-0005VG-Vg; Mon, 05 Aug 2019 15:24:51 +0000
Received: from mail-eopbgr10053.outbound.protection.outlook.com ([40.107.1.53]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hueqq-0005Uq-MX
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 15:24:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tfo1MgUQmqdtnFMA5cF7myU9LaOBD7KJofH6QGue6iruJubpRRt106ExV2F7MwWO2WSD9mTC+sonMvFYw60ieBqkRrWpbfmW9Lb5LHQvSxYCpzrNJsvvXi+6qpiPv7PjfVH6XoTg9g4GlHkdIadCf3OWqmsUST0bBb60BNF4iOA/g4GqdaM2fSH+KePrvqHYsNvn4gkLkRB+3PipmFB597rm/QxIhIV8VCNWSvLZ3oW+jMiIKIPPeqQpALTiHq1HH+mLqJpH6A1mXU9vlxgk87KByczFqQRd2rM1C5bbAzmpQT4iDCl8AX0PbGwWB4mlaPEjpktKKMXBk+h8VSri/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0N17ZITwPPRVKD6SjLiyMoBN24/4kIPLNBSle8JArLU=;
 b=aqDoLZYAjeD8YCATA76tbRIcBE95yme9bnGbV8bY94QdtCQb+yAVLCPcWx6rc3ArPW1WmREz5CVQ91XaU12d24gFwKUvmbn6bhoZwatIcLsdhqIS3DhRE7wzBZ+kej7AN/LUfJb9cCkVd4qpCURJ0CAmObkbleQsQzkdOKHmtkJgUR8++nGTtd/Uu3Is8hzhxS/sf/0iibYklyq9nj6PEWJTnfkBvSqRp4kyRkEHVdzEksqUTGC2PHL5BUzdqgg96adH7DUMJouUMub31U7QmzETE3VfEtJqE0OAqCP3e0QRbWgDeIn3Xee/mZvsOMjnJ4T90cJZhbIyXOlHJWnT/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0N17ZITwPPRVKD6SjLiyMoBN24/4kIPLNBSle8JArLU=;
 b=VuENGiyfO9kpsp/X8zsAhSNeYNqQYfqiMPndV8P+h8OGGXM7Z6JcVx55ED37/GRRNc6vuWwjTAPgCzs5JbbSUN14IfuBRhOsNO/BK10Xe8FqNSe59P1hkNZnBvKZzsLuyLrxLOAfAvIJcM8WcLtBAHGMXZVsbvc33zmtnoipXws=
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com (52.133.28.22) by
 AM6PR0502MB3877.eurprd05.prod.outlook.com (52.133.17.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Mon, 5 Aug 2019 15:24:40 +0000
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3]) by AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 15:24:39 +0000
From: Israel Rukshin <israelr@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Linux-nvme
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Topic: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Index: AQHVSqrJyniEbpiJHkWA9FONndt1cKbsqpkAgAAD2oA=
Date: Mon, 5 Aug 2019 15:24:39 +0000
Message-ID: <94d485bf-d1db-b75f-e918-32d46ca1c4c1@mellanox.com>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
In-Reply-To: <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0087.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::27) To AM6PR0502MB4070.eurprd05.prod.outlook.com
 (2603:10a6:209:18::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=israelr@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.165.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99e925f9-cbee-4178-0788-08d719b90859
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0502MB3877; 
x-ms-traffictypediagnostic: AM6PR0502MB3877:
x-microsoft-antispam-prvs: <AM6PR0502MB387783EF43F0CB0D29CC9723D7DA0@AM6PR0502MB3877.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(189003)(199004)(31696002)(305945005)(6116002)(54906003)(186003)(99286004)(110136005)(36756003)(66446008)(66476007)(64756008)(66556008)(66946007)(2616005)(76176011)(3846002)(66066001)(229853002)(486006)(52116002)(6486002)(316002)(6436002)(26005)(6512007)(476003)(446003)(11346002)(53546011)(478600001)(386003)(53936002)(2906002)(102836004)(6506007)(6246003)(107886003)(68736007)(4744005)(71190400001)(4326008)(86362001)(7736002)(71200400001)(31686004)(81166006)(8676002)(25786009)(14454004)(5660300002)(8936002)(81156014)(256004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB3877;
 H:AM6PR0502MB4070.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: P9iQLAB1McG15padtYv8xPT0DgBrr6cC3YDA2MRPaozpp2dS8W+05kyrW9SsunKMIf4th0wM5m1KE6OUmU8MhOQCB2Nc7llRB+cYftTAWtVIDC5Wyos06yga+SvgA79WoxNmNjI7a6Gd6ru1NXkQvr2dEKQO/FhxQxi0QR8Nu2shcTk740lEm9iSK16XfhdQsLvwh9r80mCIA1RDOVaXY0f33d30bxEKP3+D3pxawCPL3s3Z9OKnLqCSUHd7hgptUakyKipuQjl2uPEEfLsSRR0W0JaqOduBceFhbm2k7YNIt2PhfxvL/oibHoLGOg8f/wzP0Vm1G3AvxFkO1Gu06qX9KMTvlNaW+wYVNcBqAwtp1E1fGJ9XxS7nxdSoh86OTaPC7m8JW0XsdV8OnaYq+35YblkpJ699efJvbx8aHtM=
Content-ID: <39284780DCBDB344ACCDCEE0C286C941@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99e925f9-cbee-4178-0788-08d719b90859
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 15:24:39.8379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: israelr@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3877
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_082444_796789_69861294 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
CkhpLA0KDQpZZXMgc3VyZSzCoCBsIHdpbGwgYWRkIHN1cHBvcnQgYWxzbyBmb3IgdGNwLg0KDQpS
ZWdhcmRzLA0KDQpJc3JhZWwNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
