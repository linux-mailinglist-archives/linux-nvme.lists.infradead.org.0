Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272BA2E19A
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xc93HtGN0TPeBpWQmGTVrKIj3bUOzin5ialbCuI9yUE=; b=qPpGNnJ5gKhwc1ViPjvJROark
	Wv2LqKhLpg+OrMX5caofb7ut5EO22aEzlLeDbxCY4dMPUIIZiWq9uSR//f5dIKGU45RWuwVVXEtIC
	gDukCPyOpb9vEmPaGeWu6LTx5hG+FoiNMbl0694OdWcwB1w36bfVdDmT0olzb61U/OyrtxkaZmfr6
	+tq8/9oI1dnQZIz9Ib3fwZwOb6Sjq9AC3HWESpK9GRHhm9ALj6wlU622yZ1hIQV7OUPOaiCg4OVyG
	rD+OwVmZGhb7HEbf5c8HvGkDJb/1XEWNi24mDxyd6ndQHysBcEeDYKfFb23n21GKHZ99Kkgs1vXx2
	Fk7xhjTSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0qk-00018r-SH; Wed, 29 May 2019 15:50:46 +0000
Received: from mail-he1eur01on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::610]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0qe-000186-V8
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:50:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Gv+QglTFgZ7xcMfhz/qqC40EWoDBKXEwdjVMY40xSk=;
 b=BIuDOUlN/XeniUNBF6ToN28vGvO69yNZnj4eqXxEYedGkN/mHKjzyBF5+HRpCfPkcAR+gmzmC1v5xbm5R3r7rPZXGOvp2KyHTSHU7i1OHfbSbCsJg6IsYfa9QPxqrdNr0aiMEBw1MIetsiSlkwo86qq3AIH9bCWBnjzPNUA82WE=
