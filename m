Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F273ADA91
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Sep 2019 15:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rE8K6ruyQBDAx6oq0WZXfcgNzFyrG4XDGqCQTCB9d44=; b=qNcknA9AATTQzgW0OsDwSiRz2
	Vf5+Yepgvf4sGvB8Ywmd7RXW7AhyEkjbVBN/Wn/LFieXXt0IGyRw9g9mTXAToqZRQ3ATEYGRJpw+/
	iimMmY9EJ35gJ3PQYR4hhgCd4TkM9jkyeUzRlQznozPacvP9O4j/RrljleQ+DpSxSYO2RojQLAdUX
	cV1J73nl1yYMEGdJ6tNtt4OOGcUP9LWTsktVMftzxcMQ56ZMFGBDTYd2v1/gsDIFiEH5HrnSJWCFO
	vVwOjb9+aIvpRtbvtS5KtCQSfkyNXJzsoHuTbC/OxvholOWSZuGrZiTf8v/8PtHZGnoauICNHfAYB
	eXzbX1QHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K9b-0000zn-Ej; Mon, 09 Sep 2019 13:56:27 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K9T-0000zM-Jj
 for linux-nvme@lists.infradead.org; Mon, 09 Sep 2019 13:56:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bk29OJQCTg7ohT+joeOkBFqxj/10R/bUCYJNEWNTJCWwDPQ/pR2qrNjKb6fQ35pW+Y57uX1u1jgBP0MfTOOQZCAKsV3fRpsLAaGu5wtsP0XhNPidk4dmL86oNAmSLcgPv9jIr74ktyAul7P9l1n5GRjCI/NxDRcf2tGlfsYI3SHlJVomQZn3w4twElAI+Uhhp2BktAAood9Ewv/C5QOgxX92f2MuoMdqnqTvmKwRL7WG6FXaNymkZE8RUbisYNzcA3KZ7z6q0U9oHJgxt6LpViBR5Oj2tGZ+8nvnDHBIld94YHKTjxuqt6NJDRAQ32frXZskbqUbQSXR5w5iUlbv8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZdeuLl3GkDoUbZneCwv5kgHsy9w6CCFU42SOmqNjl/I=;
 b=B8BVJUsq7DY+DaQEgoDYWXMsN22Y+RIY7ZGzwY8cE3Gz1/qucMXULhBdti7wAkL1+ZRxLVrdGWaAeS9l/BM4RGZVjdUZoXqOM9IbtZQaicqmhGljafRbmJq3UfJrdd3M+oGmrHGHfMQ0eb9qX+ZMCWYIR8aDHULzuREIbM6+TyZa79egWHTnyeKJhKgMkdrR0FjVE20n1cDe/LOYC3vY/sh3hOYQRgwsaLdwurMYn0SYZ37OjnKyf4z7UGPaZ+zbDAMVk9lx+KHCWC/o9eOrpx3v74RJoAdEdbth+s5b/ZfZ4A0cwQPbxjTOCq9yBwoeBzVRNBNSQhsc2gQiQPd/2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=grimberg.me smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZdeuLl3GkDoUbZneCwv5kgHsy9w6CCFU42SOmqNjl/I=;
 b=Hu3ZZUtnrxYN7yC0chPMz+wLh1mZc/qUdX8/VLgn5NxErlcNYkF4S2glhClLiDOfakZH+Jm7ObFeAJ54Xsfc3e0JWaVcfAYa7ziCWuw3XNN2FJ9e0mQ2HbQY/NEKGOb6tRlR3XqRhL8yj2Kc60d6t1g15lltnBK5ra76+HV06ak=
