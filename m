Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B212E813
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t70bS4dEeCx2WVrXyEjoU1kefQ6VXkrGiiopGtr7P4E=; b=o9eouPVQtfdm7CE7Q5AfecaiR
	ItAaDQjhMvfMCW+wBDSEuiR4xgfM0DBYtBc7mWNVO1vszoZ1h65H/HaN/JCYQpj6kBEMI2TAfFlkQ
	R9mbXNwpvBePVFcdJ7TKWE2WGyTcGs0eGhelRnBxAHFyjnoqqrz6ex3+eEGtOApklfOJa3Pb1Z7tF
	1HbdHN6bab7/lA5EzHnCDnWieBC3ci9QhnFG81n4qC8s3TpqZOwaFaEw6stzjgSlWU1XUEWNPoScE
	jM7vYH7E95yq/m30Zc0RDdyqFArNqL7Wiz8yvWgJNV8FthwW/3mMWPBj72keavf8MSGdBicwHfTP3
	J61bGRzlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW6yJ-0007QR-Ex; Wed, 29 May 2019 22:22:59 +0000
Received: from mail-eopbgr80082.outbound.protection.outlook.com ([40.107.8.82]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW6yE-0007Pn-6r
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:22:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Xq9U/XLkCdzsbYfTv9EOTVzceXjej/BvCsDcWDtRdIU=;
 b=GfGkKxpBjzWndPjtDfzWBpUMeDIrYiiEmz0rTEDFhKnYWTgdUbs0y9qFN/+n87mfUXDshCGcHuxhsa+P/TgEah1ueHePDCeIF/cpglwiBOckcdIRpFhI7FwAIRv2uqBWd65ticqO6EJdw4vc2r0lmR02U11ur9pfltStO4tUtVo=
Received: from DB6PR05CA0026.eurprd05.prod.outlook.com (10.170.218.39) by
 AM5PR0502MB3011.eurprd05.prod.outlook.com (10.175.44.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Wed, 29 May 2019 22:22:50 +0000
Received: from DB5EUR03FT052.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by DB6PR05CA0026.outlook.office365.com
 (2603:10a6:6:14::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Wed, 29 May 2019 22:22:50 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT052.mail.protection.outlook.com (10.152.21.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 29 May 2019 22:22:50 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 30 May 2019 01:22:49
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 30 May 2019 01:22:49 +0300
Received: from [172.16.0.31] (172.16.0.31) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 30 May 2019 01:22:48
 +0300
Subject: Re: [PATCH v2 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190529054905.16279-1-sagi@grimberg.me>
 <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
 <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <43f3aeb8-d8a7-a9b4-7623-7f6e0a2bdc2b@mellanox.com>
Date: Thu, 30 May 2019 01:22:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <c5fa88e8-f046-2d3b-7851-afbc1446fcbf@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.31]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(2980300002)(199004)(189003)(8936002)(4326008)(76176011)(36756003)(2870700001)(2486003)(6246003)(316002)(54906003)(126002)(476003)(65826007)(106002)(5660300002)(23676004)(31686004)(110136005)(26005)(16526019)(64126003)(186003)(2616005)(2906002)(77096007)(446003)(11346002)(336012)(53546011)(356004)(6116002)(8676002)(81156014)(81166006)(16576012)(86362001)(7736002)(31696002)(50466002)(478600001)(305945005)(65956001)(70206006)(65806001)(70586007)(58126008)(47776003)(3846002)(67846002)(486006)(229853002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0502MB3011; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19aa9fc1-cb9e-423c-3d28-08d6e4842f9f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328)(7193020);
 SRVR:AM5PR0502MB3011; 
X-MS-TrafficTypeDiagnostic: AM5PR0502MB3011:
X-Microsoft-Antispam-PRVS: <AM5PR0502MB3011DA08AE6A39B83B4F4F8AB61F0@AM5PR0502MB3011.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0052308DC6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: qdGx4R3Ugok9lgtU4/z+gJ0CxjH/OdBKEMBlo5y1Vowq64Cn58B9UuIAUjYCrcM63heY7vZtbttku/kiJsdKbsFWyTeG0bi3T0DBYEIR5yAFzlOpKpbH+2NYD33cZ8TUq0UOaeDaxsMopzVyE0aMpnpb9vxM9EhY0jjCmByRbFiFLTLjFt1e5R18qJ2ZLGj88d9/a4+j6m7P1SPM7P9CjV6M891Mx4uLnokD089W6Ct+jdRiLo+f1l3TM5PtAbNALykzKjmmK0eaNnXmCRVOJyMdaGo+wOgW7CVdADjpR+/WX03fb/EBLKeS6EjABTa7cGwPPJJrUDaffOjWHCZ+c13UB3DgqxzSSab7zGe+YlsWdj4qJUJlJ8kXC/ajmxPb8m8CayWAWohCpyLIJt9IzAbmhBsTSbp8eioRtyevKOo=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2019 22:22:50.3363 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 19aa9fc1-cb9e-423c-3d28-08d6e4842f9f
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0502MB3011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_152254_344392_5D39178C 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMjkvMjAxOSA4OjU4IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Cj4+PiBAQCAtMTc4
MSwxNiArMTc5OCwyMiBAQCBzdGF0aWMgaW50IG52bWVfcmRtYV9tYXBfcXVldWVzKHN0cnVjdCAK
Pj4+IGJsa19tcV90YWdfc2V0ICpzZXQpCj4+PiDCoMKgwqDCoMKgIGJsa19tcV9yZG1hX21hcF9x
dWV1ZXMoJnNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXSwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGN0cmwtPmRldmljZS0+ZGV2LCAwKTsKPj4+IC3CoMKgwqAgaWYgKGN0cmwtPmN0cmwu
b3B0cy0+bnJfcG9sbF9xdWV1ZXMpIHsKPj4+ICvCoMKgwqAgaWYgKG9wdHMtPm5yX3BvbGxfcXVl
dWVzICYmIGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF0pIHsKPj4+ICvCoMKgwqDCoMKg
wqDCoCAvKiBtYXAgZGVkaWNhdGVkIHBvbGwgcXVldWVzIG9ubHkgaWYgd2UgaGF2ZSBxdWV1ZXMg
bGVmdCAqLwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5u
cl9xdWV1ZXMgPQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjdHJsLT5p
b19xdWV1ZXNbSENUWF9UWVBFX1BPTExdOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFw
W0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQgPQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwo+Pj4gLcKgwqDC
oMKgwqDCoMKgIGlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVlcykKPj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQg
Kz0KPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybC0+aW9fcXVldWVzW0hD
VFhfVFlQRV9SRUFEXTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGN0cmwtPmlvX3F1ZXVl
c1tIQ1RYX1RZUEVfREVGQVVMVF0gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybC0+
aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPj4KPj4gaW4gY2FzZSBvZiBzaGFyZWQgcXVldWVz
wqAgY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXSAhPSAKPj4gc2V0LT5tYXBbSENUWF9U
WVBFX1JFQURdLm5yX3F1ZXVlcy4KPj4KPj4gU2hvdWxkbid0IHdlIGp1bXAgb3ZlciAodGhlIHF1
ZXVlX29mZnNldCkgdGhlIHNldC0+bWFwIHZhbHVlcyA/Cj4KPiBUaGlzIGlzIGV4YWN0bHkgd2h5
IHdlIHNob3VsZG4ndC4gSW4gdGhlIHNoYXJlZCBjYXNlLCB3ZSBvbmx5IGhhdmUKPiBIQ1RYX1RZ
UEVfREVGQVVMVCBhbmQgSENUWF9UWVBFX1JFQUQgaXMgemVybyBzbyB0aGlzIGNhc2UganVtcHMK
PiBleGFjdGx5IGhvdyBtdWNoIGl0IG5lZWRzIHRvLgoKSSBzZWUuIEl0IHdpbGwgd29yayAoaW4g
Y2FzZSBJIHVuZGVyc3RhbmQgdGhlIGlkZWEpLgoKSSBndWVzcyB0aGF0IHNldC0+bWFwW0hDVFhf
VFlQRV9SRUFEXS5xdWV1ZV9vZmZzZXQgaXMgYWx3YXlzID09IApzZXQtPm1hcFtIQ1RYX1RZUEVf
REVGQVVMVF0ubnJfcXVldWVzIGluIGNhc2Ugb2Ygc2VwYXJhdGUgcXVldWVzLgoKSSByZWFsbHkg
ZG9uJ3QgdW5kZXJzdGFuZCB0aGUgYW5zd2VyIEkgZ290IGluIFYxLCB0aGF0IHdlIG5lZWQgdG8g
c2V0IAp0aGUgUkVBRCBtYXAgYWx3YXlzIChhbHNvIGluIHRoZSBzaGFyZWQgY2FzZSkuIEluIHRo
ZSBkb2N1bWVudGF0aW9uIGl0IApzYXlzIHRoYXQgREVGQVVMVCByZWZlcnMgdG8gcXVldWVzIHRo
YXQgYXJlIG5vdCBzZXQgZXhwbGljaXRseS4gbWF5YmUgCml0J3MgYmVjYXVzZSB0aGUgbnJfbWFw
cyB0aGF0IHdlIGFzayBkdXJpbmcgdGFnc2V0IGNyZWF0aW9uLgoKQlRXLAoKZG9lcyB0aGlzIGZl
YXR1cmUgcmVhbGx5IGltcHJvdmUgcGVyZm9ybWFuY2UgPyB3aGF0IGlzIHRoZSBzY2VuYXJpbyA/
CgpJIHRoaW5nIHRoYXQgYSB1c2VyIG1pZ2h0IGNvbmZpZ3VyZSB0aGUgcXVldWVzIGluIGEgd3Jv
bmcgd2F5IHRoYXQgd2lsbCAKY2F1c2UgcGVyZiBkZWdyYWRhdGlvbi4KCgpUaGlzIHBhdGNoIGZp
eGVzIHRoZSByZXBvcnRlZCBidWcsCgpSZXZpZXdlZC1ieTogTWF4IEd1cnRvdm95IDxtYXhnQG1l
bGxhbm94LmNvbT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZt
ZQo=
