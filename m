Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1750829B0
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 04:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9mJImHJDXfNcNoD/tQpKhX3Lv/uHeKe8s1G7llkVdok=; b=UcjP3ewpMM7xbhW3ZXI5jjYn5
	8OrxPyeHLSBEwXa+e8Khm1nuBcKpaTkIJqqwEeLfPAGqcORNWk9lv6gPH70hSQ/IlZ3T+1mLp3tc2
	DyiHRdUjy6kDjU/CKGJbMUsiFZDfndtSOiRwiVx53XTguiwk2wbpiawWWRrvXhpCQk1WA4qTqjxTA
	ygmHZtk97hZY4YS2AhoI5yJePqFKKHrHSY824r0/OrJc+czhTH+NUBY+RdLIrOpTDimMWAOOdDdFR
	9Yx3wCEOB+QIxShHdnoDyEXkg+vKpwDy6oiTyv+ILXdHXqKyhagyEtcZzE2X+u/WxI/3ibh30GIjO
	k2xw+gDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupM8-0003CA-VZ; Tue, 06 Aug 2019 02:37:44 +0000
Received: from mail-eopbgr50082.outbound.protection.outlook.com ([40.107.5.82]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupM3-0003Bn-Bv
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 02:37:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUUCCMCj47VAs373PeeFy6W0QwyzW9eZaN//3gAH1muBW8iwcoYPQQf2AQGzZ0wtzT1PbfBfh2bXFuwKwfKsNMtliZ6bAUHvL/uQVoUFRbH+R0wTiW361LTk42PBi0OLURqkesGRopN7GszBkg9vDmClcRiPOXa2UhJqrqJM9h1F8/bnvc+eBv5QL5e3CDU5N+wlfYVM+3MPoS6qkPchr/GdwkmuLbFlEPHv+tTTSG2fUUo6AilfzlS4XNTdlH9mmgOfSzDBnN27RXBST7NVMzPh5vqViPW8LRx5uZoW+16oug8K8b0/Cg+MiK380tWLgJM9nDAsyL60NO95uJZkgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PRLpjP+MdgE6X9F+zwTZc9Z3yTWP32M+AhPesPVjeiU=;
 b=VFaiCzM0ZZYhew3zoBtSw9dtOPs0ZGrznKEBuq9fmf6be7Z82ChkblJUtwUCtZKrM7gMe8XNy9zCbZIy5hbl9SJlXjn1ARaqkHIFx4XpLEvaP5nYPomw5b6K0n4M7eg55oBN3HYOQ0AVrOBixzOO6cVy5rfmgTlUMnjNdOIs6zyTmPBA7d9X+YAtuq52XvGQJge2+P0dHKcS+3rWH0Hk57yHqFIZg0lvVZqR+nYJBSRfvg9bQagveyy60xHmsv9rrbrGJ4/WoH3IHuF/TQ77JkTZndA4KlloTJJvy2imje7t12vWaTZ+xDBDdUH3LCBe49fLzvoXWCJKo/EK2Eg4GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de
 smtp.mailfrom=mellanox.com;dmarc=pass (p=none sp=none pct=100) action=none
 header.from=mellanox.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PRLpjP+MdgE6X9F+zwTZc9Z3yTWP32M+AhPesPVjeiU=;
 b=HVSV4EWzvExpvajbDPnvM6IJ/0N6T7nKAkKNdV6zIydMZX/6Q0FlwxzyrIP7B4Lt5WD9qw+ga+gGGx83efuIK8N9xw90M6VkjnAdKR4YU1q4mew5FzmCud0t9ufTDZBkflLffwaGdappA4ya+CuSLlSP3f8YrsiXmPWmQcDJVvg=
Received: from HE1PR05CA0144.eurprd05.prod.outlook.com (2603:10a6:7:28::31) by
 AM6PR0502MB3974.eurprd05.prod.outlook.com (2603:10a6:209:19::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2136.16; Tue, 6 Aug
 2019 02:37:33 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by HE1PR05CA0144.outlook.office365.com
 (2603:10a6:7:28::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.16 via Frontend
 Transport; Tue, 6 Aug 2019 02:37:33 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Tue, 6 Aug 2019 02:37:32 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 6 Aug 2019 05:37:31
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 6 Aug 2019 05:37:31 +0300
Received: from [172.16.8.22] (172.16.8.22) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 6 Aug 2019 05:36:59
 +0300
Subject: Re: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
To: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, 
 Israel Rukshin <israelr@mellanox.com>, Linux-nvme
 <linux-nvme@lists.infradead.org>
References: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
 <0fb2cf8c-3657-31bf-0df5-ee2495282f57@broadcom.com>
 <a934378c-af6a-6c31-7d72-58f4295ad5b5@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <5b634bfb-80df-5620-dbb1-7d09015bcdf5@mellanox.com>
Date: Tue, 6 Aug 2019 10:36:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a934378c-af6a-6c31-7d72-58f4295ad5b5@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.8.22]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(2980300002)(199004)(189003)(68736007)(81166006)(5660300002)(2870700001)(106002)(58126008)(356004)(4326008)(6246003)(81156014)(2906002)(110136005)(8676002)(16576012)(316002)(31686004)(229853002)(478600001)(6116002)(70586007)(8936002)(305945005)(7736002)(70206006)(3846002)(446003)(11346002)(2616005)(476003)(126002)(36756003)(486006)(67846002)(14444005)(50466002)(76176011)(336012)(186003)(16526019)(26005)(65826007)(6666004)(86362001)(64126003)(31696002)(65806001)(53546011)(65956001)(2486003)(47776003)(23676004)(53936002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB3974; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d0fb1663-6d5d-4129-8c69-08d71a1708a8
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM6PR0502MB3974; 
X-MS-TrafficTypeDiagnostic: AM6PR0502MB3974:
X-Microsoft-Antispam-PRVS: <AM6PR0502MB3974EB979621C88C636D8071B6D50@AM6PR0502MB3974.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0121F24F22
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Y3rkjtxjw5JjL/In2HhIbVvGOD8oHweouhGz97sTaoCZWNiCLTaUbGTCK7LqMZZW6lbOph+9sl/845MZzJgghXkOfQrBohttbJr2jzMdpT2LKCSHdShwynBSdPkd0TMN9IRRFk3D+BqOaghAUT+aQ+74djrIob7KaFMK6WQuHH38OUClwOewBXxrWPoMLuQ79+Nb7Q3CBUsXiDi41dOxcgW051CA68/1H0Lzseq4H6bdvpm99ywdsU4HisnQhwve1aE+T4F9cA4Vzg/Ws/GekYOD1oQb1WjmIT8TRa6nvJnmi9SOiszU5gCOIzjkm0v1EQSbfmaA8qxPKANO6jcsrPGOvs0BJ+Qtt5xD7ZqKFhC1kXsK6ekYjabZRjpPGkaSlOVYh0mPqT3yyvWp3/ZKAh5WS1DiBhlkLC2Ud4416IM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2019 02:37:32.6046 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d0fb1663-6d5d-4129-8c69-08d71a1708a8
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB3974
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_193739_469522_72843BC0 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.82 listed in list.dnswl.org]
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDgvNi8yMDE5IDI6MTcgQU0sIFNhZ2kgR3JpbWJlcmcgd3JvdGU6Cj4KPj4gT24gOC80LzIw
MTkgMjo1NSBBTSwgSXNyYWVsIFJ1a3NoaW4gd3JvdGU6Cj4+PiBUT1MgaXMgdXNlci1kZWZpbmVk
IGFuZCBuZWVkcyB0byBiZSBjb25maWd1cmVkIHZpYSBudm1lLWNsaS4KPj4+IEl0IG11c3QgYmUg
c2V0IGJlZm9yZSBpbml0aWF0aW5nIGFueSB0cmFmZmljIGFuZCBvbmNlIHNldCB0aGUgVE9TCj4+
PiBjYW5ub3QgYmUgY2hhbmdlZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBJc3JhZWwgUnVrc2hp
biA8aXNyYWVsckBtZWxsYW5veC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbnZtZS9ob3N0
L2ZhYnJpY3MuYyB8IDE2ICsrKysrKysrKysrKysrKy0KPj4+IMKgIGRyaXZlcnMvbnZtZS9ob3N0
L2ZhYnJpY3MuaCB8wqAgMyArKysKPj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9z
dC9mYWJyaWNzLmMgYi9kcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMKPj4+IGluZGV4IDU4Mzhm
N2NkNTNhYy4uZGJjZTdmZmU2YzJjIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3Qv
ZmFicmljcy5jCj4+PiArKysgYi9kcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMKPj4+IEBAIC02
MTEsNiArNjExLDcgQEAgc3RhdGljIGNvbnN0IG1hdGNoX3RhYmxlX3Qgb3B0X3Rva2VucyA9IHsK
Pj4+IMKgwqDCoMKgwqAgeyBOVk1GX09QVF9EQVRBX0RJR0VTVCzCoMKgwqDCoMKgwqDCoCAiZGF0
YV9kaWdlc3QiwqDCoMKgwqDCoMKgwqAgfSwKPj4+IMKgwqDCoMKgwqAgeyBOVk1GX09QVF9OUl9X
UklURV9RVUVVRVMswqDCoMKgICJucl93cml0ZV9xdWV1ZXM9JWQiIH0sCj4+PiDCoMKgwqDCoMKg
IHsgTlZNRl9PUFRfTlJfUE9MTF9RVUVVRVMswqDCoMKgICJucl9wb2xsX3F1ZXVlcz0lZCLCoMKg
wqAgfSwKPj4+ICvCoMKgwqAgeyBOVk1GX09QVF9UT1MswqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
dG9zPSVkIsKgwqDCoMKgwqDCoMKgIH0sCj4+PiDCoMKgwqDCoMKgIHsgTlZNRl9PUFRfRVJSLMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgTlVMTMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqAg
fTsKPj4+Cj4+Cj4+IEkgdGhpbmsgd2UgbmVlZCB0byBjcmVhdGUgYSBmcmFtZXdvcmsgZm9yIHRy
YW5zcG9ydC1zcGVjaWZpYyBvcHRpb25zLiAKPj4gS2VlcGluZyB0aGVtIGF0IHRoZSBzYW1lIGZs
YXQgbGV2ZWwgYXMgdGhlIGdlbmVyaWMgb3B0aW9ucyBpc24ndCBhIAo+PiBncmVhdCBpZGVhIGFz
IHRoZXkgc3RhcnQgdG8gZ3JvdyBhbmQgYWx3YXlzIG1vZGlmeWluZyBjb3JlIGZvciBhIAo+PiB0
cmFuc3BvcnQgb3B0aW9uIGlzbid0IGdvb2QgZWl0aGVyLgo+Cj4gV2VsbCwgbm90IGRpc2FncmVl
aW5nLCBidXQgSSBwZXJzb25hbGx5IHRoaW5rIHRoYXQgdGhpcyBjYW4gYmUKPiBhcHBsaWNhYmxl
IHRvIGFsbCB0cmFuc3BvcnRzIGFzIHRoaXMgaXMgYSBnZW5lcmljIHRlcm0gdGhhdCBoYXBwZW5z
Cj4gdG8gbWFwIHRvIGEgc3BlY2lmaWMgbWFya2luZyBpbiBpcCB0cmFuc3BvcnRzLgo+Cj4gQWxz
bywgSSBhY3R1YWxseSB0aGluayB0aGF0IGtlZXBpbmcgYSBzaW5nbGUgcGFyc2VyIHNpbXBsaWZp
ZXMgdGhpbmdzLgo+IFVubGVzcyB3ZSBtYXkgcnVuIG91dCBvZiBzaG9ydCBhcmcgb3B0aW9ucywg
d2hpY2ggaW4gdGhhdCBjYXNlIGl0IGlzCj4gYmVuZWZpY2lhbC4uLgo+Cj4+IEhvdyBhYm91dCB3
ZSBzdGFydCB0aGUgY29udmVudGlvbiAiPHRyYW5zcG9ydF9uYW1lPjo8b3B0aW9uPiIgZm9yIGFu
IAo+PiBvcHRpb24uwqAgVGhlIG9wdHMgc3RydWN0IGNhbiBoYXZlIGEgcG9pbnRlciB0aGF0IGlz
IG93bmVkIGJ5IHRoZSAKPj4gdHJhbnNwb3J0LsKgIFRoZSB0cmFuc3BvcnQgY2FuIHN1cHBseSBh
IHBhcnNpbmcgZnVuY3Rpb24gZm9yIGFuIAo+PiBvcHRpb24uIFRoZSBjb3JlIGxheWVyIGNhbiBt
YXRjaCB0aGUgdHJhbnNwb3J0IG5hbWUgaW4gdGhlIHByZWZpeCwgCj4+IHRoZW4gaW52b2tlIHRo
ZSB0cmFuc3BvcnQgaGFuZGxlciBpbnN0ZWFkIG9mIHRoZSBnZW5lcmljIHBhcnNpbmcuIAo+PiBU
cmFuc3BvcnQgaGFuZGxlciBjYW4gcGFyc2UgYW5kIHNldCBpdCdzIG93biB2YWx1ZSBpbiBpdHMg
b3duIG9wdHMgCj4+IHN0cnVjdC4gVHJhbnNwb3J0IGNhbiB2YWxpZGF0ZSBpdCBoYXMgdGhlIG5l
Y2Vzc2FyeSB0cmFuc3BvcnQgb3B0cyBhcyAKPj4gdGhlIGZpcnN0IHRoaW5nIGl0IGRvZXMgaW4g
aXQncyBjcmVhdGVfY3RybCByb3V0aW5lLgo+Cj4gVGhhdCBpcyBvbmUgd2F5IHRvIGdvLi4uCj4K
PiBJIGRvbid0IGhhdmUgYSBzdHJvbmcgc3RhbmQgaGVyZSwgd2hhdCBkbyBvdGhlcnMgdGhpbms/
CgpJIHRoaW5rIHdlIGNhbiByZS11c2UgdGhlIGNvZGUgaW4gdGhlIGdlbmVyYWwgZmFicmljcyBh
bmQganVzdCBhZGQgCmhlbHBlcnMgZm9yIGVhY2ggb3B0aW9uIHRvIGRlY3JlYXNlIHRoZSBsaW5l
cyBvZiBudm1mX3BhcnNlX29wdGlvbnMgZnVuYyAKYW5kIG1ha2UgaXQgbW9yZSByZWFkYWJsZS4K
CkkgcHJlZmVyIHRvIGF2b2lkIG9mIHBhcnNpbmcgcGVyIHRyYW5zcG9ydC4KCnNvbWV0aGluZyBs
aWtlOgoKY2FzZSBOVk1GX09QVF9OUl9QT0xMX1FVRVVFUzoKCiDCoMKgwqAgbnZtZl9wYXJzZV9u
cl9wb2xsX3F1ZXVlcyhvcHRzLCBhcmdzKTsKCiDCoMKgwqAgYnJlYWs7CgpjYXNlIE5WTUZfT1BU
X1RPUzoKCiDCoMKgwqAgbnZtZl9wYXJzZV90b3Mob3B0cywgYXJncyk7CgogwqDCoMKgIGJyZWFr
OwoKLU1heC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
