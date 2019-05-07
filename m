Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ECD160E3
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 11:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NtcOW6DouQA/e0f/kOFg28YvPFYjbc0iTbQLtha+7Q4=; b=iwFLtMFLAApcPelMKmYG2BQOj
	gWdJnnFPSZa8+FPEEuJ+jFNkB6Yviz4+TcpIr+y6W7FBfTlH9bUUw2mhb95Kkom0BMbHHDZ4wQUpW
	hVHNnF0pyY3+pi/CObBLxPYO792KM3LpnmZU3bxo06hhYzzExE9Y1E8lJG9IEO2xY7VbNG0eJpDMs
	9wlm0nWIOM9CrjAca34ZS62hF4lUYXiZxcub5WK1YdKSc+8oXBPGlybo5AZ3Q80ZlD0nmCjKsky9J
	uoSDqZPaXuhQXaA604nAE1XTQZiV4VadNZVGC1QATthH4uSS/Z6yeb+LpGsWODYBIPnM0QiJfMqGu
	GA27vHFPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwOu-0001k1-Hc; Tue, 07 May 2019 09:28:40 +0000
Received: from mail-eopbgr80043.outbound.protection.outlook.com ([40.107.8.43]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwOp-0001X5-4d
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 09:28:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZAiHK8AXiQZBoBcrX40sIO3AjBIgmUpGwUt4Hy7PlYM=;
 b=oChfMqu87sRfCzTbAMOpXikkwVaxdIlFTnbNvooKg2Q0ORD2kMW7mGs8blOQnyvZWxUYOd3jg9IPPTsdO5LDf5esNQ00/VSNlFa73uyxvXjV7Hw09ST9K9tCW2buk+q4mt3/g+xSLRClUll5O2bVveZyqZWG44JZRITpSUXvR5o=
Received: from DB6PR05CA0033.eurprd05.prod.outlook.com (2603:10a6:6:14::46) by
 DB6PR0502MB3015.eurprd05.prod.outlook.com (2603:10a6:4:99::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 09:28:30 +0000
Received: from VE1EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by DB6PR05CA0033.outlook.office365.com
 (2603:10a6:6:14::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11 via Frontend
 Transport; Tue, 7 May 2019 09:28:30 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT030.mail.protection.outlook.com (10.152.18.66) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Tue, 7 May 2019 09:28:29 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 7 May 2019 12:28:29
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 7 May 2019 12:28:29 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 7 May 2019 12:27:35
 +0300
Subject: Re: [PATCH nvme-cli rfc 3/6] fabrics: allow user to retrieve
 discovery log from existing discovery controller
To: <linux-nvme@lists.infradead.org>
References: <20190223023257.21227-1-sagi@grimberg.me>
 <20190223023257.21227-4-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <23690b95-27e7-78a1-26f7-442fa6d6287d@mellanox.com>
Date: Tue, 7 May 2019 12:27:35 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190223023257.21227-4-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(136003)(396003)(346002)(2980300002)(189003)(199004)(186003)(106002)(4744005)(53546011)(5660300002)(16526019)(229853002)(26005)(31696002)(230700001)(58126008)(77096007)(316002)(16576012)(50466002)(6916009)(64126003)(126002)(86362001)(476003)(2616005)(486006)(2906002)(305945005)(3846002)(6116002)(65806001)(65956001)(47776003)(65826007)(70586007)(336012)(446003)(11346002)(478600001)(70206006)(356004)(31686004)(67846002)(76176011)(2486003)(8676002)(23676004)(81156014)(81166006)(36756003)(6246003)(7736002)(2351001)(8936002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB3015; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e5f1dee-eb28-4389-f37c-08d6d2ce5df3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DB6PR0502MB3015; 
X-MS-TrafficTypeDiagnostic: DB6PR0502MB3015:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB3015076E2B392D15C9B20EECB6310@DB6PR0502MB3015.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-Forefront-PRVS: 0030839EEE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: fi0c3PCc9NXYI6V40bMQSnbvaYAaVFYQ/D3UtqvpppXuJPUGocuVzxcbpPA3w5ZuWuISQqnXtBhzDH+OGdWKZEfnjluTemPMgaHFOCmmAi4QWyn1UF3pgs3aX8GVFdsXNV9Oh5ys0x7ZdliWysRbPVfohsVsV2NgLQidUdIrMZjm4V5pIVIVriq0zPu+/0UrcmBxRgfgb7UAJSnzlCXXdmk/dekzy8sO+A+4vezA58cJpff7LK4XIUy16MP5D+PIJiwGs4Qd6UXXxQZ5Lwr2er16xsbUsWus5dZ1Vxkc2LI8p0q3pnIL49bvPkKBRIMY7VzOxTURfrsds3I9oB7TXZSQXljrQUTnZymOYIz6Lai672iu3ayDNKW6Q0ajcb4mByla94KmsM5fGmv+rHtkhkiHGIEZOqkqcwKLuUY9+SI=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2019 09:28:29.8946 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5f1dee-eb28-4389-f37c-08d6d2ce5df3
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB3015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_022835_181475_55639C6B 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.43 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 2/23/2019 4:32 AM, Sagi Grimberg wrote:
> Simply allow discover to receive the discovery device node name.
> Also centralize extraction of controller instance from the controller
> name to a common helper.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   fabrics.c | 32 ++++++++++++++++++++++----------
>   1 file changed, 22 insertions(+), 10 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c

same here for adding example of the command line.


otherwise looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
