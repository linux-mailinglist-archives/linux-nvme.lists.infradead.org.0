Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CADE986C
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 09:45:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UrOU1+UXN879QI01Oj21bHUJdZsx0U/Cfxdz8cG3Mto=; b=adZ6GtS5y8jzvScQ/2iq4C+bR
	BRMwqHVnaFINaU9wn839LsGW39JOHD3ACYTCsHd5wZO3bZGstf/H7WqgSbkHJBLbsJHYfD+mJZdfl
	Eis5Lc3k4JUoopr+92s8x7YJIVNfT4N0z8xxD1NUUEJmPPh2yg7Z7obGPnurOnjopUJajYjqMTXBJ
	wdzDgSpYc0pwmDxMLcCZD7ZTI4CGPWxU8Lo0wJ+cXJFrG/BelH2mS3A1sS8PBSbB/qEzM3goLBa/d
	Rp37YEDLp1rgtQOAWqiO1u23D1/XMRsHFmmIEE8C63l2QM/Y6GOqvwD2r7f21PqPQqAuaVDAMIAsr
	J/6MglPNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjb8-00044g-Ga; Wed, 30 Oct 2019 08:44:58 +0000
Received: from mail-vi1eur04on0615.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::615]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjb4-00044C-JD
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 08:44:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K9vfiak7vGkXT+EAo2x0CqwNGCuTnouhkrjX6gyqh4bJUUrnX1ikvFMA6JYbNwdEWd+FizN7i+SncwIO4pd2UlQUJP/hJ5RFPNXGBg+K0QCQq1wgmUloVYeRNEGoh3jrWEwKV/9TU/Libe+0IOVGfhH7E2f9NfYFqL/Czx0RfL4JgNmPzOEqKEFsHKiL8T0OtVm4mLIaojP11YpOpIUlk2sBey9ts5ozCMhLVPc+pEDGNzQ1WwCo+1oxgQrgo+YZxAomr7PuKb/hKNcJJiCj2saBDvcuLSMNHv08nihH9vDEF3umsevCr+jZr8sDNYUSQuiGJKLK9sKIPt8rbjgvtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVmAf87yf9g4c80OV3kFdzkR9WqWSxYMVjLsIqBsm6k=;
 b=ePcnzs8hyIL53KsCpO+l2uYlXvcYffmirpTSPr0L40iN9c01cRex3cUf4W2C1PG46Bo/+pX8kfD6uWBVba9m74W8Kq2w7P/748BB2CDWMYLcgSNT8rMpaQrB5idlquu29w0wZH/6VXqWrrSAfUwoboKW4bsB7e2niiqHfLMYgHD/xNYHSBbB8Prj52AMcnlkBuE1cqR0ZfPLyuZsww/3HF375MqwFd326aDrR+fU0DXlBs7CFu1HqyCzCUUz7tER7IbmIyv7a6+Pv558aDIkGv3FtHpsIUrZqGVbHReZJVo50cMyYzhd7+XQKC/QQPRbQnXA+u3xujAgflvAYR/QWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=mellanox.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=mellanox.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jVmAf87yf9g4c80OV3kFdzkR9WqWSxYMVjLsIqBsm6k=;
 b=PFRW5udE83lsSCotsICq5GAozI2dQgyPLTogIRr88zDTA6sWO/zp84ev/b9N3k6D4gLhRHEcvcIRE2bVyhjeKL5ujOJUWfGnITQvbU74/QcgJMxSjE12b0POZ3SWoW1pVbrDSuoibBUlp1t+1qXG3xxb9yOzLs1wnYQU4Ir4ky8=
Received: from HE1PR0501CA0017.eurprd05.prod.outlook.com (2603:10a6:3:1a::27)
 by AM0PR05MB4514.eurprd05.prod.outlook.com (2603:10a6:208:af::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.25; Wed, 30 Oct
 2019 08:44:51 +0000
Received: from VE1EUR03FT004.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by HE1PR0501CA0017.outlook.office365.com
 (2603:10a6:3:1a::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.20 via Frontend
 Transport; Wed, 30 Oct 2019 08:44:50 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT004.mail.protection.outlook.com (10.152.18.106) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2387.20 via Frontend Transport; Wed, 30 Oct 2019 08:44:50 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 30 Oct 2019 10:44:49
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 30 Oct 2019 10:44:49 +0200
Received: from [172.16.0.107] (172.16.0.107) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 30 Oct 2019 10:40:57
 +0200
Subject: Re: [PATCH 1/1] nvme-rdma: fix a segmentation fault during module
 unload
To: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
References: <20191029144227.108450-1-maxg@mellanox.com>
 <badcd22c-54ef-a4ab-2080-55f697b184e8@grimberg.me>
 <20191030004643.GB15332@redsun51.ssa.fujisawa.hgst.com>
 <20191030022057.GD15332@redsun51.ssa.fujisawa.hgst.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <a6280f77-bb3c-ade9-c201-9ecaca065c66@mellanox.com>
Date: Wed, 30 Oct 2019 10:44:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191030022057.GD15332@redsun51.ssa.fujisawa.hgst.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.107]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(199004)(189003)(486006)(81156014)(8676002)(81166006)(336012)(50466002)(2906002)(6666004)(356004)(229853002)(36756003)(7736002)(5660300002)(305945005)(11346002)(446003)(2616005)(126002)(476003)(16526019)(110136005)(54906003)(186003)(31686004)(3846002)(6116002)(478600001)(4326008)(47776003)(65956001)(65806001)(6246003)(107886003)(106002)(558084003)(16576012)(316002)(58126008)(86362001)(76176011)(31696002)(36906005)(8936002)(53546011)(230700001)(70586007)(23676004)(70206006)(26005)(2486003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4514; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f5358263-2382-45d3-7061-08d75d156d34
X-MS-TrafficTypeDiagnostic: AM0PR05MB4514:
X-Microsoft-Antispam-PRVS: <AM0PR05MB45148FE59D3573DBFA29B210B6600@AM0PR05MB4514.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 02065A9E77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dTPySXtmgBci0Tn4HI7+ySi+i04d+OPKZKaER6aE+DJRpo6JdWWrSTHHmadWDXgEgIamBslOnGRBVOPWsJF7xdmG2VtVjSdbkJmuiaQ216jZd/1PfTJErhKqIfjwsrjPqME706V2eGMHLBg6WrNF76dq1kekSacCPk7xPK0nP4BrFq0fPlk7nZgAxeitHSiUxlv70ppyqZlxLX11Y8sFRkdSQ+7d54elAGgqgTkOCZ8YGSmTabODs7Sq87SeGv71cr1TlQR5m6yt7nNU4pvglx38qzK3HtJDDKHbcu4zivd61VIvxrkToaLUX6UTzFf40SyHkLx7C+YzMYYvphNKqwgicl/12r4QlyVCx4R27cciTkMWzjUJdqbj3lcxgzmFabTatqPKpFo81uNmvWWX+2QgnL16GI1cPy48jWOKKyWrUydjjbIZt/XH7TCI8lvm
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2019 08:44:50.2042 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f5358263-2382-45d3-7061-08d75d156d34
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_014454_699692_BFAA38EE 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0e:0:0:0:615 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: israelr@mellanox.com, hch@lst.de, linux-nvme@lists.infradead.org,
 shlomin@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 10/30/2019 4:20 AM, Keith Busch wrote:
> On Wed, Oct 30, 2019 at 09:46:43AM +0900, Keith Busch wrote:
>> Thanks, applied to nvme-5.5.
> Oops, this one is a fixes, so I've put this patch in 5.4, and the other
> in 5.5.

thanks.

which other one ?


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
