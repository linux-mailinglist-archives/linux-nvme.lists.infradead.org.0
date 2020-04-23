Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3969C1B5B16
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Apr 2020 14:10:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qbCmvmSvwGyKPwrueGu9CRGHUKkob1cHGXa8yrsyyDE=; b=JUKvVHoLUijgCKqTxknxN0NFs
	NTs1WLma+YtA5Zo6DeHoMZBhg3lO8zbdS39JUXvnKyOdM6ugyAA6MYksQLo/lQ381Umeg9L/I1KeM
	zM6ioW+MzyymQJ4fJFcjuXpf6GOO8lp4G03R24EqgfwzTNLPvkMCn3qKLY0eVtC73nxocsSPOy0dD
	HZ2TkacCvc6GYK3xh0LT3TQ2Y+JVUxP6pmAxbt7rHD9/keu+eDiKVGQgByZErB4e9vsI3ihdULkls
	QMmv6XL14YogJJwrIWy22Eiv7QC7cgKvpJUNnGg/CzMlMza2pikD4xPNaJk2TDUMtALvaVqaRU347
	BCi5rVdkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRag4-0006KT-55; Thu, 23 Apr 2020 12:10:00 +0000
Received: from mail-eopbgr150054.outbound.protection.outlook.com
 ([40.107.15.54] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRafy-0006Iy-JZ
 for linux-nvme@lists.infradead.org; Thu, 23 Apr 2020 12:09:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDc0cgASNXHvvdkucjNEwqsKqx0yVGGPcJcxs3KZaWGv48NNQYGldT1jvNSgaCAcsvEYeAsUJetkAvs0h+u2jKPNS3k4Z0JujjK8koPSTu5BiC/ETyoNpW+bULnqmKOamRYsTia4p8+CaVR1DVFckOEFm9BeQF6Dm8q1w75yH9pUwQnAnIuWdmYtU0X6vfR3m6V/i5a06iNm5GjwBHrYfAjk2kcDGXtx2oucEZS/1a+xIMWadsStKj6PYHUfyu7dgRbzkTmFTyJ5GvCz8YmSMSoPCFKKOcU8onnvKz9RxzzWfU+X8AFJXNRsMCihcGyFAMFN9J8BPl0iNGBQSB+9tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UgssgCa4aPt+dQ69Frg0IVWlhTAu21/usoyopWzDQc=;
 b=WQZs8fFn+C0IovzQlZzHHx23L3oMZlUIkp0yhuT5Mevxt1wBNPjU42xgxjPpeJzL0LJLArrjbO8lVUt+99lHnMuiO2mw1Wn0Iqj4Qqd4nPFJSKa4k19JmNPQvRGicgZlk3Y46l3Ox/qSXDnBfIPN9tft32cYtNl2COefuk99cMc+FSA+HdPltMIotWOFXjH+gAZZjD6pdaJfkuYTaGNqnj4ylLnLv6ctLRCadP53Jzb9HJWePV7DJ8YRgcRCxN7EN1B8/niMrn+RAHonJV8/iKU24SDIr4C1bCwIorfT5YgOolJMIVDbHSWreKVlAJkj5CdaMBJQQOS/qvxDv4OMLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7UgssgCa4aPt+dQ69Frg0IVWlhTAu21/usoyopWzDQc=;
 b=VjH2QshWjdJA3+vQ0Tm2jOEvce/TVR04tmWxcamPXtToTNguLk26l4syh6l/SgxN5bSCPpVlprY6XcMJtPF80+dddt0KdYB75XmfJ9fh66GbZ8HryB6YPjlVzcFQBn2ipgKQhsqMr4QIaYMB9Y65wSNrsF3nPwADi1suCe8Z4+I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=maxg@mellanox.com; 
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com (2603:10a6:208:11f::18)
 by AM0PR05MB5251.eurprd05.prod.outlook.com (2603:10a6:208:f2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 12:09:51 +0000
Received: from AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4]) by AM0PR05MB5810.eurprd05.prod.outlook.com
 ([fe80::408a:27c1:55f8:eed4%5]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 12:09:51 +0000
Subject: Re: [PATCH 13/17] nvme: Add Metadata Capabilities enumerations
To: Christoph Hellwig <hch@lst.de>
References: <20200327171545.98970-1-maxg@mellanox.com>
 <20200327171545.98970-15-maxg@mellanox.com> <20200421152407.GD10837@lst.de>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <b4f77666-6be9-121d-4ca1-fc1887cbd92e@mellanox.com>
Date: Thu, 23 Apr 2020 15:09:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <20200421152407.GD10837@lst.de>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0114.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::19) To AM0PR05MB5810.eurprd05.prod.outlook.com
 (2603:10a6:208:11f::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.0.3] (217.132.177.164) by
 AM0PR01CA0114.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Thu, 23 Apr 2020 12:09:49 +0000
