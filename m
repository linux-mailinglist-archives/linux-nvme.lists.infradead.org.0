Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5894798E5E
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 10:51:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+QoO6TmZgSBcGf/vbLaI68iBCMMcXfQstCxpA10fWXs=; b=HOpp5JPysBlcDd85e7yAWHf//
	33rBGhUkP5tgYIn64hMBJ/+7RfXVVG0eS66waj2FoVfiacZc2lelx0JXAaMhhYa66cQO5zEceHLUk
	yEfgUqBgZ60ayV7fzLNlj8pl4owYfreqtkIQ2bVogZ+QnYKjJzW+I3M3QKjMWRf7Se+iLDK3xCopC
	8CR3BRod0aTxRgBAdXu/qVi0aPfB8/iRTj/F22efUp9eTLOkUBT2T/pm3SUItEa8iUzlLeXyqOSpz
	lMjkCIZJKyEJXEYcxwhEk5xbteZ5N7TKzx2hPdS80PJ5vgDbaiFEh99Y2d1KG3jkziCcAc7G3TU0p
	z5jkOIIYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ioL-0002Ie-Eg; Thu, 22 Aug 2019 08:51:13 +0000
Received: from mail-eopbgr130071.outbound.protection.outlook.com
 ([40.107.13.71] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0io0-0002HK-Fj
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 08:50:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZssP3R6H2QtWg+Nm3knsDOp2nGmQJRpuDYMu6YVlfDlGetcfA5Fba0cqJi9UlnvZouJlZNiweA/aOYxf/1DZVwSLXr2GR/IBH3k1gBN0fszYV1ZBVNB+a2oWovX5db0JxeSglQgIDvgaH71JaWojmq8Jct7+qzKtsxZxcNwzAWdC8ukEJN/Q1yRg6Ria/jIki+mReordJfoqAlmoJtYliJGqFJw0IH6Y2k9ydaalkh1A0Rr5IOqJSbGMql4tTQR4nDUMWk9/cvZxN2kyxaMRWCksomirkx0yKh9OwaEFfBzdxbH/qI7ZSV/QvzJEQdIRF1+Yib3tm6Hb/nDfPoDGZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnLoCxABMtAX3omr7pMVdNrggxZn5x0JCJL9YY/zEKA=;
 b=BXpG7yCygj9zq9ubBo10zgOiZshBNe5OKbfyKQxVmU5TqYFhDNAaH+bDHzqDfa2EHXpDszaf+dPRagfC6N+eujZit0I/MHBU+9Nu5/+nW4VBS3orCVQSuZmoHZoJy86zDj3mwNG81KikXvr0xcQOOqPSOy4Ok6bfs7kK3Hq6X6n8t3OP7s8fDYtYr5ZlDQ0ANiMtMCOFWn9ZyjOAoU3rw+UbVuW/JPpdjPw0CEutkHBSxyG4R6hLmiT5M7RZInNFjRe7m6ILyVeJGSrfp0fwhPpLRMSlOzRqp8KUiiLSz0AO3B8oIRIKjqlpZd/wxHxxlPHzuMzIoIxpUXrYp+Nfjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PnLoCxABMtAX3omr7pMVdNrggxZn5x0JCJL9YY/zEKA=;
 b=hiYyr9FWm9jxV+GF78d5r8usBa3UtpqshgDKSq1chOglmrtzuUILr6b2nwL2b7fzi/CKBAsygH5cX6tjYVGS4ZJ/m2KD/dYI58zQ56pRUQlpt1cc2oS1HC1LfBL5Hi5AMK3ONdOXM/twEbi9uq5UkBJH4GG1wb0DEsi4Ja7TOXw=
Received: from DB6PR05CA0024.eurprd05.prod.outlook.com (2603:10a6:6:14::37) by
 HE1PR05MB3386.eurprd05.prod.outlook.com (2603:10a6:7:33::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 08:50:44 +0000
Received: from AM5EUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::203) by DB6PR05CA0024.outlook.office365.com
 (2603:10a6:6:14::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.14 via Frontend
 Transport; Thu, 22 Aug 2019 08:50:44 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 AM5EUR03FT008.mail.protection.outlook.com (10.152.16.123) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2199.13 via Frontend Transport; Thu, 22 Aug 2019 08:50:43 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 22 Aug 2019 11:50:43
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 22 Aug 2019 11:50:43 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 22 Aug 2019 11:50:41
 +0300
Subject: Re: [PATCH v7 08/14] nvmet-core: allow one host per passthru-ctrl
To: Sagi Grimberg <sagi@grimberg.me>, Logan Gunthorpe <logang@deltatee.com>,
 <linux-kernel@vger.kernel.org>, <linux-nvme@lists.infradead.org>,
 <linux-block@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>
References: <20190801234514.7941-1-logang@deltatee.com>
 <20190801234514.7941-9-logang@deltatee.com>
 <05a74e81-1dbd-725f-1369-5ca5c5918db1@mellanox.com>
 <a6b9db95-a7f0-d1f6-1fa2-8dc13a6aa29e@deltatee.com>
 <5717f515-e051-c420-07b7-299bcfcd1f32@mellanox.com>
 <b0921c72-93f1-f67a-c4b3-31baeb1c39cb@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <b352c7f1-2629-e72f-9c85-785e0cf7c2c1@mellanox.com>
Date: Thu, 22 Aug 2019 11:50:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b0921c72-93f1-f67a-c4b3-31baeb1c39cb@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(2980300002)(189003)(199004)(305945005)(4744005)(229853002)(81166006)(2201001)(14444005)(6116002)(65956001)(336012)(2616005)(2906002)(126002)(7416002)(476003)(7736002)(47776003)(81156014)(65806001)(8676002)(356004)(86362001)(446003)(11346002)(31696002)(110136005)(8936002)(70206006)(16526019)(76176011)(54906003)(5660300002)(58126008)(70586007)(26005)(53546011)(16576012)(2486003)(23676004)(230700001)(31686004)(50466002)(53936002)(4326008)(3846002)(486006)(6246003)(106002)(478600001)(36756003)(36906005)(186003)(316002)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR05MB3386; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 27cf8248-09ad-4689-adf4-08d726ddd199
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(4709080)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:HE1PR05MB3386; 
X-MS-TrafficTypeDiagnostic: HE1PR05MB3386:
X-Microsoft-Antispam-PRVS: <HE1PR05MB3386A59D748B094A15D251A2B6A50@HE1PR05MB3386.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 01371B902F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: o0D3b+LPtTFxEh6LIDZnvyDQ85SdBeQ9jRo13on+wTps+/+Ghi97u9iUcX57HNTYC0DUjkmQjCxNZknXihOm9caoL0CUeM47rfcUcH42VzoVauuCoXpugbFqU1lptvENkI38SGjSC5qudpcaNXfxeqSEOXO8vC/glKaEkTqLs2dgAFfH7e+JNXYRsQj3N1g9Smy7c3ZikJusnMYTecvOq/tSGS/tevJcBxJf3XxVfN0ccOncUuZWr5ziw/qvLiUKbQBOjrD3oDikCV7iiHTHVk710rsR2FwbdFYlACbw6k/JDZp16wubYMm/ETbeRNIetdLZ73VjpIMSNbdY7DaU3yxysZ0nvSuyilwShH1qiLgkgYnzB5EzPtJ6flAolw8gJJBunVLYu5JzFaIP/nrasmaEBeZW/t6ShIMk7RH8MMM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2019 08:50:43.8478 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 27cf8248-09ad-4689-adf4-08d726ddd199
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR05MB3386
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015052_639302_AA5D39C5 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 8/22/2019 3:09 AM, Sagi Grimberg wrote:
>
>> I don't understand why we don't limit a regular ctrl to single access 
>> and we do it for the PT ctrl.
>>
>> I guess the block layer helps to sync between multiple access in 
>> parallel but we can do it as well.
>>
>> Also, let's say you limit the access to this subsystem to 1 user, the 
>> bdev is still accessibly for local user and also you can create a 
>> different subsystem that will use this device (PT and non-PT ctrl).
>>
>> Sagi,
>>
>> can you explain the trouble you meant and how this limitation solve it ?
>
> Its different to emulate the controller with all its admin
> commands vs. passing it through to the nvme device.. (think of format 
> nvm)
>
>
>
we don't need to support format command for PT ctrl as we don't support 
other commands such create_sq/cq.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
