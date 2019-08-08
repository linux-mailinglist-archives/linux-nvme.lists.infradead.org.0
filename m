Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC07866C2
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 18:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRaOsBprjp5og2t9XBX/zoTHVPcQh3NbPE2/wOu+Pps=; b=onjtQKuOUF17WZ
	XAHvMPnHUZWYU7UhW3INO0K5fDZNhUp3zdtTayFAMQUBANPvO077FFZFNlSw3ldftUS+HYmuatGJi
	kqkiZFB3lHc1duDEEEQTYK0+ngCIxRyDtfbt8BrJeHUg5/+5UP/aJAxS5Q+QVKtcSjnZoFcXzZJbb
	TRCZ+MGog6uHYherVhZzOqZO2P9B67QU4wJx5jwUGCwB1Rlc2CP4RW/pC0uwwJ817X3wHE6Pbeh2d
	809C5HKPSP71r6JQnoeKosQ3MsZBJRh2eRG7WnFR0/pciQGNGmZTVuMksD7ljAPtZkBMVCJtiMBpJ
	l/NFh4LjjKoGF5gZpmcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvl2e-0005bR-OM; Thu, 08 Aug 2019 16:13:28 +0000
Received: from mail-eopbgr130058.outbound.protection.outlook.com
 ([40.107.13.58] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvl1s-0004h5-RD
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 16:12:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UdvCB/dlSQJc5tiW6Mzmh0PgUkMazf0hVdiwRCDMcye0XsULYDkn6Uaa9BTPXmbvmx3tdEFd2JQB8Y7TeErKblvSH8QyXNtBEz9bPScU8LA9CIYQHL26SeBKarNdQeZugnhKf0bwF0Ycwawq8Q06rzvrpPpVk4epdkN3s3DIuppMsV5JD+745tIt5/fQi9qR51CxpoN1GJYdg9PW8TujF5MKVdL4QF0gyDKS0nKtT3uiRqfU3Yu9b9rUXAVC5rsdadvVQWA80XGGaLolnlZhmppbVsV7Cy2bZlCU/+le+dqw/OM+TBho9PFVzV1FkDVq4ORRymHkTGe9ICDcm2PnaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1knd5e0fUKM9b5q8V/aZw366geKQ3/M3HINkviVDRo=;
 b=dDZfZB9t+k5oDh4vxwr5vya1VzMv07aW97O1+QUn3lLfBVLOcrq7qks4Z17DaMipwXnhMp55XDabFODqASYfaVL88CHGQUjJy2I2v01SP9LcJtASKgooNCdpXaRhHegt1st7MEX9XMXepog5hgf3lnNVLTzrM379cytSacCxv3nSI6EMxGZlVTosvjGv3HGYlzw55HTqUy+X/wdxFptl/F6Xi3ULIXknLG2zKyPufV3VkgB9759T2jHwmyumve3nThxRBDsvD62M38g+6W6t2nYD0PmJxKheF5WvQ4jUO+SSvjGUAHJ2rg3VrZWVDnmHkv8i5wlds6Wp8IG8YMrZMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=mellanox.com;dmarc=pass action=none
 header.from=mellanox.com;dkim=pass header.d=mellanox.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z1knd5e0fUKM9b5q8V/aZw366geKQ3/M3HINkviVDRo=;
 b=CfFDYKzv5vYmV4OnrjJQNx1LIUiQ2aGuxAh0HcdwmPqjTTOoEHWJs7RW/w0Oe54SBBnPZiAU3jb8bpk/yEHCE1lgxTYQHbogPRf+e4e/qsDBc65iPC36/3+HHLr6gjgOFCX+PTg1DehrtG3Gio03dNyayR62pswB7PFrkMUY+hQ=
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com (52.133.28.22) by
 AM6PR0502MB3896.eurprd05.prod.outlook.com (52.133.17.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.19; Thu, 8 Aug 2019 16:12:35 +0000
Received: from AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3]) by AM6PR0502MB4070.eurprd05.prod.outlook.com
 ([fe80::b415:1370:dc19:2c3%7]) with mapi id 15.20.2136.022; Thu, 8 Aug 2019
 16:12:35 +0000
From: Israel Rukshin <israelr@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Linux-nvme
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Topic: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Thread-Index: AQHVSqrJyniEbpiJHkWA9FONndt1cKbsqpkAgALfYQCAAKUFgIABQ9UA
Date: Thu, 8 Aug 2019 16:12:35 +0000
Message-ID: <bbab005d-a1c2-02a6-0716-fd74e5c8150f@mellanox.com>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <04c776f4-a04a-8256-c659-daa11fe78a29@grimberg.me>
 <806d9809-2c24-fcf9-e4c0-e07eaac88d13@mellanox.com>
 <e2a4fa0c-cba1-c044-768f-b9c249e5a5e5@grimberg.me>
