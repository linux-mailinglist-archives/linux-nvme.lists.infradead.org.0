Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E421C854A
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 11:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lrLCz+SKOUmorPYiCzJr1M2lM/oybTa/QegChecIB5c=; b=T5jjUEXqscoDDbYJ1gHaRyPVG
	77ck9eRbhWbePxaDkHuKxauRdlrrm31Lr+YIiX9XibQSe4miIOyDhEBl3qup+AHkrpJN9jwODe69V
	9EjogZTzeeVlr6kkntc1bTerlaat3UaUiPVIk+cZKQtBE/5iiAdHic4UseNYhy5rZuKtEBFE8PaOt
	Iisn7HyYu4MzX+qevYKYl/vhoihC9dOAGzuSozf4wtOtYlYcbaijTVfjkbX0jnUaf2p8mOxkmlE/D
	3CJvQFzf0L7yR/+WUmfkx/QpdAM+5aSd4EKHh40AWC7a4MisuxFSoV8BZyXEm1cQraQJz4w9pGsMW
	H4MkH7+Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcQK-0005P6-GY; Thu, 07 May 2020 09:02:32 +0000
Received: from mail-eopbgr30055.outbound.protection.outlook.com ([40.107.3.55]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcQE-0005OJ-Gr
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 09:02:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6LP7PHYaJnOR/bikN/ObayG987FxUh4cRngn1wST6RGV/dZleJs5tmL2H1wtWfjzWQcn9D3kssoa6Q5fXupx0Jv6ufEDVaoPTxdBPpeNR0m6m5LcObkDw3d/jenCZUItdqvc9nlpjl7DDl7ss/ScMebxqDswg977owzdeQPVU3pu3Ap0iRyZQjlftIzvCDNO0G+rKnrZes6vGgJr7qudhAcvn/lgmtZzIUxic/GCMBnkMFeL8YZlJF+2QEadCu8mUin6XiwuFXaset09hb/ysxEEqpyhKe+c2mmW19ysbloMxq1EABNX/snlnlPHV++1uDimLpqKSzo2SiBs6s7mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lihr1ovvTUk5dFCQKZQSAtVzg9QZcGvujC9e0XZglXY=;
 b=O4hcbL+szLQPQ1DEeoWL6IXJsAweYSnLej0fXQKIwZztNNNT5S/s47HYzKrtOi/kYxNnPwQmdQcccOZgMZOurS3qRpk2v3nvi+R6e5ktzEJ5SlAnDSIsA4ZtTurXq8fTwUWShMFQtR7wQGykIF4hkbBUn7JwwDkVnD2xpf3PUpcrvYnYVS5zQ0f33kTqVehgwTyPIA4S4I/cD1FwUVEvVeCsDNfFQjnAfdLIVNsNWg1nN2Wrc4/ehQyw4mV5JqAvdNDJCjcQzQ4HPcjwMbNBeZZlA/AkGOjPFq66qtO7tFU7/ri/5Cmz15lmJp/vvjGYCipsKPH8f/uCLnjihJUyrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lihr1ovvTUk5dFCQKZQSAtVzg9QZcGvujC9e0XZglXY=;
 b=QsiOTitqZNJyzIbSq9RXPL2Tmh7yUymi4iHAieNZXb9dEqMLDDBpRoWxon1NNd1he4WTQOwL3XVwDuCXhtzXGBZDzwZc7twFjQAF/imIFZZIzkoicAktxk8ZJtj+mufrAcMZBUbV4PDLi9Pytl/ujjcW4L/QNpmJiSlWS7xZW/I=
Authentication-Results: mellanox.com; dkim=none (message not signed)
 header.d=none;mellanox.com; dmarc=none action=none header.from=mellanox.com;
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB4722.eurprd05.prod.outlook.com (2603:10a6:208:b8::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Thu, 7 May
 2020 09:02:19 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 09:02:18 +0000
Subject: Re: [PATCH 03/16] nvme: introduce NVME_NS_METADATA_SUPPORTED flag
To: James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-4-maxg@mellanox.com>
 <e21354ca-a7bb-cf2d-d427-c8410c797a49@broadcom.com>
 <71c7458e-81cd-7200-2e1b-3563cdddd5ad@mellanox.com>
 <62322680-afeb-142e-c10b-b4f2d4c419a3@broadcom.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <1b03c314-2e57-5135-6875-a2d37ecf5e20@mellanox.com>
Date: Thu, 7 May 2020 12:02:14 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <62322680-afeb-142e-c10b-b4f2d4c419a3@broadcom.com>
Content-Language: en-US
X-ClientProxiedBy: ZRAP278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::24) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (89.139.203.251) by
 ZRAP278CA0014.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:10::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Thu, 7 May 2020 09:02:16 +0000
X-Originating-IP: [89.139.203.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ac63013b-f45c-44c1-207a-08d7f2655877
X-MS-TrafficTypeDiagnostic: AM0PR05MB4722:|AM0PR05MB4722:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB4722145A1382A9E25A79C479B6A50@AM0PR05MB4722.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: owJY1pP0JsTTUFsxarO5OV7AkDIyDAI2Lnv9JiDdKamQ2pBl8ptt8qbfGZdk7Lwmi58Ro3HzIl/JuLnqQwAdo2wrabV4v9CUAFp8iLU2FW8LKqRfRgqoFw2zE8y6E5Prmd9GMusW/701PNuvNqi5tHLoTfe7kK9UNprbQesLIcAr/EJ6aOslBNIdoMVMb9O8+UAcJ4Y3G1BvMQ+uqmj+RpJF/IxD6eYUl2PGDJs9tLQ18kONWIGRTTznsWhPwVOaABFP7Rhh78pOb7LnGwvH8m6p7Itr31RUTjchj8NYef/2bdCUMpCyaexiPpD0fbHqa3Mur+oRLx32GK0GJLWPgi2skEDzZI2QV7KQBwVkv8Molm9NW3R2Bxql+cwccIanK2AzM9KJmm5n3Ohs50oYV6Ty2bM8NTmmm79LyoBV8CXSTFgXs7tEJOzNARXTs/WlYttqyDepkiVm2m2QugIOJWv6iOXZnF4NxoltqycI6tjA5JFDtiiUOsMjpg+YzAjmtRo0VsRsvAo6GmQqxQLVq/Mwl6jL7UCtII93ySc/CEwhKxseSUccsw//F8T0ZBxI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(376002)(39860400002)(136003)(346002)(33430700001)(16576012)(8676002)(36756003)(52116002)(4326008)(2616005)(8936002)(956004)(83310400001)(83290400001)(83300400001)(66476007)(66556008)(83280400001)(83320400001)(66946007)(33440700001)(31696002)(2906002)(186003)(316002)(107886003)(86362001)(53546011)(5660300002)(478600001)(31686004)(6486002)(16526019)(26005)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: B/nTsNKerNAovOxuxPvRN5UM13Z939cat0ZO3ggyk1xupaIP9vtdB3L6RuxBb0gLd5BM+QW36TaikxtHCCMpAosnFlIZFDPCLI37Kr77fBRUUh0q5Jz75qYhGoz5nSxKQMoi2+TciN+SKFlS1UkkG6U2cIWuw5at5xAXbw4zHXAHxHZEFOPqr4wNghOXUSbfsej8vwlu/LEdKM1Pt4pIHhq/bDmhfUgg/9ksGFsIX3ST6w66ZLuiPjIlmzpx40Lf702rNPDBSpGIjRBCQzU5BK6pHBaHC1E/MeO+TftTKDupv1KOtBTmbXdz5vSK3Jen4X18XBIYHJArR5OLqp+RzZ99DULnYvsKx4AID37O1VrUMMnmQmHKOxxH2ArPnrYmMUK6uB8tUKUwigcYLnk0CVrvc35+umaVcNbgvmjLXcjxPG+EHjLdyJZDLgGSaS15Gw0NGMDMSw//0rOVo2K/yQQbmuCat4wl/92AtUUVddTzy0D6CWRTB/swu6Jvf6aLy1eK4oOgshv4RXF3CNoRVIAhW877F6HCSg0FsB93d3hUMrmAE8LIbsv7odKWRk3TF12ajlkjXuiaMujtGijKLNRVZycoFWanIzDTGHvuedQ3zj7vjuCiQrs5nBSxVRzh8FyB/QUmXtJOQj+lcze/bYxkh42o2CqibwC/HtyFPVdnRtVSyTZ5pazrp9IwoZlPWE6IHe7yK0C2Mnt2L2BfMbSySwUpUFxX317qLD9QUHQb7sCORBtnQsfmnxjuKrN5aes68LUj8T0279Q4FMEMCuDq9oqwxU0hQQeBAzeIqy0=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac63013b-f45c-44c1-207a-08d7f2655877
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 09:02:18.8393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o1nUP+XJpB6y0ZM1HWX2SFOQDU/zMaco+mb/SnKdlKXRvvo62LjqYmn6wumAIBB+alzorArQZL+WTjRV+X0HKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_020226_736922_ABBC20C8 
X-CRM114-Status: GOOD (  33.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.55 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDUvNi8yMDIwIDExOjQ0IFBNLCBKYW1lcyBTbWFydCB3cm90ZToKPgo+Cj4gT24gNS82LzIw
MjAgMTozOSBBTSwgTWF4IEd1cnRvdm95IHdyb3RlOgo+Pgo+PiBPbiA1LzYvMjAyMCAyOjMzIEFN
LCBKYW1lcyBTbWFydCB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gNS80LzIwMjAgODo1NyBBTSwgTWF4
IEd1cnRvdm95IHdyb3RlOgo+Pj4+IFRoaXMgaXMgYSBwcmVwYXJhdGlvbiBmb3IgYWRkaW5nIHN1
cHBvcnQgZm9yIG1ldGFkYXRhIGluIGZhYnJpYwo+Pj4+IGNvbnRyb2xsZXJzLiBOZXcgZmxhZyB3
aWxsIGltcGx5IHRoYXQgTlZNZSBuYW1lc3BhY2Ugc3VwcG9ydHMgZ2V0dGluZwo+Pj4+IG1ldGFk
YXRhIHRoYXQgd2FzIG9yaWdpbmFsbHkgZ2VuZXJhdGVkIGJ5IGhvc3QncyBibG9jayBsYXllci4K
Pj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1heCBHdXJ0b3ZveSA8bWF4Z0BtZWxsYW5veC5jb20+
Cj4+Pj4gUmV2aWV3ZWQtYnk6IElzcmFlbCBSdWtzaGluIDxpc3JhZWxyQG1lbGxhbm94LmNvbT4K
Pj4+PiBSZXZpZXdlZC1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Cj4+Pj4gLS0t
Cj4+Pj4gwqAgZHJpdmVycy9udm1lL2hvc3QvY29yZS5jIHwgNDEgCj4+Pj4gKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPj4+PiDCoCBkcml2ZXJzL252bWUvaG9zdC9u
dm1lLmggfMKgIDEgKwo+Pj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKSwg
NyBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9j
b3JlLmMgYi9kcml2ZXJzL252bWUvaG9zdC9jb3JlLmMKPj4+PiBpbmRleCAxZDIyNmNjLi40Yjdm
YWY5IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4+ICsrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L2NvcmUuYwo+Pj4+IEBAIC0xODgyLDEzICsxODgyLDI3IEBAIHN0
YXRpYyB2b2lkIG52bWVfdXBkYXRlX2Rpc2tfaW5mbyhzdHJ1Y3QgCj4+Pj4gZ2VuZGlzayAqZGlz
aywKPj4+PiDCoMKgwqDCoMKgIGJsa19xdWV1ZV9pb19taW4oZGlzay0+cXVldWUsIHBoeXNfYnMp
Owo+Pj4+IMKgwqDCoMKgwqAgYmxrX3F1ZXVlX2lvX29wdChkaXNrLT5xdWV1ZSwgaW9fb3B0KTsK
Pj4+PiDCoCAtwqDCoMKgIGlmIChucy0+bXMgJiYgIShucy0+ZmVhdHVyZXMgJiBOVk1FX05TX0VY
VF9MQkFTKSAmJgo+Pj4+IC3CoMKgwqDCoMKgwqDCoCAobnMtPmN0cmwtPm9wcy0+ZmxhZ3MgJiBO
Vk1FX0ZfTUVUQURBVEFfU1VQUE9SVEVEKSkKPj4+PiAtwqDCoMKgwqDCoMKgwqAgbnZtZV9pbml0
X2ludGVncml0eShkaXNrLCBucy0+bXMsIG5zLT5waV90eXBlKTsKPj4+PiAtwqDCoMKgIGlmICgo
bnMtPm1zICYmICFudm1lX25zX2hhc19waShucykgJiYgCj4+Pj4gIWJsa19nZXRfaW50ZWdyaXR5
KGRpc2spKSB8fAo+Pj4+IC3CoMKgwqDCoMKgwqDCoCBucy0+bGJhX3NoaWZ0ID4gUEFHRV9TSElG
VCkKPj4+PiArwqDCoMKgIC8qCj4+Pj4gK8KgwqDCoMKgICogVGhlIGJsb2NrIGxheWVyIGNhbid0
IHN1cHBvcnQgTEJBIHNpemVzIGxhcmdlciB0aGFuIHRoZSAKPj4+PiBwYWdlIHNpemUKPj4+PiAr
wqDCoMKgwqAgKiB5ZXQsIHNvIGNhdGNoIHRoaXMgZWFybHkgYW5kIGRvbid0IGFsbG93IGJsb2Nr
IEkvTy4KPj4+PiArwqDCoMKgwqAgKi8KPj4+PiArwqDCoMKgIGlmIChucy0+bGJhX3NoaWZ0ID4g
UEFHRV9TSElGVCkKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgY2FwYWNpdHkgPSAwOwo+Pj4+IMKg
ICvCoMKgwqAgLyoKPj4+PiArwqDCoMKgwqAgKiBSZWdpc3RlciBhIG1ldGFkYXRhIHByb2ZpbGUg
Zm9yIFBJLCBvciB0aGUgcGxhaW4gCj4+Pj4gbm9uLWludGVncml0eSBOVk1lCj4+Pj4gK8KgwqDC
oMKgICogbWV0YWRhdGEgbWFzcXVlcmFkaW5nIGFzIFR5cGUgMCBpZiBzdXBwb3J0ZWQsIG90aGVy
d2lzZSAKPj4+PiByZWplY3QgYmxvY2sKPj4+PiArwqDCoMKgwqAgKiBJL08gdG8gbmFtZXNwYWNl
cyB3aXRoIG1ldGFkYXRhIGV4Y2VwdCB3aGVuIHRoZSBuYW1lc3BhY2UgCj4+Pj4gc3VwcG9ydHMK
Pj4+PiArwqDCoMKgwqAgKiBQSSwgYXMgaXQgY2FuIHN0cmlwL2luc2VydCBpbiB0aGF0IGNhc2Uu
Cj4+Pj4gK8KgwqDCoMKgICovCj4+Pj4gK8KgwqDCoCBpZiAobnMtPm1zKSB7Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgIGlmIChJU19FTkFCTEVEKENPTkZJR19CTEtfREVWX0lOVEVHUklUWSkgJiYKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAobnMtPmZlYXR1cmVzICYgTlZNRV9OU19NRVRBREFU
QV9TVVBQT1JURUQpKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG52bWVfaW5pdF9pbnRl
Z3JpdHkoZGlzaywgbnMtPm1zLCBucy0+cGlfdHlwZSk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGVs
c2UgaWYgKCFudm1lX25zX2hhc19waShucykpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y2FwYWNpdHkgPSAwOwo+Pj4+ICvCoMKgwqAgfQo+Pj4+ICsKPj4+IExvb2sgYmVsb3cgZm9yIGhv
dyBJIGludGVycHJldCB0aGUgbWVhbmluZyBvZiB0aGUgCj4+PiBOVk1FX05TX01FVEFEQVRBX1NV
UFBPUlRFRCBmbGFnLiBJdCdzIGEgcm9sbHVwIG9mIHNldmVyYWwgCj4+PiBjb25kaXRpb25zLiBO
b3QgYWxsIG9mIHRob3NlIGNvbmRpdGlvbnMgYXJlIGNvbnNpZGVyZWQgaW4gdGhlIGVsc2UgCj4+
PiBjbGF1c2UuCj4+Cj4+IE5WTUVfTlNfTUVUQURBVEFfU1VQUE9SVEVEIGhhcyAxIG1lYW5pbmc6
Cj4+Cj4+IHN1cHBvcnQgZ2V0dGluZyBtZXRhZGF0YSBmcm9tIHRoZSBibG9jayBsYXllci4KPgo+
IFdlbGwgSSBkaXNhZ3JlZSB3aXRoIHlvdSBhcyBzZXZlcmFsIG90aGVyIGNvbmRpdGlvbnMgaGFk
IHRvIGJlIHRydWUgaW4gCj4gb3JkZXIgZm9yIGl0IHRvIGJlIHNldC4KPgo+Pgo+PiBMaW51eCBi
bG9jayBpcyBzdXBwbHlpbmcgb25seSAyIHNlcGFyYXRlIHBvaW50ZXJzIGZvciBkYXRhL21ldGFk
YXRhIAo+PiAoYWthIE5vbi1FeHRlbmRlZCBtb2RlIGluIE5WTWUpLgo+Pgo+PiBTbyBkcml2ZXJz
IHRoYXQgY2FuJ3QgY29udmVydCBiZXR3ZWVuIHRoZSAyIHdpbGwgc2V0IHRoaXMgZmxhZyBvbmx5
IAo+PiBpbiBjYXNlIHRoZWlyIGNvbnRyb2xsZXIgc3VwcG9ydCBzZXBhcmF0ZSBidWZmZXIgbW9k
ZS4KPgo+IE1heWJlIEknbSBzcGxpdHRpbmcgaGFpcnMuLi4gYnV0Li7CoCB5b3VyIDEgbWVhbmlu
ZyBpcyAiYmxrIHNlbmRzIAo+IHNlcGFyYXRlICYgdHJhbnNwb3J0IHN1cHBvcnRzIHNlcGFyYXRl
IGJ1ZmZlciIgYW5kIHlvdSBtaXNzZWQgdGhlICImIAo+IGNvbnRyb2xsZXIgcmVxdWlyZXMgc2Vw
YXJhdGUiLgo+Cj4+IEl0IGRvZXNuJ3QgbWVhbiB0aGUgY29udHJvbGxlciBjYW4ndCBnZW5lcmF0
ZSB0aGUgbWV0YWRhdGEgYnkgaGltc2VsZi4uLgo+Cj4gSSBkaWRuJ3Qgc2F5IHRoYXQgaXQgZGlk
LsKgIEFuZCBJIGRvbid0IHNlZSBob3cgdGhpcyBjYXNlIHdvdWxkIGJlIAo+IGNvdmVyZWQgYnkg
dGhpcyBmbGFnIHVubGVzcyB0aGVyZSdzIGxvdHMgb2YgYXNzdW1wdGlvbnMuIE1pbmltYWxseSB0
aGUgCj4gIiYgY29udHJvbGxlciByZXF1aXJlcyBzZXBhcmF0ZSIgd291bGQgbGlrZWx5IGJlIGZh
bHNlIC0gdGhlIAo+IGNvbnRyb2xsZXIgd291bGQgcmVxdWlyZSBleHRlbmRlZCBMQkEuwqAgQW5k
IHdlIHdvdWxkIG5lZWQgc29tZXRoaW5nIAo+IGVsc2UgdG8gaW5kaWNhdGUgImJsayBkb2Vzbid0
IGhhdmUgdG8gc2VuZCBtZSBzZXBhcmF0ZSBtZXRhLCB5ZXQgSSBjYW4gCj4gc3RpbGwgZG8gcGki
LsKgIEkga25vdyB3ZSdyZSBnb2luZyBvdXRzaWRlIHRoZSBzY29wZSBvZiB0aGlzIHBhdGNoLCAK
PiBwcm9iYWJseSBpbnRvIHBhdGNoIDYuCj4KPgo+Pgo+PiBNYXliZSB3ZSBtb3ZlIHRoZSBJU19F
TkFCTEVEKENPTkZJR19CTEtfREVWX0lOVEVHUklUWSkgdG8gdGhlIHBsYWNlIAo+PiB3aGVyZSB3
ZSBzdXBwb3NlIHRvIHNldCB0aGUgTlZNRV9OU19NRVRBREFUQV9TVVBQT1JURUQuCj4+Cj4+IHdp
bGwgaXQgbWFrZSBsaWZlIGVhc2llcjoKPj4KPj4gaWYgKG5zLT5mZWF0dXJlcyAmIE5WTUVfTlNf
TUVUQURBVEFfU1VQUE9SVEVEKQo+Pgo+PiDCoMKgwqAgbnZtZV9pbml0X2ludGVncml0eShkaXNr
LCBucy0+bXMsIG5zLT5waV90eXBlKTsKPj4KPj4gZWxzZSBpZiAoIW52bWVfbnNfaGFzX3BpKG5z
KSkKPj4KPj4gwqDCoMKgIGNhcGFjaXR5ID0gMDsKPgo+IEkgdGhpbmsgeW91IHN0aWxsIG1pc3Nl
ZCBpdC4KPgo+IExldCBtZSByZXdvcmQgdGhpcyBzbmlwcGV0IHdpdGggd2hhdCB0aGUgZmxhZyBy
ZWFsbHkgbWVhbnM6Cj4KPiBpZiAoSVNfRU5BQkxFRChDT05GSUdfQkxLX0RFVl9JTlRFR1JJVFkp
ICYmIChucy0+Y3RybC0+b3BzLT5mbGFncyAmIAo+IE5WTUVfRl9NRVRBREFUQV9TVVBQT1JURUQp
ICYmICEobnMtPmZlYXR1cmVzICYgTlZNRV9OU19FWFRfTEJBUykpCj4gwqAgbnZtZV9pbml0X2lu
dGVncml0eSguLi4swqAgbnMtPnBpX3R5cGUpCj4gZWxzZSBpZiAoIW52bWVfbnNfaGFzX3BpKG5z
KSkKPiDCoMKgIGNhcGFjaXR5PTAuCj4KPiBUaGlzIGxlYXZlcyB0aGUgY2FzZXMgd2hlcmUgY2Fw
YWNpdHkgaXMgbm90IHplcm8nZCwgdGh1cyB0aGVyZSBtYXkgYmUgCj4gaW8gYXR0ZW1wdGVkIHRv
IHRoZSBuczoKPiBhIGtlcm5lbCB3L28gQ09ORklHX0JMS19ERVZfSU5URUdSSVRZIGVuYWJsZWQs
IGFuZCB0aGUgbnMgd2FzIAo+IGZvcm1hdHRlZCBmb3IgcGkuCgpDb250cm9sbGVyIHdpbGwgZ2Vu
ZXJhdGUgaXQuCgoKPiBhIGtlcm5lbCB3LyBDT05GSUdfQkxLX0RFVl9JTlRFR1JJVFksIHRoZSBu
cyB3YXMgZm9ybWF0dGVkIGZvciBwaSwgYnV0IAo+IHRoZSB0cmFuc3BvcnQgaGFzIG5vIGlkZWEg
YWJvdXQgYSBzZXBhcmF0ZSBidWZmZXIuCgpJZiB0aGUgdHJhbnNwb3J0IHN1cHBvcnRzIE1FVEFE
QVRBLCBpdCBtdXN0IGhhdmUgYW4gaWRlYSBhYm91dCBzZXBhcmF0ZSAKYW5kIG5vbi1zZXBhcmF0
ZSBtb2Rlcy4KCgo+IGEga2VybmVsIHcvIENPTkZJR19CTEtfREVWX0lOVEVHUklUWSwgdGhlIG5z
IHdhcyBmb3JtYXR0ZWQgZm9yIHBpLCB0aGUgCj4gdHJhbnNwb3J0IGtub3dzIGhvdyB0byAyIGRv
IGJ1ZmZlcnMsIGJ1dCB0aGUgY29udHJvbGxlciByZXF1aXJlcyAKPiBleHRlbmRlZCBMQkFTLgoK
SW4gdGhpcyBwb2ludCBvZiB0aW1lIChwYXRjaCAzLzE2KSBvbmx5IFBDSSB0cmFuc3BvcnQgc3Vw
cG9ydHMgdGhlIAptZXRhZGF0YSBmZWF0dXJlIGFuZCBpdCBjYW4ndCBjb252ZXJ0IGZyb20gMiBi
dWZmZXJzIHRvIGV4dGVuZGVkIG1vZGUuCgpTbyBpbiBjYXNlIHlvdSBnZXQgYSB3cml0ZS9yZWFk
IGNvbW1hbmQgZnJvbSBibG9jayBsYXllciAod2l0aG91dCAKbWV0YWRhdGEgb2YgY291cnNlKSwg
dGhlIGNvcmUgbGF5ZXIgd2lsbCBzZWUgdGhhdCB0aGUgbnMgImhhcyBwaSIgYW5kIAp3aWxsIHNl
dCB0aGUgUFJBQ1QgYml0IHNvIHRoYXQgdGhlIFNTRCBjb250cm9sbGVyIHdpbGwgZ2VuZXJhdGUv
c3RyaXAgCnRoZSBtZXRhZGF0YS4KCgo+Cj4gVGhlIDFzdCBhbmQgbGFzdCBsaW5lcyBjYW4gYmUg
Y2FzZXMgd2l0aCBwY2llIGRyaXZlcyAoeW91IHdvdWxkIGhvcGUgCj4geW91IGNvdWxkbid0IGZv
cm1hdCBmb3IgcGkgdy9vIGhhdmluZyBzdXBwb3J0IGZvciBpdCwgaG9wZSBubyBvbmUgCj4gcGx1
Z3MgYSBwcmUtZm9ybWF0dGVkIGRyaXZlIGluKSAuCj4gVGhlIDFzdCBhbmQgbWlkZGxlIGxpbmVz
IGNhbiBiZSBjYXNlcyB3aXRoIGZhYnJpYy1hdHRhY2hlZCBzdWJzeXN0ZW1zLgoKZm9yIFBDSSB3
ZSdyZSBvayA/Cgpmb3IgZmFicmljcywgdGhlIGNvbmRpdGlvbnMgYXJlIGRpZmZlcmVudCBhbmQg
bm90IHN1cHBvcnRlZCBpbiB0aGlzIHN0YWdlLgoKCgo+Cj4gUmF0aGVyIHRoYW4gcmVzb2x2aW5n
IGl0IGluIHRoaXMgcGF0Y2gsIGxldCdzIGRlZmVyIHRoZSBjb252ZXJzYXRpb24gCj4gdG8gcGF0
Y2ggNiwgd2hlcmUgdGhlIHNuaXBwZXQgaXMgbW9kaWZpZWQgZm9yIGZhYnJpY3MuwqAgSSBjb21t
ZW50ZWQgCj4gYXMsIGlmIHRoZSAyIHBhdGNoZXMgd2VyZSBldmVyIHNlcGFyYXRlZCwgdGhpcyBw
YXRjaCB3b3VsZCBsZWF2ZSBob2xlcy4KPgo+Cj4+Cj4+Cj4+Cj4+Pgo+Pj4gVGhlICJlbHNlIGlm
IiBjbGF1c2UgbG9va3MgdG9vIGxpZ2h0IHRvIGFkZHJlc3MgYWxsIHRoZSBjYXNlcyB3aGVyZSAK
Pj4+IGNhcGFjaXR5IHNob3VsZCBiZSBzZXQgdG8gMC4gUHJvYmFibHkgc2hvdWxkbid0IGJlIGFu
IGVsc2UuCj4+PiBFeGFtcGxlczoKPj4+IC0gISBJU19FTkFCTEVEKENPTkZJR19CTEtfREVWX0lO
VEVHUklUWSkgJiBtZXRhIGlzIHBpIChha2EgCj4+PiBudm1lX2hzX2hhc19waSkKPj4+IC0gbWV0
YSBpcyBub3QgcGkgKHRodXMgcGlfdHlwZT0wIGluIGNhbGwgdG8gbnZtZV9pbml0X2ludGVncml0
eSgpKSwgCj4+PiB3aGljaCByZXN1bHRzIGluICFibGtfZ2V0X2ludGVncml0eShkaXNrKSB3aGlj
aCBpcyBub3QgY2hlY2tlZC4KPj4KPj4gVGhpcyB3aWxsIHNldCBkdW1teSBub3BfcHJvZmlsZSBh
bmQgYmxrX2dldF9pbnRlZ3JpdHkoZGlzaykgd2lsbCBub3QgCj4+IHJldHVybiBOVUxMLgo+Pgo+
PiBJZiB3ZSBpbml0IHRoZSBpbnRlZ3JpdHkgaW4gbnZtZV9pbml0X2ludGVncml0eSBpdCB3aWxs
IG5vdCByZXR1cm4gCj4+IE5VTEwgYWxzbyBmb3IgdHlwZSAwLgo+Cj4gR29vZCAtIEkgd2FzIHVu
ZGVyIHRoZSBpbXByZXNzaW9uIGl0IHdvdWxkIGhhdmUuCj4KPgo+Pgo+Pgo+Pj4gLSBtZXRhIGlz
IHBpIGFuZDoKPj4+IMKgIC0gIW5zLT5jdHJsLT5vcHMtPmZsYWdzICYgTlZNRV9GX01FVEFEQVRB
X1NVUFBPUlRFRAo+Pj4gwqAgLSAhbnMtPmZlYXR1cmVzICYgTlZNRV9OU19FWFRfTEJBUwo+Pj4K
Pj4+IG1heSBiZSBhIGNvdXBsZSBvdGhlcnMuCj4+Pgo+Pj4+IHNldF9jYXBhY2l0eV9yZXZhbGlk
YXRlX2FuZF9ub3RpZnkoZGlzaywgY2FwYWNpdHksIGZhbHNlKTsKPj4+PiDCoCDCoMKgwqDCoMKg
IG52bWVfY29uZmlnX2Rpc2NhcmQoZGlzaywgbnMpOwo+Pj4+IEBAIC0xOTIzLDE0ICsxOTM3LDI3
IEBAIHN0YXRpYyB2b2lkIF9fbnZtZV9yZXZhbGlkYXRlX2Rpc2soc3RydWN0IAo+Pj4+IGdlbmRp
c2sgKmRpc2ssIHN0cnVjdCBudm1lX2lkX25zICppZCkKPj4+PiDCoCDCoMKgwqDCoMKgIG5zLT5m
ZWF0dXJlcyA9IDA7Cj4+Pj4gwqDCoMKgwqDCoCBucy0+bXMgPSBsZTE2X3RvX2NwdShpZC0+bGJh
ZltpZC0+ZmxiYXMgJiAKPj4+PiBOVk1FX05TX0ZMQkFTX0xCQV9NQVNLXS5tcyk7Cj4+Pj4gLcKg
wqDCoCBpZiAobnMtPm1zICYmIChpZC0+ZmxiYXMgJiBOVk1FX05TX0ZMQkFTX01FVEFfRVhUKSkK
Pj4+PiAtwqDCoMKgwqDCoMKgwqAgbnMtPmZlYXR1cmVzIHw9IE5WTUVfTlNfRVhUX0xCQVM7Cj4+
Pj4gwqDCoMKgwqDCoCAvKiB0aGUgUEkgaW1wbGVtZW50YXRpb24gcmVxdWlyZXMgbWV0YWRhdGEg
ZXF1YWwgdDEwIHBpIHR1cGxlIAo+Pj4+IHNpemUgKi8KPj4+PiDCoMKgwqDCoMKgIGlmIChucy0+
bXMgPT0gc2l6ZW9mKHN0cnVjdCB0MTBfcGlfdHVwbGUpKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBucy0+cGlfdHlwZSA9IGlkLT5kcHMgJiBOVk1FX05TX0RQU19QSV9NQVNLOwo+Pj4+IMKgwqDC
oMKgwqAgZWxzZQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBucy0+cGlfdHlwZSA9IDA7Cj4+Pj4g
wqAgK8KgwqDCoCBpZiAobnMtPm1zKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChpZC0+Zmxi
YXMgJiBOVk1FX05TX0ZMQkFTX01FVEFfRVhUKQo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IG5zLT5mZWF0dXJlcyB8PSBOVk1FX05TX0VYVF9MQkFTOwo+Pj4+ICsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgLyoKPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIEZvciBQQ0ksIEV4dGVuZGVkIGxvZ2lj
YWwgYmxvY2sgd2lsbCBiZSBnZW5lcmF0ZWQgYnkgdGhlCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAg
KiBjb250cm9sbGVyLiBOb24tZXh0ZW5kZWQgZm9ybWF0IGNhbiBiZSBnZW5lcmF0ZWQgYnkgdGhl
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBibG9jayBsYXllci4KPj4+PiArwqDCoMKgwqDCoMKg
wqDCoCAqLwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAobnMtPmN0cmwtPm9wcy0+ZmxhZ3MgJiBO
Vk1FX0ZfTUVUQURBVEFfU1VQUE9SVEVEKSB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKCEobnMtPmZlYXR1cmVzICYgTlZNRV9OU19FWFRfTEJBUykpCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBucy0+ZmVhdHVyZXMgfD0gTlZNRV9OU19NRVRBREFUQV9TVVBQ
T1JURUQ7Cj4+Cj4+IGFuZCBoZXJlIHdlIGNhbiBkbzoKPj4KPj4gK8KgwqDCoMKgwqDCoMKgIGlm
IChJU19FTkFCTEVEKENPTkZJR19CTEtfREVWX0lOVEVHUklUWSkgJiYgCj4+IG5zLT5jdHJsLT5v
cHMtPmZsYWdzICYgTlZNRV9GX01FVEFEQVRBX1NVUFBPUlRFRCkgewo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAoIShucy0+ZmVhdHVyZXMgJiBOVk1FX05TX0VYVF9MQkFTKSkKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBucy0+ZmVhdHVyZXMgfD0gTlZNRV9OU19NRVRB
REFUQV9TVVBQT1JURUQ7Cj4KPiBpdCBwcm9iYWJseSBpcyBiZXR0ZXIgdG8gYXBwbHkgaXQgaGVy
ZSwgYnV0IGl0IGRpZG4ndCBjaGFuZ2UgdGhlIAo+IGRpc2N1c3Npb24gYWJvdmUuCj4KPiAtLSBq
YW1lcwo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LW52bWUgbWFpbGluZyBsaXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
