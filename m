Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0963234AE0
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 16:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBFwA3ZIhm7eQlDJqyj/4DZUfLdri3uZ1czaVbL6CqE=; b=Bu5R0ulMbwVwVp
	EmDFFIYRtQZ9sg6n9qs352dxP2vrp1lHVt4kXUdP6ArsZ/lLdQ7WdkdQkp8n0isSS9l3CagSLmf86
	aqv6YwM9IWkTwhONrT4GOiKej4DKg/JFJB2iHibYsq+FRZ2IoCa8IhFYQcKAgejt9uAdxXejSFpoM
	fDkmo83JN/MdBUa2W26mn9s/jLkmBRNwHzkfxwi3dTenRs75Mgoxkt/FkioS7a4JclyaqWPcfnzhY
	/JDO3bhO2kvWMQWDhIWlB23+5C3xy5yXkiVowr85HX+lS3aiqbrdVrCOIGUUswkcPHLa1X857Zch9
	zhpYOlEWV5gDDnQtyQPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAjQ-0000eU-WD; Tue, 04 Jun 2019 14:48:09 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAir-0008BV-Kt
 for linux-nvme@bombadil.infradead.org; Tue, 04 Jun 2019 14:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:References:CC:To:From:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aReve5bk6gbLX+ILrbFbjQD7veN61kTR4Q+NFbzpD7w=; b=Or/HDXEShtZguk2L77T1JpsMdo
 4KvcH9hZhJGb4jbwfBYGPt9Xl8OeVHbWbLtyNNt11zA9ph9r8+u1dV7a49sm3XYuij1ca3zMfWmT8
 Tg0rzCm4NVg2jfrYPsr9LUxI9K7tjAvb3da2cMISnGe41Witqng4KMvWwsjLF/t5orSsakMjN8/2y
 ZVHVjI3GLXPCl/n/l6OcZkimAHTsVeh050M9IIXpabueg9MqoINe5jWQUxt1ObDc2tzFlPzz/pdZy
 PeoxagG+EeAhF0F/6q1IxigfafFyWy8DFqtMjUQKrOqK1wVpoLfTuT3XtHpixbO/OTs8Y1C7Ivjby
 kk9GauOA==;
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Zf-0005r7-9C
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 13:34:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aReve5bk6gbLX+ILrbFbjQD7veN61kTR4Q+NFbzpD7w=;
 b=BX66tnsQm7aRFJ6PtKcqvmXYDHPiX3CXsEeWLeI6xJqDX8D2Tj+ucsuCcopafQifi0KMQngnOCZy3qna7Q0Ae/c9BrdAYpSeZn/kHidzCUHRoLWHHW+jeuTvKnXWRfe4A9MSQHWulNM5KnKvNPFqdBOr80GRNLagpLTutnuVGmQ=
