Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD1A27FD5
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RW9Pyij92Tlfdp5Dzl4UlvKc8HG+Cts0V8NzD4PIXgA=; b=gPTr6qqsF/e24TovGKRyShkth
	qEmBUwCPG1a5zijqF6URuyP5WzY73cDqfpL/jz6AwOfBoc0PDZTcmggwzpk1a1NYSpCR2cmuEPL/R
	WeqY3BmxwGmsN3Haj9QCn8gf1VwLXox8GWhzaNmIkM43XYy4pCdqUCVvhqi7c+xV7eB+8l0MVaveh
	9dbtMsYULwMcZ/iQYYnygt1oeb9S5thjM50IgEeutQiVKyXDNj2qgCoIp/OS+Ea6g21+TzKKHIGHm
	NLqi+QqcnPBQG+Rf8HvRs9nf7nCB0Nl8YiXmqjBY5MaJe+UvGv28dCQJBo+DHfT1WVEwHGyrGxw2K
	RC2qrOxQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTopB-0007mz-5x; Thu, 23 May 2019 14:36:05 +0000
Received: from mail-eopbgr10067.outbound.protection.outlook.com ([40.107.1.67]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTop5-0007ma-B2
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:36:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=282rhpTI2kmx9XpS1cw1+nmHX24RJ30dl0WiSMpNlzM=;
 b=BniCmODBvFcnSpmL9f3VPfeOwGZnLDiglMwA5XzcposlRf0RrfM0c02fmYVXAp4WNI5krzouhU1oJCkQJUY4Nj+FhiUvvS+7CzyJWMdHmmQ0wK6WLusbE1+84XI/ad6hhmsnmbRY+dAGiknbjIn4yVuu3alqHS/sz3eTFj3n2vI=
Received: from HE1PR05CA0284.eurprd05.prod.outlook.com (2603:10a6:7:93::15) by
 DBBPR05MB6427.eurprd05.prod.outlook.com (2603:10a6:10:c9::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Thu, 23 May 2019 14:35:53 +0000
Received: from AM5EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::203) by HE1PR05CA0284.outlook.office365.com
 (2603:10a6:7:93::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Thu, 23 May 2019 14:35:52 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT046.mail.protection.outlook.com (10.152.16.164) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 14:35:52 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 17:35:51
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 17:35:51 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 17:35:10
 +0300
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Nirranjan Kirubaharan <nirranjan@chelsio.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
 <20190523075524.GA15479@chelsio.com>
 <06d347cc-7df6-c2b3-2edf-88a53db3c12d@mellanox.com>
 <20190523114157.GA9479@chelsio.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <033ac067-29b1-30ff-6ad0-5e13510649bd@mellanox.com>
Date: Thu, 23 May 2019 17:35:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190523114157.GA9479@chelsio.com>
Content-Type: multipart/mixed; boundary="------------B1A99BD5828A3C7508E9171F"
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(346002)(39860400002)(2980300002)(199004)(189003)(235185007)(81156014)(86362001)(8676002)(31696002)(6916009)(5660300002)(446003)(81166006)(16576012)(568964002)(2616005)(14444005)(5024004)(71190400001)(58126008)(65806001)(6246003)(316002)(106002)(54906003)(8936002)(476003)(126002)(65956001)(486006)(31686004)(11346002)(16586007)(37036004)(4326008)(2476003)(336012)(84326002)(64126003)(6116002)(3846002)(16526019)(356004)(76176011)(7736002)(305945005)(77096007)(26005)(53546011)(186003)(2906002)(66616009)(478600001)(70206006)(33964004)(229853002)(36756003)(30864003)(70586007)(65826007)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR05MB6427; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec8f4aaa-b475-4d37-6042-08d6df8bf54a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(49563074)(7193020);
 SRVR:DBBPR05MB6427; 
X-MS-TrafficTypeDiagnostic: DBBPR05MB6427:
X-Microsoft-Antispam-PRVS: <DBBPR05MB642790909E918CF2F64B07B3B6010@DBBPR05MB6427.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ja+CDFKO3tM4IQHISKJvVNmQQbO9ZSumMFb3VSNyT24a/gSIwh88vJJSMi7vSnF90u9HR+AHkG4miRcIDpTHi/MqysVKqWDSBDuyR6lXz3VjaTzZ1U/+u/ecRMHQRo4ZnV5A5nU1Hxgxl1Kllz68lBTLl4lH+36kbbyPYnS2awQpGF0Y8vDOm/ckshSNSRjbV+yi7RI6nuTZaeXhZQOwYRiEdT8TY3GsRDy02R8x8v7TGDGvm3MRt/9tLp94U0DXWAWKTWq5c62DzOfssSEEP9WAD3fNq6kbfKXhO/s+IPP2G3kvVk2pAGvXWM4lp8ENq2MEfAXZ5IBedef4MXDXIIXLm1Dnp+f1zdFLnz/EivriCoeVTf9l/ZgOfq+Hp38tv9KpLGcPRPLKybiCWULiKMDeHLGPfd9RhP/JzgiXZEw=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 14:35:52.6172 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec8f4aaa-b475-4d37-6042-08d6df8bf54a
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR05MB6427
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_073559_617305_8ECD7D0C 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bharat@chelsio.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 hch@lst.de
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--------------B1A99BD5828A3C7508E9171F
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

I'll take deeper look on it next week but please try the new attached patch

On 5/23/2019 2:41 PM, Nirranjan Kirubaharan wrote:
> On Thursday, May 05/23/19, 2019 at 14:14:25 +0300, Max Gurtovoy wrote:
>> I see.
>>
>> probably we need to review again read/write/poll queues patches.
>>
>> can you try the attached untested patch ?
> Using the attached patch, it works if I dont use the write/poll queues,
> even when target allocates lesser queues.
>
> I see the below panic, if I use poll queues with target allocating
> less than the requested queues.
>
> [161557.300219] RIP: 0010:blk_mq_map_queues+0x92/0xa0
> [161557.312476] Code: 39 05 26 76 02 01 0f 46 c3 39 d8 74 19 89 c0 41 8b 04 84 43 89 04 bc eb a3 5b 5d 41 5c 41 5d 41 5e 31 c0 41 5f c3 89 d8 31 d2 <f7> f5 41 03 55 0c 43 89 14 bc eb 86 66 90 66 66 66 66 90 55 b8 ff
> [161557.347031] RSP: 0018:ffffa04fc3d57ce8 EFLAGS: 00010246
> [161557.360280] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
> [161557.375517] RDX: 0000000000000000 RSI: 0000000000000008 RDI: ffff924d47c11810
> [161557.390701] RBP: 0000000000000000 R08: 0000000000000000 R09: ffff924f143451e0
> [161557.405828] R10: ffff924d47c03980 R11: 0000000000000000 R12: ffff924f143451e0
> [161557.420882] R13: ffff924f14af4028 R14: 0000000000010120 R15: 0000000000000000
> [161557.435919] FS:  00007f4566a31740(0000) GS:ffff92506fa00000(0000) knlGS:0000000000000000
> [161557.451938] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [161557.465622] CR2: 00007ffdf1ef99d8 CR3: 000000042213a000 CR4: 00000000000006f0
> [161557.480765] Call Trace:
> [161557.491147]  nvme_rdma_map_queues+0x9e/0xc0 [nvme_rdma]
> [161557.504360]  blk_mq_alloc_tag_set+0x1bd/0x2d0
> [161557.516666]  nvme_rdma_alloc_tagset+0xd6/0x2a0 [nvme_rdma]
> [161557.530108]  nvme_rdma_setup_ctrl+0x362/0x7a0 [nvme_rdma]
> [161557.543410]  nvme_rdma_create_ctrl+0x29a/0x3d8 [nvme_rdma]
> [161557.556754]  nvmf_dev_write+0xa18/0xbff [nvme_fabrics]
> [161557.569687]  vfs_write+0xad/0x1b0
> [161557.580718]  ksys_write+0x55/0xd0
> [161557.591689]  do_syscall_64+0x5b/0x1b0
> [161557.602941]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [161557.615575] RIP: 0033:0x7f4566536c60
> [161557.626678] Code: 73 01 c3 48 8b 0d 30 62 2d 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 3d c3 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 ee cb 01 00 48 89 04 24
> [161557.661257] RSP: 002b:00007ffdf1ef99d8 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [161557.676897] RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007f4566536c60
> [161557.692124] RDX: 000000000000005c RSI: 00007ffdf1efae70 RDI: 0000000000000003
> [161557.707378] RBP: 00007ffdf1efae70 R08: 0000000000000000 R09: 00007f45664940fd
> [161557.722648] R10: 00007ffdf1ef95a0 R11: 0000000000000246 R12: 000000000000005c
> [161557.737848] R13: 0000000000000037 R14: 000000000000000b R15: 000000000064f5e0
>
>> On 5/23/2019 10:55 AM, Nirranjan Kirubaharan wrote:
>>> On Thursday, May 05/23/19, 2019 at 10:21:46 +0300, Max Gurtovoy wrote:
>>>> On 5/23/2019 7:51 AM, Nirranjan Kirubaharan wrote:
>>>>> Return error -ENOMEM when nvmf target allocates lesser
>>>>> io queues than the number of io queues requested by nvmf
>>>>> initiator.
>>>> why can't we live with lesser queues ?
>>> In nvme_rdma_alloc_io_queues() ctrl->io_queues[] are already filled
>>> assuming all the requested no of queues will be allocated by the target.
>>>
>>>> I can demand 64K queues and the target might return 4 and it's fine
>>>> for functionality.
>>>>
>>>> where is the NULL that you see ?
>>> In nvme_rdma_init_request() accessing unallocated queue_idx of
>>> ctrl->io_queues[] causes NULL deref.
>>>
>>> [  703.192172] RIP: 0010:nvme_rdma_init_request+0x31/0x140 [nvme_rdma]
>>> [  703.192173] Code: 55 31 ed 53 48 8b 47 60 48 89 f3 48 8d 48 08 48 39 cf 0f 84 fb 00 00 00 48 03 28 48 05 f8 02 00 00 be c0 0d 00 00 48 8b 55 20 <4c> 8b 22 48 89 83 28 01 00 00 ba 40 00 00 00 48 8b 3d a9 7b 42 f4
>>> [  703.192174] RSP: 0018:ffff9c36835bfc38 EFLAGS: 00010282
>>> [  703.192192] RAX: ffff8eb49c8b92f8 RBX: ffff8eb5a6e50000 RCX: ffff8eb49c8b9008
>>> [  703.192192] RDX: 0000000000000000 RSI: 0000000000000dc0 RDI: ffff8eb49c8b9008
>>> [  703.192193] RBP: ffff8eb5ad3c50e0 R08: 00000000119b9400 R09: ffff8eb5831d9520
>>> [  703.192194] R10: ffffc83e119b9400 R11: ffffc83e119b9800 R12: ffff8eb49c8b9008
>>> [  703.192194] R13: ffff8eb5831d9480 R14: 0000000000000000 R15: ffff8eb5a6e50000
>>> [  703.192195] FS:  00007fd6613bb780(0000) GS:ffff8eb5afbc0000(0000) knlGS:0000000000000000
>>> [  703.192196] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> [  703.192197] CR2: 0000000000000000 CR3: 00000004646a4005 CR4: 00000000003606e0
>>> [  703.192197] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>>> [  703.192198] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
>>> [  703.192199] Call Trace:
>>> [  703.192206]  blk_mq_alloc_rqs+0x1f0/0x290
>>> [  703.192207]  __blk_mq_alloc_rq_map+0x46/0x80
>>> [  703.192209]  blk_mq_map_swqueue+0x1dd/0x2e0
>>> [  703.192210]  blk_mq_init_allocated_queue+0x3c8/0x430
>>> [  703.192211]  blk_mq_init_queue+0x35/0x60
>>> [  703.192213]  ? nvme_rdma_alloc_tagset+0x1bb/0x330 [nvme_rdma]
>>> [  703.192214]  nvme_rdma_setup_ctrl+0x420/0x7b0 [nvme_rdma]
>>> [  703.192215]  nvme_rdma_create_ctrl+0x29a/0x3d8 [nvme_rdma]
>>> [  703.192218]  nvmf_dev_write+0xa18/0xbff [nvme_fabrics]
>>> [  703.192222]  vfs_write+0xad/0x1b0
>>> [  703.192224]  ksys_write+0x5a/0xd0
>>> [  703.192228]  do_syscall_64+0x5b/0x180
>>> [  703.192231]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>> [  703.192232] RIP: 0033:0x7fd660cddc60
>>> [  703.192233] Code: 73 01 c3 48 8b 0d 30 62 2d 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 3d c3 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 ee cb 01 00 48 89 04 24
>>> [  703.192234] RSP: 002b:00007ffe8f58d928 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
>>> [  703.192235] RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007fd660cddc60
>>> [  703.192236] RDX: 000000000000004d RSI: 00007ffe8f58e9a0 RDI: 0000000000000003
>>> [  703.192236] RBP: 00007ffe8f58e9a0 R08: 00007ffe8f58e9ed R09: 00007fd660c3b0fd
>>> [  703.192237] R10: 00000000ffffffff R11: 0000000000000246 R12: 000000000000004d
>>> [  703.192237] R13: 000000000151a500 R14: 000000000151a600 R15: 00007ffe8f58e9e0
>>>
>>>>> Signed-off-by: Nirranjan Kirubaharan <nirranjan@chelsio.com>
>>>>> Reviewed-by: Potnuri Bharat Teja <bharat@chelsio.com>
>>>>> ---
>>>>>   drivers/nvme/host/rdma.c | 9 ++++++++-
>>>>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
>>>>> index f383146e7d0f..187007d136cc 100644
>>>>> --- a/drivers/nvme/host/rdma.c
>>>>> +++ b/drivers/nvme/host/rdma.c
>>>>> @@ -641,7 +641,7 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>>>>   {
>>>>>   	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>>>>>   	struct ib_device *ibdev = ctrl->device->dev;
>>>>> -	unsigned int nr_io_queues;
>>>>> +	unsigned int nr_io_queues, nr_req_queues;
>>>>>   	int i, ret;
>>>>>   	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
>>>>> @@ -670,9 +670,16 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>>>>   		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
>>>>>   	}
>>>>> +	nr_req_queues = nr_io_queues;
>>>>>   	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
>>>>>   	if (ret)
>>>>>   		return ret;
>>>>> +	if (nr_io_queues < nr_req_queues) {
>>>>> +		dev_err(ctrl->ctrl.device,
>>>>> +			"alloc queues %u < req no of queues %u",
>>>>> +			nr_io_queues, nr_req_queues);
>>>>> +		return -ENOMEM;
>>>>> +	}
>>>>>   	ctrl->ctrl.queue_count = nr_io_queues + 1;
>>>>>   	if (ctrl->ctrl.queue_count < 2)
>> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
>> index 5a4ad25..d0cc981 100644
>> --- a/drivers/nvme/host/rdma.c
>> +++ b/drivers/nvme/host/rdma.c
>> @@ -641,7 +641,8 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>   {
>>   	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>>   	struct ib_device *ibdev = ctrl->device->dev;
>> -	unsigned int nr_io_queues;
>> +	unsigned int nr_io_queues, nr_req_queues;
>> +	unsigned int default_queues, poll_queues = 0, write_queues = 0;
>>   	int i, ret;
>>   
>>   	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
>> @@ -651,29 +652,38 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>   	 * optimal locality so we don't need more queues than
>>   	 * completion vectors.
>>   	 */
>> -	nr_io_queues = min_t(unsigned int, nr_io_queues,
>> -				ibdev->num_comp_vectors);
>> +	default_queues = nr_io_queues = min_t(unsigned int, nr_io_queues,
>> +					      ibdev->num_comp_vectors);
>>   
>> -	if (opts->nr_write_queues) {
>> -		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
>> -				min(opts->nr_write_queues, nr_io_queues);
>> -		nr_io_queues += ctrl->io_queues[HCTX_TYPE_DEFAULT];
>> -	} else {
>> -		ctrl->io_queues[HCTX_TYPE_DEFAULT] = nr_io_queues;
>> -	}
>> -
>> -	ctrl->io_queues[HCTX_TYPE_READ] = nr_io_queues;
>> -
>> -	if (opts->nr_poll_queues) {
>> -		ctrl->io_queues[HCTX_TYPE_POLL] =
>> -			min(opts->nr_poll_queues, num_online_cpus());
>> -		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
>> -	}
>> +	if (opts->nr_write_queues)
>> +		write_queues = min(opts->nr_write_queues, default_queues);
>> +	if (opts->nr_poll_queues)
>> +		poll_queues = min(opts->nr_poll_queues, num_online_cpus());
>>   
>> +	nr_io_queues += write_queues + poll_queues;
>> +	nr_req_queues = nr_io_queues;
>>   	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
>>   	if (ret)
>>   		return ret;
>>   
>> +	if (nr_req_queues <= nr_io_queues) {
>> +		/* set the queues according to host demand */
>> +		ctrl->io_queues[HCTX_TYPE_READ] = nr_req_queues - poll_queues;
>> +		if (write_queues)
>> +			ctrl->io_queues[HCTX_TYPE_DEFAULT] = write_queues;
>> +		else
>> +			ctrl->io_queues[HCTX_TYPE_DEFAULT] =
>> +					nr_req_queues - poll_queues;
>> +		if (poll_queues)
>> +			ctrl->io_queues[HCTX_TYPE_POLL] = poll_queues;
>> +
>> +	} else {
>> +		/* set the queues according to controller capability */
>> +		ctrl->io_queues[HCTX_TYPE_DEFAULT] = nr_io_queues;
>> +		ctrl->io_queues[HCTX_TYPE_READ] = nr_io_queues;
>> +		ctrl->io_queues[HCTX_TYPE_POLL] = 0;
>> +	}
>> +
>>   	ctrl->ctrl.queue_count = nr_io_queues + 1;
>>   	if (ctrl->ctrl.queue_count < 2)
>>   		return 0;

--------------B1A99BD5828A3C7508E9171F
Content-Type: text/plain; charset="UTF-8"; name="write_poll_queues2.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="write_poll_queues2.patch"

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L252bWUuaCBiL2RyaXZlcnMvbnZtZS9o
b3N0L252bWUuaAppbmRleCA1ZWU3NWI1Li5mOTI0NDUxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9udm1lLmgKKysrIGIvZHJpdmVycy9udm1lL2hvc3QvbnZtZS5oCkBAIC0y
NDcsNiArMjQ3LDkgQEAgc3RydWN0IG52bWVfY3RybCB7CiAKIAlzdHJ1Y3QgcGFnZSAqZGlz
Y2FyZF9wYWdlOwogCXVuc2lnbmVkIGxvbmcgZGlzY2FyZF9wYWdlX2J1c3k7CisKKwl1bnNp
Z25lZCBpbnQgbnJfd3JpdGVfcXVldWVzOworCXVuc2lnbmVkIGludCBucl9wb2xsX3F1ZXVl
czsKIH07CiAKIGVudW0gbnZtZV9pb3BvbGljeSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL252
bWUvaG9zdC9yZG1hLmMgYi9kcml2ZXJzL252bWUvaG9zdC9yZG1hLmMKaW5kZXggNWE0YWQy
NS4uNWU5MGU5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jCisrKyBi
L2RyaXZlcnMvbnZtZS9ob3N0L3JkbWEuYwpAQCAtNjQxLDM5ICs2NDEsNTYgQEAgc3RhdGlj
IGludCBudm1lX3JkbWFfYWxsb2NfaW9fcXVldWVzKHN0cnVjdCBudm1lX3JkbWFfY3RybCAq
Y3RybCkKIHsKIAlzdHJ1Y3QgbnZtZl9jdHJsX29wdGlvbnMgKm9wdHMgPSBjdHJsLT5jdHJs
Lm9wdHM7CiAJc3RydWN0IGliX2RldmljZSAqaWJkZXYgPSBjdHJsLT5kZXZpY2UtPmRldjsK
LQl1bnNpZ25lZCBpbnQgbnJfaW9fcXVldWVzOworCXVuc2lnbmVkIGludCBucl9pb19xdWV1
ZXMsIG5yX3JlcV9xdWV1ZXM7CisJdW5zaWduZWQgaW50IGRlZmF1bHRfcXVldWVzLCBwb2xs
X3F1ZXVlcyA9IDAsIHdyaXRlX3F1ZXVlcyA9IDA7CiAJaW50IGksIHJldDsKIAotCW5yX2lv
X3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9pb19xdWV1ZXMsIG51bV9vbmxpbmVfY3B1cygpKTsK
KwlkZWZhdWx0X3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9pb19xdWV1ZXMsIG51bV9vbmxpbmVf
Y3B1cygpKTsKIAogCS8qCiAJICogd2UgbWFwIHF1ZXVlcyBhY2NvcmRpbmcgdG8gdGhlIGRl
dmljZSBpcnEgdmVjdG9ycyBmb3IKIAkgKiBvcHRpbWFsIGxvY2FsaXR5IHNvIHdlIGRvbid0
IG5lZWQgbW9yZSBxdWV1ZXMgdGhhbgogCSAqIGNvbXBsZXRpb24gdmVjdG9ycy4KIAkgKi8K
LQlucl9pb19xdWV1ZXMgPSBtaW5fdCh1bnNpZ25lZCBpbnQsIG5yX2lvX3F1ZXVlcywKLQkJ
CQlpYmRldi0+bnVtX2NvbXBfdmVjdG9ycyk7CisJZGVmYXVsdF9xdWV1ZXMgPSBtaW5fdCh1
bnNpZ25lZCBpbnQsIGRlZmF1bHRfcXVldWVzLAorCQkJICAgICAgIGliZGV2LT5udW1fY29t
cF92ZWN0b3JzKTsKIAotCWlmIChvcHRzLT5ucl93cml0ZV9xdWV1ZXMpIHsKLQkJY3RybC0+
aW9fcXVldWVzW0hDVFhfVFlQRV9ERUZBVUxUXSA9Ci0JCQkJbWluKG9wdHMtPm5yX3dyaXRl
X3F1ZXVlcywgbnJfaW9fcXVldWVzKTsKLQkJbnJfaW9fcXVldWVzICs9IGN0cmwtPmlvX3F1
ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF07Ci0JfSBlbHNlIHsKLQkJY3RybC0+aW9fcXVldWVz
W0hDVFhfVFlQRV9ERUZBVUxUXSA9IG5yX2lvX3F1ZXVlczsKLQl9Ci0KLQljdHJsLT5pb19x
dWV1ZXNbSENUWF9UWVBFX1JFQURdID0gbnJfaW9fcXVldWVzOwotCi0JaWYgKG9wdHMtPm5y
X3BvbGxfcXVldWVzKSB7Ci0JCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF0gPQot
CQkJbWluKG9wdHMtPm5yX3BvbGxfcXVldWVzLCBudW1fb25saW5lX2NwdXMoKSk7Ci0JCW5y
X2lvX3F1ZXVlcyArPSBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdOwotCX0KKwlp
ZiAob3B0cy0+bnJfd3JpdGVfcXVldWVzKQorCQl3cml0ZV9xdWV1ZXMgPSBtaW4ob3B0cy0+
bnJfd3JpdGVfcXVldWVzLCBkZWZhdWx0X3F1ZXVlcyk7CisJaWYgKG9wdHMtPm5yX3BvbGxf
cXVldWVzKQorCQlwb2xsX3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9wb2xsX3F1ZXVlcywgbnVt
X29ubGluZV9jcHVzKCkpOwogCisJbnJfaW9fcXVldWVzID0gZGVmYXVsdF9xdWV1ZXMgKyB3
cml0ZV9xdWV1ZXMgKyBwb2xsX3F1ZXVlczsKKwlucl9yZXFfcXVldWVzID0gbnJfaW9fcXVl
dWVzOwogCXJldCA9IG52bWVfc2V0X3F1ZXVlX2NvdW50KCZjdHJsLT5jdHJsLCAmbnJfaW9f
cXVldWVzKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJaWYgKG5yX3JlcV9xdWV1
ZXMgPD0gbnJfaW9fcXVldWVzKSB7CisJCS8qIHNldCB0aGUgcXVldWVzIGFjY29yZGluZyB0
byBob3N0IGRlbWFuZCAqLworCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdID0K
KwkJCQlucl9yZXFfcXVldWVzIC0gcG9sbF9xdWV1ZXMgLSB3cml0ZV9xdWV1ZXM7CisJCWlm
ICh3cml0ZV9xdWV1ZXMpIHsKKwkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfREVGQVVM
VF0gPSB3cml0ZV9xdWV1ZXM7CisJCQljdHJsLT5jdHJsLm5yX3dyaXRlX3F1ZXVlcyA9IHdy
aXRlX3F1ZXVlczsKKwkJfSBlbHNlIHsKKwkJCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVf
REVGQVVMVF0gPQorCQkJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdOworCQl9
CisJCWlmIChwb2xsX3F1ZXVlcykgeworCQkJY3RybC0+aW9fcXVldWVzW0hDVFhfVFlQRV9Q
T0xMXSA9IHBvbGxfcXVldWVzOworCQkJY3RybC0+Y3RybC5ucl9wb2xsX3F1ZXVlcyA9IHBv
bGxfcXVldWVzOworCQl9CisJCW5yX2lvX3F1ZXVlcyA9IG5yX3JlcV9xdWV1ZXM7CisJfSBl
bHNlIHsKKwkJLyogc2V0IHRoZSBxdWV1ZXMgYWNjb3JkaW5nIHRvIGNvbnRyb2xsZXIgY2Fw
YWJpbGl0eSAqLworCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdID0gbnJf
aW9fcXVldWVzOworCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdID0gbnJfaW9f
cXVldWVzOworCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdID0gMDsKKwkJY3Ry
bC0+Y3RybC5ucl93cml0ZV9xdWV1ZXMgPSAwOworCQljdHJsLT5jdHJsLm5yX3BvbGxfcXVl
dWVzID0gMDsKKwl9CisKIAljdHJsLT5jdHJsLnF1ZXVlX2NvdW50ID0gbnJfaW9fcXVldWVz
ICsgMTsKIAlpZiAoY3RybC0+Y3RybC5xdWV1ZV9jb3VudCA8IDIpCiAJCXJldHVybiAwOwpA
QCAtNzM5LDcgKzc1Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgYmxrX21xX3RhZ19zZXQgKm52bWVf
cmRtYV9hbGxvY190YWdzZXQoc3RydWN0IG52bWVfY3RybCAqbmN0cmwsCiAJCXNldC0+ZHJp
dmVyX2RhdGEgPSBjdHJsOwogCQlzZXQtPm5yX2h3X3F1ZXVlcyA9IG5jdHJsLT5xdWV1ZV9j
b3VudCAtIDE7CiAJCXNldC0+dGltZW91dCA9IE5WTUVfSU9fVElNRU9VVDsKLQkJc2V0LT5u
cl9tYXBzID0gbmN0cmwtPm9wdHMtPm5yX3BvbGxfcXVldWVzID8gSENUWF9NQVhfVFlQRVMg
OiAyOworCQlzZXQtPm5yX21hcHMgPSBuY3RybC0+bnJfcG9sbF9xdWV1ZXMgPyBIQ1RYX01B
WF9UWVBFUyA6IDI7CiAJfQogCiAJcmV0ID0gYmxrX21xX2FsbG9jX3RhZ19zZXQoc2V0KTsK
QEAgLTE3OTEsOCArMTgwOCw3IEBAIHN0YXRpYyBpbnQgbnZtZV9yZG1hX21hcF9xdWV1ZXMo
c3RydWN0IGJsa19tcV90YWdfc2V0ICpzZXQpCiAJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFV
TFRdLnF1ZXVlX29mZnNldCA9IDA7CiAJc2V0LT5tYXBbSENUWF9UWVBFX0RFRkFVTFRdLm5y
X3F1ZXVlcyA9CiAJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwotCXNl
dC0+bWFwW0hDVFhfVFlQRV9SRUFEXS5ucl9xdWV1ZXMgPSBjdHJsLT5pb19xdWV1ZXNbSENU
WF9UWVBFX1JFQURdOwotCWlmIChjdHJsLT5jdHJsLm9wdHMtPm5yX3dyaXRlX3F1ZXVlcykg
eworCWlmIChjdHJsLT5jdHJsLm5yX3dyaXRlX3F1ZXVlcykgewogCQkvKiBzZXBhcmF0ZSBy
ZWFkL3dyaXRlIHF1ZXVlcyAqLwogCQlzZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0ucXVldWVf
b2Zmc2V0ID0KIAkJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwpAQCAt
MTgwMCwxNyArMTgxNiwxOSBAQCBzdGF0aWMgaW50IG52bWVfcmRtYV9tYXBfcXVldWVzKHN0
cnVjdCBibGtfbXFfdGFnX3NldCAqc2V0KQogCQkvKiBtaXhlZCByZWFkL3dyaXRlIHF1ZXVl
cyAqLwogCQlzZXQtPm1hcFtIQ1RYX1RZUEVfUkVBRF0ucXVldWVfb2Zmc2V0ID0gMDsKIAl9
CisJc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLm5yX3F1ZXVlcyA9IGN0cmwtPmlvX3F1ZXVl
c1tIQ1RYX1RZUEVfUkVBRF07CisKIAlibGtfbXFfcmRtYV9tYXBfcXVldWVzKCZzZXQtPm1h
cFtIQ1RYX1RZUEVfREVGQVVMVF0sCiAJCQljdHJsLT5kZXZpY2UtPmRldiwgMCk7CiAJYmxr
X21xX3JkbWFfbWFwX3F1ZXVlcygmc2V0LT5tYXBbSENUWF9UWVBFX1JFQURdLAogCQkJY3Ry
bC0+ZGV2aWNlLT5kZXYsIDApOwogCi0JaWYgKGN0cmwtPmN0cmwub3B0cy0+bnJfcG9sbF9x
dWV1ZXMpIHsKKwlpZiAoY3RybC0+Y3RybC5ucl9wb2xsX3F1ZXVlcykgewogCQlzZXQtPm1h
cFtIQ1RYX1RZUEVfUE9MTF0ubnJfcXVldWVzID0KIAkJCQljdHJsLT5pb19xdWV1ZXNbSENU
WF9UWVBFX1BPTExdOwogCQlzZXQtPm1hcFtIQ1RYX1RZUEVfUE9MTF0ucXVldWVfb2Zmc2V0
ID0KIAkJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX0RFRkFVTFRdOwotCQlpZiAoY3Ry
bC0+Y3RybC5vcHRzLT5ucl93cml0ZV9xdWV1ZXMpCisJCWlmIChjdHJsLT5jdHJsLm5yX3dy
aXRlX3F1ZXVlcykKIAkJCXNldC0+bWFwW0hDVFhfVFlQRV9QT0xMXS5xdWV1ZV9vZmZzZXQg
Kz0KIAkJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1JFQURdOwogCQlibGtfbXFfbWFw
X3F1ZXVlcygmc2V0LT5tYXBbSENUWF9UWVBFX1BPTExdKTsK
--------------B1A99BD5828A3C7508E9171F
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--------------B1A99BD5828A3C7508E9171F--

