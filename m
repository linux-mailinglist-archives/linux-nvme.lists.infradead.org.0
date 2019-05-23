Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1555B27B80
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 13:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yhAA9cSTxfJ/IoOPMRNpFxYWXwHwrKoEJU+0+ecV9jw=; b=NmnhVqrBYzQ29u4P4kKLlFI3t
	46d22YVcTHoqkAFjDV97ycyUo4Hkx9HbN1d/+UtKalQ1NzF5us+hQlmYpPTM/LUt0H2v0HdLZSCf/
	vjONjuXF1bA0FctgRh/3e49m/kg48ThdHMi7OepMHyoTKMsFneHAiRwhdlgEtxrx4Vg2ye4+c5IHd
	RKyu9g/XQnTEUlZZBxzHz1dxisqXbZkbOhC7Oke19176Cg9jbIihYbuTybTi6CfqVvu0kRZihaJiw
	GCuDmgC1DM7Ndx6mh5zAOnKRIH00MDUFwsHPUdj1mRE0UN9uC03+ahR2myXAOUXfX3drhITql7eU9
	T1JBBa0zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlgH-0000oG-FD; Thu, 23 May 2019 11:14:41 +0000
Received: from mail-eopbgr30068.outbound.protection.outlook.com ([40.107.3.68]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlgB-0000nh-Ed
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 11:14:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ev4NOn85y3F4ZT5OBIcv11cYM72fsbtYdVK9oQ3xuQE=;
 b=MyqntGmuxCTiv2bq3JIxy5/NOIlZiM/f4+2Q4clAzBIhBD0OLapLhRiq+ufyVifJOME3jdhAkU/fWZdFkNrWYZc3TnsHeTEoEWZZbR/ZLuSrvpNc/5jP6vCgl6dIF7VXJAN6UmAU8QDlafGEVA/svdPPQB+oBbJCTi0uXChzFoU=
Received: from HE1PR05CA0290.eurprd05.prod.outlook.com (2603:10a6:7:93::21) by
 AM6PR05MB6423.eurprd05.prod.outlook.com (2603:10a6:20b:bb::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 11:14:29 +0000
Received: from AM5EUR03FT041.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by HE1PR05CA0290.outlook.office365.com
 (2603:10a6:7:93::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Thu, 23 May 2019 11:14:28 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT041.mail.protection.outlook.com (10.152.17.186) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 11:14:28 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 14:14:27
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 14:14:27 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 14:14:26
 +0300
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Nirranjan Kirubaharan <nirranjan@chelsio.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
 <20190523075524.GA15479@chelsio.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <06d347cc-7df6-c2b3-2edf-88a53db3c12d@mellanox.com>
Date: Thu, 23 May 2019 14:14:25 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190523075524.GA15479@chelsio.com>
Content-Type: multipart/mixed; boundary="------------B7A43084B8F34B2F8431E925"
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(376002)(396003)(346002)(2980300002)(199004)(189003)(36756003)(26005)(5024004)(14444005)(84326002)(54906003)(6116002)(336012)(6246003)(64126003)(86362001)(186003)(8936002)(65826007)(81166006)(478600001)(16526019)(3846002)(70586007)(2476003)(31696002)(5660300002)(356004)(476003)(106002)(77096007)(81156014)(31686004)(7736002)(2616005)(16576012)(8676002)(66616009)(70206006)(305945005)(6916009)(33964004)(53546011)(11346002)(76176011)(16586007)(126002)(4326008)(229853002)(316002)(71190400001)(486006)(235185007)(37036004)(58126008)(446003)(2906002)(65956001)(568964002)(65806001)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6423; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87a073fa-54c5-4014-4f28-08d6df6fd26b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(49563074)(7193020);
 SRVR:AM6PR05MB6423; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB6423:
X-Microsoft-Antispam-PRVS: <AM6PR05MB6423F94F8ADFCD4034C0DDDBB6010@AM6PR05MB6423.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 0Au2kN8T41odCAXTiTYX2+64GgVQmrBdGn+jHbrHho9+BbvTZQTz1Ar8LsuZ5YW3Gxe0Hw8GZSYmk6K37TpSWF3f2wqrqDaT226toXz7p/vqkCZrTuWkAQDOfcS1Z4p8p0XUgZGby3dFiLZqSf+i//4of4j/LcK79TF4i+fFsaO9j7p91kOfMfjw1KsSI5mh0jnCLPiH8RfnnS13LSs7z140GEmwEF9pG3epIgjvyMICdUDscsQZYoZRdZVdMsNiUAJsaZtvtjvdB/PbnZO4PQTyXO9AyOwIiMDVlhvmjtTqeKj1dBZGfmD0tFQr82psz54o+xaqRDwFQ2vT2rj6mdpKWjqsyBlZ3VNTEC3KXBWE7HCQQfZ4Lj8jcXY2qfLvC5My6k8zMh5TLjEHUBG0wb9Pa1VT6xJQvxI8j/aM5Zs=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 11:14:28.1353 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 87a073fa-54c5-4014-4f28-08d6df6fd26b
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6423
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_041435_497984_F7AA5A35 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.68 listed in list.dnswl.org]
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

--------------B7A43084B8F34B2F8431E925
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

I see.

probably we need to review again read/write/poll queues patches.

can you try the attached untested patch ?

On 5/23/2019 10:55 AM, Nirranjan Kirubaharan wrote:
> On Thursday, May 05/23/19, 2019 at 10:21:46 +0300, Max Gurtovoy wrote:
>> On 5/23/2019 7:51 AM, Nirranjan Kirubaharan wrote:
>>> Return error -ENOMEM when nvmf target allocates lesser
>>> io queues than the number of io queues requested by nvmf
>>> initiator.
>> why can't we live with lesser queues ?
> In nvme_rdma_alloc_io_queues() ctrl->io_queues[] are already filled
> assuming all the requested no of queues will be allocated by the target.
>
>> I can demand 64K queues and the target might return 4 and it's fine
>> for functionality.
>>
>> where is the NULL that you see ?
> In nvme_rdma_init_request() accessing unallocated queue_idx of
> ctrl->io_queues[] causes NULL deref.
>
> [  703.192172] RIP: 0010:nvme_rdma_init_request+0x31/0x140 [nvme_rdma]
> [  703.192173] Code: 55 31 ed 53 48 8b 47 60 48 89 f3 48 8d 48 08 48 39 cf 0f 84 fb 00 00 00 48 03 28 48 05 f8 02 00 00 be c0 0d 00 00 48 8b 55 20 <4c> 8b 22 48 89 83 28 01 00 00 ba 40 00 00 00 48 8b 3d a9 7b 42 f4
> [  703.192174] RSP: 0018:ffff9c36835bfc38 EFLAGS: 00010282
> [  703.192192] RAX: ffff8eb49c8b92f8 RBX: ffff8eb5a6e50000 RCX: ffff8eb49c8b9008
> [  703.192192] RDX: 0000000000000000 RSI: 0000000000000dc0 RDI: ffff8eb49c8b9008
> [  703.192193] RBP: ffff8eb5ad3c50e0 R08: 00000000119b9400 R09: ffff8eb5831d9520
> [  703.192194] R10: ffffc83e119b9400 R11: ffffc83e119b9800 R12: ffff8eb49c8b9008
> [  703.192194] R13: ffff8eb5831d9480 R14: 0000000000000000 R15: ffff8eb5a6e50000
> [  703.192195] FS:  00007fd6613bb780(0000) GS:ffff8eb5afbc0000(0000) knlGS:0000000000000000
> [  703.192196] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  703.192197] CR2: 0000000000000000 CR3: 00000004646a4005 CR4: 00000000003606e0
> [  703.192197] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  703.192198] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  703.192199] Call Trace:
> [  703.192206]  blk_mq_alloc_rqs+0x1f0/0x290
> [  703.192207]  __blk_mq_alloc_rq_map+0x46/0x80
> [  703.192209]  blk_mq_map_swqueue+0x1dd/0x2e0
> [  703.192210]  blk_mq_init_allocated_queue+0x3c8/0x430
> [  703.192211]  blk_mq_init_queue+0x35/0x60
> [  703.192213]  ? nvme_rdma_alloc_tagset+0x1bb/0x330 [nvme_rdma]
> [  703.192214]  nvme_rdma_setup_ctrl+0x420/0x7b0 [nvme_rdma]
> [  703.192215]  nvme_rdma_create_ctrl+0x29a/0x3d8 [nvme_rdma]
> [  703.192218]  nvmf_dev_write+0xa18/0xbff [nvme_fabrics]
> [  703.192222]  vfs_write+0xad/0x1b0
> [  703.192224]  ksys_write+0x5a/0xd0
> [  703.192228]  do_syscall_64+0x5b/0x180
> [  703.192231]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [  703.192232] RIP: 0033:0x7fd660cddc60
> [  703.192233] Code: 73 01 c3 48 8b 0d 30 62 2d 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 3d c3 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 ee cb 01 00 48 89 04 24
> [  703.192234] RSP: 002b:00007ffe8f58d928 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
> [  703.192235] RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007fd660cddc60
> [  703.192236] RDX: 000000000000004d RSI: 00007ffe8f58e9a0 RDI: 0000000000000003
> [  703.192236] RBP: 00007ffe8f58e9a0 R08: 00007ffe8f58e9ed R09: 00007fd660c3b0fd
> [  703.192237] R10: 00000000ffffffff R11: 0000000000000246 R12: 000000000000004d
> [  703.192237] R13: 000000000151a500 R14: 000000000151a600 R15: 00007ffe8f58e9e0
>
>>
>>> Signed-off-by: Nirranjan Kirubaharan <nirranjan@chelsio.com>
>>> Reviewed-by: Potnuri Bharat Teja <bharat@chelsio.com>
>>> ---
>>>   drivers/nvme/host/rdma.c | 9 ++++++++-
>>>   1 file changed, 8 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
>>> index f383146e7d0f..187007d136cc 100644
>>> --- a/drivers/nvme/host/rdma.c
>>> +++ b/drivers/nvme/host/rdma.c
>>> @@ -641,7 +641,7 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>>   {
>>>   	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>>>   	struct ib_device *ibdev = ctrl->device->dev;
>>> -	unsigned int nr_io_queues;
>>> +	unsigned int nr_io_queues, nr_req_queues;
>>>   	int i, ret;
>>>   	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
>>> @@ -670,9 +670,16 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>>>   		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
>>>   	}
>>> +	nr_req_queues = nr_io_queues;
>>>   	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
>>>   	if (ret)
>>>   		return ret;
>>> +	if (nr_io_queues < nr_req_queues) {
>>> +		dev_err(ctrl->ctrl.device,
>>> +			"alloc queues %u < req no of queues %u",
>>> +			nr_io_queues, nr_req_queues);
>>> +		return -ENOMEM;
>>> +	}
>>>   	ctrl->ctrl.queue_count = nr_io_queues + 1;
>>>   	if (ctrl->ctrl.queue_count < 2)

