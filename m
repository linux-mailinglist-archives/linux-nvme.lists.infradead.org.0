Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DE336D5B
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 09:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c5l1wa0tRKyzVKibfurJtrlZWDiF5wL5FiwRgR2Igtc=; b=RE0jW4rm2veqY7l/Ys6WkjaGE
	f0lTH0TX457LUThy0sC46luiuj8sNFmDYAraP18hDrv6HjLESw66umkvRey2yYC5OjIOhubCvY/Os
	7GLenyaXo4o3YjSTn1NOTWXUNW6AvwxTodiJUtVOxxFCYNX7Mpuf8WygR5rBKcEbTFV4Mx9buWfpo
	dIGU1A0RNmT5lXhU6rvYAxILmwaliSeX/MPlTEV/AAqubsKEuaYtYu90iDdOVC0tsZsO8pv3KriQ9
	zXSUcVHgAMhYVoVmfnXQxYGSPE2osmrOXMEFfYrG7ZSFIV0sfg1sb3TTiG1imKkGQtzYJGNF7zVbL
	skIv/ue+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYms2-0007oR-EZ; Thu, 06 Jun 2019 07:31:34 +0000
Received: from mail-eopbgr150055.outbound.protection.outlook.com
 ([40.107.15.55] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmrx-0007ns-Qe
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 07:31:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ma11Mj49qlIjsA9i91cGjQO25Xk3/OIbvljG/2ImXFo=;
 b=ffmnUcGahxz8bt6jnmyhU2NdueIQgdNmXU5VV9dKjVcyx1nDcWE6hWrsEejAyEm6FEuZL3TfFcJLXkp03nAFnIdhU09MqNioene1tt8PJuXyFPhIbynz7IF0dyQabuW29qkqxfGMEY8X3T3gCyz4AWULbUwBvWdnEAqzDkQtP5k=
Received: from DB6PR0501CA0028.eurprd05.prod.outlook.com (2603:10a6:4:67::14)
 by HE1PR0502MB3018.eurprd05.prod.outlook.com (2603:10a6:3:d8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.14; Thu, 6 Jun
 2019 07:31:23 +0000
Received: from AM5EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by DB6PR0501CA0028.outlook.office365.com
 (2603:10a6:4:67::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.12 via Frontend
 Transport; Thu, 6 Jun 2019 07:31:23 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT011.mail.protection.outlook.com (10.152.16.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Thu, 6 Jun 2019 07:31:22 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 6 Jun 2019 10:31:21
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 6 Jun 2019 10:31:20 +0300
Received: from [172.16.0.41] (172.16.0.41) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 6 Jun 2019 10:31:19
 +0300
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
To: <linux-nvme@lists.infradead.org>
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
Date: Thu, 6 Jun 2019 10:31:18 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.41]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(39860400002)(396003)(2980300002)(199004)(189003)(7736002)(3846002)(446003)(6116002)(65826007)(47776003)(305945005)(2486003)(23676004)(6916009)(8676002)(126002)(81166006)(81156014)(5660300002)(2351001)(67846002)(486006)(58126008)(11346002)(8936002)(230700001)(64126003)(229853002)(50466002)(2616005)(476003)(966005)(70586007)(336012)(70206006)(478600001)(65956001)(53546011)(45080400002)(186003)(26005)(31686004)(77096007)(356004)(65806001)(31696002)(2906002)(76176011)(6246003)(6306002)(16576012)(36756003)(16526019)(316002)(86362001)(106002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0502MB3018; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fda7cb97-d629-42e9-aa19-08d6ea50f9dc
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0502MB3018; 
X-MS-TrafficTypeDiagnostic: HE1PR0502MB3018:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <HE1PR0502MB3018EC8AE2ACE17D336B7CB7B6170@HE1PR0502MB3018.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 00603B7EEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: N0X5E8bPEG9vTpMuZfBkppXY2QE3cNM9BvSOfUDqDejCoO5gAqAo12k3Jep8jGFbCZL9s48JYYYuoWU3QbOq2o6qzdvz4ItdSyp5e1o/uC6Zuw/X/OAAnCjuvX+6dqJPjsn3qk97pFW73m1Ov/z/ne9cPCJ9x3RJzwg3CbwfJ2GWO6HDZs2FrdmJspkS/htn0lbW8BAKPl8N1IuqHgzrTRIJ7dfvbuVpO4+iBmkmQgwqPp738VX+08DeW0u1gkK14o2/HkoBTkrkhnU1bhX1pMO7/LAztTqpKyCfUzf3PF6ygMmh+YVmYi0VjvweG1znsEoz2oRdtunKvOoFMIl3jEHIYwWxK8ZX5AAwZ+v/9Z+zDZRFHkm3eTUX3v/x8ysguh0AvzgUv20de5apjomXlbyQxord4pDLDgie7888CIM=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2019 07:31:22.7703 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fda7cb97-d629-42e9-aa19-08d6ea50f9dc
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_003129_866605_32938DC0 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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


On 6/6/2019 3:05 AM, Sagi Grimberg wrote:
>
>> Greetings NVMe community,
>>
>> I am running kernel 5.1.6, which is the latest stable kernel.
>>
>> I am testing a nvmf kernel target, configured on top of a bond 
>> interface, for high availability. The bond interface is created on 
>> top of two ConnectX-3 interfaces, which represent two ports of one 
>> ConnectX-3 VF (with this hardware a VF is dual-ported, i.e., a single 
>> VF yields two network interfaces). The bond is configured in 
>> active-backup mode. Exact bonding configuration is given in [1]. The 
>> nvmet target configuration doesn't have anything special and is given 
>> in [2].
>>
>> I create a nvmf connection from a different machine to the nvmet 
>> target. Then I initiate bond failover, by disconnecting a cable that 
>> corresponds to the active bond slave. As a result, I get the 
>> following kernel panic:
>
> Max sent a fix exactly for this. You can test that it works for you
> when he sends v2.
>
> Max, care to CC Alex when you send it?

Sure, No problem.


>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme&amp;data=02%7C01%7Cmaxg%40mellanox.com%7C9879366f21df4e7f4ce608d6ea12c41f%7Ca652971c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C636953763648159480&amp;sdata=UtkpvcEM9%2BBBdj68Kx6bobMWkeGSp1Jz3yJXxH8MLgY%3D&amp;reserved=0 
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
