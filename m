Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E415660721
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jul 2019 16:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cRboK3nT/HPM9YBr5kNsWja9oA1hAf/fk2jvGQtRcUA=; b=cRZ5hEOvvLuwuITzd+RE1tDVf
	306mHT6w2lCsxTwsCe5Bd06SPDnemmuoN/iPiH8cuoqHI+2BEdqmWso76yC2mlFXMiHhpfKRbm9gl
	AvtnaFhKVaex1bTfKE7xkG4f0egoncUb8i2oH5ObqVl+FXoOnGXh5Zfhx0baB3vGyzu0wcUbQchqH
	omGSoF/6E59Ir4QprvypL5sSL+6dCiCjf3WOZw+HbuZk61CPPHr0RykcZefleeGX07JCEPeGpDis2
	hKZnCGawj04SmqEHeG741oW4hLGRaOun0P7S9jjsH8V7q8y/IpPmWhxbWJm/etDo/9LQMfMu+bUST
	E2XukJUZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOoE-0007TL-J8; Fri, 05 Jul 2019 14:03:30 +0000
Received: from mail-eopbgr10068.outbound.protection.outlook.com ([40.107.1.68]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfj-0004xN-Tq
 for linux-nvme@lists.infradead.org; Fri, 05 Jul 2019 13:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZYIG5xg6SgOR+uedWHE+D2fpxO0fHVKretsP+pHBSM8=;
 b=b3pmEoSQSOASq5QDFbEsTr6I2ZqrjyEUZjPyKlnp4rBWq2d03fbErlZFqp+ql6AIUQb6wblbZZHu3vprhTScgHbUyfMTMo+hLBtMuQQI0dU4SF5YJQb4YDB9cwwQpync2he0BgzzszUINlSzBrmO0NWbTwv0TGnDz+fEI5DttFs=
Received: from DB6PR05CA0011.eurprd05.prod.outlook.com (2603:10a6:6:14::24) by
 VI1PR0502MB3981.eurprd05.prod.outlook.com (2603:10a6:803:24::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.20; Fri, 5 Jul
 2019 12:18:15 +0000
Received: from VE1EUR03FT017.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by DB6PR05CA0011.outlook.office365.com
 (2603:10a6:6:14::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2052.18 via Frontend
 Transport; Fri, 5 Jul 2019 12:18:15 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; raithlin.com; dkim=none (message not signed)
 header.d=none;raithlin.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT017.mail.protection.outlook.com (10.152.18.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Fri, 5 Jul 2019 12:18:14 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 5 Jul 2019 15:18:12
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 5 Jul 2019 15:18:11 +0300
Received: from [172.16.0.102] (172.16.0.102) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 5 Jul 2019 15:17:57
 +0300
Subject: Re: [PATCH v2 1/2] nvmet: Fix use-after-free bug when a port is
 removed
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>, "Sagi
 Grimberg" <sagi@grimberg.me>
References: <20190703230304.22905-1-logang@deltatee.com>
 <20190703230304.22905-2-logang@deltatee.com>
 <786259e6-ffed-8db3-74d0-71ed5a760079@mellanox.com>
 <d79a4c2d-9326-2805-b2a2-ca265ab2a717@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <731bd412-2e44-c027-726e-d73a42c5f773@mellanox.com>
Date: Fri, 5 Jul 2019 15:17:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <d79a4c2d-9326-2805-b2a2-ca265ab2a717@deltatee.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.102]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(2980300002)(199004)(189003)(110136005)(16576012)(58126008)(106002)(2201001)(6116002)(3846002)(86362001)(305945005)(6246003)(4326008)(229853002)(8936002)(67846002)(26005)(186003)(77096007)(64126003)(50466002)(36756003)(16526019)(2486003)(316002)(23676004)(76176011)(478600001)(53546011)(2906002)(81156014)(476003)(31696002)(65956001)(446003)(47776003)(8676002)(126002)(65806001)(11346002)(486006)(2616005)(230700001)(31686004)(70586007)(356004)(4744005)(65826007)(336012)(7736002)(5660300002)(70206006)(81166006)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB3981; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e4246992-29b2-4e90-f92a-08d70142dae2
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3981; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3981:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB39817692F0AD71C4C376565DB6F50@VI1PR0502MB3981.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 008960E8EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: XTtgnlS6dxAHSQ7wQmeZJmQfG4ifcr9AVLrPEyTDsqhHiWcW+fAXJkTaSRaPTRib18H02KRX17gazEsFB+UXOh4z2IFMmlTdaHA2oN7sPShgbNndFZpaNkbzhFnfxWN9VFsgn9Qs5xkvHuor668P3/tkeyjy3czDzwbrpwgcC1Qe90TpJQ9C+6yLby+CVSb3TIuZmtllb7SrdzQ7FTcUeN4nJ94jpfwuXCDQf8hWPgHVQDG+0S0jvhUj0uB7iHJeoDHNxJLzxel+0Hcomb0F+NFiBu4F8px+3b+OFwAcAozlFiZSyk3cMcGBHvPBSlSvQk7Q66NR1IsqZIWO4TeCw4GsEyyFnNxs0guHvByz6eEmmqCGed5AqtI8eE2PLdxILiS0pml05tQTlcm78RiIdGYoa33izx4W2CXw6mSJGZE=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2019 12:18:14.3598 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e4246992-29b2-4e90-f92a-08d70142dae2
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3981
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_065447_225211_09738302 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.68 listed in list.dnswl.org]
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


On 7/5/2019 12:01 AM, Logan Gunthorpe wrote:
>
> On 2019-07-04 3:00 p.m., Max Gurtovoy wrote:
>> Hi Logan,
>>
>> On 7/4/2019 2:03 AM, Logan Gunthorpe wrote:
>>> When a port is removed through configfs, any connected controllers
>>> are still active and can still send commands. This causes a
>>> use-after-free bug which is detected by KASAN for any admin command
>>> that dereferences req->port (like in nvmet_execute_identify_ctrl).
>>>
>>> To fix this, disconnect all active controllers when a subsystem is
>>> removed from a port. This ensures there are no active controllers
>>> when the port is eventually removed.
>> so now we are enforcing controller existence with port configfs, right ?
>> sounds reasonable.
> Correct.
>
>> Did you run your patches with other transport (RDMA/TCP/FC) ?
> Just RDMA and loop. I suppose I could test with TCP but I don't have FC
> hardware.

Great.

the code looks good:

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

>
> Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