X-Originating-IP: [217.132.177.164]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fb196e1c-3a2d-4173-7c28-08d7e77f398c
X-MS-TrafficTypeDiagnostic: AM0PR05MB5251:|AM0PR05MB5251:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR05MB52514406387E8C63DA1F6099B6D30@AM0PR05MB5251.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR05MB5810.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(31696002)(8936002)(316002)(36756003)(6916009)(53546011)(8676002)(81156014)(6486002)(52116002)(16576012)(5660300002)(2906002)(4744005)(186003)(16526019)(31686004)(86362001)(478600001)(26005)(66556008)(66476007)(66946007)(956004)(2616005)(107886003)(4326008);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m7FN+sgztfYedYTV81rJY5MXNL2/Y+pmKHdu6agOpn6YpP56f6SnFJG+sUkFW/yguSdN/d3aZCQxnHNI4zBlPdpLlM4pxP/lUDOAAe4GvfNI8feTWmxd2FIul7NE8d6VJN/tFTerHCKWau84qi4C2h33HDnDqheQ1NKl/dY7ronP0YOKV8G75I5Bf0ayA0hxatMJWZwh3d/4RzStijCwVPGYslQH8XSyyIZqUPbh0OP1dRblsdpATQZtgmMqGTWjqscD8NMLkWZyRJu8hqT62P6ONkYC9SNEkUl7XavzPb5nsVgrjw80fxGAnTPq1uOmqBJVdkMLw2mF6JAUDTINlLnR9kI3GrlF+0tPAZ7eQ98hj58uokMvI7eugNjyIau865W54TjgxhtQMqno/dlGhMeJeC88kD/Mk8Lk0xEm+39YOxIRRmhOtVfAXZO2KpqT
X-MS-Exchange-AntiSpam-MessageData: Yctn4SFwguD5YayywbJvGrpRpiPF2SMEnpwXQAxhfSgAYP/4vBwagVXvs8bf1gqRVZP5iX3ShqRZnTp3X2JosgbYL8Ut2tO9/4RGPxxFQxWxBKCDCx7UO4m1242rGNIEemF2CbNfB8e9vb4GDlzc6RTKeH9YmoNOflamk7Kpz+SaiDMeW8+HA/3Q0BCHW/fkzxdqjTBU17Ea+AcK5cemIPtFtuy3TDiy5I1Y+lDY1lh3rCUghuRAKS1gRfUYiKwtNBQ0SMDHR13pow56C114t/3lV+nwXQYlYdLyLB23Gk9ce+6aA+3QqtqmtCUW6d/bIdcVu5+Ihd2AsLWtJXkQ8Vq4rUZi+jy8DoSI8uQRwv3LaJ4N9uUB1af5kmamuPGlqpbZ6QAcunN2i5e9QO2hBOz2gfqCXlpMGdVOJMcljD2myHE38Satb4uCAZ59AiQZ4GBMz1C0CbmiEu+6WWTsF02I3P7mpbtkHZhZUqVxtLCmNXlGqjOXEWctG8MI6Ygn2qVBsIMnHIwe4cjV2epetJIH5ZfpS4HYWYad+9GIXlBZGgHglDLe8DYkF4UbfvMJJzic4AFpX5e1jDWWFAfD5i1sbJ/ClNe31+neT2wo+Fx6XAe456aALA8zjWz3xNdomGRmLaqCL0pu9KsLL7K5oaRZYIQBaF6GWbBf/qB/+ipJv5RAQtqoJrl9rbFeP9LnAkAVHzfTiU7wcO55kUvgsk9ZQkr2s24+X5S+kEfe/xuZFm2NrmXVbNrjCPQ3zBM9N7rgx79J2iuNKlrrOz6o3PyhU1UJe5wedPjsqWDsl36JCVaQ+pcTLKsWNSFjIWFR
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb196e1c-3a2d-4173-7c28-08d7e77f398c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 12:09:51.0944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j6iuut28FytTelwhYxzktu1qZqXyTT6qdmxWjt6AYCybXcxxp/ejHkJlAq0jG2wbIrr0HSGporWoyabl8870Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5251
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_050954_712121_AFB0DE13 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 martin.petersen@oracle.com, shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Ck9uIDQvMjEvMjAyMCA2OjI0IFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBGcmks
IE1hciAyNywgMjAyMCBhdCAwODoxNTo0MVBNICswMzAwLCBNYXggR3VydG92b3kgd3JvdGU6Cj4+
IEZyb206IElzcmFlbCBSdWtzaGluIDxpc3JhZWxyQG1lbGxhbm94LmNvbT4KPj4KPj4gVGhlIGVu
dW1lcmF0aW9ucyB3aWxsIGJlIHVzZWQgdG8gZXhwb3NlIHRoZSBuYW1lc3BhY2UgbWV0YWRhdGEg
Zm9ybWF0IGJ5Cj4+IHRoZSB0YXJnZXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IElzcmFlbCBSdWtz
aGluIDxpc3JhZWxyQG1lbGxhbm94LmNvbT4KPj4gUmV2aWV3ZWQtYnk6IE1heCBHdXJ0b3ZveSA8
bWF4Z0BtZWxsYW5veC5jb20+Cj4gSSdkIGJlIHRlbXB0ZWQgdG8gdXNlIGEgc2VwYXJhdGUgZW51
bSBhbmQgYWRkIGEgY29tbWVudCB0byB3aGljaCBmaWVsZAo+IHRoaXMgcmVsYXRlcy4KCnNvbWV0
aGluZyBsaWtlOgoKKy8qIE1ldGFkYXRhIENhcGFiaWxpdGllcyAqLworZW51bSB7CivCoMKgwqDC
oMKgwqAgLyogc3VwcG9ydHMgbWV0YWRhdGEgYmVpbmcgdHJhbnNmZXJyZWQgYXMgcGFydCBvZiBh
biBleHRlbmRlZCBMQkEgKi8KK8KgwqDCoMKgwqDCoCBOVk1FX05TX01DX01FVEFfRVhUwqDCoMKg
wqAgPSAxIDw8IDAsCivCoMKgwqDCoMKgwqAgLyogc3VwcG9ydHMgbWV0YWRhdGEgYmVpbmcgdHJh
bnNmZXJyZWQgYXMgcGFydCBvZiBhIHNlcGFyYXRlIApidWZmZXIgKi8KK8KgwqDCoMKgwqDCoCBO
Vk1FX05TX01DX01FVEFfQlVGwqDCoMKgwqAgPSAxIDw8IDEsCit9OwoKPwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LW52bWUgbWFpbGluZyBs
aXN0CmxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
