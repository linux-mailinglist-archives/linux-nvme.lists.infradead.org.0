Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA181C3CBD
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 16:19:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2S2dAFB2Y1IZ/VSx3iaTobZiRhEFiqishwZQgXK/Yd8=; b=LsXT42hyxhxfBukvmEEzApxXC
	sa5A3H0lq1FmLlQv/9UNp5IOg827YOPmtoE3+kVBZMi/MthJTfT+JYNGQ81KofIMsRGYHUA6rL6Fy
	ITtL8enXbjvSjFJ2u4LXiD5uU113/buA2zL3Pqzrs7tW9k8D5Df4M037AVZHPds7ccycucHvgnFVi
	MkrWhRndsoEXlcAw/H2AfCqECbZR4hxgOzbfkSBMJKIYgXbEC8vBYgPEtVNgYd3vNKukgG99Sr+v6
	DpSo8pXD66ug4foBAGZ2Bx5pAhuyYjVlvjnFOjyxfPDq5rmsclT8SOQMAmbXcx/LQ7LUlQELGZg3a
	9iPshoBTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbwV-0005nK-Oi; Mon, 04 May 2020 14:19:35 +0000
Received: from mail-eopbgr60070.outbound.protection.outlook.com ([40.107.6.70]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbwR-0005mO-JW
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 14:19:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aw+VT6zos15/pwS9QsmBXj6Dpdr8nJsbSHwpmiYe3YeAXHC2kvQnKY5BqxYHXAWIsYdq+9yvBpeTc1yNEVmPqC7uQtIvqGKLU3PKiK6NlWBhFQGVH6OcIc1gbtV8sHE3zJq0RTEzMKm+4tDZEvdg6qBGH2feHhSGuEIltHyRte+HABLRyBaA7HAdgTYUZN6G6cyeYRK0mjsGqSIspNSfWKeYFAjZdajTi86wEH3bSRuhDfDnW0tDkG7jOoYAISgSsX6kOKcrXv8W96xV8ZVHJTEtxoGzvzeigkyEo1k9KvJucDzmUPVm9ATsXuGpplyF8QQHB+N3oRt617/nLGmZ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKR2pcoz5EcFgkEGTqF2RgdvDl2jqTq1ZtfHgESYma8=;
 b=Novf5yMyiGmRJoPcdHbpdwJDvBvBUDPVk9myKXEf7yAexf8NFCe6Z1a3nAj0mMg6enJ3OTUSYNAXTxHJQYYw+9hHPpssQ1YH7ARnlUwLLu5g7mpMdh3PFTS1BC3oKcfzkJBsLkFBeBj1011QMCCq1ihGWU7E/NYm/JkA6NVJlk09OEncRcNMR1SL2xhINmX+0jQP45a8tppnc3dFCXN67S/j/8McZhBHUu9bTAbDzz9s+ZFqlhKHhbjk3Pf2wKFrjRs+ZMX9L7V2ohODVJ+KD2zgq9MKfgHLpg3hWEhkpYxwhn06MEuqjjf/tHN+KADaMKq2YlyXCT+tKMptSfQ/7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKR2pcoz5EcFgkEGTqF2RgdvDl2jqTq1ZtfHgESYma8=;
 b=QnhiGl20PKyO6dImNo/DqaE0zmWFZrEaKlwQxGWsp6qP2/AP49jin+2ErHgHuKLAhgrZkUjV+ksj5UreEO4F1ekTEGK2bbg+QWoChARdcKkFM17EYnwRcm5MdFGGiLINM4tH/pkH6nn4JmcXoao7DflooMoKzzQ11MAabu00J34=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB5617.eurprd05.prod.outlook.com (2603:10a6:208:119::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Mon, 4 May
 2020 14:19:26 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2958.029; Mon, 4 May 2020
 14:19:25 +0000
Subject: Re: [PATCH 15/15] nvmet-rdma: add metadata/T10-PI support
To: Christoph Hellwig <hch@lst.de>
References: <20200428131135.211521-1-maxg@mellanox.com>
 <20200428131135.211521-16-maxg@mellanox.com> <20200501164818.GA19607@lst.de>
 <5cbfde4a-871e-51d4-bace-b7b0fbd675ba@mellanox.com>
 <20200504140800.GA22747@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <e5347efd-a0d3-1cd8-a495-dd5e31ef8c42@mellanox.com>
Date: Mon, 4 May 2020 17:19:21 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200504140800.GA22747@lst.de>
Content-Language: en-US
X-ClientProxiedBy: LNXP265CA0053.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::17) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 LNXP265CA0053.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Mon, 4 May 2020 14:19:23 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 613bcb8e-7052-458c-28f8-08d7f0362617
X-MS-TrafficTypeDiagnostic: AM0PR05MB5617:|AM0PR05MB5617:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB56176439C544B86E56C2CC7CB6A60@AM0PR05MB5617.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 03932714EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95/y5k7QOWkhMQBdeXjM1oGwISRNm9f/8zCls8lCWFzQU0vPsqCo0mbhxTUsJTB1KzxBXUDx6GT6as5auFizfMTl3/0EsFUHagyRtsfJ5zv+k5k3c/lwph2LR+w0H1x61O2vKHLIj6iopoVnF6B4SBVlWIxr5oAwzwFXqzy5WtZ/yaiGllXGd7ScCy3i6PSZvi5q1cceClVvp77/5sNFgM0VsQmy3uXuFdNLCFGMIFIAaOs+OMxiT2RAXu1Bj/gQMkGdWdr8AkmE3y0m9ExeDlUrrmvWwjCtq8xik2XwiPORnqdbU491Gm4Ff6G3iyNr+gUrKbg1u+EvYcxAz1nTKqMmo8ebhwPXMptCGOhkabplQCyCLbvnUNnK5b2djXUCww3E4BlNVDoOmCTH95Pb9fj2XRnDwheL8KFLw5VduD3trsLN9d4Vrlv1K0WsCL4+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(956004)(4326008)(31686004)(86362001)(478600001)(31696002)(5660300002)(2616005)(107886003)(6916009)(6486002)(2906002)(186003)(52116002)(16526019)(53546011)(26005)(4744005)(66556008)(66476007)(66946007)(8676002)(8936002)(36756003)(16576012)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: dS7DPRisy7bZmdJPtUgUy//tcq2/DhIAXSRJ9slKa/ZF2rgUTxeovabNRyYA2TVdv6XoJsGLoVy8v0z+Eu8CahBrvAZ9efBk9i1i514E5czWCh3hRxhEb5XIDMmi9MtwrVdmW7Bcsn2nIdp2IiWeIKzxX/73EPetIhj8FFDXFoLbWXHz03daLYiBpMgZI8Ew+3gz74WGZ0k6WSj+8hw/Janp2wz6rHeQ8lcWbVADgcPlrt0os2BiH1sneRXN+RG5e7kIJcWmoK+PK81jtko+TtnzNj8YfZPJxJlL7A12+8udlzUtPg7DX8g0KryjisMwun64UUG3xJbl5SMFO+63vUlagRDcriq38duEZ0Q5wpRu/tWXqatA9WAUbl5MUXCOAEABOKQQ7wROR8qLrVovED2aQnBpk3qrqcFt5A/mofi3ycToMJKIzzMmORbSFGJwY6LmeRWoD8PURltERBZhgaEjx3bit/yIpJxzuBp8BgS5gI/WlFv2QKd3ILhSoqGXLeTSjh995jA6AvgA8Vf5I7zlndkEOjlz62Wc/w03RYpr8pm4FPuSZiru/m2rGEui2YDttM0de9nWDYlRnMxqiW4+t/JqI6Zo9JzLjCIvHaQGf2a6FJtMsVr9vkOLTdSUlti5yWk+SqIWQReyPRNbjSfnF4G2AFb/ICl65bbgeW/9sqMwBVmGJymL4eOV+QFH0wY4NX0fCj4YuSKTf0V6zuhq5RdmXD5H1kPeQ023msjT+tx/UjKU9IfgTUV5y4vZR8ILoktkTCTScKK0Z7TKXWFXuSVoGs6hxEmG/zxG4QA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 613bcb8e-7052-458c-28f8-08d7f0362617
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2020 14:19:25.6085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hOz4yPAH8Xq3f2m8igIncLy59qctbBNM+qeSYzy+razby5+saF647uYzIfZ5JkGEH4FyRTiqRUvHmXqNdbZBBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5617
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_071931_688679_403869D8 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.70 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvNC8yMDIwIDU6MDggUE0sIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IE9uIFN1biwg
TWF5IDAzLCAyMDIwIGF0IDA3OjI5OjEyUE0gKzAzMDAsIE1heCBHdXJ0b3ZveSB3cm90ZToKPj4+
IENhbiB3ZSBoYXZlIGEgaGVscGVyIGZvciBtZXRhZGF0YSBsZW4gdGhhdCBhbHNvIHVzZXMKPj4+
IElTX0VOQUJMRUQoQ09ORklHX0JMS19ERVZfSU5URUdSSVRZKSB0byBsZXQgdGhlIGNvbXBpbGVy
IGdhcmJhZ2UgY29sbGVjdAo+Pj4gdGhlIHdob2xlIGNvZGUgaWYgaXQgaXMgY29tcGlsZWQgb3V0
Pwo+PiBXZSBoYXZlIGl0IGluOgo+Pgo+PiBzdGF0aWMgaW5saW5lIHUzMiBudm1ldF9yd19tZXRh
ZGF0YV9sZW4oc3RydWN0IG52bWV0X3JlcSAqcmVxKQo+PiB7Cj4+ICDCoMKgwqDCoMKgwqDCoCBp
ZiAoIUlTX0VOQUJMRUQoQ09ORklHX0JMS19ERVZfSU5URUdSSVRZKSkKPj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiAo
KHUzMilsZTE2X3RvX2NwdShyZXEtPmNtZC0+cncubGVuZ3RoKSArIDEpICoKPj4gIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVxLT5ucy0+bWV0YWRhdGFf
c2l6ZTsKPj4gfQo+Pgo+Pgo+PiBhbmQKPj4KPj4gcmVxLT5tZXRhZGF0YV9sZW4gPSBudm1ldF9y
d19tZXRhZGF0YV9sZW4ocmVxKTsKPj4KPj4gaXMgaXQgZ29vZCBlbm91Z2ggZm9yIHRoZSBjb21w
aWxlciA/Cj4gV2VsbCwgdGhpcyBpcyB0aGUgY2FsY3VsYXRlZCBtZXRhZGF0YSBsZW4sIG5vdCB0
aGUgZmllbGQgaW4gdGhlCj4gcmVxdWVzdCwgYW5kIHRoZSBjb21waWxlciBjYW4ndCByZWFsbHkg
a25vdyBpdCBhbHdheXMgaXMgMCBpbiB0aGF0Cj4gY2FzZS4gIEF0IHNvbWUgcG9pbnQgdGhlc2Ug
b3B0aW1pemF0aW9ucyBtaWdodCBiZWNvbWUgYSBsaXR0bGUKPiB0b28gdWdseSwgdGhvdWdoLgoK
WWVzLCBJIHRyaWVkIHRvIG1ha2Ugc29tZSBiYWxhbmNlIGJldHdlZW4gb3B0aW1pemF0aW9uIGFu
ZCBjb2RlIApyZWFkYWJpbGl0eSBhbmQgSSdsbCBzZW50IFY3IHRvZGF5LgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcg
bGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
