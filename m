Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07F757B6A
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXNRNacQxNDqaGZjpHy/kzGQIIQ/r1chWi8K3mJznlg=; b=rUGqKkYXkDpb+o
	zOLBbhOqzzUCJ5QVNQeauoS3j9NjN9/EFPCeuDgOOs757NX69zWS1evV2b6w+bfD/2AHMSUwLgaxx
	B84grwNzYs7azrFvmOKA5q4qHj2QFbkra+yGP48WdCEw6ei3RBgPK6q0Yrcvqb0JqacMWDNM51oyt
	D7Lpt3FMgufvFdOrgYnHoJCN2RSB5dCtOL5bl2s5/nAjtBfmBYkyyIs6YKKbonybDixr+9OdXzkv5
	MQoXaorkXq8YGIqn5ERDoa2LxWkliZhaAeSDX3P8tXFf7pQqheMX1IUe2Yx6v8FleAVRWpRAiec3K
	iaqWQ8SID5pUS67zgQyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMyB-00008P-PQ; Thu, 27 Jun 2019 05:29:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsL-00033C-JZ
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:23:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WqBpN83LyOFjQvwqlwTcSvuoOJHHok4XS1A9Ium+qpY=; b=JbzrZWLmTHtd9BwgnHcA6IdswC
 xYe2ucDLqzFap5jhTEdb5JTQUiwbPXY+OQDhbGXHX9Ig01yu8fWIHouefvDTQhSl83M8BDdQB0rXW
 s4dlqus7Tyf2g64YsljZfjl4CXd/riCfUOkHLzrsVHDcTmSYOtBQAnk9TmbP4OwlQI/JdYUCEoV5h
 pJR4SLsHACz7sNr8FIBx6yMnVlEXJ0ytbS4ru0taV92R9gbBLLclI7GTr0iJo8FjBEc0BxN207H6r
 oa1KTimiVLPhoHjoorlB1tDy3ByKI/mt5Qj9Evk0xiDoIip1czJAKA/mxFF/1QJ6Ikr8BCTph/fbY
 ZUlVOgKA==;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgHt3-0001Bf-LX
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 00:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1561593832; x=1593129832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=WqBpN83LyOFjQvwqlwTcSvuoOJHHok4XS1A9Ium+qpY=;
 b=H/hUXwYy/ikMW5kbDHACuejCefncoRG5LfyeBQ1G8aNxuA5rcsbO3i8d
 a+/CxvjUMYLZJ+BanaWi2EF3+gUYGwus8GSkdY03DBxngVV1rR1VjtS2S
 tHJkXQS6We2hjSf//S1lFeC+Xjr32KGVb9/3MYxh/gzIiP3r+jRBUqMFK
 HQi/CyUCjJLRc4cbVNhkHBv0lVj2rbGkGj8L486khvYFYVEuSMFvAGPYd
 s4raH5SvstW2v9cKJTsynHOASiEbDgibBBljEu+iLTfkKzLQaKQOrkt2X
 XBiPogekUoUk/jkR8VicrItsnQ6sUYe6bUXt+RTjNqu2Lk6ck3T0PQWIV Q==;
X-IronPort-AV: E=Sophos;i="5.63,421,1557158400"; d="scan'208";a="211442148"
Received: from mail-by2nam05lp2057.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.57])
 by ob1.hgst.iphmx.com with ESMTP; 27 Jun 2019 08:03:08 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WqBpN83LyOFjQvwqlwTcSvuoOJHHok4XS1A9Ium+qpY=;
 b=o01DBJKAA41MKcB1niPgSiMt32aZ6iaTmMDtND1l61cl7kNLAMKUqsErgtCZ0Qd4Q1yklQZQNJ4P+3mgyd+dMCg2KQ092VzlfUe1T6YdN9/0jpDl3HIqaquU4y5olg/7j5ZaG9UDaITHRE8xD8tG8sjn8q6yQIN/fx88E0zg9Lw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5767.namprd04.prod.outlook.com (20.179.58.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Thu, 27 Jun 2019 00:02:49 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::fc2b:fcd4:7782:53d6%7]) with mapi id 15.20.2008.018; Thu, 27 Jun 2019
 00:02:49 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] nvme-pci: Make nvme_dev_pm_ops static
Thread-Topic: [PATCH -next] nvme-pci: Make nvme_dev_pm_ops static
Thread-Index: AQHVK8QyV/HFyY84V0GwUJFDyz2beaauYmqA///IAoA=
Date: Thu, 27 Jun 2019 00:02:48 +0000
Message-ID: <16F98F71-9186-443A-A787-1F966A3BCC87@wdc.com>
References: <20190626020902.38240-1-yuehaibing@huawei.com>
 <20190626202311.GB4934@minwooim-desktop>