--------------B7A43084B8F34B2F8431E925
Content-Type: text/plain; charset="UTF-8"; name="write_poll_queues.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="write_poll_queues.patch"

ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9ob3N0L3JkbWEuYyBiL2RyaXZlcnMvbnZtZS9o
b3N0L3JkbWEuYwppbmRleCA1YTRhZDI1Li5kMGNjOTgxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L252bWUvaG9zdC9yZG1hLmMKKysrIGIvZHJpdmVycy9udm1lL2hvc3QvcmRtYS5jCkBAIC02
NDEsNyArNjQxLDggQEAgc3RhdGljIGludCBudm1lX3JkbWFfYWxsb2NfaW9fcXVldWVzKHN0
cnVjdCBudm1lX3JkbWFfY3RybCAqY3RybCkKIHsKIAlzdHJ1Y3QgbnZtZl9jdHJsX29wdGlv
bnMgKm9wdHMgPSBjdHJsLT5jdHJsLm9wdHM7CiAJc3RydWN0IGliX2RldmljZSAqaWJkZXYg
PSBjdHJsLT5kZXZpY2UtPmRldjsKLQl1bnNpZ25lZCBpbnQgbnJfaW9fcXVldWVzOworCXVu
c2lnbmVkIGludCBucl9pb19xdWV1ZXMsIG5yX3JlcV9xdWV1ZXM7CisJdW5zaWduZWQgaW50
IGRlZmF1bHRfcXVldWVzLCBwb2xsX3F1ZXVlcyA9IDAsIHdyaXRlX3F1ZXVlcyA9IDA7CiAJ
aW50IGksIHJldDsKIAogCW5yX2lvX3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9pb19xdWV1ZXMs
IG51bV9vbmxpbmVfY3B1cygpKTsKQEAgLTY1MSwyOSArNjUyLDM4IEBAIHN0YXRpYyBpbnQg
bnZtZV9yZG1hX2FsbG9jX2lvX3F1ZXVlcyhzdHJ1Y3QgbnZtZV9yZG1hX2N0cmwgKmN0cmwp
CiAJICogb3B0aW1hbCBsb2NhbGl0eSBzbyB3ZSBkb24ndCBuZWVkIG1vcmUgcXVldWVzIHRo
YW4KIAkgKiBjb21wbGV0aW9uIHZlY3RvcnMuCiAJICovCi0JbnJfaW9fcXVldWVzID0gbWlu
X3QodW5zaWduZWQgaW50LCBucl9pb19xdWV1ZXMsCi0JCQkJaWJkZXYtPm51bV9jb21wX3Zl
Y3RvcnMpOworCWRlZmF1bHRfcXVldWVzID0gbnJfaW9fcXVldWVzID0gbWluX3QodW5zaWdu
ZWQgaW50LCBucl9pb19xdWV1ZXMsCisJCQkJCSAgICAgIGliZGV2LT5udW1fY29tcF92ZWN0
b3JzKTsKIAotCWlmIChvcHRzLT5ucl93cml0ZV9xdWV1ZXMpIHsKLQkJY3RybC0+aW9fcXVl
dWVzW0hDVFhfVFlQRV9ERUZBVUxUXSA9Ci0JCQkJbWluKG9wdHMtPm5yX3dyaXRlX3F1ZXVl
cywgbnJfaW9fcXVldWVzKTsKLQkJbnJfaW9fcXVldWVzICs9IGN0cmwtPmlvX3F1ZXVlc1tI
Q1RYX1RZUEVfREVGQVVMVF07Ci0JfSBlbHNlIHsKLQkJY3RybC0+aW9fcXVldWVzW0hDVFhf
VFlQRV9ERUZBVUxUXSA9IG5yX2lvX3F1ZXVlczsKLQl9Ci0KLQljdHJsLT5pb19xdWV1ZXNb
SENUWF9UWVBFX1JFQURdID0gbnJfaW9fcXVldWVzOwotCi0JaWYgKG9wdHMtPm5yX3BvbGxf
cXVldWVzKSB7Ci0JCWN0cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUE9MTF0gPQotCQkJbWlu
KG9wdHMtPm5yX3BvbGxfcXVldWVzLCBudW1fb25saW5lX2NwdXMoKSk7Ci0JCW5yX2lvX3F1
ZXVlcyArPSBjdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBFX1BPTExdOwotCX0KKwlpZiAob3B0
cy0+bnJfd3JpdGVfcXVldWVzKQorCQl3cml0ZV9xdWV1ZXMgPSBtaW4ob3B0cy0+bnJfd3Jp
dGVfcXVldWVzLCBkZWZhdWx0X3F1ZXVlcyk7CisJaWYgKG9wdHMtPm5yX3BvbGxfcXVldWVz
KQorCQlwb2xsX3F1ZXVlcyA9IG1pbihvcHRzLT5ucl9wb2xsX3F1ZXVlcywgbnVtX29ubGlu
ZV9jcHVzKCkpOwogCisJbnJfaW9fcXVldWVzICs9IHdyaXRlX3F1ZXVlcyArIHBvbGxfcXVl
dWVzOworCW5yX3JlcV9xdWV1ZXMgPSBucl9pb19xdWV1ZXM7CiAJcmV0ID0gbnZtZV9zZXRf
cXVldWVfY291bnQoJmN0cmwtPmN0cmwsICZucl9pb19xdWV1ZXMpOwogCWlmIChyZXQpCiAJ
CXJldHVybiByZXQ7CiAKKwlpZiAobnJfcmVxX3F1ZXVlcyA8PSBucl9pb19xdWV1ZXMpIHsK
KwkJLyogc2V0IHRoZSBxdWV1ZXMgYWNjb3JkaW5nIHRvIGhvc3QgZGVtYW5kICovCisJCWN0
cmwtPmlvX3F1ZXVlc1tIQ1RYX1RZUEVfUkVBRF0gPSBucl9yZXFfcXVldWVzIC0gcG9sbF9x
dWV1ZXM7CisJCWlmICh3cml0ZV9xdWV1ZXMpCisJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9U
WVBFX0RFRkFVTFRdID0gd3JpdGVfcXVldWVzOworCQllbHNlCisJCQljdHJsLT5pb19xdWV1
ZXNbSENUWF9UWVBFX0RFRkFVTFRdID0KKwkJCQkJbnJfcmVxX3F1ZXVlcyAtIHBvbGxfcXVl
dWVzOworCQlpZiAocG9sbF9xdWV1ZXMpCisJCQljdHJsLT5pb19xdWV1ZXNbSENUWF9UWVBF
X1BPTExdID0gcG9sbF9xdWV1ZXM7CisKKwl9IGVsc2UgeworCQkvKiBzZXQgdGhlIHF1ZXVl
cyBhY2NvcmRpbmcgdG8gY29udHJvbGxlciBjYXBhYmlsaXR5ICovCisJCWN0cmwtPmlvX3F1
ZXVlc1tIQ1RYX1RZUEVfREVGQVVMVF0gPSBucl9pb19xdWV1ZXM7CisJCWN0cmwtPmlvX3F1
ZXVlc1tIQ1RYX1RZUEVfUkVBRF0gPSBucl9pb19xdWV1ZXM7CisJCWN0cmwtPmlvX3F1ZXVl
c1tIQ1RYX1RZUEVfUE9MTF0gPSAwOworCX0KKwogCWN0cmwtPmN0cmwucXVldWVfY291bnQg
PSBucl9pb19xdWV1ZXMgKyAxOwogCWlmIChjdHJsLT5jdHJsLnF1ZXVlX2NvdW50IDwgMikK
IAkJcmV0dXJuIDA7Cg==
--------------B7A43084B8F34B2F8431E925
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--------------B7A43084B8F34B2F8431E925--

