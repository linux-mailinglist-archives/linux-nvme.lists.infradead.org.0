Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE1C2D133
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 23:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/mJqLQDYww0eXZ2rG9dbmNKgTovbOI9clH0rz6bUA00=; b=pbZvaZS4SuuBKpSs9Cq6HXsMJ
	84JpOnWdTIJzO82Uaa8P+pEhtogxCICNrnNGyPHXKd6xGfVhB4vVntwIQmiac3AVIdkoNNYitDphU
	tTvXlKViJhY0KTZdVRHxADlR10iz/r7rCMgxCt9Kq3/SQvocDFXu+hSBuDpI8rh254utsvIFndJDZ
	IOKbJU6gjKJVdZbugrgjcIbw/0mRBltkorsEUyVA4IvLqMTPU15erky9LexLi4W+7vD7Auf6deo1v
	TZirK/tudH3fSLDuqF6Ny2exTIc1czKdFnSakYa6AyRUK614DiMLlpvlEyVfhXsclS3VDg9tdmm68
	Myw45/J8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjz5-0003Os-Im; Tue, 28 May 2019 21:50:15 +0000
Received: from mail-db5eur01on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::62c]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjyz-0002pb-6K
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 21:50:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w8ZmRiBUvOL47ivZV4bDaT8tfpn0aC9de02Pcy0mKlw=;
 b=WWngz45OBcqLPNw/VoB1SFT7pKmaUnG4r0KMje3yPeLkCXAbhBKXtc250f1ixjo7iW8G5AwKQcSRM7EFBPIcXj+03LWhoJB9kwrQ1qIfeA07Udrv5v2ZOfKKYYONNZGGIPSGTQre8fC+uct9ccv6kU/wFRbjvqCPkQOYhwlikHA=
Received: from AM4PR05CA0016.eurprd05.prod.outlook.com (2603:10a6:205::29) by
 DB3PR0502MB4057.eurprd05.prod.outlook.com (2603:10a6:8:6::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Tue, 28 May 2019 21:50:06 +0000
Received: from DB5EUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by AM4PR05CA0016.outlook.office365.com
 (2603:10a6:205::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Tue, 28 May 2019 21:50:06 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; samsung.com; dkim=none (message not signed)
 header.d=none;samsung.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT036.mail.protection.outlook.com (10.152.20.185) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Tue, 28 May 2019 21:50:06 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 29 May 2019 00:50:04
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 29 May 2019 00:50:04 +0300
Received: from [172.16.1.174] (172.16.1.174) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 29 May 2019 00:50:03
 +0300
Subject: Re: [PATCH 1/9] nvme: update list-ns nsid option
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>,
 <kbusch@kernel.org>, <hch@lst.de>
References: <1558951310-31066-1-git-send-email-maxg@mellanox.com>
 <1558951310-31066-2-git-send-email-maxg@mellanox.com>
 <24b16c73-ff69-0861-cad5-3fa619c2a9d8@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <55fa2743-ed66-37bf-974f-f3a9e58b4135@mellanox.com>
Date: Wed, 29 May 2019 00:50:02 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <24b16c73-ff69-0861-cad5-3fa619c2a9d8@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.1.174]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(2980300002)(189003)(199004)(2486003)(3846002)(5660300002)(6116002)(126002)(23676004)(110136005)(229853002)(11346002)(70206006)(70586007)(81156014)(81166006)(67846002)(65956001)(54906003)(65806001)(8676002)(58126008)(47776003)(50466002)(106002)(230700001)(53546011)(64126003)(16526019)(336012)(65826007)(8936002)(77096007)(86362001)(6246003)(486006)(2616005)(2201001)(31696002)(476003)(107886003)(446003)(305945005)(7736002)(36756003)(76176011)(26005)(2906002)(558084003)(478600001)(316002)(356004)(4326008)(186003)(31686004)(16576012)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0502MB4057; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2960fab-a8ad-4057-aee3-08d6e3b6727f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0502MB4057; 
X-MS-TrafficTypeDiagnostic: DB3PR0502MB4057:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB4057B69A81C2B10566C72D4FB61E0@DB3PR0502MB4057.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-Forefront-PRVS: 00514A2FE6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Pk/YC+b5Oxwh/QEdsvR5nn397ah+cBJZGGRswFAr91EJfCYYm7B3Hfl5da/KCNpggQMB0XGbHiEO7pWmNwAjyZPF7/GJcfK9mbLRCm8R3Juwr5my08Hd/he+b0fWtUVPKRdWBKX4MRNrKLER2taEn+h+EvJ23S0cI8E/gpKniBtzrMXu5YHCuzkY9sRxlAcxXDV1sm2SyUl+gtY/7x+3Gvui5Gis6eCBpL+7nS/3josAYGxZd0ePalQ7HZ3KNaLAXPSbNSlP8f4xKwR2/62rPR1U+dytlQXwGiz3/X4zfl+JFctMMSB9GqQdcGJWS5K7PzGQ28ha+FeRRY0w2Kcm2io/RDCYD9Pswo6KvU7hoCxVQHo6EdLGe4T8pP5gNBEM5OJ/qGYBfP5fRB+UOjvVMZRkCcYVwz3iLOt8344tN88=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2019 21:50:06.1805 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2960fab-a8ad-4057-aee3-08d6e3b6727f
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB4057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_145009_407179_5D25216E 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:62c listed in]
 [list.dnswl.org]
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


On 5/28/2019 10:54 PM, Sagi Grimberg wrote:
> Is this v4 btw?


I think it's V3 :)

Can you merge patches 1-5 meanwhile or should I send them separately ?

We can continue discussing regarding the other patches..


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