In-Reply-To: <20190626202311.GB4934@minwooim-desktop>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/10.1a.0.190609
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:7ce8:bb88:a236:3b7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: da475c96-a207-4b5a-3fd2-08d6fa92cabc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5767; 
x-ms-traffictypediagnostic: BYAPR04MB5767:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5767CD86FD9FE1A137B7887486FD0@BYAPR04MB5767.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 008184426E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(33656002)(73956011)(36756003)(486006)(66556008)(25786009)(71200400001)(71190400001)(66476007)(5660300002)(68736007)(76116006)(66446008)(66946007)(46003)(54906003)(58126008)(476003)(316002)(110136005)(4326008)(64756008)(11346002)(446003)(14444005)(256004)(6116002)(6246003)(186003)(76176011)(53546011)(6486002)(99286004)(6506007)(2616005)(102836004)(53936002)(72206003)(6436002)(86362001)(478600001)(2906002)(229853002)(6306002)(966005)(8936002)(14454004)(6512007)(81166006)(81156014)(7736002)(8676002)(305945005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5767;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tyI3tNMdQMPzzigxzPw1NWqjD/+qgJ1V7t7aLNBPNuu03U1BIEhDo2YkL0i1oLlHqZA9i3+ZnjPzrcAHPwhhTlurbZaagYgQ7tLrCHwDfj6w79D06uaXxqoyWINSGzAHYr1HEo4vAlPmPfWG6gjkpoE2KM0Ot64WeJOLVSlNSzevtu2h0zKUSPgPw+cOzfZ3VTz36YHEBImZ3HDhFsUiTFm6gnN7xRusnl+L0CV2Z1hSgMsW7UUVFp/16YN8PNQ7BSlRzCyDe9y91vvoTY77X5P3IyiPbzp06yVktPk6jLuQi4qtaLrH+WTFiH7mYUu4pWD51X01c9yTSNOqtr49GIFhb5QUlVIpIOw/8OqGuBvac5lbp7mQVzUxqk8aEEUunYOVClhmXT767kDapQN883UyPV0za0CcxqU5NP9N9Jw=
Content-ID: <700F4F47C515F3488C30827EA840589C@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da475c96-a207-4b5a-3fd2-08d6fa92cabc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2019 00:02:49.0659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5767
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010338_622439_141C4B53 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "axboe@fb.com" <axboe@fb.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "keith.busch@intel.com" <keith.busch@intel.com>,
 "kbusch@kernel.org" <kbusch@kernel.org>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TG9va3MgZ29vZC4NCg0KUmV2aWV3ZWQtYnk6IENoYWl0YW55YSBLdWxrYXJuaSA8Y2hhaXRhbnlh
Lmt1bGthcm5pQHdkYy5jb20+DQoNCu+7v09uIDYvMjYvMTksIDE6MjMgUE0sICJMaW51eC1udm1l
IG9uIGJlaGFsZiBvZiBNaW53b28gSW0iIDxsaW51eC1udm1lLWJvdW5jZXNAbGlzdHMuaW5mcmFk
ZWFkLm9yZyBvbiBiZWhhbGYgb2YgbWlud29vLmltLmRldkBnbWFpbC5jb20+IHdyb3RlOg0KDQog
ICAgT24gMTktMDYtMjYgMTA6MDk6MDIsIFl1ZUhhaWJpbmcgd3JvdGU6DQogICAgPiBGaXggc3Bh
cnNlIHdhcm5pbmc6DQogICAgPiANCiAgICA+IGRyaXZlcnMvbnZtZS9ob3N0L3BjaS5jOjI5MjY6
MjU6IHdhcm5pbmc6DQogICAgPiAgc3ltYm9sICdudm1lX2Rldl9wbV9vcHMnIHdhcyBub3QgZGVj
bGFyZWQuIFNob3VsZCBpdCBiZSBzdGF0aWM/DQogICAgPiANCiAgICA+IFJlcG9ydGVkLWJ5OiBI
dWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4NCiAgICA+IFNpZ25lZC1vZmYtYnk6IFl1ZUhh
aWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4NCiAgICA+IC0tLQ0KICAgID4gIGRyaXZlcnMv
bnZtZS9ob3N0L3BjaS5jIHwgMiArLQ0KICAgID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQ0KICAgID4gDQogICAgPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
dm1lL2hvc3QvcGNpLmMgYi9kcml2ZXJzL252bWUvaG9zdC9wY2kuYw0KICAgID4gaW5kZXggMTg5
MzUyMC4uZjUwMDEzMyAxMDA2NDQNCiAgICA+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L3BjaS5j
DQogICAgPiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9wY2kuYw0KICAgID4gQEAgLTI5MjMsNyAr
MjkyMyw3IEBAIHN0YXRpYyBpbnQgbnZtZV9zaW1wbGVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRl
dikNCiAgICA+ICAJcmV0dXJuIDA7DQogICAgPiAgfQ0KICAgID4gIA0KICAgID4gLWNvbnN0IHN0
cnVjdCBkZXZfcG1fb3BzIG52bWVfZGV2X3BtX29wcyA9IHsNCiAgICA+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGRldl9wbV9vcHMgbnZtZV9kZXZfcG1fb3BzID0gew0KICAgID4gIAkuc3VzcGVuZAk9
IG52bWVfc3VzcGVuZCwNCiAgICA+ICAJLnJlc3VtZQkJPSBudm1lX3Jlc3VtZSwNCiAgICA+ICAJ
LmZyZWV6ZQkJPSBudm1lX3NpbXBsZV9zdXNwZW5kLA0KICAgIA0KICAgIElNSE8sIGl0IHNob3Vs
ZCBiZSBpbiBzdGF0aWMuDQogICAgDQogICAgUmV2aWV3ZWQtYnk6IE1pbndvbyBJbSA8bWlud29v
LmltLmRldkBnbWFpbC5jb20+DQogICAgDQogICAgX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCiAgICBMaW51eC1udm1lIG1haWxpbmcgbGlzdA0KICAgIExp
bnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZw0KICAgIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQ0KICAgIA0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApM
aW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
