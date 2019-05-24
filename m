Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2429F1F
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 21:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lwCGBMAluFsePcU6NL5tU1sIJP/4qX9eRulYoJh5gbw=; b=tYS9yjqqbRPeeC8sJKMvxIewg
	7IVwnTQ2wiguHZMHiKz0Kn5KUyV0fn70UY7fkcB7ytRHoaWl/2w73LzsNAKlTPxfHCIHPztrdtM2q
	tNjqyl0VYqpAs6A0fqomSHkGSmE/CZ1+ySCuA06B5Ag/sMWbqMLHrJj5DxXa88v+99wIFK4mD2VhJ
	VzdEBEzD5hhdWr5HMLJwwa4Ia4CXB0rIA0s4GNVe7lwj8DechDN7TXCQzx6RkNxy6nzM+VqBZQb88
	rXTI40OSQURiC2qdG3Y2j1hekkPbYZlBlh8DIBE1sYPk0sNfISCTx5Go4b1jJj55Fdj1gKuDkoJCl
	XqhuySmag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUFuC-0004xk-Rs; Fri, 24 May 2019 19:31:04 +0000
Received: from mail-eopbgr20053.outbound.protection.outlook.com ([40.107.2.53]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUFu7-0004x3-Pl
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 19:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/W6YzTlGGBuGyxk6j1IjHXxWjTcuQZTSqSeHgAGd8Y=;
 b=mTAsw0xdxdIznl7swy2vRlN/02BuDoOjKnRaqfJR716y+P8dEZcKa4vLIr5cLTxO1RmQ8weJ+ZOtmzTXkXQl/KkOsOF20Zrk7BtklgIjtxY9c1tOHmaplhHm3ZpmytWi9goTMcnICeVrnCoYXqq85yfBSs6AerOEfKYvsmIVHAQ=
Received: from HE1PR05CA0291.eurprd05.prod.outlook.com (2603:10a6:7:93::22) by
 VI1PR05MB6431.eurprd05.prod.outlook.com (2603:10a6:803:ff::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Fri, 24 May 2019 19:30:54 +0000
Received: from VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::203) by HE1PR05CA0291.outlook.office365.com
 (2603:10a6:7:93::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Fri, 24 May 2019 19:30:54 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT019.mail.protection.outlook.com (10.152.18.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 19:30:53 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 24 May 2019 22:30:53
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 24 May 2019 22:30:53 +0300
Received: from [172.16.0.59] (172.16.0.59) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 24 May 2019 22:30:51
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport
 dev
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>,
 <hch@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
 <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <ceb1744a-cc68-9588-bd07-d3060630e857@mellanox.com>
Date: Fri, 24 May 2019 22:30:50 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <da6603ee-4a71-e057-5c88-656455956eba@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.59]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39850400004)(136003)(2980300002)(199004)(189003)(336012)(26005)(77096007)(186003)(16526019)(486006)(446003)(86362001)(106002)(11346002)(2616005)(476003)(126002)(356004)(36756003)(65806001)(478600001)(65956001)(47776003)(64126003)(5660300002)(53546011)(76176011)(67846002)(2201001)(23676004)(2486003)(54906003)(58126008)(110136005)(16576012)(31696002)(316002)(31686004)(2870700001)(50466002)(107886003)(229853002)(6246003)(3846002)(6116002)(8936002)(14444005)(2906002)(70206006)(70586007)(8676002)(4326008)(81156014)(81166006)(7736002)(305945005)(65826007)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6431; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3a60d27-3b44-4771-7acc-08d6e07e565c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:VI1PR05MB6431; 
X-MS-TrafficTypeDiagnostic: VI1PR05MB6431:
X-Microsoft-Antispam-PRVS: <VI1PR05MB64315B55C4CFD3CDFE860CF7B6020@VI1PR05MB6431.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: JkRwFTjP3U8x+L9aRKp0zy3At2Xjas1lXjBNvLU4lqIDF3IerfbVLc+6nQc0LQZ/LjGlopN7Nt6eGUekn0oL6hdIUFHSyVHHpJepo2Gmbp4KDZMmf9nyuYq2YWCFrNQ7kQRm9VITiWwPJI9e3XN4RdBxpqeCIT9equ6cxaaqV+oF82ugnHEsE/Ouo0KJgMENMbJX04Bl5+3VSirWiEd/tQ2oo5yoXcIpjFTt9RB01WTuKBAJsqr3tsQQ/l8fw+hhi0K1xfZB7cW45g6pXikENQs5EDjDuodFz04p9IkVasHHIQTNFPlTUkOaKkBon45rC7VIP4RARE3RpkTQbqMIE5Gl10dmmwWH0dDL9F049WLP3+weGKwF7Jo7Jk1dUfDf1WKBEY57ecGhI9lyaThHu7ISAb3pDpJUQZRRDPux4eA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 19:30:53.5273 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a60d27-3b44-4771-7acc-08d6e07e565c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_123059_839536_DF9888ED 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjQvMjAxOSAxMDowNSBBTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPgo+PiBAQCAtNzU4
LDIzICs3NzcsMjYgQEAgc3RhdGljIHZvaWQgCj4+IG52bWVfcmRtYV9kZXN0cm95X2FkbWluX3F1
ZXVlKHN0cnVjdCBudm1lX3JkbWFfY3RybCAqY3RybCwKPj4gwqAgc3RhdGljIGludCBudm1lX3Jk
bWFfY29uZmlndXJlX2FkbWluX3F1ZXVlKHN0cnVjdCBudm1lX3JkbWFfY3RybCAKPj4gKmN0cmws
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBib29sIG5ldykKPj4gwqAgewo+PiArwqDCoMKgIHN0cnVj
dCBpYl9kZXZpY2UgKmliZGV2Owo+PiDCoMKgwqDCoMKgIGludCBlcnJvcjsKPj4gwqAgwqDCoMKg
wqDCoCBlcnJvciA9IG52bWVfcmRtYV9hbGxvY19xdWV1ZShjdHJsLCAwLCBOVk1FX0FRX0RFUFRI
KTsKPj4gwqDCoMKgwqDCoCBpZiAoZXJyb3IpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4g
ZXJyb3I7Cj4+IMKgIC3CoMKgwqAgY3RybC0+ZGV2aWNlID0gY3RybC0+cXVldWVzWzBdLmRldmlj
ZTsKPj4gLcKgwqDCoCBjdHJsLT5jdHJsLm51bWFfbm9kZSA9IGRldl90b19ub2RlKGN0cmwtPmRl
dmljZS0+ZGV2LT5kbWFfZGV2aWNlKTsKPj4gK8KgwqDCoCBpYmRldiA9IGN0cmwtPnF1ZXVlc1sw
XS5kZXZpY2UtPmRldjsKPj4gK8KgwqDCoCBjdHJsLT5jdHJsLm51bWFfbm9kZSA9IGRldl90b19u
b2RlKGliZGV2LT5kbWFfZGV2aWNlKTsKPj4gK8KgwqDCoCBjdHJsLT5tYXhfZnJfcGFnZXMgPSBu
dm1lX3JkbWFfZ2V0X21heF9mcl9wYWdlcyhpYmRldik7Cj4+IMKgIC3CoMKgwqAgY3RybC0+bWF4
X2ZyX3BhZ2VzID0gCj4+IG52bWVfcmRtYV9nZXRfbWF4X2ZyX3BhZ2VzKGN0cmwtPmRldmljZS0+
ZGV2KTsKPj4gLQo+PiAtwqDCoMKgIGVycm9yID0gbnZtZV9yZG1hX2FsbG9jX3FlKGN0cmwtPmRl
dmljZS0+ZGV2LCAKPj4gJmN0cmwtPmFzeW5jX2V2ZW50X3NxZSwKPj4gK8KgwqDCoCBlcnJvciA9
IG52bWVfcmRtYV9hbGxvY19xZShpYmRldiwgJmN0cmwtPmFzeW5jX2V2ZW50X3NxZSwKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpLCBETUFf
VE9fREVWSUNFKTsKPj4gwqDCoMKgwqDCoCBpZiAoZXJyb3IpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBnb3RvIG91dF9mcmVlX3F1ZXVlOwo+PiDCoCDCoMKgwqDCoMKgIGlmIChuZXcpIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIC8qIGN0cmwgdGFrZXMgcmVmY291bnQgb24gZGV2aWNlICovCj4+ICvCoMKg
wqDCoMKgwqDCoCBudm1lX3JkbWFfY3RybF9kZXZfZ2V0KGN0cmwsIGN0cmwtPnF1ZXVlc1swXS5k
ZXZpY2UpOwo+PiArCj4KPiBEbyB5b3UgYWN0dWFsbHkgbmVlZCB0aGUgZXh0cmEgcmVmZXJlbmNl
IG9uIHRoZSBkZXZpY2U/IHdoeSBkb2Vzbid0IGp1c3QKPiB0aGUgc2V0L2NsZWFyIG9mIGN0cmwt
PmRldmljZSBzdWZmaWNpZW50PyB0aGVzZSByb3V0aW5lcyBzaG91bGQgYmUKPiBzZXJpYWxpemVk
Li4KClllcyB3ZSBuZWVkIHRoaXMgcmVmZXJlbmNlIHNpbmNlIHRoZSBxdWV1ZXMgYXJlIGZyZWVk
IGR1cmluZyAKcmVjb25uZWN0aW9uLiBBbmQgd2l0aG91dCBjdHJsIHJlZmVyZW5jZSwgYWxzbyB0
aGUgZGV2aWNlIHdpbGwgYmUgZnJlZWQuCgpBbmQgd2hlbiB5b3UgZGlzY29ubmVjdCBkdXJpbmcg
cmVjb25uZWN0aW9uLCB0aGUgYmxvY2sgbGF5ZXIgd2lsbCBjYWxsIApleGl0X3JlcXVlc3QgZm9y
IGVhY2ggcmVxdWVzdCAoYnV0IHRoZSBkZXZpY2UgaXMgZnJlZWQpIGFuZCB3ZSB3aWxsIGRvIAp0
aGUgbmVlZCB1bm1hcHBpbmcgZnJvbSB0aGUgZGV2aWNlLi4KCk5vdCBzbyBwbGVzZW50Li4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1l
IG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
