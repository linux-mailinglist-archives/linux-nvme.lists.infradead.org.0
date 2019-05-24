Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0B2297CA
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 14:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nIYzQCvCT8Q9kl1STKvOET1yY9ayEmSZg0w0psAGQkA=; b=tYR2Q/1SBhBk8yNO1xsuCiM2k
	Ai8B3l4x5eIkXBh4X5vd9xRmCIndAwpeYGMmFOjeFgQCHfpZzJo4xBZQr6CYxR3J7xFguo/xsLJoz
	Q5SLqY7RMqmAk738HVvuVZ+aCp6Akc5hTOyorKwNvFrxY4sFlanjBP7kXVTjfe2a3/eoDBmOJfqV8
	5M/3+q4l8t3rP5C7StCEDI9GG1qWnCx87n7Rwalh36TMq8s9l9ohhi3Kc9X61Wzz+An4r7sqD/vWa
	De3vjfl8GqyOndRvQN7bAitpgusQJ+ejWShK45PkO66bmfvZs4+11mahPkxQ9ufSPGElNHOuyMptz
	jrXog4mPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8zD-00010s-2m; Fri, 24 May 2019 12:07:47 +0000
Received: from mail-am5eur03on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::606]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8z6-00010L-3A
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 12:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5F/5+N0M8HwEb27hp00LyA8ff6R/FnWNQ9jKiJFyn/c=;
 b=PR/XUnnbuV0pmcP5xvJC7vkYUJIEmQm3EGpJlYfhudOH69Yx59x69av/w3bHExY7QEhxae6FLbuV8TOoHjYcrNJLkonDkX2WcKHabkqwDAojxTQPfs7Teu8VQ6cfMjpn6Uj86kmxAv1ZjjTEsAUkqKoHbGUO7AKOXbeOQqgpHnU=
Received: from AM4PR05CA0013.eurprd05.prod.outlook.com (2603:10a6:205::26) by
 DB3PR0502MB4058.eurprd05.prod.outlook.com (2603:10a6:8:9::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Fri, 24 May 2019 12:07:34 +0000
Received: from VE1EUR03FT029.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by AM4PR05CA0013.outlook.office365.com
 (2603:10a6:205::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Fri, 24 May 2019 12:07:34 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT029.mail.protection.outlook.com (10.152.18.107) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Fri, 24 May 2019 12:07:33 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Fri, 24 May 2019 15:07:32
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Fri,
 24 May 2019 15:07:32 +0300
Received: from [172.16.0.59] (172.16.0.59) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Fri, 24 May 2019 15:07:31
 +0300
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Sagi Grimberg <sagi@grimberg.me>, Nirranjan Kirubaharan
 <nirranjan@chelsio.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
 <20190523075524.GA15479@chelsio.com>
 <06d347cc-7df6-c2b3-2edf-88a53db3c12d@mellanox.com>
 <20190523114157.GA9479@chelsio.com>
 <033ac067-29b1-30ff-6ad0-5e13510649bd@mellanox.com>
 <20190524044341.GA5129@chelsio.com>
 <955d9336-50d7-248c-eed8-3b038f6a5a11@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <0c738420-1c60-e656-d550-f209c40bf422@mellanox.com>
Date: Fri, 24 May 2019 15:07:30 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <955d9336-50d7-248c-eed8-3b038f6a5a11@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.0.59]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(2980300002)(189003)(199004)(51444003)(11346002)(486006)(23676004)(14444005)(65956001)(65806001)(106002)(126002)(5024004)(2616005)(53546011)(76176011)(446003)(2486003)(16576012)(5660300002)(2906002)(31696002)(6246003)(4326008)(110136005)(58126008)(54906003)(81156014)(8676002)(81166006)(86362001)(26005)(77096007)(47776003)(336012)(8936002)(478600001)(67846002)(7736002)(305945005)(6116002)(476003)(70586007)(70206006)(230700001)(186003)(16526019)(65826007)(3846002)(316002)(50466002)(356004)(229853002)(64126003)(36756003)(31686004)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0502MB4058; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 50af85e5-fc68-4973-23a5-08d6e040677e
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DB3PR0502MB4058; 
X-MS-TrafficTypeDiagnostic: DB3PR0502MB4058:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB4058D81788921DB4B4C8DC4EB6020@DB3PR0502MB4058.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: X1gpnT+wgDLO9cvgzKf/Bd0UXKVBpinPCVf1Mmd+3zQ1zFVfryY0djNLST4Uad2008TPMJOJ33hFEcjXnT1iicc5TtYEfvn3/2KuyVRr5DPhPS2L+7xEG2If2yYa/ZSVXO/WNtIxRXdgYuC8MifG+S1oO06Zsf3giJof4fIeVwnOvw0ZBiCFheSLmwbRZkoSgc1exy8J9CpaJoryZgncXSCodRXXZjHUSZGhFl8aPOqAlU4LD32KYqf8/g/6P4iy3RWqgtOs0KB3m5mUJkEeLCE1aXUvnLxMIa+wH/d9CbLblY5lgHJi0hY/wXcgBhQOqKmgQI03Pg7qDwOucmSemJ8isUskWDFg17tV5Fv4te505+9i8/CHQ538McibnjUGopFj3MRxWhLkrEJMADpwMZsi4REH6SsZ9xsuomOdPDA=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 12:07:33.6460 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50af85e5-fc68-4973-23a5-08d6e040677e
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB4058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_050740_180547_0D4F5096 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:606 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bharat@chelsio.com, hch@lst.de, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/24/2019 9:24 AM, Sagi Grimberg wrote:
>
>>> I'll take deeper look on it next week but please try the new 
>>> attached patch
>> This new patch holds good for the minimal testing I did, with target 
>> allocating
>> lesser queues.
>
> Hi,
>
> Just got to this one (after ramping up on activity post vacation..)
>
> Max, I think that your patch is missing the case where default+read+poll
> queues are higher than controller queue limit but we can still fit
> a queue separation.

My patch was just a draft to see if it fixes the NULL deref.



>
> For example:
> - requested 10/10/10 (default/read/poll)
> - supported 28
>
> If I read your patch correctly, this will fall-back to shared read/write
> queue maps with no poll queues (10/0/0), while we'd want in this case
> to still have the separation but simply have less poll queues (10/10/8).
>
it will fallback to shared read/write with 28 queues. same as it was 
without this feature (actually I think I need to zero 
"ctrl->io_queues[HCTX_TYPE_READ]" for that to get (28/0/0) instead of 
(28/28/0).

so the default queues can be read/write queues and also write queues 
only (in case we have read_queues != 0) ?

I will review this feature again next week...


> I posted an alternative patch for review.

I'll review it early next week. I have few comments to add there.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