Received: from AM0PR05CA0031.eurprd05.prod.outlook.com (2603:10a6:208:55::44)
 by AM5PR0502MB3011.eurprd05.prod.outlook.com (2603:10a6:203:9f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.22; Tue, 4 Jun
 2019 13:33:55 +0000
Received: from AM5EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by AM0PR05CA0031.outlook.office365.com
 (2603:10a6:208:55::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1943.16 via Frontend
 Transport; Tue, 4 Jun 2019 13:33:55 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT064.mail.protection.outlook.com (10.152.17.53) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1943.19 via Frontend Transport; Tue, 4 Jun 2019 13:33:54 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 4 Jun 2019 16:33:53
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 4 Jun 2019 16:33:53 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 4 Jun 2019 16:33:08
 +0300
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
From: Max Gurtovoy <maxg@mellanox.com>
To: "Harris, James R" <james.r.harris@intel.com>, Sagi Grimberg
 <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
Message-ID: <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
Date: Tue, 4 Jun 2019 16:33:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
Content-Type: multipart/mixed; boundary="------------17651455FD50FFD373AA2C2A"
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(346002)(39860400002)(2980300002)(199004)(189003)(86362001)(16526019)(58126008)(568964002)(316002)(235185007)(336012)(31696002)(70586007)(2870700001)(70206006)(53546011)(31686004)(37036004)(229853002)(14444005)(356004)(16576012)(3846002)(508600001)(26005)(65956001)(5024004)(2501003)(65806001)(966005)(66616009)(7736002)(305945005)(77096007)(186003)(65826007)(64126003)(5660300002)(6116002)(81156014)(110136005)(126002)(2616005)(446003)(8936002)(81166006)(486006)(45080400002)(2906002)(33964004)(76176011)(54906003)(106002)(71190400001)(84326002)(4326008)(6246003)(6306002)(8676002)(36756003)(2476003)(11346002)(476003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM5PR0502MB3011; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca5d5efb-eed5-480b-b06e-08d6e8f14a51
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:AM5PR0502MB3011; 
X-MS-TrafficTypeDiagnostic: AM5PR0502MB3011:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <AM5PR0502MB301162BDA67D691F7A534D19B6150@AM5PR0502MB3011.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0058ABBBC7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 28AdaZ4/EC7YpdjvvfV//IvfDJn7+pBu5hFsSybde5EH7WsFUnJAM4+/r3VeB/5d7XIGw3yiUuzI6zp2XKBHoORAihYpCSxpfXxh7QhjCsj/mbyiSlOWRJvRzEhPTkW4vI9/3CT688CwOdqORtpCB55yrOMMlyxbFQ4H3lLIKiRJ15rMrmMDpEYKO3ccO+ViIqKND/aPg5EtAp5abG90klXOq48M4zVz4NaG+hBhIga4tf/QnnhRI2MOtV6zhtIz47VqthINTSsOwGS7YP7lWrC/pJzIZhSLEBRfSLA9uRVCauHSjDnHdM3JsH0csq8tavpGz559R7l43ubZLdyuSi86C5RogKeiL1kxGt3fhteRiudjdDzsfOqpTQsvG+ummtg3I47aVnpCGFkzwrNcnRD548UMpMq9bq/LqGRh7Qs=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2019 13:33:54.7741 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5d5efb-eed5-480b-b06e-08d6e8f14a51
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0502MB3011
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093359_449162_9ADB885B 
X-CRM114-Status: GOOD (  28.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--------------17651455FD50FFD373AA2C2A
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

James,

can you test the attached patch (without the revert) ?

-Max.

On 6/4/2019 2:11 PM, Max Gurtovoy wrote:
> Hi Sagi/Christoph,
>
> please don't revert this commit yet on the branch. I'm sending a fix 
> to it in 1 hour for James approval.
>
> -Max.
>
> On 6/4/2019 2:26 AM, Harris, James R wrote:
>>
>> ﻿On 6/3/19, 4:14 PM, "Sagi Grimberg" <sagi@grimberg.me> wrote:
>>
>>           > This commit caused a kernel panic when disconnecting from an
>>      > inaccessible controller.
>>      >
>>      > --
>>      > nvme nvme0: Removing ctrl: NQN "testnqn1"
>>      > nvme_rdma: nvme_rdma_exit_request: hctx 0 queue_idx 1
>>      > BUG: unable to handle kernel paging request at 0000000080000228
>>      > PGD 0 P4D 0
>>      > Oops: 0000 [#1] SMP PTI
>>      > ...
>>      > Call Trace:
>>      >   blk_mq_exit_hctx+0x5c/0xf0
>>      >   blk_mq_exit_queue+0xd4/0x100
>>      >   blk_cleanup_queue+0x9a/0xc0
>>      >   nvme_rdma_destroy_io_queues+0x52/0x60 [nvme_rdma]
>>      >   nvme_rdma_shutdown_ctrl+0x3e/0x80 [nvme_rdma]
>>      >   nvme_do_delete_ctrl+0x53/0x80 [nvme_core]
>>      >   nvme_sysfs_delete+0x45/0x60 [nvme_core]
>>      >   kernfs_fop_write+0x105/0x180
>>      >   vfs_write+0xad/0x1a0
>>      >   ksys_write+0x5a/0xd0
>>      >   do_syscall_64+0x55/0x110
>>      >   entry_SYSCALL_64_after_hwframe+0x44/0xa9
>>      > RIP: 0033:0x7fa215417154
>>      > --
>>      >
>>           Should add:
>>      Reported-by: Harris, James R <james.r.harris@intel.com>
>>
>> Thanks Sagi.  I can confirm that reverting this patch eliminated the 
>> kernel panic on my system.
>>           > Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
>>
>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> https://eur03.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-nvme&amp;data=02%7C01%7Cmaxg%40mellanox.com%7Cefd64e8278674d90875208d6e8dd7d41%7Ca652971c7d2e4d9ba6a4d149256f461b%7C0%7C0%7C636952435329842439&amp;sdata=aqbBsIOPBLK7nGhvgLAPB%2FiQoR0QzEie%2FWPpL5fE%2BYY%3D&amp;reserved=0 
>

--------------17651455FD50FFD373AA2C2A
Content-Type: text/plain; charset="UTF-8";
	name="0001-FIX-kernel-crash.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="0001-FIX-kernel-crash.patch"

RnJvbSBiZmVkZDliODdhOWNjMDkzNTM2ZWMyMWE1YzlhOTQzMzYyZjBmNGMyIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBNYXggR3VydG92b3kgPG1heGdAbWVsbGFub3guY29t
PgpEYXRlOiBUdWUsIDQgSnVuIDIwMTkgMTE6MjQ6NDcgKzAwMDAKU3ViamVjdDogW1BBVENI
IDEvMV0gRklYIGtlcm5lbCBjcmFzaAoKU2lnbmVkLW9mZi1ieTogTWF4IEd1cnRvdm95IDxt
YXhnQG1lbGxhbm94LmNvbT4KLS0tCiBkcml2ZXJzL252bWUvaG9zdC9yZG1hLmMgfCAxMjgg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCA5MiBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL252bWUvaG9zdC9yZG1hLmMgYi9kcml2ZXJzL252bWUvaG9zdC9yZG1h
LmMKaW5kZXggZjM4MzE0Ni4uOTI2MTZiMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9udm1lL2hv
c3QvcmRtYS5jCisrKyBiL2RyaXZlcnMvbnZtZS9ob3N0L3JkbWEuYwpAQCAtMTY3LDI4ICsx
NjcsNjMgQEAgc3RhdGljIGlubGluZSBzaXplX3QgbnZtZV9yZG1hX2lubGluZV9kYXRhX3Np
emUoc3RydWN0IG52bWVfcmRtYV9xdWV1ZSAqcXVldWUpCiAJcmV0dXJuIHF1ZXVlLT5jbW5k
X2NhcHN1bGVfbGVuIC0gc2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpOwogfQogCi1zdGF0
aWMgdm9pZCBudm1lX3JkbWFfZnJlZV9xZShzdHJ1Y3QgaWJfZGV2aWNlICppYmRldiwgc3Ry
dWN0IG52bWVfcmRtYV9xZSAqcWUsCi0JCXNpemVfdCBjYXBzdWxlX3NpemUsIGVudW0gZG1h
X2RhdGFfZGlyZWN0aW9uIGRpcikKK3N0YXRpYyB2b2lkIG52bWVfcmRtYV91bm1hcF9xZShz
dHJ1Y3QgaWJfZGV2aWNlICppYmRldiwgc3RydWN0IG52bWVfcmRtYV9xZSAqcWUsCisJCQkg
ICAgICAgc2l6ZV90IGNhcHN1bGVfc2l6ZSwgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGly
KQogewogCWliX2RtYV91bm1hcF9zaW5nbGUoaWJkZXYsIHFlLT5kbWEsIGNhcHN1bGVfc2l6
ZSwgZGlyKTsKK30KKworc3RhdGljIGludCBudm1lX3JkbWFfbWFwX3FlKHN0cnVjdCBpYl9k
ZXZpY2UgKmliZGV2LCBzdHJ1Y3QgbnZtZV9yZG1hX3FlICpxZSwKKwkJCSAgICBzaXplX3Qg
Y2Fwc3VsZV9zaXplLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCit7CisJcWUtPmRt
YSA9IGliX2RtYV9tYXBfc2luZ2xlKGliZGV2LCBxZS0+ZGF0YSwgY2Fwc3VsZV9zaXplLCBk
aXIpOworCXJldHVybiBpYl9kbWFfbWFwcGluZ19lcnJvcihpYmRldiwgcWUtPmRtYSk7Cit9
CisKK3N0YXRpYyB2b2lkIG52bWVfcmRtYV9mcmVlX3FlKHN0cnVjdCBudm1lX3JkbWFfcWUg
KnFlKQorewogCWtmcmVlKHFlLT5kYXRhKTsKIH0KIAotc3RhdGljIGludCBudm1lX3JkbWFf
YWxsb2NfcWUoc3RydWN0IGliX2RldmljZSAqaWJkZXYsIHN0cnVjdCBudm1lX3JkbWFfcWUg
KnFlLAotCQlzaXplX3QgY2Fwc3VsZV9zaXplLCBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBk
aXIpCitzdGF0aWMgaW50IG52bWVfcmRtYV9hbGxvY19xZShzdHJ1Y3QgbnZtZV9yZG1hX3Fl
ICpxZSwgc2l6ZV90IGNhcHN1bGVfc2l6ZSkKIHsKIAlxZS0+ZGF0YSA9IGt6YWxsb2MoY2Fw
c3VsZV9zaXplLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXFlLT5kYXRhKQogCQlyZXR1cm4gLUVO
T01FTTsKIAotCXFlLT5kbWEgPSBpYl9kbWFfbWFwX3NpbmdsZShpYmRldiwgcWUtPmRhdGEs
IGNhcHN1bGVfc2l6ZSwgZGlyKTsKLQlpZiAoaWJfZG1hX21hcHBpbmdfZXJyb3IoaWJkZXYs
IHFlLT5kbWEpKSB7Ci0JCWtmcmVlKHFlLT5kYXRhKTsKLQkJcWUtPmRhdGEgPSBOVUxMOwot
CQlyZXR1cm4gLUVOT01FTTsKLQl9CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIG52
bWVfcmRtYV9mcmVlX21hcHBlZF9xZShzdHJ1Y3QgaWJfZGV2aWNlICppYmRldiwKKwkJCQkg
ICAgIHN0cnVjdCBudm1lX3JkbWFfcWUgKnFlLAorCQkJCSAgICAgc2l6ZV90IGNhcHN1bGVf
c2l6ZSwKKwkJCQkgICAgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcikKK3sKKwludm1l
X3JkbWFfdW5tYXBfcWUoaWJkZXYsIHFlLCBjYXBzdWxlX3NpemUsIGRpcik7CisJbnZtZV9y
ZG1hX2ZyZWVfcWUocWUpOworfQorCitzdGF0aWMgaW50IG52bWVfcmRtYV9hbGxvY19tYXBw
ZWRfcWUoc3RydWN0IGliX2RldmljZSAqaWJkZXYsCisJCQkJICAgICBzdHJ1Y3QgbnZtZV9y
ZG1hX3FlICpxZSwKKwkJCQkgICAgIHNpemVfdCBjYXBzdWxlX3NpemUsCisJCQkJICAgICBl
bnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXIpCit7CisJaW50IHJldDsKKworCXJldCA9IG52
bWVfcmRtYV9hbGxvY19xZShxZSwgY2Fwc3VsZV9zaXplKTsKKwlpZiAocmV0KQorCQlyZXR1
cm4gcmV0OworCisJcmV0ID0gbnZtZV9yZG1hX21hcF9xZShpYmRldiwgcWUsIGNhcHN1bGVf
c2l6ZSwgZGlyKTsKKwlpZiAocmV0KQorCQlnb3RvIGZyZWVfcWU7CiAKIAlyZXR1cm4gMDsK
KworZnJlZV9xZToKKwludm1lX3JkbWFfZnJlZV9xZShxZSk7CisKKwlyZXR1cm4gcmV0Owog
fQogCiBzdGF0aWMgdm9pZCBudm1lX3JkbWFfZnJlZV9yaW5nKHN0cnVjdCBpYl9kZXZpY2Ug
KmliZGV2LApAQCAtMTk4LDcgKzIzMyw3IEBAIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9mcmVl
X3Jpbmcoc3RydWN0IGliX2RldmljZSAqaWJkZXYsCiAJaW50IGk7CiAKIAlmb3IgKGkgPSAw
OyBpIDwgaWJfcXVldWVfc2l6ZTsgaSsrKQotCQludm1lX3JkbWFfZnJlZV9xZShpYmRldiwg
JnJpbmdbaV0sIGNhcHN1bGVfc2l6ZSwgZGlyKTsKKwkJbnZtZV9yZG1hX2ZyZWVfbWFwcGVk
X3FlKGliZGV2LCAmcmluZ1tpXSwgY2Fwc3VsZV9zaXplLCBkaXIpOwogCWtmcmVlKHJpbmcp
OwogfQogCkBAIC0yMTQsNyArMjQ5LDggQEAgc3RhdGljIHN0cnVjdCBudm1lX3JkbWFfcWUg
Km52bWVfcmRtYV9hbGxvY19yaW5nKHN0cnVjdCBpYl9kZXZpY2UgKmliZGV2LAogCQlyZXR1
cm4gTlVMTDsKIAogCWZvciAoaSA9IDA7IGkgPCBpYl9xdWV1ZV9zaXplOyBpKyspIHsKLQkJ
aWYgKG52bWVfcmRtYV9hbGxvY19xZShpYmRldiwgJnJpbmdbaV0sIGNhcHN1bGVfc2l6ZSwg
ZGlyKSkKKwkJaWYgKG52bWVfcmRtYV9hbGxvY19tYXBwZWRfcWUoaWJkZXYsICZyaW5nW2ld
LCBjYXBzdWxlX3NpemUsCisJCQkJCSAgICAgIGRpcikpCiAJCQlnb3RvIG91dF9mcmVlX3Jp
bmc7CiAJfQogCkBAIC0yNzQsMTQgKzMxMCw5IEBAIHN0YXRpYyBpbnQgbnZtZV9yZG1hX2Ny
ZWF0ZV9xcChzdHJ1Y3QgbnZtZV9yZG1hX3F1ZXVlICpxdWV1ZSwgY29uc3QgaW50IGZhY3Rv
cikKIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9leGl0X3JlcXVlc3Qoc3RydWN0IGJsa19tcV90
YWdfc2V0ICpzZXQsCiAJCXN0cnVjdCByZXF1ZXN0ICpycSwgdW5zaWduZWQgaW50IGhjdHhf
aWR4KQogewotCXN0cnVjdCBudm1lX3JkbWFfY3RybCAqY3RybCA9IHNldC0+ZHJpdmVyX2Rh
dGE7CiAJc3RydWN0IG52bWVfcmRtYV9yZXF1ZXN0ICpyZXEgPSBibGtfbXFfcnFfdG9fcGR1
KHJxKTsKLQlpbnQgcXVldWVfaWR4ID0gKHNldCA9PSAmY3RybC0+dGFnX3NldCkgPyBoY3R4
X2lkeCArIDEgOiAwOwotCXN0cnVjdCBudm1lX3JkbWFfcXVldWUgKnF1ZXVlID0gJmN0cmwt
PnF1ZXVlc1txdWV1ZV9pZHhdOwotCXN0cnVjdCBudm1lX3JkbWFfZGV2aWNlICpkZXYgPSBx
dWV1ZS0+ZGV2aWNlOwogCi0JbnZtZV9yZG1hX2ZyZWVfcWUoZGV2LT5kZXYsICZyZXEtPnNx
ZSwgc2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpLAotCQkJRE1BX1RPX0RFVklDRSk7CisJ
bnZtZV9yZG1hX2ZyZWVfcWUoJnJlcS0+c3FlKTsKIH0KIAogc3RhdGljIGludCBudm1lX3Jk
bWFfaW5pdF9yZXF1ZXN0KHN0cnVjdCBibGtfbXFfdGFnX3NldCAqc2V0LApAQCAtMjkyLDEz
ICszMjMsMTAgQEAgc3RhdGljIGludCBudm1lX3JkbWFfaW5pdF9yZXF1ZXN0KHN0cnVjdCBi
bGtfbXFfdGFnX3NldCAqc2V0LAogCXN0cnVjdCBudm1lX3JkbWFfcmVxdWVzdCAqcmVxID0g
YmxrX21xX3JxX3RvX3BkdShycSk7CiAJaW50IHF1ZXVlX2lkeCA9IChzZXQgPT0gJmN0cmwt
PnRhZ19zZXQpID8gaGN0eF9pZHggKyAxIDogMDsKIAlzdHJ1Y3QgbnZtZV9yZG1hX3F1ZXVl
ICpxdWV1ZSA9ICZjdHJsLT5xdWV1ZXNbcXVldWVfaWR4XTsKLQlzdHJ1Y3QgbnZtZV9yZG1h
X2RldmljZSAqZGV2ID0gcXVldWUtPmRldmljZTsKLQlzdHJ1Y3QgaWJfZGV2aWNlICppYmRl
diA9IGRldi0+ZGV2OwogCWludCByZXQ7CiAKIAludm1lX3JlcShycSktPmN0cmwgPSAmY3Ry
bC0+Y3RybDsKLQlyZXQgPSBudm1lX3JkbWFfYWxsb2NfcWUoaWJkZXYsICZyZXEtPnNxZSwg
c2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpLAotCQkJRE1BX1RPX0RFVklDRSk7CisJcmV0
ID0gbnZtZV9yZG1hX2FsbG9jX3FlKCZyZXEtPnNxZSwgc2l6ZW9mKHN0cnVjdCBudm1lX2Nv
bW1hbmQpKTsKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCkBAIC03NDgsOCArNzc2LDEw
IEBAIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9kZXN0cm95X2FkbWluX3F1ZXVlKHN0cnVjdCBu
dm1lX3JkbWFfY3RybCAqY3RybCwKIAkJYmxrX21xX2ZyZWVfdGFnX3NldChjdHJsLT5jdHJs
LmFkbWluX3RhZ3NldCk7CiAJfQogCWlmIChjdHJsLT5hc3luY19ldmVudF9zcWUuZGF0YSkg
ewotCQludm1lX3JkbWFfZnJlZV9xZShjdHJsLT5kZXZpY2UtPmRldiwgJmN0cmwtPmFzeW5j
X2V2ZW50X3NxZSwKLQkJCQlzaXplb2Yoc3RydWN0IG52bWVfY29tbWFuZCksIERNQV9UT19E
RVZJQ0UpOworCQludm1lX3JkbWFfZnJlZV9tYXBwZWRfcWUoY3RybC0+cXVldWVzWzBdLmRl
dmljZS0+ZGV2LAorCQkJCQkgJmN0cmwtPmFzeW5jX2V2ZW50X3NxZSwKKwkJCQkJIHNpemVv
ZihzdHJ1Y3QgbnZtZV9jb21tYW5kKSwKKwkJCQkJIERNQV9UT19ERVZJQ0UpOwogCQljdHJs
LT5hc3luY19ldmVudF9zcWUuZGF0YSA9IE5VTEw7CiAJfQogCW52bWVfcmRtYV9mcmVlX3F1
ZXVlKCZjdHJsLT5xdWV1ZXNbMF0pOwpAQCAtNzY5LDggKzc5OSwxMCBAQCBzdGF0aWMgaW50
IG52bWVfcmRtYV9jb25maWd1cmVfYWRtaW5fcXVldWUoc3RydWN0IG52bWVfcmRtYV9jdHJs
ICpjdHJsLAogCiAJY3RybC0+bWF4X2ZyX3BhZ2VzID0gbnZtZV9yZG1hX2dldF9tYXhfZnJf
cGFnZXMoY3RybC0+ZGV2aWNlLT5kZXYpOwogCi0JZXJyb3IgPSBudm1lX3JkbWFfYWxsb2Nf
cWUoY3RybC0+ZGV2aWNlLT5kZXYsICZjdHJsLT5hc3luY19ldmVudF9zcWUsCi0JCQlzaXpl
b2Yoc3RydWN0IG52bWVfY29tbWFuZCksIERNQV9UT19ERVZJQ0UpOworCWVycm9yID0gbnZt
ZV9yZG1hX2FsbG9jX21hcHBlZF9xZShjdHJsLT5kZXZpY2UtPmRldiwKKwkJCQkJICAmY3Ry
bC0+YXN5bmNfZXZlbnRfc3FlLAorCQkJCQkgIHNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5k
KSwKKwkJCQkJICBETUFfVE9fREVWSUNFKTsKIAlpZiAoZXJyb3IpCiAJCWdvdG8gb3V0X2Zy
ZWVfcXVldWU7CiAKQEAgLTgyNSw4ICs4NTcsMTAgQEAgc3RhdGljIGludCBudm1lX3JkbWFf
Y29uZmlndXJlX2FkbWluX3F1ZXVlKHN0cnVjdCBudm1lX3JkbWFfY3RybCAqY3RybCwKIAlp
ZiAobmV3KQogCQlibGtfbXFfZnJlZV90YWdfc2V0KGN0cmwtPmN0cmwuYWRtaW5fdGFnc2V0
KTsKIG91dF9mcmVlX2FzeW5jX3FlOgotCW52bWVfcmRtYV9mcmVlX3FlKGN0cmwtPmRldmlj
ZS0+ZGV2LCAmY3RybC0+YXN5bmNfZXZlbnRfc3FlLAotCQlzaXplb2Yoc3RydWN0IG52bWVf
Y29tbWFuZCksIERNQV9UT19ERVZJQ0UpOworCW52bWVfcmRtYV9mcmVlX21hcHBlZF9xZShj
dHJsLT5xdWV1ZXNbMF0uZGV2aWNlLT5kZXYsCisJCQkJICZjdHJsLT5hc3luY19ldmVudF9z
cWUsCisJCQkJIHNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5kKSwKKwkJCQkgRE1BX1RPX0RF
VklDRSk7CiAJY3RybC0+YXN5bmNfZXZlbnRfc3FlLmRhdGEgPSBOVUxMOwogb3V0X2ZyZWVf
cXVldWU6CiAJbnZtZV9yZG1hX2ZyZWVfcXVldWUoJmN0cmwtPnF1ZXVlc1swXSk7CkBAIC0x
NzA5LDEyICsxNzQzLDIwIEBAIHN0YXRpYyBibGtfc3RhdHVzX3QgbnZtZV9yZG1hX3F1ZXVl
X3JxKHN0cnVjdCBibGtfbXFfaHdfY3R4ICpoY3R4LAogCQlyZXR1cm4gbnZtZl9mYWlsX25v
bnJlYWR5X2NvbW1hbmQoJnF1ZXVlLT5jdHJsLT5jdHJsLCBycSk7CiAKIAlkZXYgPSBxdWV1
ZS0+ZGV2aWNlLT5kZXY7CisKKwllcnIgPSBudm1lX3JkbWFfbWFwX3FlKGRldiwgJnJlcS0+
c3FlLCBzaXplb2Yoc3RydWN0IG52bWVfY29tbWFuZCksCisJCQkgICAgICAgRE1BX1RPX0RF
VklDRSk7CisJaWYgKHVubGlrZWx5KGVycikpIHsKKwkJcmV0ID0gQkxLX1NUU19SRVNPVVJD
RTsKKwkJZ290byBvdXQ7CisJfQorCiAJaWJfZG1hX3N5bmNfc2luZ2xlX2Zvcl9jcHUoZGV2
LCBzcWUtPmRtYSwKIAkJCXNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5kKSwgRE1BX1RPX0RF
VklDRSk7CiAKIAlyZXQgPSBudm1lX3NldHVwX2NtZChucywgcnEsIGMpOwogCWlmIChyZXQp
Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gdW5tYXBfcWU7CiAKIAlibGtfbXFfc3RhcnRfcmVx
dWVzdChycSk7CiAKQEAgLTE3MjMsNyArMTc2NSwxMSBAQCBzdGF0aWMgYmxrX3N0YXR1c190
IG52bWVfcmRtYV9xdWV1ZV9ycShzdHJ1Y3QgYmxrX21xX2h3X2N0eCAqaGN0eCwKIAkJZGV2
X2VycihxdWV1ZS0+Y3RybC0+Y3RybC5kZXZpY2UsCiAJCQkgICAgICJGYWlsZWQgdG8gbWFw
IGRhdGEgKCVkKVxuIiwgZXJyKTsKIAkJbnZtZV9jbGVhbnVwX2NtZChycSk7Ci0JCWdvdG8g
ZXJyOworCQlpZiAoZXJyID09IC1FTk9NRU0gfHwgZXJyID09IC1FQUdBSU4pCisJCQlyZXQg
PSBCTEtfU1RTX1JFU09VUkNFOworCQllbHNlCisJCQlyZXQgPSBCTEtfU1RTX0lPRVJSOwor
CQlnb3RvIHVubWFwX3FlOwogCX0KIAogCXNxZS0+Y3FlLmRvbmUgPSBudm1lX3JkbWFfc2Vu
ZF9kb25lOwpAQCAtMTczNSwxNCArMTc4MSwyMCBAQCBzdGF0aWMgYmxrX3N0YXR1c190IG52
bWVfcmRtYV9xdWV1ZV9ycShzdHJ1Y3QgYmxrX21xX2h3X2N0eCAqaGN0eCwKIAkJCXJlcS0+
bXIgPyAmcmVxLT5yZWdfd3Iud3IgOiBOVUxMKTsKIAlpZiAodW5saWtlbHkoZXJyKSkgewog
CQludm1lX3JkbWFfdW5tYXBfZGF0YShxdWV1ZSwgcnEpOwotCQlnb3RvIGVycjsKKwkJaWYg
KGVyciA9PSAtRU5PTUVNIHx8IGVyciA9PSAtRUFHQUlOKQorCQkJcmV0ID0gQkxLX1NUU19S
RVNPVVJDRTsKKwkJZWxzZQorCQkJcmV0ID0gQkxLX1NUU19JT0VSUjsKKwkJZ290byB1bm1h
cF9xZTsKIAl9CiAKIAlyZXR1cm4gQkxLX1NUU19PSzsKLWVycjoKLQlpZiAoZXJyID09IC1F
Tk9NRU0gfHwgZXJyID09IC1FQUdBSU4pCi0JCXJldHVybiBCTEtfU1RTX1JFU09VUkNFOwot
CXJldHVybiBCTEtfU1RTX0lPRVJSOworCit1bm1hcF9xZToKKwludm1lX3JkbWFfdW5tYXBf
cWUoZGV2LCAmcmVxLT5zcWUsIHNpemVvZihzdHJ1Y3QgbnZtZV9jb21tYW5kKSwKKwkJCSAg
IERNQV9UT19ERVZJQ0UpOworb3V0OgorCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBpbnQg
bnZtZV9yZG1hX3BvbGwoc3RydWN0IGJsa19tcV9od19jdHggKmhjdHgpCkBAIC0xNzU1LDgg
KzE4MDcsMTIgQEAgc3RhdGljIGludCBudm1lX3JkbWFfcG9sbChzdHJ1Y3QgYmxrX21xX2h3
X2N0eCAqaGN0eCkKIHN0YXRpYyB2b2lkIG52bWVfcmRtYV9jb21wbGV0ZV9ycShzdHJ1Y3Qg
cmVxdWVzdCAqcnEpCiB7CiAJc3RydWN0IG52bWVfcmRtYV9yZXF1ZXN0ICpyZXEgPSBibGtf
bXFfcnFfdG9fcGR1KHJxKTsKKwlzdHJ1Y3QgbnZtZV9yZG1hX3F1ZXVlICpxdWV1ZSA9IHJl
cS0+cXVldWU7CisJc3RydWN0IGliX2RldmljZSAqaWJkZXYgPSBxdWV1ZS0+ZGV2aWNlLT5k
ZXY7CiAKLQludm1lX3JkbWFfdW5tYXBfZGF0YShyZXEtPnF1ZXVlLCBycSk7CisJbnZtZV9y
ZG1hX3VubWFwX2RhdGEocXVldWUsIHJxKTsKKwludm1lX3JkbWFfdW5tYXBfcWUoaWJkZXYs
ICZyZXEtPnNxZSwgc2l6ZW9mKHN0cnVjdCBudm1lX2NvbW1hbmQpLAorCQkJICAgRE1BX1RP
X0RFVklDRSk7CiAJbnZtZV9jb21wbGV0ZV9ycShycSk7CiB9CiAKLS0gCjEuOC4zLjEKCg==
--------------17651455FD50FFD373AA2C2A
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--------------17651455FD50FFD373AA2C2A--