Received: from DB7PR05CA0065.eurprd05.prod.outlook.com (2603:10a6:10:2e::42)
 by AM0PR05MB6417.eurprd05.prod.outlook.com (2603:10a6:208:143::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.20; Wed, 29 May
 2019 15:50:35 +0000
Received: from DB5EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by DB7PR05CA0065.outlook.office365.com
 (2603:10a6:10:2e::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Wed, 29 May 2019 15:50:35 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT023.mail.protection.outlook.com (10.152.20.68) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Wed, 29 May 2019 15:50:34 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 29 May 2019 18:50:34
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 29 May 2019 18:50:34 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 29 May 2019 18:50:17
 +0300
Subject: Re: [PATCH v2 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190529054905.16279-1-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <83c239a0-69bd-9fa4-b7af-4cb01d20cc2c@mellanox.com>
Date: Wed, 29 May 2019 18:50:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190529054905.16279-1-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(39860400002)(2980300002)(199004)(189003)(23676004)(67846002)(476003)(126002)(11346002)(486006)(2616005)(305945005)(2486003)(53546011)(76176011)(6116002)(3846002)(16576012)(336012)(7736002)(106002)(110136005)(229853002)(5660300002)(58126008)(446003)(54906003)(64126003)(47776003)(65956001)(50466002)(65806001)(26005)(8936002)(65826007)(2906002)(356004)(6246003)(478600001)(77096007)(36756003)(31686004)(316002)(86362001)(4326008)(16526019)(186003)(31696002)(70586007)(14444005)(81166006)(81156014)(2870700001)(8676002)(70206006)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB6417; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df067bb7-3d7a-4865-6747-08d6e44d6367
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM0PR05MB6417; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB6417:
X-Microsoft-Antispam-PRVS: <AM0PR05MB6417BFC3B38F170BBAD09738B61F0@AM0PR05MB6417.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0052308DC6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Qo304zE0zHDbJdCkN6TBD+RKs1bcp/SOlKeatGSp8LQOSkUbN86PbfMX9vblgCRCnzKDwXWqPBsOJPhU8PRjBkxX5jTV0BmSeweAYao5ZflnkLNiv3FAahDVCym+EFGA9JCcndwME47KiUN3ykckvsSQCIc3IxUyvvaCpwmCeNRUN3KWuDqn2SAfgcfQZyMTgxjbza1EXDeVOo3HrmBmZR974zHk7gGULq9XaiwZmRCdqAeB1U4ePwHpqmOEmKUEj/aOxcgACVqYzC2Cq7B3MmpyYlGuGvXeP3IjSMG521eypNwzIXPbBShY+dHkfSb1q6V27wpU77G7fgzcRDZdlnvi+BmXG7ogRrxZ0szTTJll1Ss1mqqnA2xOjtGzZw3WgbLXXgXOvv6qgm33IBdF0Qltf0rv/6D+iUmpjQCNXbY=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2019 15:50:34.8888 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df067bb7-3d7a-4865-6747-08d6e44d6367
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB6417
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_085041_070407_5D7002EC 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1e:0:0:0:610 listed in]
 [list.dnswl.org]
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

Ck9uIDUvMjkvMjAxOSA4OjQ5IEFNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IFdoZW4gdGhlIGNv
bnRyb2xsZXIgc3VwcG9ydHMgbGVzcyBxdWV1ZXMgdGhhbiByZXF1ZXN0ZWQsIHdlCj4gc2hvdWxk
IG1ha2Ugc3VyZSB0aGF0IHF1ZXVlIG1hcHBpbmcgZG9lcyB0aGUgcmlnaHQgdGhpbmcgYW5kCj4g
bm90IGFzc3VtZSB0aGF0IGFsbCBxdWV1ZXMgYXJlIGF2YWlsYWJsZS4gVGhpcyBmaXhlcyBhIGNy
YXNoCj4gd2hlbiB0aGUgY29udHJvbGxlciBzdXBwb3J0cyBsZXNzIHF1ZXVlcyB0aGFuIHJlcXVl
c3RlZC4KPgo+IFRoZSBydWxlcyBhcmU6Cj4gMS4gaWYgbm8gd3JpdGUvcG9sbCBxdWV1ZXMgYXJl
IHJlcXVlc3RlZCwgd2UgYXNzaWduIHRoZSBhdmFpbGFibGUgcXVldWVzCj4gICAgIHRvIHRoZSBk
ZWZhdWx0IHF1ZXVlIG1hcC4gVGhlIGRlZmF1bHQgYW5kIHJlYWQgcXVldWUgbWFwcyBzaGFyZSB0
aGUKPiAgICAgZXhpc3RpbmcgcXVldWVzLgo+IDIuIGlmIHdyaXRlIHF1ZXVlcyBhcmUgcmVxdWVz
dGVkOgo+ICAgIC0gZmlyc3QgbWFrZSBzdXJlIHRoYXQgcmVhZCBxdWV1ZSBtYXAgZ2V0cyB0aGUg
cmVxdWVzdGVkCj4gICAgICBucl9pb19xdWV1ZXMgY291bnQKPiAgICAtIHRoZW4gZ3JhbnQgdGhl
IGRlZmF1bHQgcXVldWUgbWFwIHRoZSBtaW5pbXVtIGJldHdlZW4gdGhlIHJlcXVlc3RlZAo+ICAg
ICAgbnJfd3JpdGVfcXVldWVzIGFuZCB0aGUgcmVtYWluaW5nIHF1ZXVlcy4gSWYgdGhlcmUgYXJl
IG5vIGF2YWlsYWJsZQo+ICAgICAgcXVldWVzIHRvIGRlZGljYXRlIHRvIHRoZSBkZWZhdWx0IHF1
ZXVlIG1hcCwgZmFsbGJhY2sgdG8gKDEpIGFuZAo+ICAgICAgc2hhcmUgYWxsIHRoZSBxdWV1ZXMg
aW4gdGhlIGV4aXN0aW5nIHF1ZXVlIG1hcC4KPiAzLiBpZiBwb2xsIHF1ZXVlcyBhcmUgcmVxdWVz
dGVkOgo+ICAgIC0gbWFwIHRoZSByZW1haW5pbmcgcXVldWVzIHRvIHRoZSBwb2xsIHF1ZXVlIG1h
cC4KPgo+IEFsc28sIHByb3ZpZGUgYSBsb2cgaW5kaWNhdGlvbiBvbiBob3cgd2UgY29uc3RydWN0
ZWQgdGhlIGRpZmZlcmVudAo+IHF1ZXVlIG1hcHMuCj4KPiBSZXBvcnRlZC1ieTogSGFycmlzLCBK
YW1lcyBSIDxqYW1lcy5yLmhhcnJpc0BpbnRlbC5jb20+Cj4gQ2M6IDxzdGFibGVAdmdlci5rZXJu
ZWwub3JnPiAjIHY1LjArCj4gU2lnbmVkLW9mZi1ieTogU2FnaSBHcmltYmVyZyA8c2FnaUBncmlt
YmVyZy5tZT4KPiAtLS0KPiBDaGFuZ2VzIGZyb20gdjE6Cj4gLSBrZWVwIHRoZSBudW1fY29tcF92
ZWN0b3JzIHVwcGVyIGxpbWl0IG9uIG51bWJlciBvZiBpbyBxdWV1ZXMKPiAtIGtlZXAgdGhlIHF1
ZXVlIHNldHMgc2l6ZXMgaW4gbG9jYWwgdmFyaWFibGVzIGZvciByZWFkYWJpbGl0eQo+Cj4gICBk
cml2ZXJzL252bWUvaG9zdC9yZG1hLmMgfCA5OSArKysrKysrKysrKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgMzggZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jIGIvZHJp
dmVycy9udm1lL2hvc3QvcmRtYS5jCj4gaW5kZXggZjM4MzE0NmU3ZDBmLi4yNjcwOWEyYWI1OTMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jCj4gKysrIGIvZHJpdmVycy9u
dm1lL2hvc3QvcmRtYS5jCj4gQEAgLTY0MSwzNCArNjQxLDE2IEBAIHN0YXRpYyBpbnQgbnZtZV9y
ZG1hX2FsbG9jX2lvX3F1ZXVlcyhzdHJ1Y3QgbnZtZV9yZG1hX2N0cmwgKmN0cmwpCj4gICB7Cj4g
ICAJc3RydWN0IG52bWZfY3RybF9vcHRpb25zICpvcHRzID0gY3RybC0+Y3RybC5vcHRzOwo+ICAg
CXN0cnVjdCBpYl9kZXZpY2UgKmliZGV2ID0gY3RybC0+ZGV2aWNlLT5kZXY7Cj4gLQl1bnNpZ25l
ZCBpbnQgbnJfaW9fcXVldWVzOwo+ICsJdW5zaWduZWQgaW50IG5yX2lvX3F1ZXVlcywgbnJfZGVm
YXVsdF9xdWV1ZXM7Cj4gKwl1bnNpZ25lZCBpbnQgbnJfcmVhZF9xdWV1ZXMsIG5yX3BvbGxfcXVl
dWVzOwo+ICAgCWludCBpLCByZXQ7Cj4gICAKPiAtCW5yX2lvX3F1ZXVlcyA9IG1pbihvcHRzLT5u
cl9pb19xdWV1ZXMsIG51bV9vbmxpbmVfY3B1cygpKTsKPiAtCj4gLQkvKgo+IC0JICogd2UgbWFw
IHF1ZXVlcyBhY2NvcmRpbmcgdG8gdGhlIGRldmljZSBpcnEgdmVjdG9ycyBmb3IKPiAtCSAqIG9w
dGltYWwgbG9jYWxpdHkgc28gd2UgZG9uJ3QgbmVlZCBtb3JlIHF1ZXVlcyB0aGFuCj4gLQkgKiBj
b21wbGV0aW9uIHZlY3RvcnMuCj4gLQkgKi8KPiAtCW5yX2lvX3F1ZXVlcyA9IG1pbl90KHVuc2ln
bmVkIGludCwgbnJfaW9fcXVldWVzLAo+IC0JCQkJaWJkZXYtPm51bV9jb21wX3ZlY3RvcnMpOwo+
IC0KPiAtCWlmIChvcHRzLT5ucl93cml0ZV9xdWV1ZXMpIHsKPiAtCQljdHJsLT5pb19xdWV1ZXNb
SENUWF9UWVBFX0RFRkFVTFRdID0KPiAtCQkJCW1pbihvcHRzLT5ucl93cml0ZV9xdWV1ZXMsIG5y
X2lvX3F1ZXVlcyk7Cj4gLQkJbnJfaW9fcXVldWVzICs9IGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZ
UEVfREVGQVVMVF07Cj4gLQl9IGVsc2Ugewo+IC0JCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVf
REVGQVVMVF0gPSBucl9pb19xdWV1ZXM7Cj4gLQl9Cj4gLQo+IC0JY3RybC0+aW9fcXVldWVzW0hD
VFhfVFlQRV9SRUFEXSA9IG5yX2lvX3F1ZXVlczsKPiAtCj4gLQlpZiAob3B0cy0+bnJfcG9sbF9x
dWV1ZXMpIHsKPiAtCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdID0KPiAtCQkJbWlu
KG9wdHMtPm5yX3BvbGxfcXVldWVzLCBudW1fb25saW5lX2NwdXMoKSk7Cj4gLQkJbnJfaW9fcXVl
dWVzICs9IGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF07Cj4gLQl9Cj4gKwlucl9yZWFk
X3F1ZXVlcyA9IG1pbl90KHVuc2lnbmVkIGludCwgaWJkZXYtPm51bV9jb21wX3ZlY3RvcnMsCj4g
KwkJCQltaW4ob3B0cy0+bnJfaW9fcXVldWVzLCBudW1fb25saW5lX2NwdXMoKSkpOwo+ICsJbnJf
ZGVmYXVsdF9xdWV1ZXMgPSAgbWluX3QodW5zaWduZWQgaW50LCBpYmRldi0+bnVtX2NvbXBfdmVj
dG9ycywKPiArCQkJCW1pbihvcHRzLT5ucl93cml0ZV9xdWV1ZXMsIG51bV9vbmxpbmVfY3B1cygp
KSk7Cj4gKwlucl9wb2xsX3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9wb2xsX3F1ZXVlcywgbnVtX29u
bGluZV9jcHVzKCkpOwo+ICsJbnJfaW9fcXVldWVzID0gbnJfcmVhZF9xdWV1ZXMgKyBucl9kZWZh
dWx0X3F1ZXVlcyArIG5yX3BvbGxfcXVldWVzOwo+ICAgCj4gICAJcmV0ID0gbnZtZV9zZXRfcXVl
dWVfY291bnQoJmN0cmwtPmN0cmwsICZucl9pb19xdWV1ZXMpOwo+ICAgCWlmIChyZXQpCj4gQEAg
LTY4MSw2ICs2NjMsMzQgQEAgc3RhdGljIGludCBudm1lX3JkbWFfYWxsb2NfaW9fcXVldWVzKHN0
cnVjdCBudm1lX3JkbWFfY3RybCAqY3RybCkKPiAgIAlkZXZfaW5mbyhjdHJsLT5jdHJsLmRldmlj
ZSwKPiAgIAkJImNyZWF0aW5nICVkIEkvTyBxdWV1ZXMuXG4iLCBucl9pb19xdWV1ZXMpOwo+ICAg
Cj4gKwlpZiAob3B0cy0+bnJfd3JpdGVfcXVldWVzICYmIG5yX3JlYWRfcXVldWVzIDwgbnJfaW9f
cXVldWVzKSB7Cj4gKwkJLyoKPiArCQkgKiBzZXBhcmF0ZSByZWFkL3dyaXRlIHF1ZXVlcwo+ICsJ
CSAqIGhhbmQgb3V0IGRlZGljYXRlZCBkZWZhdWx0IHF1ZXVlcyBvbmx5IGFmdGVyIHdlIGhhdmUK
PiArCQkgKiBzdWZmaWNpZW50IHJlYWQgcXVldWVzLgo+ICsJCSAqLwo+ICsJCWN0cmwtPmlvX3F1
ZXVlc1tIQ1RYX1RZUEVfUkVBRF0gPSBucl9yZWFkX3F1ZXVlczsKPiArCQlucl9pb19xdWV1ZXMg
LT0gY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9SRUFEXTsKPiArCQljdHJsLT5pb19xdWV1ZXNb
SENUWF9UWVBFX0RFRkFVTFRdID0KPiArCQkJbWluKG5yX2RlZmF1bHRfcXVldWVzLCBucl9pb19x
dWV1ZXMpOwo+ICsJCW5yX2lvX3F1ZXVlcyAtPSBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RF
RkFVTFRdOwo+ICsJfSBlbHNlIHsKPiArCQkvKgo+ICsJCSAqIHNoYXJlZCByZWFkL3dyaXRlIHF1
ZXVlcwo+ICsJCSAqIGVpdGhlciBubyB3cml0ZSBxdWV1ZXMgd2VyZSByZXF1ZXN0ZWQsIG9yIHdl
IGRvbid0IGhhdmUKPiArCQkgKiBzdWZmaWNpZW50IHF1ZXVlIGNvdW50IHRvIGhhdmUgZGVkaWNh
dGVkIGRlZmF1bHQgcXVldWVzLgo+ICsJCSAqLwo+ICsJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZ
UEVfREVGQVVMVF0gPQo+ICsJCQltaW4obnJfcmVhZF9xdWV1ZXMsIG5yX2lvX3F1ZXVlcyk7Cj4g
KwkJbnJfaW9fcXVldWVzIC09IGN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07Cj4g
Kwl9Cj4gKwo+ICsJaWYgKG9wdHMtPm5yX3BvbGxfcXVldWVzICYmIG5yX2lvX3F1ZXVlcykgewo+
ICsJCS8qIG1hcCBkZWRpY2F0ZWQgcG9sbCBxdWV1ZXMgb25seSBpZiB3ZSBoYXZlIHF1ZXVlcyBs
ZWZ0ICovCj4gKwkJY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9QT0xMXSA9Cj4gKwkJCW1pbihu
cl9wb2xsX3F1ZXVlcywgbnJfaW9fcXVldWVzKTsKPiArCX0KPiArCj4gICAJZm9yIChpID0gMTsg
aSA8IGN0cmwtPmN0cmwucXVldWVfY291bnQ7IGkrKykgewo+ICAgCQlyZXQgPSBudm1lX3JkbWFf
YWxsb2NfcXVldWUoY3RybCwgaSwKPiAgIAkJCQljdHJsLT5jdHJsLnNxc2l6ZSArIDEpOwo+IEBA
IC0xNzYzLDE3ICsxNzczLDI0IEBAIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9jb21wbGV0ZV9ycShz
dHJ1Y3QgcmVxdWVzdCAqcnEpCj4gICBzdGF0aWMgaW50IG52bWVfcmRtYV9tYXBfcXVldWVzKHN0
cnVjdCBibGtfbXFfdGFnX3NldCAqc2V0KQo+ICAgewo+ICAgCXN0cnVjdCBudm1lX3JkbWFfY3Ry
bCAqY3RybCA9IHNldC0+ZHJpdmVyX2RhdGE7Cj4gKwlzdHJ1Y3QgbnZtZl9jdHJsX29wdGlvbnMg
Km9wdHMgPSBjdHJsLT5jdHJsLm9wdHM7Cj4gICAKPiAtCXNldC0+bWFwW0hDVFhfVFlQRV9ERUZB
VUxUXS5xdWV1ZV9vZmZzZXQgPSAwOwo+IC0Jc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLm5y
X3F1ZXVlcyA9Cj4gLQkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07Cj4gLQlz
ZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0ubnJfcXVldWVzID0gY3RybC0+aW9fcXVldWVzW0hDVFhf
VFlQRV9SRUFEXTsKPiAtCWlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVlcykgewo+
ICsJaWYgKG9wdHMtPm5yX3dyaXRlX3F1ZXVlcyAmJiBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBF
X1JFQURdKSB7Cj4gICAJCS8qIHNlcGFyYXRlIHJlYWQvd3JpdGUgcXVldWVzICovCj4gKwkJc2V0
LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLm5yX3F1ZXVlcyA9Cj4gKwkJCWN0cmwtPmlvX3F1ZXVl
c1tIQ1RYX1RZUEVfREVGQVVMVF07Cj4gKwkJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLnF1
ZXVlX29mZnNldCA9IDA7Cj4gKwkJc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcyA9
Cj4gKwkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUkVBRF07Cj4gICAJCXNldC0+bWFwW0hD
VFhfVFlQRV9SRUFEXS5xdWV1ZV9vZmZzZXQgPQo+IC0JCQkJY3RybC0+aW9fcXVldWVzW0hDVFhf
VFlQRV9ERUZBVUxUXTsKPiArCQkJY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9ERUZBVUxUXTsK
PiAgIAl9IGVsc2Ugewo+IC0JCS8qIG1peGVkIHJlYWQvd3JpdGUgcXVldWVzICovCj4gKwkJLyog
c2hhcmVkIHJlYWQvd3JpdGUgcXVldWVzICovCj4gKwkJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFV
TFRdLm5yX3F1ZXVlcyA9Cj4gKwkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07
Cj4gKwkJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLnF1ZXVlX29mZnNldCA9IDA7Cj4gKwkJ
c2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcyA9Cj4gKwkJCWN0cmwtPmlvX3F1ZXVl
c1tIQ1RYX1RZUEVfREVGQVVMVF07Cj4gICAJCXNldC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5xdWV1
ZV9vZmZzZXQgPSAwOwo+ICAgCX0KPiAgIAlibGtfbXFfcmRtYV9tYXBfcXVldWVzKCZzZXQtPm1h
cFtIQ1RYX1RZUEVfREVGQVVMVF0sCj4gQEAgLTE3ODEsMTYgKzE3OTgsMjIgQEAgc3RhdGljIGlu
dCBudm1lX3JkbWFfbWFwX3F1ZXVlcyhzdHJ1Y3QgYmxrX21xX3RhZ19zZXQgKnNldCkKPiAgIAli
bGtfbXFfcmRtYV9tYXBfcXVldWVzKCZzZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0sCj4gICAJCQlj
dHJsLT5kZXZpY2UtPmRldiwgMCk7Cj4gICAKPiAtCWlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3Bv
bGxfcXVldWVzKSB7Cj4gKwlpZiAob3B0cy0+bnJfcG9sbF9xdWV1ZXMgJiYgY3RybC0+aW9fcXVl
dWVzW0hDVFhfVFlQRV9QT0xMXSkgewo+ICsJCS8qIG1hcCBkZWRpY2F0ZWQgcG9sbCBxdWV1ZXMg
b25seSBpZiB3ZSBoYXZlIHF1ZXVlcyBsZWZ0ICovCj4gICAJCXNldC0+bWFwW0hDVFhfVFlQRV9Q
T0xMXS5ucl9xdWV1ZXMgPQo+ICAgCQkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF07
Cj4gICAJCXNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQgPQo+IC0JCQkJY3Ry
bC0+aW9fcXVldWVzW0hDVFhfVFlQRV9ERUZBVUxUXTsKPiAtCQlpZiAoY3RybC0+Y3RybC5vcHRz
LT5ucl93cml0ZV9xdWV1ZXMpCj4gLQkJCXNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9v
ZmZzZXQgKz0KPiAtCQkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUkVBRF07Cj4gKwkJCWN0
cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF0gKwo+ICsJCQljdHJsLT5pb19xdWV1ZXNb
SENUWF9UWVBFX1JFQURdOwoKaW4gY2FzZSBvZiBzaGFyZWQgcXVldWVzwqAgY3RybC0+aW9fcXVl
dWVzW0hDVFhfVFlQRV9SRUFEXSAhPSAKc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVl
cy4KClNob3VsZG4ndCB3ZSBqdW1wIG92ZXIgKHRoZSBxdWV1ZV9vZmZzZXQpIHRoZSBzZXQtPm1h
cCB2YWx1ZXMgPwoKPiAgIAkJYmxrX21xX21hcF9xdWV1ZXMoJnNldC0+bWFwW0hDVFhfVFlQRV9Q
T0xMXSk7Cj4gICAJfQo+ICsKPiArCWRldl9pbmZvKGN0cmwtPmN0cmwuZGV2aWNlLAo+ICsJCSJt
YXBwZWQgJWQvJWQvJWQgZGVmYXVsdC9yZWFkL3BvbGwgcXVldWVzLlxuIiwKPiArCQljdHJsLT5p
b19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdLAo+ICsJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZ
UEVfUkVBRF0sCj4gKwkJY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9QT0xMXSk7Cj4gKwo+ICAg
CXJldHVybiAwOwo+ICAgfQo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1udm1lCg==
