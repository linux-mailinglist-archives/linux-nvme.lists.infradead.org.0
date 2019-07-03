Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF6B5E4BE
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 15:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2wM4rQLxOczong+drXXha6q9xWhag46WADDTZx1sKLw=; b=r05233oz8rZh9ONqaKC+j0bj3
	2rmYQ7THip/RpxVYGVjT9gF1pU7iRnrWVX5S9QpvtnTqbED8flp0csiMzWM2ywXj0AmCYrmB/2Kos
	FygYJmRc5/a0UJZ3dYoWn/aBy79RkKQjebgjFwYI6WF40Jn7ShSsqLosugEhH+T7rGyMLOI3FbUn6
	6GJBjWSnLnkGdArOmaXiuHxn+07Hb9JKqIUWcwZhym1yMKe7x/u10AHjnR5d9pYmhuNNXgOfljlQM
	6H/mnUrXKOH1eP1a6H17mkEYvz8el8ypcBn0DZ0PN+jMemsPrtwhV/qQ6grXiGe6o0euJJ4ze4l9J
	JK1bGN+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiesz-0006hW-7z; Wed, 03 Jul 2019 13:01:21 +0000
Received: from mail-eopbgr10072.outbound.protection.outlook.com ([40.107.1.72]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hieoc-0003T3-E6
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 12:56:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yc3WqES/u/jjBGC8BbjJSCrc05cEKyeWkWndi83ZX5s=;
 b=ZjBNYzcHZDtw/QFoRWXXrHUCI1WspLDmL76e4dt+WTyBW8E7H0y+40kZtZtzOIDdtlPhTi9Kmqe/Ftp4PDKf44Sz38OEVRUa6LbC7CjGQKbdC5+K1m0Yao1m3UwjT5v8CWTJ6NwNXjShsJnrt7MTu0XpE+Vss7FyWMOuhARpLjM=
Received: from HE1PR05CA0229.eurprd05.prod.outlook.com (2603:10a6:3:fa::29) by
 DB6PR0502MB3031.eurprd05.prod.outlook.com (2603:10a6:4:9a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Wed, 3 Jul 2019 12:56:43 +0000
Received: from DB5EUR03FT022.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::204) by HE1PR05CA0229.outlook.office365.com
 (2603:10a6:3:fa::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.20 via Frontend
 Transport; Wed, 3 Jul 2019 12:56:43 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 DB5EUR03FT022.mail.protection.outlook.com (10.152.20.171) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2032.15 via Frontend Transport; Wed, 3 Jul 2019 12:56:41 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 3 Jul 2019 15:56:40
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 3 Jul 2019 15:56:40 +0300
Received: from [172.16.0.195] (172.16.0.195) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Wed, 3 Jul 2019 15:56:39
 +0300
Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect during
 bond failover
To: Alex Lyakas <alex@zadara.com>, <linux-nvme@lists.infradead.org>, "Shlomi
 Nimrodi" <shlomin@mellanox.com>, Israel Rukshin <israelr@mellanox.com>,
 <tomwu@mellanox.com>
References: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
 <90599926-b7ec-8431-a7aa-c44fde08b5c4@grimberg.me>
 <ec4fb8df-98c4-fffc-7581-5245c397d16c@mellanox.com>
 <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <b6443a7c-4be6-3dbc-0535-a8ded3261c50@mellanox.com>
Date: Wed, 3 Jul 2019 15:56:38 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <66ACE500178B47D6B39F23FE98D22363@alyakaslap>
Content-Language: en-US
X-Originating-IP: [172.16.0.195]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(2980300002)(13464003)(189003)(199004)(126002)(230700001)(486006)(7736002)(305945005)(5660300002)(6636002)(6116002)(70586007)(478600001)(45080400002)(2906002)(3846002)(70206006)(2616005)(31686004)(47776003)(476003)(65826007)(446003)(67846002)(36756003)(110136005)(229853002)(81166006)(106002)(26005)(77096007)(23676004)(16526019)(356004)(6246003)(6306002)(64126003)(31696002)(58126008)(86362001)(186003)(336012)(50466002)(966005)(2486003)(65806001)(8676002)(16576012)(76176011)(316002)(11346002)(53546011)(81156014)(65956001)(8936002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB3031; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9968ae39-7fb3-4008-8bde-08d6ffb5e531
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0502MB3031; 
X-MS-TrafficTypeDiagnostic: DB6PR0502MB3031:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <DB6PR0502MB30312EF0DBF52DF35708CA92B6FB0@DB6PR0502MB3031.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 00872B689F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: eThjZayROZ/IvwLYaWWN7O9M4ju1PIRNLp4FSym/k+84T93R3qhvMma+yObCiZNA1skEcW5gLqjgtOpx+29v63qRfkF3NV4e3dMaO8amDgIjPJE3kggwamYAEh4CNFhvk43RubLMH5aiGgFCU3cKRlbGRc3nNIuaMBCEnqiDdonYWSGrVPS4lRMiRI7mGTLUkgm2ptK3F0kT87s7wkvxKxGPUsLaMvPOwGIwyLQxDHCc+/qQ/7SpGaL5ZyqN9CJ9PNOzswZUVlby4apx9acL7VnuEDb5wBR5tdFBO6McGydk/wa5eRwhfcqwqHhIOj80txrbEGfyITC/ppxd/o8Kp1Rs9JIzhXyX8Wa9Nz90ZYi/6ClYBMF1VdsKlq7HF8wgkkpBV2zGsjqym6m+m8t9UcV0Oi7QT9yOaX9sFT+xf48=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2019 12:56:41.7065 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9968ae39-7fb3-4008-8bde-08d6ffb5e531
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB3031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_055652_418169_CF348405 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.72 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Alex,

Not yet. Our fix is in the Initiator/Host side and it was merged.

This is on our plate.

In case you would like to send a patch to solve this, we'll review it 
of-course.

-Max.

On 7/3/2019 12:28 PM, Alex Lyakas wrote:
> Hi Max,
>
> Has any patch been sent to resolve the kernel panic in nvmet that we 
> are seeing?
>
> Thanks,
> Alex.
>
>
> -----Original Message----- From: Max Gurtovoy
> Sent: Thursday, June 06, 2019 10:31 AM
> To: linux-nvme@lists.infradead.org
> Subject: Re: NULL pointer dereference in nvmet_rdma_queue_disconnect 
> during bond failover
>
>
> On 6/6/2019 3:05 AM, Sagi Grimberg wrote:
>>
>>> Greetings NVMe community,
>>>
>>> I am running kernel 5.1.6, which is the latest stable kernel.
>>>
>>> I am testing a nvmf kernel target, configured on top of a bond 
>>> interface, for high availability. The bond interface is created on 
>>> top of two ConnectX-3 interfaces, which represent two ports of one 
>>> ConnectX-3 VF (with this hardware a VF is dual-ported, i.e., a 
>>> single VF yields two network interfaces). The bond is configured in 
>>> active-backup mode. Exact bonding configuration is given in [1]. The 
>>> nvmet target configuration doesn't have anything special and is 
>>> given in [2].
>>>
>>> I create a nvmf connection from a different machine to the nvmet 
>>> target. Then I initiate bond failover, by disconnecting a cable that 
>>> corresponds to the active bond slave. As a result, I get the 
>>> following kernel panic:
>>
>> Max sent a fix exactly for this. You can test that it works for you
>> when he sends v2.
>>
>> Max, care to CC Alex when you send it?
>
> Sure, No problem.
>
>
>>
>> _______________________________________________
>> Linux-nvme mailing list
>> Linux-nvme@lists.infradead.org
>> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme&amp;data=02%7C01%7Cmaxg%40mellanox.com%7Cb0df220121534ce1fe4b08d6ff98e119%7Ca652971c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C636977429409072070&amp;sdata=nwWwML3PUy%2BZ0HJeJRKpNyLB0Nm%2BV%2BUxNuweaAWyeyA%3D&amp;reserved=0 
>>
>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme&amp;data=02%7C01%7Cmaxg%40mellanox.com%7Cb0df220121534ce1fe4b08d6ff98e119%7Ca652971c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C636977429409072070&amp;sdata=nwWwML3PUy%2BZ0HJeJRKpNyLB0Nm%2BV%2BUxNuweaAWyeyA%3D&amp;reserved=0 
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
