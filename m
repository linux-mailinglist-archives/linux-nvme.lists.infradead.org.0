Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 524B336738
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 00:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tV87flPwinRlQsC6FGzpm1Yna3mdqBdSwfp5iJnztto=; b=fh/7CQ+6VYilr79MXsb84RHj7
	Scna97G9idhpZ2wHNOJsjoO1LOjkB04LQ09qfWr0GlKlmax++J3J1MdBBc/4361UrvND8/vPkIegt
	+aVieFRISacHENUhZkBHXHcsc5kbxATuxWV7mQJGusQwymEeDo6bLbbv2UaaSpDr5LEw03Dbu2epH
	IxJrq6bG+sw8Lz1rJHWJLaCe+tb/SiRQaMJanzwTPOLGvTS6srWO070RKr3FbvD71+MDu0GhtTPNZ
	XODjc/tJcmIpN/UAVBciamSdXpMNEZNZyHN4vLJ8bP1qavDKDDujWbVYiz+lfZDJVaULmTfoOxlim
	mFVuDo93A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYe5b-0000a5-Eu; Wed, 05 Jun 2019 22:08:59 +0000
Received: from mail-eopbgr20053.outbound.protection.outlook.com ([40.107.2.53]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYe5X-0000Zi-8L
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 22:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L4XCulX9hE+//8AknFcU1zHsHZYLpbxWB3KdSAp9aCU=;
 b=oZkVHtjnlTD6rOs3nN8RLW7RfjSmoWwD2koReGZzcnAcZVcca9HE5P/WYNx/J9YvI/kV+E3TarsUZPMc4G8b1J0cOsZHqFw2YUD47PuqbsG1h1bnUUo+CzgYi/MwuoStVPBNpvE4golH2jTBCUzs/PmGqI4Hj9R1+ulCpDDtbrE=
Received: from AM6PR0502CA0051.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::28) by AM6PR05MB6422.eurprd05.prod.outlook.com
 (2603:10a6:20b:bb::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12; Wed, 5 Jun
 2019 22:08:51 +0000
Received: from DB5EUR03FT047.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by AM6PR0502CA0051.outlook.office365.com
 (2603:10a6:20b:56::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.18 via Frontend
 Transport; Wed, 5 Jun 2019 22:08:51 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT047.mail.protection.outlook.com (10.152.21.232) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Wed, 5 Jun 2019 22:08:51 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 6 Jun 2019 01:08:48
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 6 Jun 2019 01:08:48 +0300
Received: from [172.16.0.12] (172.16.0.12) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 6 Jun 2019 01:08:21
 +0300
Subject: Re: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>,
 <james.r.harris@intel.com>, <hch@lst.de>
References: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
 <f474d61c-a3e4-1452-99fb-6e7164f05194@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <df30b560-5bee-e667-cd6b-5f7d1551c2dd@mellanox.com>
Date: Thu, 6 Jun 2019 01:08:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <f474d61c-a3e4-1452-99fb-6e7164f05194@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.12]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39850400004)(346002)(136003)(2980300002)(199004)(189003)(76176011)(2870700001)(8936002)(16576012)(26005)(2201001)(53546011)(54906003)(5660300002)(229853002)(486006)(356004)(70206006)(336012)(70586007)(81156014)(81166006)(64126003)(14444005)(4326008)(31696002)(8676002)(86362001)(67846002)(316002)(58126008)(107886003)(36756003)(31686004)(2906002)(110136005)(305945005)(7736002)(50466002)(65806001)(11346002)(77096007)(476003)(65826007)(478600001)(126002)(2616005)(16526019)(186003)(23676004)(6246003)(65956001)(106002)(446003)(6116002)(2486003)(47776003)(3846002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6422; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a688781f-13de-4d1c-a2c9-08d6ea02645c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR05MB6422; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB6422:
X-Microsoft-Antispam-PRVS: <AM6PR05MB6422361A120413E0F35E6398B6160@AM6PR05MB6422.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:565;
X-Forefront-PRVS: 00594E8DBA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: U4zwj77C0H2hXRJ0t09f6lfGkfGMCqi1KIng91zbTs7vAeGf+cOM9LrdNsY7KRbuvq4vcF7HbQVkfHyUseMnEXF50JVdS2t/58x3GnFXv5u2kwYUE8+eEBXgOTAXu77EeLP5GcGctlE9jsyPm5RdolUXh2wi1S4r3ayX9kojQVPzQW+mt9v4Sj58AE/UZOi30un7vwx/CtQVkXWu2qiS2c4TAMSbZMKMWAslq89AYEN2qwm1fJ+yZUqnM/0eIApD6mGfeMfny0WjxGFXqkZWy/EQpL8FQR/m0hg01X+tHBTh/zsYHzi9VIHTqYrZ/SPNAGjc0kSCNYMtoYDYPeEfoXjAmJGOT3tZNXKP/T//aL6tRcYkiqeDh6vuy6O4bL9hU8faJdwPcWhlPyJXmdozdxBme/ofrslANRlyKeddhCQ=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2019 22:08:51.1507 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a688781f-13de-4d1c-a2c9-08d6ea02645c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_150855_295921_C91005BE 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.53 listed in list.dnswl.org]
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
Cc: israelr@mellanox.com, shlomin@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDYvNS8yMDE5IDg6MjcgUE0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPgo+IE9uIDYvNS8x
OSA4OjQxIEFNLCBNYXggR3VydG92b3kgd3JvdGU6Cj4+IENvbW1pdCA4N2ZkMTI1MzQ0ZDYgKCJu
dm1lLXJkbWE6IHJlbW92ZSByZWR1bmRhbnQgcmVmZXJlbmNlIGJldHdlZW4KPj4gaWJfZGV2aWNl
IGFuZCB0YWdzZXQiKSBjYXVzZWQgYSBrZXJuZWwgcGFuaWMgd2hlbiBkaXNjb25uZWN0aW5nIGZy
b20gYW4KPj4gaW5hY2Nlc3NpYmxlIGNvbnRyb2xsZXIgKGRpc2Nvbm5lY3QgZHVyaW5nIHJlLWNv
bm5lY3Rpb24pLgo+Pgo+PiAtLSAKPj4gbnZtZSBudm1lMDogUmVtb3ZpbmcgY3RybDogTlFOICJ0
ZXN0bnFuMSIKPj4gbnZtZV9yZG1hOiBudm1lX3JkbWFfZXhpdF9yZXF1ZXN0OiBoY3R4IDAgcXVl
dWVfaWR4IDEKPj4gQlVHOiB1bmFibGUgdG8gaGFuZGxlIGtlcm5lbCBwYWdpbmcgcmVxdWVzdCBh
dCAwMDAwMDAwMDgwMDAwMjI4Cj4+IFBHRCAwIFA0RCAwCj4+IE9vcHM6IDAwMDAgWyMxXSBTTVAg
UFRJCj4+IC4uLgo+PiBDYWxsIFRyYWNlOgo+PiDCoCBibGtfbXFfZXhpdF9oY3R4KzB4NWMvMHhm
MAo+PiDCoCBibGtfbXFfZXhpdF9xdWV1ZSsweGQ0LzB4MTAwCj4+IMKgIGJsa19jbGVhbnVwX3F1
ZXVlKzB4OWEvMHhjMAo+PiDCoCBudm1lX3JkbWFfZGVzdHJveV9pb19xdWV1ZXMrMHg1Mi8weDYw
IFtudm1lX3JkbWFdCj4+IMKgIG52bWVfcmRtYV9zaHV0ZG93bl9jdHJsKzB4M2UvMHg4MCBbbnZt
ZV9yZG1hXQo+PiDCoCBudm1lX2RvX2RlbGV0ZV9jdHJsKzB4NTMvMHg4MCBbbnZtZV9jb3JlXQo+
PiDCoCBudm1lX3N5c2ZzX2RlbGV0ZSsweDQ1LzB4NjAgW252bWVfY29yZV0KPj4gwqAga2VybmZz
X2ZvcF93cml0ZSsweDEwNS8weDE4MAo+PiDCoCB2ZnNfd3JpdGUrMHhhZC8weDFhMAo+PiDCoCBr
c3lzX3dyaXRlKzB4NWEvMHhkMAo+PiDCoCBkb19zeXNjYWxsXzY0KzB4NTUvMHgxMTAKPj4gwqAg
ZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NDQvMHhhOQo+PiBSSVA6IDAwMzM6MHg3
ZmEyMTU0MTcxNTQKPj4gLS0gCj4+Cj4+IFRoZSByZWFzb24gZm9yIHRoaXMgY3Jhc2ggaXMgYWNj
ZXNzaW5nIGFuIGFscmVhZHkgZnJlZWQgaWJfZGV2aWNlIGZvcgo+PiBwZXJmb3JtaW5nIGRtYV91
bm1hcCBkdXJpbmcgZXhpdF9yZXF1ZXN0IGNvbW1hbmRzLiBUaGUgcm9vdCBjYXVzZSBmb3IKPj4g
dGhhdCBpcyB0aGF0IGR1cmluZyByZS1jb25uZWN0aW9uIGFsbCB0aGUgcXVldWVzIGFyZSBkZXN0
cm95ZWQgYW5kCj4+IHJlLWNyZWF0ZWQgKGFuZCB0aGUgaWJfZGV2aWNlIGlzIHJlZmVyZW5jZSBj
b3VudGVkIGJ5IHRoZSBxdWV1ZXMgYW5kCj4+IGZyZWVkIGFzIHdlbGwpIGJ1dCB0aGUgdGFnc2V0
IHN0YXlzIGFsaXZlIGFuZCBhbGwgdGhlIERNQSBtYXBwaW5ncyAodGhhdAo+PiB3ZSBwZXJmb3Jt
IGluIGluaXRfcmVxdWVzdCkga2VwdCBpbiB0aGUgcmVxdWVzdCBjb250ZXh0LiBUaGUgb3JpZ2lu
YWwKPj4gY29tbWl0IGZpeGVkIGEgZGlmZmVyZW50IGJ1ZyB0aGF0IHdhcyBpbnRyb2R1Y2VkIGR1
cmluZyBib25kaW5nIChha2EgbmljCj4+IHRlYW1pbmcpIHRlc3RzIHRoYXQgZm9yIHNvbWUgc2Nl
bmFyaW9zIGNoYW5nZSB0aGUgdW5kZXJseWluZyBpYl9kZXZpY2UKPj4gYW5kIGNhdXNlZCBtZW1v
cnkgbGVha2FnZSBhbmQgcG9zc2libGUgc2VnbWVudGF0aW9uIGZhdWx0LiBUaGlzIGNvbW1pdAo+
PiBpcyBhIGNvbXBsZW1lbnRyeQo+Cj4gQ29tcGxlbWVudGFyeQo+Cj4gwqBjb21taXQgdGhhdCBh
bHNvIGNoYW5nZXMgdGhlIHdyb25nIERNQSBtYXBwaW5ncyB0aGF0Cj4+IHdlcmUgc2F2ZWQgaW4g
dGhlIHJlcXVlc3QgY29udGV4dAo+Cj4gYWxzbyBtYWtpbmcgdGhlIHJlcXVlc3Qgc3FlIGRtYSBt
YXBwaW5ncyBkeW5hbWljIHdpdGggdGhlCj4gY29tbWFuZCBsaWZldGltZSAoaS5lLiBtYXBwZWQg
aW4gLnF1ZXVlX3JxIGFuZCB1bm1hcHBlZCBpbiAuY29tcGxldGUpLgo+Cj4gwqBhbmQgYWxzbyBm
aXhlcyB0aGUgYWJvdmUgY3Jhc2ggb2YKPj4gYWNjZXNzaW5nIGZyZWVkIGliX2RldmljZSBkdXJp
bmcgZGVzdHJ1Y3Rpb24gb2YgdGhlIHRhZ3NldC4KPj4KPj4gRml4ZXM6IDg3ZmQxMjUzNDRkNiAo
Im52bWUtcmRtYTogcmVtb3ZlIHJlZHVuZGFudCByZWZlcmVuY2UgYmV0d2VlbiAKPj4gaWJfZGV2
aWNlIGFuZCB0YWdzZXQiKQo+PiBTdWdnZXN0ZWQtYnk6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3Jp
bWJlcmcubWU+Cj4+IFRlc3RlZC1ieTogSmltIEhhcnJpcyA8amFtZXMuci5oYXJyaXNAaW50ZWwu
Y29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXggR3VydG92b3kgPG1heGdAbWVsbGFub3guY29tPgo+
PiAtLS0KPj4gwqAgZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jIHwgNzYgCj4+ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgNDcgaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL252bWUvaG9zdC9yZG1hLmMgYi9kcml2ZXJzL252bWUvaG9zdC9yZG1hLmMKPj4gaW5k
ZXggMGUwMzNiNi4uODhmMTFjNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvcmRt
YS5jCj4+ICsrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3JkbWEuYwo+PiBAQCAtMTY3LDE1ICsxNjcs
MTcgQEAgc3RhdGljIGlubGluZSBzaXplX3QgCj4+IG52bWVfcmRtYV9pbmxpbmVfZGF0YV9zaXpl
KHN0cnVjdCBudm1lX3JkbWFfcXVldWUgKnF1ZXVlKQo+PiDCoMKgwqDCoMKgIHJldHVybiBxdWV1
ZS0+Y21uZF9jYXBzdWxlX2xlbiAtIHNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5kKTsKPj4gwqAg
fQo+PiDCoCAtc3RhdGljIHZvaWQgbnZtZV9yZG1hX2ZyZWVfcWUoc3RydWN0IGliX2RldmljZSAq
aWJkZXYsIHN0cnVjdCAKPj4gbnZtZV9yZG1hX3FlICpxZSwKPj4gLcKgwqDCoMKgwqDCoMKgIHNp
emVfdCBjYXBzdWxlX3NpemUsIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKPj4gK3N0YXRp
YyB2b2lkIG52bWVfcmRtYV9mcmVlX21hcHBlZF9xZShzdHJ1Y3QgaWJfZGV2aWNlICppYmRldiwK
Pj4gK8KgwqDCoMKgwqDCoMKgIHN0cnVjdCBudm1lX3JkbWFfcWUgKnFlLCBzaXplX3QgY2Fwc3Vs
ZV9zaXplLAo+PiArwqDCoMKgwqDCoMKgwqAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyKQo+
Cj4gR2l2ZW4gdGhhdCB3ZSBkaXJlY3RseSBhbGxvY2F0ZSB0aGUgc3FlIGluIC5pbml0X3JlcXVl
c3QgYW5kIG5vdCBjYWxsCj4gdGhpcywgaXMgdGhlcmUgcmVhbGx5IGEgbmVlZCB0byBjaGFuZ2Ug
dGhlIG5hbWUgb2YgdGhlIGZ1bmN0aW9uPwo+Cj4gSXQgY3JlYXRlcyBhIGJpdCBvZiBhbiB1bm5l
Y2Vzc2FyeSBjaHVybiBpbiB0aGUgcGF0Y2guCgpJIHRyaWVkIHRvIG1ha2UgdGhlIGNvZGUgbW9y
ZSByZWFkYWJsZSBidXQgSSBndWVzcyBJIGNhbsKgIGxlYXZlIGl0IGFzLWlzLgoKSSdsbCBzZW5k
IHYyLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