Received: from AM3PR05CA0154.eurprd05.prod.outlook.com (2603:10a6:207:3::32)
 by AM0PR05MB4513.eurprd05.prod.outlook.com (2603:10a6:208:b4::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.15; Mon, 9 Sep
 2019 13:56:14 +0000
Received: from VE1EUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::208) by AM3PR05CA0154.outlook.office365.com
 (2603:10a6:207:3::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2241.13 via Frontend
 Transport; Mon, 9 Sep 2019 13:56:14 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; grimberg.me; dkim=none (message not signed)
 header.d=none;grimberg.me; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 VE1EUR03FT042.mail.protection.outlook.com (10.152.19.62) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2241.14 via Frontend Transport; Mon, 9 Sep 2019 13:56:13 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Mon, 9 Sep 2019 16:56:13
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Mon,
 9 Sep 2019 16:56:13 +0300
Received: from [10.223.0.54] (10.223.0.54) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 9 Sep 2019 16:55:58
 +0300
Subject: Re: [PATCH v4 1/3] block: centralize PI remapping logic to the block
 layer
To: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1567956405-5585-1-git-send-email-maxg@mellanox.com>
 <yq1mufei4zk.fsf@oracle.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d6cfe6e5-508a-f01c-267d-c8009fafc571@mellanox.com>
Date: Mon, 9 Sep 2019 16:55:57 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <yq1mufei4zk.fsf@oracle.com>
Content-Language: en-US
X-Originating-IP: [10.223.0.54]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(2980300002)(199004)(189003)(51914003)(76176011)(7736002)(53546011)(305945005)(486006)(2616005)(53936002)(230700001)(3846002)(6116002)(81156014)(8676002)(8936002)(126002)(5660300002)(47776003)(11346002)(65806001)(4326008)(65956001)(50466002)(31686004)(478600001)(58126008)(356004)(36906005)(6916009)(186003)(54906003)(6246003)(16526019)(446003)(476003)(81166006)(16576012)(316002)(107886003)(14444005)(2906002)(70586007)(229853002)(336012)(106002)(31696002)(36756003)(86362001)(2486003)(23676004)(26005)(70206006)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR05MB4513; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e88b5b8-d3e2-4869-6952-08d7352d7a87
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR05MB4513; 
X-MS-TrafficTypeDiagnostic: AM0PR05MB4513:
X-Microsoft-Antispam-PRVS: <AM0PR05MB451373B7F69CC512D55DD8DAB6B70@AM0PR05MB4513.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 01559F388D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 2M1LzxjTvOUxu181hAofjh3U41twbU6mNWDwz0D2yPej34CuGkBmNXhxX52gUriQacv5sbytDeB9ZMR+T7QdMHaHOtmAR13z9r21pTVwd6kKDr6Xvek76xNmrHDJwapgSNG1Nms+6vucTs3WO4FUbr7TrNwfQFhXYO2XEZOSSmORI4gnS93RxrXYD2ycp/VF0+vj7zDC0vd76SSEE4WElv5m9CCvg+Ye6cDAYeMGmrMu5brFlEBOwAxQT/8oWYWgT0Kpq07wQ+cNV4TI8w/RDDZ4BPhJHMl1+7szDKAuIENl01YUF+NDwoSU4pbKifKBpkhxD+GDyp0P9PeN40k/y5hWY3IVk59jgtHbIV1m6YH83M24uv27atPlXbiTY5131cXT9y1klg9py24HU4sBOM7HnlA6Odx65qD7LzAWRaA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2019 13:56:13.8757 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e88b5b8-d3e2-4869-6952-08d7352d7a87
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB4513
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_065619_656417_0098BA31 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 israelr@mellanox.com, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, shlomin@mellanox.com, hch@lst.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 9/9/2019 5:21 AM, Martin K. Petersen wrote:
> Hi Max!

Hi Martin,


>
>> @@ -309,7 +308,7 @@ static void sd_set_flush_flag(struct scsi_disk *sdkp)
>>   {
>>   	struct scsi_disk *sdkp = to_scsi_disk(dev);
>>   
>> -	return sprintf(buf, "%u\n", sdkp->protection_type);
>> +	return sprintf(buf, "%u\n", sdkp->disk->protection_type);
> I'm fine with moving the prepare/complete logic to the block layer. But
> the block layer should always be using information from the integrity
> profile. sdkp->protection_type is a SCSI disk property which is used to
> pick the right integrity profile when a device is discovered and
> registered.
>
>   - sdkp->protection_type is the type the disk is formatted with. This
>     may or may not be the same as the metadata format used by DIX and the
>     block layer.

ok i'll leave it as is.

>
>   - The DIX protection type (which is what matters for protection
>     information preparation) is encapsulated in the integrity profile
>     registered for the block device. The profile describes an abstract
>     protection format and can (at least in theory) carry non-T10 PI
>     protection information.
>
> Linux currently uses the Type 1 block layer integrity profile for
> devices formatted with T10 PI Types 0, 1, and 2. And the Type 3 block
> layer integrity profile for devices formatted with T10 PI Type 3. This
> profile is what we should be keying off of in t10-pi.c, not the
> protection_type (the fact that protection_type is even there is because
> the code was lifted out from sd.c).

maybe we can add profiles to type0 and type2 in the future and have more 
readable code.

>
> I would prefer to introduce .prepare_fn and .complete_fn for the Type 1
> profile to match the existing .generate_fn and verify_fn. And then adapt
> t10_pi_prepare() / t10_pi_complete() to plug into these new
> callbacks. The need for protection_type and Type 3 matching goes away in
> that case since the callbacks would only be set for the Type 1 profile.

Sounds good and simple.

I think I'll prepare dummy/empty callbacks for type3 and for nop 
profiles instead of setting it to NULL.

agreed ?

>
>>   static inline unsigned short
>> +blk_integrity_interval_shift(struct request_queue *q)
>> +{
>> +	return q->limits.logical_block_shift;
>> +}
>> +
> Why not use bio_integrity_intervals() or bi->interval_exp?

I'll use bi->interval_ext.


>
> Note that for T10 PI Type 2, the protection interval is not necessarily
> the logical block size.

thanks for the review. It will make my patchset easier and it will 
contain 1 patch now.

>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