In-Reply-To: <e2a4fa0c-cba1-c044-768f-b9c249e5a5e5@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR1PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::18) To AM6PR0502MB4070.eurprd05.prod.outlook.com
 (2603:10a6:209:18::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=israelr@mellanox.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [193.47.165.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7fe9b67d-96a5-4134-eb02-08d71c1b3990
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR0502MB3896; 
x-ms-traffictypediagnostic: AM6PR0502MB3896:
x-microsoft-antispam-prvs: <AM6PR0502MB38965650549913AB488E23CFD7D70@AM6PR0502MB3896.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(189003)(199004)(66066001)(3846002)(486006)(66446008)(6116002)(64756008)(66556008)(66476007)(186003)(5660300002)(66946007)(11346002)(25786009)(446003)(478600001)(2616005)(476003)(2906002)(4326008)(7736002)(26005)(54906003)(110136005)(316002)(52116002)(99286004)(305945005)(76176011)(31696002)(107886003)(6246003)(53936002)(81166006)(8936002)(6486002)(6512007)(6506007)(14454004)(86362001)(386003)(229853002)(256004)(81156014)(53546011)(102836004)(8676002)(6436002)(4744005)(71190400001)(71200400001)(31686004)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB3896;
 H:AM6PR0502MB4070.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Vp+OaV3X1w5Q+bspmAzF7IXQZZZjp2xF6TLw0zx3/hqo00CVqn0rWINXnNkKV92r5cj6rn3g7CgKh0pG4RWo/hl7yyluQmW7TxXXUNoDOskF4Z+NA6Lh7xLREd23V0znRmW3t2WGyDln7OcGc693oM0RZIHwoyRBJCcAW5QEwRWXb+4RncWGYafi3JZMQZNRGQGjNlgRlYjWrnV24h/zUTO7hhWIrqEjK+LjAhTXgO/xae63CuSnK8F98Wutp+NNCM6aw6b31C4+/IDPYtlq7OIbahsTPoXLTKCtDv4sE29Mz4/rLylrQlRm4c5ehuiKclYVdEpt4tSR6pa6q0HqSfO4GWwO14GwJn363iEZM9qXTT5/5fg2MvFuj6sK8VLyl3hrLVWvCCREqBxekP8j8UNRIM98sz7QQ9sBwQSWbo8=
Content-ID: <32642C82BBD5DA40B88DC836CEFBE34F@eurprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fe9b67d-96a5-4134-eb02-08d71c1b3990
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 16:12:35.3157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: israelr@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_091241_022410_7106F617 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC83LzIwMTkgMTE6NTMgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6DQo+DQo+PiBIaSBTYWdp
LA0KPj4NCj4+IEkgaW1wbGVtZW50ZWQgeW91ciBzdWdnZXN0aW9uIGJ1dCBpdCBkb2Vzbid0IHdv
cmsgZm9yIG1lLg0KPj4NCj4+IFRoZSBrZXJuZWxfc2V0c29ja29wdCgpIHN1Y2NlZWQgYW5kIEkg
c2VlIHRoYXQNCj4+IHF1ZXVlLT5zb2NrLT5zay0+c2tfcHJpb3JpdHkgd2FzIGNoYW5nZWQgdG8g
dGhlIGNvcnJlY3QgdmFsdWUsDQo+Pg0KPj4gYnV0IEkgZG9uJ3Qgc2VlIHRoYXQgdGhlIHByaW9y
aXR5IHdhcyBjaGFuZ2VkIG9uIFdpcmVzaGFyay4NCj4+DQo+PiBEbyBJIG1pc3MgYW55dGhpbmc/
DQo+DQo+IFNob3VsZCB3b3JrLCBjYW4geW91IGluc3RydW1lbnQgdG8gc2VlIHRoYXQgdGhlIHNr
Yi0+cHJpb3JpdHkgZG9lcw0KPiBnZXQgYXNzaWduZWQgY29ycmVjdGx5Pw0KDQpJIGRpZCB0aGUg
Zm9sbG93aW5nIGluc3RlYWQgYW5kIGl0IHdvcmtzISA6KQ0KDQorwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXQgPSBrZXJuZWxfc2V0c29ja29wdChxdWV1ZS0+c29jaywgU09MX0lQLCBJ
UF9UT1MsDQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIChjaGFyICopJm9wdCwgc2l6ZW9mKG9wdCkpOw0KDQpJdCBhZmZlY3RzIG9u
bHkgdGhlIG91dGdvaW5nIHBhY2tldHMgZnJvbSB0aGUgaW5pdGlhdG9yIHNpZGUgKHVubGlrZSAN
CnJkbWEtY20gdGhhdCBhZmZlY3RzIGJvdGggc2lkZXMpLg0KDQpJIGFkZGVkIHRoZSBzYW1lIGtl
cm5lbF9zZXRzb2Nrb3B0KCkgdG8gdGhlIHRhcmdldCBhdCANCm52bWV0X3RjcF9hZGRfcG9ydCgp
IGFuZCBpdCB3b3JrcyBvbiBib3RoIHNpZGVzLg0KDQpEbyB5b3UgdGhpbmsgd2UgbmVlZCB0byBh
ZGQgcG9ydCBjb25maWd1cmF0aW9uIG9uIHRoZSB0YXJnZXQgc2lkZSBmb3IgDQpudm1ldCB0Y3A/
DQoNClJlZ2FyZHMsDQoNCklzcmFlbA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
