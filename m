Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902F28E77C
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 10:55:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bXZlg03b1yFMmIVNlgoI78RCRAKkqIwhN8pNnRdia9Q=; b=VV/VB821oaES+vgGDDKa4VMTa
	3st6l4v1TrYTJAKEIP0nO3lLgu4bxEUesYLF/KZ5ohcQK5p5llWDPQ5IQ67ciefUvHnEfs/cgPM01
	QfZWE/76uXuOfiddM9jcMclYZUo+xgDVbJHzTxV2yvK5R17YngJhSCf81J6MHhrzGeBK+lNplEFrd
	urcOhI9JHdy3oDXhUudsvOdVmQjlYKgIxOr2+s1CN5V0SKUqZq7JwU6MghZA13L1bsfryBvkX5uAO
	PiUx2swJCzezokeM3TOxG1ezhPIXtlWN6jpL1FHdthPgQn83UjhmKwxQHRuAd0sMn88SskzsoH/O6
	q41cW/Icg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBX7-0002PQ-90; Thu, 15 Aug 2019 08:54:57 +0000
Received: from mail-eopbgr00086.outbound.protection.outlook.com ([40.107.0.86]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBX0-0002P3-7B
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 08:54:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD5iNvhPvG/EFbo7XYemqLejBj0lO90RqgK94/XFtzbGa5Vv1r9KRgcjN3LNDX/I4K8l1NJKOb8aQEDQ0XkbjMgfsPsgLGUGDX6ENkF79pxFF8/wm8NZ0C6gfyu2fDhaHLwLTWzC19/1nGBMdihugwcGpRY48LCDFfQ23TCJt0K0tq/142FefLezDqBexDJ9V1+ccVHuab/UkIXjfQpXZIocy0ZH5Ug10N48ERnjF4X2L1ifsPwOp/kNvp4BhtbUUgUNIju2/WWxrplcrdB2vWSN2SxWaeDffPSyuIkPbDuZM0TfdtSejwUhJ3+pXodBnuEMo99ZlxFcN6jeffnRdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X0pfSdN75bWMyBQMoI/kezR1GQZjTFhNBEDi+/HuzN0=;
 b=UngFh4bwqpqTGdHu4eTE1+jt0zUU4kGZlOVzi4SfsigHUl4vejveQJRwz1jM2UKiUekh6YEnyhN/5coBK87KD4KTMGUIiz1sF1a9iVLotlypmCG0wGgPhlIrrFoYOb20/QHj911Hk9gkWhfp26M4HUavdP09FWeqJwlplbmrwj+HI1sTZMzeIAURHYfFU3o8XPRwLsrohUGUx7/k7yHrjkHmCTlpXbKuN0z/LrBP2L/5IVl/fhV/S5TTiqkchaV7DbR2RXAKpOkcQY7qg/EYfwuFnzHn3I0j4uC8wSLIMLkaQKCGQNoEyXTf06z/PUANN67t9vFygh27A+L9jZohVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X0pfSdN75bWMyBQMoI/kezR1GQZjTFhNBEDi+/HuzN0=;
 b=DVR4lpEgFvAmWX5sRd+HXxogkR3Sqx2VGBiKP8eXJBBbNNuMVFkbYZ5XhosxKMgnRslwuiuSpHeRFCHgLZgOrR5AWPpY05lCV5QMokYy+ctM0xkEQ5uO1YS+WKVG/MHfmqhNhVwK3okrQX0rxksPTmz+TYOxgFDwmNKrwqM2ttQ=
Received: from AM4PR0501CA0043.eurprd05.prod.outlook.com
 (2603:10a6:200:68::11) by DB6PR05MB3477.eurprd05.prod.outlook.com
 (2603:10a6:6:18::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16; Thu, 15 Aug
 2019 08:54:45 +0000
Received: from AM5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by AM4PR0501CA0043.outlook.office365.com
 (2603:10a6:200:68::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.16 via Frontend
 Transport; Thu, 15 Aug 2019 08:54:45 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 AM5EUR03FT033.mail.protection.outlook.com (10.152.16.99) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2178.16 via Frontend Transport; Thu, 15 Aug 2019 08:54:44 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 15 Aug 2019 11:54:43
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 15 Aug 2019 11:54:43 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 15 Aug 2019 11:54:29
 +0300
Subject: Re: [PATCH 1/5] nvme-fabrics: Add type of service (TOS) configuration
To: Sagi Grimberg <sagi@grimberg.me>, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>
References: <1565777981-18755-1-git-send-email-israelr@mellanox.com>
 <1565777981-18755-3-git-send-email-israelr@mellanox.com>
 <6dc92c98-146e-206b-d3cb-127e5c7c3ac9@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <e74e4c9e-7479-054b-fd6c-9641cf422494@mellanox.com>
Date: Thu, 15 Aug 2019 11:54:28 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6dc92c98-146e-206b-d3cb-127e5c7c3ac9@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(346002)(136003)(2980300002)(199004)(189003)(5660300002)(81156014)(81166006)(8936002)(8676002)(50466002)(229853002)(26005)(86362001)(64126003)(58126008)(186003)(110136005)(16526019)(53546011)(106002)(478600001)(31696002)(76176011)(2486003)(23676004)(336012)(446003)(11346002)(486006)(126002)(476003)(2616005)(16576012)(31686004)(316002)(36906005)(4326008)(14444005)(6116002)(2906002)(3846002)(2870700001)(6246003)(70586007)(70206006)(65826007)(53936002)(47776003)(356004)(65806001)(65956001)(36756003)(305945005)(7736002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR05MB3477; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45e43207-4f33-4fa0-62d3-08d7215e3826
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR05MB3477; 
X-MS-TrafficTypeDiagnostic: DB6PR05MB3477:
X-Microsoft-Antispam-PRVS: <DB6PR05MB3477DA3BDBB018C993DBF2EBB6AC0@DB6PR05MB3477.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 01304918F3
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: buOmk0eE7RRsnpty5gZ4ytrIZzptqp0wHo4nvZarL0ng1jS7x02oKhR+0iJcL2a5QWvVHoiz7bOR4b298tlrfH2KPkWAkcpG4TvoUPHO582lZPtMoeRVElZTFWFjyixyvY5blW9PtNaK0xYyDzc3m4bzgJm2etapA0qzG3cmsqjARZG4/GyI1iYT7VDTiK3QItMhOT8C+T+cEVyjS1jXO8qoqIfsEKDMlZSG3xTU02TQ4HAcd2ujoyzp7iIatv5zWT6Ik0MJ2px8HQcZbch9Oowums4uoY2w+n0e2u5lDSmzDfhRuQkS2jYueSx1RMWZZkYOTJtB+Estac1fMa9xlZnaomr6LSNe7b5DLSlWEaMbO3NNoQw9B9tjBURoWqHSKYKnvc+0wmQxQG6EtRcFIPLhCcEwfnfNGvw/NuFAhi0=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2019 08:54:44.7175 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 45e43207-4f33-4fa0-62d3-08d7215e3826
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR05MB3477
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_015450_266017_5F7C15EF 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDgvMTQvMjAxOSA4OjA2IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4KPiBPbiA4LzE0
LzE5IDM6MTkgQU0sIElzcmFlbCBSdWtzaGluIHdyb3RlOgo+PiBUT1MgaXMgdXNlci1kZWZpbmVk
IGFuZCBuZWVkcyB0byBiZSBjb25maWd1cmVkIHZpYSBudm1lLWNsaS4KPj4gSXQgbXVzdCBiZSBz
ZXQgYmVmb3JlIGluaXRpYXRpbmcgYW55IHRyYWZmaWMgYW5kIG9uY2Ugc2V0IHRoZSBUT1MKPj4g
Y2Fubm90IGJlIGNoYW5nZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IElzcmFlbCBSdWtzaGluIDxp
c3JhZWxyQG1lbGxhbm94LmNvbT4KPj4gUmV2aWV3ZWQtYnk6IE1heCBHdXJ0b3ZveSA8bWF4Z0Bt
ZWxsYW5veC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMgfCAy
MCArKysrKysrKysrKysrKysrKysrLQo+PiDCoCBkcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmgg
fMKgIDMgKysrCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jIGIv
ZHJpdmVycy9udm1lL2hvc3QvZmFicmljcy5jCj4+IGluZGV4IDE5OTRkNWIuLmQzNDNjMjIgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZhYnJpY3MuYwo+PiArKysgYi9kcml2ZXJz
L252bWUvaG9zdC9mYWJyaWNzLmMKPj4gQEAgLTYxMSw2ICs2MTEsNyBAQCBib29sIF9fbnZtZl9j
aGVja19yZWFkeShzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCAKPj4gc3RydWN0IHJlcXVlc3QgKnJx
LAo+PiDCoMKgwqDCoMKgIHsgTlZNRl9PUFRfREFUQV9ESUdFU1QswqDCoMKgwqDCoMKgwqAgImRh
dGFfZGlnZXN0IsKgwqDCoMKgwqDCoMKgIH0sCj4+IMKgwqDCoMKgwqAgeyBOVk1GX09QVF9OUl9X
UklURV9RVUVVRVMswqDCoMKgICJucl93cml0ZV9xdWV1ZXM9JWQiwqDCoMKgIH0sCj4+IMKgwqDC
oMKgwqAgeyBOVk1GX09QVF9OUl9QT0xMX1FVRVVFUyzCoMKgwqAgIm5yX3BvbGxfcXVldWVzPSVk
IsKgwqDCoCB9LAo+PiArwqDCoMKgIHsgTlZNRl9PUFRfVE9TLMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgInRvcz0lZCLCoMKgwqDCoMKgwqDCoCB9LAo+PiDCoMKgwqDCoMKgIHsgTlZNRl9PUFRfRVJS
LMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDC
oCB9Owo+PiDCoCBAQCAtNjMyLDYgKzYzMyw3IEBAIHN0YXRpYyBpbnQgbnZtZl9wYXJzZV9vcHRp
b25zKHN0cnVjdCAKPj4gbnZtZl9jdHJsX29wdGlvbnMgKm9wdHMsCj4+IMKgwqDCoMKgwqAgb3B0
cy0+ZHVwbGljYXRlX2Nvbm5lY3QgPSBmYWxzZTsKPj4gwqDCoMKgwqDCoCBvcHRzLT5oZHJfZGln
ZXN0ID0gZmFsc2U7Cj4+IMKgwqDCoMKgwqAgb3B0cy0+ZGF0YV9kaWdlc3QgPSBmYWxzZTsKPj4g
K8KgwqDCoCBvcHRzLT50b3MgPSAtMTsgLyogPCAwID09IHVzZSB0cmFuc3BvcnQgZGVmYXVsdCAq
Lwo+PiDCoCDCoMKgwqDCoMKgIG9wdGlvbnMgPSBvID0ga3N0cmR1cChidWYsIEdGUF9LRVJORUwp
Owo+PiDCoMKgwqDCoMKgIGlmICghb3B0aW9ucykKPj4gQEAgLTg1Niw2ICs4NTgsMjIgQEAgc3Rh
dGljIGludCBudm1mX3BhcnNlX29wdGlvbnMoc3RydWN0IAo+PiBudm1mX2N0cmxfb3B0aW9ucyAq
b3B0cywKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBvcHRzLT5ucl9wb2xsX3F1ZXVlcyA9IHRva2VuOwo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBicmVhazsKPj4gK8KgwqDCoMKgwqDCoMKgIGNhc2UgTlZNRl9PUFRfVE9T
Ogo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobWF0Y2hfaW50KGFyZ3MsICZ0b2tlbikp
IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSAtRUlOVkFMOwo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICh0b2tlbiA8IDApIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcl9lcnIoIkludmFsaWQgdHlwZSBv
ZiBzZXJ2aWNlICVkXG4iLCB0b2tlbik7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0ID0gLUVJTlZBTDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3Rv
IG91dDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBpZiAodG9rZW4gPiAyNTUpIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBwcl93YXJuKCJDbGFtcGluZyB0eXBlIG9mIHNlcnZpY2UgdG8gMjU1XG4iKTsKPj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB0b2tlbiA9IDI1NTsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfQo+Cj4gQWdhaW4sIGlmIHRvcyBpcyBhbiBhYnN0cmFjdCBvcGFxdWUsIHRoaXMg
bmVlZHMgdG8gaGFwcGVuIGluIHRoZQo+IGluZGl2aWR1YWwgdHJhbnNwb3J0cywgbm90IGluIHRo
ZSBnZW5lcmljIHBhcnQuCgpyaWdodCwgd2UnbGwgYWRkIGl0IHRvIC5hbGxvd2VkX29wdHMgaW4g
dGhlIHJkbWEuYyBhbmQgdGNwLmMgYW5kIHJlbW92ZSAKZnJvbSBOVk1GX0FMTE9XRURfT1BUUyBp
biBWNC4KCldlJ2xsIGxlYXZlIHRoZSBwYXJzaW5nIGluIHRoZSBjb21tb24gY29kZS4KCi1NYXgu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
