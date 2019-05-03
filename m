Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C45133F3
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 21:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oZVNVxmemIr9qOt0p8V6tDLFNQeXfDTaRAzVBX4o2Ww=; b=SJzrYq0+yGgV2gazyNCsMXs0/
	K+yKlcWGX9cCZia441DySrMFk2src3Mga6tS+0TI5EycNFyRJ+UG/ZLDGpObHP0FIu2hDevkGW1dI
	a/n8pMx2f/rJ9ybsh77W/aaAz/w1P0Clj+VJsnxfh6IYBjL+eSU+/MbgF7gm2yOLAhVOklP7Iqfgj
	t9+PiliXp7Mos2G8kkSOI3UbrKId6RiIkCoscLpbEdIBvuss5PdiWi68es+11S9z8HFmIKFOcMGw3
	YCXbwTVHCM6LK98V74BRrWC9Lb42sCtppOPZWYdnm2dDo/HGVj4ZnAjB6EfupvAOYBThac3qNk0iw
	uAjz38CXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMdca-0007Ze-HA; Fri, 03 May 2019 19:13:24 +0000
Received: from mail-eopbgr130043.outbound.protection.outlook.com
 ([40.107.13.43] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMdcU-0007Xe-IB
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 19:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vZUPpVkwTyGkrMx+0KYiPFm/ElUuFm9MMz/r+l85vU=;
 b=rjGF8AwneDhIypGHCiIiU35VEygNNabQC8TitoaYb1WHCmJ9W8H42NKNEU64k+aRCim9kygNbgdq2SfjBqvSsVW20b+hegzwoAOQXp4zdqSSbUzYiY+IAC1m3SB7tpXq93qzJPOeEFJnGNn+eyXkrVpIIbjoO6/uhFZbegahrvU=
Received: from HE1PR05CA0154.eurprd05.prod.outlook.com (2603:10a6:7:28::41) by
 HE1PR0502MB3017.eurprd05.prod.outlook.com (2603:10a6:3:d7::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 19:13:15 +0000
Received: from DB5EUR03FT016.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::208) by HE1PR05CA0154.outlook.office365.com
 (2603:10a6:7:28::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Fri, 3 May 2019 19:13:15 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT016.mail.protection.outlook.com (10.152.20.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Fri, 3 May 2019 19:13:14 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 3 May 2019 22:13:14
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 3 May 2019 22:13:14 +0300
Received: from [172.16.0.54] (172.16.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 3 May 2019 22:12:29
 +0300
Subject: Re: [PATCHv3 2/2] nvme: validate cntlid during controller
 initialisation
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-3-hare@suse.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <0c574e02-37ce-eb20-2868-a87e9759e708@mellanox.com>
Date: Fri, 3 May 2019 22:12:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503133736.111201-3-hare@suse.de>
Content-Language: en-US
X-Originating-IP: [172.16.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(2980300002)(199004)(189003)(16526019)(53546011)(478600001)(186003)(486006)(36756003)(77096007)(4326008)(8936002)(336012)(5660300002)(11346002)(446003)(126002)(476003)(2616005)(6116002)(3846002)(64126003)(356004)(110136005)(58126008)(31696002)(81156014)(67846002)(26005)(81166006)(8676002)(23676004)(31686004)(106002)(316002)(16576012)(76176011)(86362001)(2486003)(2870700001)(7736002)(305945005)(70206006)(6246003)(229853002)(14444005)(2906002)(47776003)(54906003)(70586007)(50466002)(65806001)(65956001)(65826007)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3017; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ea6734a-7370-443b-f0b1-08d6cffb649e
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3017; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3017:
X-Microsoft-Antispam-PRVS: <HE1PR0502MB301754500C3C49692AFC1314B6350@HE1PR0502MB3017.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0026334A56
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: t64RUfd7UFoQfJa4H3/QcBOnflVvLBF/clQe72hSbcyOHnscCbONPdkd7e9dbmf5veuOp+4wXZa3JlQfERfHqPZvUQ3NegK98PB3XwWvk4YfyGVfhOtNzPkH3+vVPBp/k5H/o2Fox4FMtWgDvQy66FNDNiZzxeUivjNmtaL1KFmJ6dUD8+RD2QRliBktlSjcIkL3IBCBhZ2l704yrQU/H/FyEEKiBS9wmvMjzmnXG+6/mLDgIow2ilISG27yfh3xhBsQxTt74dgtvEP+p53K0Byk1qjzWiONoKh5qvaHIBlfvPgAtkHy5eGTpNKxd1A7Ngujbs+Qve09lHYVq2/8iFMYmmXLlAQ0zum9STIs+/nIAAcAG9aTPeR7Nb5EVgF77U+jEBjAgThgQ8OjAyNvTFK/vkluNxfHt8RNwfTwOd4=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2019 19:13:14.9521 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea6734a-7370-443b-f0b1-08d6cffb649e
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3017
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_121318_614734_E17BD66F 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvMy8yMDE5IDQ6MzcgUE0sIEhhbm5lcyBSZWluZWNrZSB3cm90ZToKPiBGcm9tOiBIYW5u
ZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+Cj4KPiBUaGUgQ05UTElEIHZhbHVlIGlzIHJlcXVp
cmVkIHRvIGJlIHVuaXF1ZSwgYW5kIHdlIGRvIHJlbHkgb24gdGhpcwo+IGZvciBjb3JyZWN0IG9w
ZXJhdGlvbi4gU28gcmVqZWN0IGFueSBjb250cm9sbGVyIGZvciB3aGljaCBhIG5vbi11bmlxdWUK
PiBDTlRMSUQgaGFzIGJlZW4gZGV0ZWN0ZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBIYW5uZXMgUmVp
bmVja2UgPGhhcmVAc3VzZS5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9jb3JlLmMg
fCAzMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ICAgMSBmaWxlIGNoYW5nZWQs
IDMwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9udm1lL2hvc3QvY29yZS5jIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gaW5kZXggY2Qx
NmQ5OGQxZjFhLi5kYzc0ZjdiYTZmNGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9udm1lL2hvc3Qv
Y29yZS5jCj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvY29yZS5jCj4gQEAgLTIzNTgsNiArMjM1
OCwyMyBAQCBzdGF0aWMgaW50IG52bWVfYWN0aXZlX2N0cmxzKHN0cnVjdCBudm1lX3N1YnN5c3Rl
bSAqc3Vic3lzKQo+ICAgCXJldHVybiBjb3VudDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgYm9vbCBu
dm1lX2R1cGxpY2F0ZV9jbnRsaWQoc3RydWN0IG52bWVfc3Vic3lzdGVtICpzdWJzeXMsCj4gKwkJ
CQkgIHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4gK3sKPiArCXN0cnVjdCBudm1lX2N0cmwgKnRt
cDsKPiArCWJvb2wgcmV0ID0gZmFsc2U7Cj4gKwo+ICsJbGlzdF9mb3JfZWFjaF9lbnRyeSh0bXAs
ICZzdWJzeXMtPmN0cmxzLCBzdWJzeXNfZW50cnkpIHsKPiArCQlpZiAodG1wID09IGN0cmwpCj4g
KwkJCWNvbnRpbnVlOwo+ICsJCWlmICh0bXAtPmNudGxpZCA9PSBjdHJsLT5jbnRsaWQpIHsKPiAr
CQkJcmV0ID0gdHJ1ZTsKPiArCQkJYnJlYWs7CgpjYW4gYmUgZG9uZSBpbiAxIGxpbmVyICh3aXRo
b3V0IGxvY2FsIHZhcmlhYmxlIHJldCk6CgppZiAodG1wICE9IGN0cmwgJiYgdG1wLT5jbnRsaWQg
PT0gY3RybC0+Y250bGlkKQoKIMKgwqDCoCByZXR1cm4gdHJ1ZTsKCgpyZXR1cm4gZmFsc2UgaW4g
dGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24uCgoKT3RoZXJ3aXNlLAoKbG9va3MgZ29vZC4KClJldmll
d2VkLWJ5OiBNYXggR3VydG92b3kgPG1heGdAbWVsbGFub3guY29tPgoKCj4gKwkJfQo+ICsJfQo+
ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbnQgbnZtZV9pbml0X3N1YnN5c3Rl
bShzdHJ1Y3QgbnZtZV9jdHJsICpjdHJsLCBzdHJ1Y3QgbnZtZV9pZF9jdHJsICppZCkKPiAgIHsK
PiAgIAlzdHJ1Y3QgbnZtZV9zdWJzeXN0ZW0gKnN1YnN5cywgKmZvdW5kOwo+IEBAIC0yNDExLDYg
KzI0MjgsNyBAQCBzdGF0aWMgaW50IG52bWVfaW5pdF9zdWJzeXN0ZW0oc3RydWN0IG52bWVfY3Ry
bCAqY3RybCwgc3RydWN0IG52bWVfaWRfY3RybCAqaWQpCj4gICAKPiAgIAkJX19udm1lX3JlbGVh
c2Vfc3Vic3lzdGVtKHN1YnN5cyk7Cj4gICAJCXN1YnN5cyA9IGZvdW5kOwo+ICsJCXJldCA9IDA7
Cj4gICAJfSBlbHNlIHsKPiAgIAkJcmV0ID0gZGV2aWNlX2FkZCgmc3Vic3lzLT5kZXYpOwo+ICAg
CQlpZiAocmV0KSB7Cj4gQEAgLTI0MzQsMTAgKzI0NTIsMjAgQEAgc3RhdGljIGludCBudm1lX2lu
aXRfc3Vic3lzdGVtKHN0cnVjdCBudm1lX2N0cmwgKmN0cmwsIHN0cnVjdCBudm1lX2lkX2N0cmwg
KmlkKQo+ICAgCX0KPiAgIAo+ICAgCW11dGV4X2xvY2soJnN1YnN5cy0+bG9jayk7Cj4gLQlsaXN0
X2FkZF90YWlsKCZjdHJsLT5zdWJzeXNfZW50cnksICZzdWJzeXMtPmN0cmxzKTsKPiArCWlmICgh
bnZtZV9kdXBsaWNhdGVfY250bGlkKHN1YnN5cywgY3RybCkpCj4gKwkJbGlzdF9hZGRfdGFpbCgm
Y3RybC0+c3Vic3lzX2VudHJ5LCAmc3Vic3lzLT5jdHJscyk7Cj4gKwllbHNlIHsKPiArCQlkZXZf
ZXJyKGN0cmwtPmRldmljZSwKPiArCQkJIkR1cGxpY2F0ZSBjbnRsaWQgJXUsIHJlamVjdGluZ1xu
IiwKPiArCQkJY3RybC0+Y250bGlkKTsKPiArCQljdHJsLT5zdWJzeXMgPSBOVUxMOwo+ICsJCXN5
c2ZzX3JlbW92ZV9saW5rKCZzdWJzeXMtPmRldi5rb2JqLCBkZXZfbmFtZShjdHJsLT5kZXZpY2Up
KTsKPiArCQludm1lX3B1dF9zdWJzeXN0ZW0oc3Vic3lzKTsKPiArCQlyZXQgPSAtRUlOVkFMOwo+
ICsJfQo+ICAgCW11dGV4X3VubG9jaygmc3Vic3lzLT5sb2NrKTsKPiAgIAo+IC0JcmV0dXJuIDA7
Cj4gKwlyZXR1cm4gcmV0Owo+ICAgCj4gICBvdXRfdW5sb2NrOgo+ICAgCW11dGV4X3VubG9jaygm
bnZtZV9zdWJzeXN0ZW1zX2xvY2spOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtbnZtZQo=
