Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8632D188
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 00:26:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+rA6E1el3oHVLuI04hRKTBUtcnyQjTRhO7pKGuH7OKw=; b=K8KQSoMJsej7sO4CpVDZSawYt
	mPseVsWrTEOR0t2GM7tkwnLjDVFBQf32XYulurAeEOodalQWG7Chzp+pi4Y8btishPjFVvD4OxKUb
	25vcDeL1uqEHiIMEWPSy9kFgWJZXkpZa5YQn5uHcG6S44RwmTcSKcqkbPwZ+aKGlgiJuQPN2dqDsL
	YBrxfkLGtLKQyczQzuNzKrrC3fZjyuKqM4Etz6IHIyQMCxmxLFg5UznF7ZiuICyiSA+kTC4hT3iLA
	w26a4wtfP7ABkp3w8ifvWHeTHxEmRSZgWSNjd4peXavJX7TeRCPDRQ4ni7bl819SvHxJwV0Y8JTwk
	IMHTdr2/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVkXZ-0006B3-TY; Tue, 28 May 2019 22:25:53 +0000
Received: from mail-eopbgr140058.outbound.protection.outlook.com
 ([40.107.14.58] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVkXU-0006Ah-ON
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 22:25:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OWzn08eWwzeRs1uSj12GQet+iHlfJWOVEe0zaDmmUvs=;
 b=OMK7SKkif4ju9j5ThXuH2b+gUfSuH81AqQrFQEnXTyWnY64sfH2qXRAcTm/sOFfbe8uCbB0fgEsvyY73ezGbuZbw3IehvkMbcp1rbP7JVPIsvsnl7mr9UEkHSimjBS8YvpR9qZKRh14OmeCCXpqrs4atLynYO7InjArW0PzBtoI=
Received: from HE1PR05CA0216.eurprd05.prod.outlook.com (2603:10a6:3:fa::16) by
 DB6PR0502MB3013.eurprd05.prod.outlook.com (2603:10a6:4:98::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Tue, 28 May 2019 22:25:45 +0000
Received: from AM5EUR03FT027.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by HE1PR05CA0216.outlook.office365.com
 (2603:10a6:3:fa::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1943.16 via Frontend
 Transport; Tue, 28 May 2019 22:25:44 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT027.mail.protection.outlook.com (10.152.16.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Tue, 28 May 2019 22:25:44 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 29 May 2019 01:25:43
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 29 May 2019 01:25:43 +0300
Received: from [172.16.1.174] (172.16.1.174) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 29 May 2019 01:25:42
 +0300
Subject: Re: [PATCH 6/9] nvme: update list-subsys command to show the entire
 list
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>,
 <kbusch@kernel.org>, <hch@lst.de>
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-7-git-send-email-maxg@mellanox.com>
 <0004494a-67a0-c010-5de6-fa66dcafff68@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <8a754fd0-6abc-a000-0183-b6832df0f2ba@mellanox.com>
Date: Wed, 29 May 2019 01:25:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <0004494a-67a0-c010-5de6-fa66dcafff68@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.1.174]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(2980300002)(189003)(199004)(4744005)(336012)(77096007)(26005)(186003)(16526019)(356004)(65956001)(65806001)(47776003)(229853002)(70206006)(50466002)(3846002)(6116002)(2201001)(305945005)(446003)(8676002)(7736002)(8936002)(107886003)(6246003)(70586007)(53546011)(81156014)(81166006)(2906002)(86362001)(31696002)(14444005)(4326008)(230700001)(23676004)(11346002)(476003)(58126008)(67846002)(2486003)(110136005)(54906003)(36756003)(31686004)(5660300002)(64126003)(65826007)(2616005)(126002)(478600001)(106002)(16576012)(316002)(486006)(76176011)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB3013; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8a00836-471c-4d19-878e-08d6e3bb6cfe
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB6PR0502MB3013; 
X-MS-TrafficTypeDiagnostic: DB6PR0502MB3013:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB3013F527BA16CE42BFAA99D5B61E0@DB6PR0502MB3013.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 00514A2FE6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 8ErFQZ657EH0OzMwt49VZVikGo1S8IFjyyh4khewWrgwPqF2IlD0/9YlobOjtcdf3/kP7HxU0x166a44KjtKnnDQwCORBUkN7084fQTY8M2q5JOhlqIX6sAbUtecDIFzzDcmYSFdQkRzBaGmLESwEbT0SrQHyCaXYOjP44wDsOAMI7S3wpheK4h5t6wSO6UHThghg09likWJuBsyAHxeBYxg74NJeLOs0ADg1DSbX2AblgvDgXVpvhUQJUpnJZ8v8eoWfLm1IqR/4X1XewnTZEgyixHxXDJbI17NSt+2P70MZ6TkQs6o9VQNWUFxnZe/y2fsT2ZdY/pEj2dfN+Ry/k04lTlnN7W08yNwsj+ORIw79sRAbgEExIs4NXYL93W0YbSD7gKE3w9hAPrvzRMtlqmEXnNAAyWjvpBOwjoFFBc=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2019 22:25:44.3751 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b8a00836-471c-4d19-878e-08d6e3bb6cfe
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB3013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_152548_796105_AF7114A0 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: shlomin@mellanox.com, martin.petersen@oracle.com, minwoo.im@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/28/2019 10:48 PM, Sagi Grimberg wrote:
>
>> Make it similar to "nvme list" command. For that, remove the
>> unnecessary ana_state parsing (was introduced only if specific namespace
>> handle was given).
>
> No, this is useful! You're arbitrarily removing useful information from
> the display...
>
> nak from me on this one...

I intended to add it to different command (maybe to new "nvme multipath" 
command you suggested).

I don't understand why ANA state is so important attribute for a user 
that only asked "nvme list-subsys".

One can always run "nvme ana-log" command to get a full log page (I'll 
take a look on it and see if it can be improved per given namespace)


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
