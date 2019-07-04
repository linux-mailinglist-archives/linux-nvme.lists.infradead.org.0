Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CA15FE00
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 23:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gbkF2mhKvVNzwuO1Va+S1EbflxCfiaPEanAMBV8mJBI=; b=jJxqGvVjO50TirneJTVBjByWB
	N0verrYtBXv2yqTIaTi5Bcck/XD9LwmWxVLqPBk2CnuxSSmTVdXGDYO4Ht1J3lPbABp34/6giUfZe
	RgscvBdYUfyDTpTZL56z70lps+ITyouX0gzgfltnKJbxtYLmA8Gm6x6RdimQ5+1fpuFUmnH3fcQ1R
	Cj4kGQ6NSH9bHntX4ftLJWrU8iigiIJdVGgCACT3mLerOm8SdjOO73Ze4y14G2aBOtYCIRmaQaI5O
	qdJLTLIHnPnW8X6N6Y6PCYkGrSDd7UZQF4ErdXUqm5sSTzGF62hL6i5TlfMrwU1t5Ujc822zYSwQa
	SEMpVmbzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj8qU-0000Kj-97; Thu, 04 Jul 2019 21:00:46 +0000
Received: from mail-eopbgr30056.outbound.protection.outlook.com ([40.107.3.56]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj8qK-0000HF-Ej
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 21:00:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FNoVJAHO6CRRSlhcEfj5pkXhMHyt97i6+nT/6eVep1w=;
 b=asNCceimTc2R0s4DaDCRfFRoMO0BlwTnVZ7ioQGBHlYQT3OQoiGsM5mTo6AvTnendl5GPf0W/OTXyYU6hD2OjT9zwzgjhqqO3kEaGVB26hXkNG+t9w89ZztdAalnMv9rUM4t32dj0wrihOC4iDVaPMBP5bWt59CH9wv27opx79o=
Received: from AM3PR05CA0105.eurprd05.prod.outlook.com (2603:10a6:207:1::31)
 by AM0PR05MB5074.eurprd05.prod.outlook.com (2603:10a6:208:ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Thu, 4 Jul
 2019 21:00:30 +0000
Received: from VE1EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by AM3PR05CA0105.outlook.office365.com
 (2603:10a6:207:1::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.17 via Frontend
 Transport; Thu, 4 Jul 2019 21:00:30 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT045.mail.protection.outlook.com (10.152.19.51) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 4 Jul 2019 21:00:29 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 5 Jul 2019 00:00:28
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 5 Jul 2019 00:00:28 +0300
Received: from [172.16.0.91] (172.16.0.91) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 5 Jul 2019 00:00:27
 +0300
Subject: Re: [PATCH v2 1/2] nvmet: Fix use-after-free bug when a port is
 removed
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>, "Sagi
 Grimberg" <sagi@grimberg.me>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-2-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <786259e6-ffed-8db3-74d0-71ed5a760079@mellanox.com>
Date: Fri, 5 Jul 2019 00:00:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703230304.22905-2-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.91]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39860400002)(346002)(2980300002)(199004)(189003)(58126008)(126002)(70586007)(70206006)(110136005)(230700001)(486006)(31696002)(5660300002)(2906002)(4744005)(316002)(106002)(6246003)(229853002)(2201001)(67846002)(8936002)(86362001)(31686004)(4326008)(186003)(336012)(53546011)(50466002)(23676004)(2486003)(81166006)(8676002)(81156014)(7736002)(64126003)(356004)(305945005)(16526019)(11346002)(6116002)(16576012)(65806001)(47776003)(2616005)(65956001)(476003)(3846002)(446003)(26005)(76176011)(77096007)(65826007)(36756003)(478600001)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB5074; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0403bc53-9b1d-4b27-436d-08d700c2a59c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:AM0PR05MB5074; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB5074:
X-Microsoft-Antispam-PRVS: <AM0PR05MB507419A1E085470A5481608CB6FA0@AM0PR05MB5074.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 0088C92887
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: DMWAXPPGArpM+aYbCvW99zK0kkGFn5244u6nsJE0BSwp39Nev15V0nf91Emynsq9Z2nbjHGsDB/MaR2laEJueiJH8+5N3K3jW60zPn/rb7GWooVls3M3MzLt4lYOGVDq4F7CQfWSCFGOs6s0o6evm+Bc/2ULBc1C4rl8zzW+S++21vDBQQbkZ4AwenSPA8zJ244s/fnALh9i30wxdptcTCGUQ87HcFNzFTIqvrldPtLxwQeR7MMICM52bhrcNjwM21s7f0mXQC7p0IYOpB/Riqr4TwWcbD3xv1LYA+3ZYwmc4LNQIKTXZpM0LiXL0hnOGFnSECUhx8NyIxjKY7wzWW26wrqx1VpXEk2qcQce+akCZBgDIDI7gpxYsCjh7g7acdlBKZkN4BqlTuA3Gv7XaGzqGz+koSZnajV1euQKDhU=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2019 21:00:29.5569 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0403bc53-9b1d-4b27-436d-08d700c2a59c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_140036_545391_F6B553F0 
X-CRM114-Status: UNSURE (   7.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Logan,

On 7/4/2019 2:03 AM, Logan Gunthorpe wrote:
> When a port is removed through configfs, any connected controllers
> are still active and can still send commands. This causes a
> use-after-free bug which is detected by KASAN for any admin command
> that dereferences req->port (like in nvmet_execute_identify_ctrl).
>
> To fix this, disconnect all active controllers when a subsystem is
> removed from a port. This ensures there are no active controllers
> when the port is eventually removed.

so now we are enforcing controller existence with port configfs, right ? 
sounds reasonable.

Did you run your patches with other transport (RDMA/TCP/FC) ?



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
