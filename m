Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BA0AAE75
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 00:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ciJJee71M4bX+WjrI9JVLvbtPq9OJT0LiPq7GFL0b7g=; b=DJVLBbRsIqwc2wKU6+12+MRMY
	6s55uNpqhSqJjSz/pGlrKolixb6p8ptN6r1/zYrikDbYZdkMK6z81S2//dIEhjxXJkeL9yAA4yPH2
	WSaZED1D6pNN6LiK3rfGesojc+nfJeO/RKvOmoI0IvULjF6M+UYotonwYeHFsB+Yc5tsMugQ9QghI
	3OJphwZL4pVDRyc4xgzkHFLd8T63ar7kuCkQNgfhGFRiJ6KZKAkUZK95ih1QVdTBQovQXbx5QeZ9t
	ym34URqU3ADOgduz/j53gOILGn+VOSiEJGNJ457lE1iBOaC9CphBMksucUotEH/rKNCwCIGUoVf20
	9a4HWe1Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i60DX-0000d1-Ad; Thu, 05 Sep 2019 22:27:03 +0000
Received: from mail-eopbgr70042.outbound.protection.outlook.com ([40.107.7.42]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i60DS-0000bs-9x
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 22:26:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TLgVRPFg/ZWGLVMHVNY/KTAgLRrAG7Lps45O5fxDur9s4ougWF8QJcRcnDdDu6kY6U0kz724x7nh1Ovkh2cDcu/lX2/HjLmqiOpF0oumrtaST2yNQwdYCCJim1jnOKTNwVdX5dkmTnRNhdceVFL6emUnt2J1XDyqFOlVjnBlR5/ZxDilID2HzsHPEJ7eNmkGIorLhK5q7CbYy5cVyuPUDDxmIk1oJj/p6xQgbKwCUwJAW5FYPkBW70daj37Zj8+POIKC4EU8yl0pKKBxKQZrBDFr00y0FTX2i3bJlpkALjJgyrMVB8CvF5QO3v323XQKn4nGvkMIDcE6t5KDIxOpag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLF665LHxh5cP7R64VSQzFtrBVYsSvCjet2eT+IPmrE=;
 b=Lgltjic8duASR2fA6fCFbTvQSBZdwwLFO4j/I/Zh90dUvqbmKFRW4LPyg8J9MXv8x91bNLdPzwaeUEGiZeOJvpSr+F6JELIMIsbRGU19npRJYlfejsmyc7JCtIb+ZwaV6L+1KE6Vu1ApUuvoqoXWaLCgXbgkW8vv/DGh3oPkVEBSOGHBivxiFlxdCevUoYTcCxt90SQ+S+Q28agaWP7ap51puI0p7nDKvpND3oNBkBsk9pOlBwLyvDevWT2INP4FiX1b5LZZw7hAdZOB0YGDAtatE3LtIuxRWlLPbsSJ6pjNbEbud0Rtv5tINHTZYsq4vuIt5yBXcQVMyU7uiUwrLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sLF665LHxh5cP7R64VSQzFtrBVYsSvCjet2eT+IPmrE=;
 b=g/LW+FG6GVQRn4U6fJ+y9mH+kmZOugM15g90ObXp0pRqJYU12Ok7K9Oj+D5wWY/tNIYXrmTYkIzK0ha0ogptw82a/ECoftrfCOj5EIxicUkKjBBCPQnhB1LlNXeva+7THEU1mWzhG/xAOJ4F0yrL4Qsbl+qPm8LI3ptwpSJt3KM=
Received: from VI1PR0502CA0002.eurprd05.prod.outlook.com (2603:10a6:803:1::15)
 by DB7PR05MB4283.eurprd05.prod.outlook.com (2603:10a6:5:1b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19; Thu, 5 Sep
 2019 22:26:50 +0000
Received: from VE1EUR03FT009.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::207) by VI1PR0502CA0002.outlook.office365.com
 (2603:10a6:803:1::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.14 via Frontend
 Transport; Thu, 5 Sep 2019 22:26:50 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT009.mail.protection.outlook.com (10.152.18.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2241.14 via Frontend Transport; Thu, 5 Sep 2019 22:26:50 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 6 Sep 2019 01:26:49
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 6 Sep 2019 01:26:49 +0300
Received: from [172.16.0.20] (172.16.0.20) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Fri, 6 Sep 2019 01:25:54
 +0300
Subject: Re: [PATCH 3/3] nvme: remove PI values definition from NVMe subsystem
To: Sagi Grimberg <sagi@grimberg.me>, <linux-block@vger.kernel.org>,
 <axboe@kernel.dk>, <martin.petersen@oracle.com>,
 <linux-nvme@lists.infradead.org>, <keith.busch@intel.com>, <hch@lst.de>
References: <1567701836-29725-1-git-send-email-maxg@mellanox.com>
 <1567701836-29725-3-git-send-email-maxg@mellanox.com>
 <882441fc-599a-21fb-9030-5208b3b671cc@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <75189f9b-3eaf-c676-4096-eb3e9e78993e@mellanox.com>
Date: Fri, 6 Sep 2019 01:25:53 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <882441fc-599a-21fb-9030-5208b3b671cc@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.20]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(39850400004)(136003)(2980300002)(189003)(199004)(2906002)(2616005)(36756003)(229853002)(6246003)(107886003)(7736002)(5660300002)(305945005)(31686004)(53936002)(8936002)(81166006)(8676002)(81156014)(486006)(4744005)(356004)(126002)(476003)(11346002)(86362001)(53546011)(2201001)(446003)(65956001)(65806001)(186003)(47776003)(31696002)(16526019)(26005)(336012)(478600001)(106002)(76176011)(4326008)(50466002)(230700001)(70206006)(2486003)(3846002)(70586007)(58126008)(23676004)(316002)(16576012)(110136005)(36906005)(6116002)(54906003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR05MB4283; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c800fe6c-e78c-4c06-85d5-08d732502574
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB7PR05MB4283; 
X-MS-TrafficTypeDiagnostic: DB7PR05MB4283:
X-Microsoft-Antispam-PRVS: <DB7PR05MB4283D3F4C5CF07F17E998131B6BB0@DB7PR05MB4283.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 015114592F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: niagxElZYOuFseaXC7DsEB3OVzk+59a3l3tzOemDtxv5fL2T2dvd6LdqnzTN7YGgwv3L3rjSXVSeRslnZjlwxk6WAoGdon3EuW8Tvy/wNKyOPQ9unMP7cjqWmxIUjXHOJFY6FZN8D+zLm+jiEEBDEHd/w6w1cHCfSHy/f2s3eG3PDrGT4xO0LHq6rvlwSW+jeV9b0EPUV8TIqEIVnfaq/Q3i0sVUEb47WoK3X9KqXfZrdDvWAqddMVnaPYqdvQHrIKFrQQ110h/f0jVo76Ruj9xl341kytwl9nJqX8QL7682rCF0wMBiBRXiAvn5AnQ1ZTDVHgwpWb8Js7GhRcyxLiLOV7gH/GicErovz5xXll24ZJdkmTR2zTanz5gtEi3lEpBYdzcFYXZ0WkULnudVNfqWUzKhU6T3Vuczasg+XKA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2019 22:26:50.0267 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c800fe6c-e78c-4c06-85d5-08d732502574
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_152658_352940_1316FA72 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 9/5/2019 11:52 PM, Sagi Grimberg wrote:
>
>> Use block layer definition instead of re-defining it with the same
>> values.
>
> The nvme_setup_rw is fine, but nvme_init_integrity gets values from
> the controller id structure so I think it will be better to stick with
> the enums that are referenced in the spec (even if they happen to match
> the block layer values).

according to the spec:

"NVM Express supports the same end-to-end protection types as DIF. The 
type of end-to-end data protection (Type 1, Type 2, or Type 3) is 
selected when a namespace is formatted and is reported in the Identify 
Namespace data structure."

This is exactly what this patch does.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
