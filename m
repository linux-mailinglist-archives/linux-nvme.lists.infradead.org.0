Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA87188E7B
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 20:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6ZSqCGkCIF6gqrh+LSIxsOT/QKfdYps3m+5PHQbbzvU=; b=IzdHeYnnZEhpvxji3akh6J7ce
	a+SJNmQyYvMbuRVgVUh5N1l6GaoXQGHq5h4l0nfX6oyDtV0yBsxiKg/5l8T9bkHvELA0SRMrNuvSP
	VlsAaEB+xwduVAbZy+yiC9YP4R/HXEr9Egl0+Rh5zH8/njeri2pyZlIoJIlczraGC+ZaVzJeXjqgW
	ITc66r1zSvSwayFExBQ/OrovRySLTnS/N2wjIIiWk2bA8onDMzFmdC5uLYgpdf3VhoRxh10YTgyEf
	FCMimQECYgBHyPk/w6AASkz5ooK8z5mIGLCG9tu+UHQLtvu9Ff6G4DBKwphshqaRoz82YwNGhCls9
	RBNZMq8GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEINH-0005h3-GV; Tue, 17 Mar 2020 19:59:39 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEINB-0005fS-Lx
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 19:59:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQL/OkGpUW6dzVoU54zMER7x8X/XOeZ3MNJE74uO5PaSIXsbyhGdte9GyQHwtyg1rDXCoTANyCCrlgmWIXw8UNiqz4+SP2hWsBUvZLDIvjJp4NDoUP9PNBNZXdcQ36Cj+uDC3HIiMjEwL6FLsWycHbUoeVBGP1HyhxOOU6fE1k45Ukr7/7UG2FY0X5ed5RDSlMe1F32VTBisMYLXLT6pRMvD951uqQXOazl+Itgp3/Udapes2cPTojW99x6PFV7rHIs8g7K8CpMZc893pjgSx9xIjoar/Py5IkwQyodVJfmhI8dbxci94EaPPxiifsrJ5NDe9mAC0l/j4Vh5kRkffA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjvbXbEMTxJC2sZbcL+QKjEyAw66ZLKctb6w4XUblrg=;
 b=cgVbviJwmCSZaff1YZvgzhkriySFVRSGYi5gC4gqla5KsFCPqoT9lCUqe/gR/7GnY3ag3jJzvCVsApxcjVlQKJptPyCYukO3T9rn8PGc1h/AnsvqVimiyENh6iE6SZxvllJMDrNWAvit76xkfygc47ISoBcdAgQrCxMFF4qe5fGCq1d3sbgNFSLCIwUTeVs9No+TkNZoosB0C+LJSkQAuRFSjKsr7PMp7xxmAD/YaczaoZd6hmmxjh7rx74ZmLAgILOopJRR81VU2vA3JqwNOMfB9Cnh3djQSsZoQ6OSh5hx4cZMay3Zo7N81cjupVfDCa9o95JIT4yRg0WkLbRPbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=redhat.com smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gjvbXbEMTxJC2sZbcL+QKjEyAw66ZLKctb6w4XUblrg=;
 b=qvOEc2gjm0VKAJ+Zrd4yQebivB8rU/gpP5HDXzSK4m1HQqxz/ztTz24n+V+I5G6acRIMTYhJSesiuVjsR8xRRle6M5LRx/isokmqNN8TNRlHyOiKAiHA1CzO12VylKanjSMyI8z3qXY9VNZx0ZyRNqNnp9tg51Qb9KiaJeVbrqk=
Received: from DB6P192CA0021.EURP192.PROD.OUTLOOK.COM (2603:10a6:4:b8::31) by
 AM6PR05MB5943.eurprd05.prod.outlook.com (2603:10a6:20b:a0::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Tue, 17 Mar 2020 19:59:26 +0000
Received: from DB5EUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:b8:cafe::15) by DB6P192CA0021.outlook.office365.com
 (2603:10a6:4:b8::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19 via Frontend
 Transport; Tue, 17 Mar 2020 19:59:26 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT040.mail.protection.outlook.com (10.152.20.243) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2814.13 via Frontend Transport; Tue, 17 Mar 2020 19:59:25 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 17 Mar 2020 18:42:10
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 17 Mar 2020 18:42:10 +0200
Received: from [172.27.14.181] (172.27.14.181) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0;
 Tue, 17 Mar 2020 18:37:57 +0200
Subject: Re: [PATCH 1/5] IB/core: add a simple SRQ set per PD
To: Leon Romanovsky <leonro@mellanox.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
 <20200317134030.152833-2-maxg@mellanox.com> <20200317135518.GG3351@unreal>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <46bb23ed-2941-2eaa-511a-3d0f3b09a9ed@mellanox.com>
Date: Tue, 17 Mar 2020 18:37:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200317135518.GG3351@unreal>
Content-Language: en-US
X-Originating-IP: [172.27.14.181]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(136003)(396003)(199004)(46966005)(316002)(70586007)(6636002)(336012)(107886003)(16576012)(54906003)(37006003)(70206006)(6862004)(356004)(4326008)(16526019)(2616005)(81166006)(8936002)(8676002)(53546011)(2906002)(81156014)(36756003)(478600001)(47076004)(86362001)(186003)(31696002)(31686004)(26005)(5660300002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB5943; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f0edec2-e924-4912-887a-08d7caadb1f5
X-MS-TrafficTypeDiagnostic: AM6PR05MB5943:
X-Microsoft-Antispam-PRVS: <AM6PR05MB5943FC335E2B419619D6D061B6F60@AM6PR05MB5943.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2foXhwNtWkfh8HIUHKJ70SJxrvb4rfuwmcCGP4yFyoEshIImM8bH9FOQkfPn8GiXznaaxde65NI2Dyhf/28Qd3cW7bN7NsASxXlIWCsxF7vmTD3NXZhqw2xEUVwDQuHfQrhIA/tk+4BIzjgZuMPEitIGk8ULj2AGFu+AZbhdzGjAvBkofItXkepcyaJcO4sCn/daDhHv60pqBFGqoVoDv7XpYL9/F3fcXhnI6u7BQdblXPXCE14+8f8kH89n1O94DcMwJoOaRlBS+T3EjkGl3TdPjjqJNe0QBRoJuGaFgNxRW9PLLW2xcqhspSY/g8HWGvwTS6SWgQ8enFdiq6epJ0EeSHPkocT8lElBv9jXvxJlgNAlh9EJBiz+Ikpg2BnDTM+WyXM0CNX57uPYMzHtxQRhID2aDJzND9rFwCFOIBhjtWMw5V0cB+rjAJo51XFjrQMbGL9umLTs6U0LvjcVlnApPgRZHslOhXpOdQbwglmwf7IQuB17tmTqvC56K7uWdwoUV7v34UhuRPtKN9TMVc1ZjHk3wsA0PNhg08Iki6w=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 19:59:25.8254 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f0edec2-e924-4912-887a-08d7caadb1f5
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB5943
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_125933_734753_924048BF 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: loberman@redhat.com, bvanassche@acm.org, vladimirk@mellanox.com,
 shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, idanb@mellanox.com, dledford@redhat.com,
 jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 3/17/2020 3:55 PM, Leon Romanovsky wrote:
> On Tue, Mar 17, 2020 at 03:40:26PM +0200, Max Gurtovoy wrote:
>> ULP's can use this API to create/destroy SRQ's with the same
>> characteristics for implementing a logic that aimed to save resources
>> without significant performance penalty (e.g. create SRQ per completion
>> vector and use shared receive buffers for multiple controllers of the
>> ULP).
>>
>> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
>> ---
>>   drivers/infiniband/core/Makefile  |  2 +-
>>   drivers/infiniband/core/srq_set.c | 78 +++++++++++++++++++++++++++++++++++++++
>>   drivers/infiniband/core/verbs.c   |  4 ++
>>   include/rdma/ib_verbs.h           |  5 +++
>>   include/rdma/srq_set.h            | 18 +++++++++
>>   5 files changed, 106 insertions(+), 1 deletion(-)
>>   create mode 100644 drivers/infiniband/core/srq_set.c
>>   create mode 100644 include/rdma/srq_set.h
>>
>> diff --git a/drivers/infiniband/core/Makefile b/drivers/infiniband/core/Makefile
>> index d1b14887..1d3eaec 100644
>> --- a/drivers/infiniband/core/Makefile
>> +++ b/drivers/infiniband/core/Makefile
>> @@ -12,7 +12,7 @@ ib_core-y :=			packer.o ud_header.o verbs.o cq.o rw.o sysfs.o \
>>   				roce_gid_mgmt.o mr_pool.o addr.o sa_query.o \
>>   				multicast.o mad.o smi.o agent.o mad_rmpp.o \
>>   				nldev.o restrack.o counters.o ib_core_uverbs.o \
>> -				trace.o
>> +				trace.o srq_set.o
> Why did you call it "srq_set.c" and not "srq.c"?

because it's not a SRQ API but SRQ-set API.


>>   ib_core-$(CONFIG_SECURITY_INFINIBAND) += security.o
>>   ib_core-$(CONFIG_CGROUP_RDMA) += cgroup.o
>> diff --git a/drivers/infiniband/core/srq_set.c b/drivers/infiniband/core/srq_set.c
>> new file mode 100644
>> index 0000000..d143561
>> --- /dev/null
>> +++ b/drivers/infiniband/core/srq_set.c
>> @@ -0,0 +1,78 @@
>> +// SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
>> +/*
>> + * Copyright (c) 2020 Mellanox Technologies. All rights reserved.
>> + */
>> +
>> +#include <rdma/srq_set.h>
>> +
>> +struct ib_srq *rdma_srq_get(struct ib_pd *pd)
>> +{
>> +	struct ib_srq *srq;
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&pd->srq_lock, flags);
>> +	srq = list_first_entry_or_null(&pd->srqs, struct ib_srq, pd_entry);
>> +	if (srq) {
>> +		list_del(&srq->pd_entry);
>> +		pd->srqs_used++;
> I don't see any real usage of srqs_used.
>
>> +	}
>> +	spin_unlock_irqrestore(&pd->srq_lock, flags);
>> +
>> +	return srq;
>> +}
>> +EXPORT_SYMBOL(rdma_srq_get);
>> +
>> +void rdma_srq_put(struct ib_pd *pd, struct ib_srq *srq)
>> +{
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&pd->srq_lock, flags);
>> +	list_add(&srq->pd_entry, &pd->srqs);
>> +	pd->srqs_used--;
>> +	spin_unlock_irqrestore(&pd->srq_lock, flags);
>> +}
>> +EXPORT_SYMBOL(rdma_srq_put);
>> +
>> +int rdma_srq_set_init(struct ib_pd *pd, int nr,
>> +		struct ib_srq_init_attr *srq_attr)
>> +{
>> +	struct ib_srq *srq;
>> +	unsigned long flags;
>> +	int ret, i;
>> +
>> +	for (i = 0; i < nr; i++) {
>> +		srq = ib_create_srq(pd, srq_attr);
>> +		if (IS_ERR(srq)) {
>> +			ret = PTR_ERR(srq);
>> +			goto out;
>> +		}
>> +
>> +		spin_lock_irqsave(&pd->srq_lock, flags);
>> +		list_add_tail(&srq->pd_entry, &pd->srqs);
>> +		spin_unlock_irqrestore(&pd->srq_lock, flags);
>> +	}
>> +
>> +	return 0;
>> +out:
>> +	rdma_srq_set_destroy(pd);
>> +	return ret;
>> +}
>> +EXPORT_SYMBOL(rdma_srq_set_init);
>> +
>> +void rdma_srq_set_destroy(struct ib_pd *pd)
>> +{
>> +	struct ib_srq *srq;
>> +	unsigned long flags;
>> +
>> +	spin_lock_irqsave(&pd->srq_lock, flags);
>> +	while (!list_empty(&pd->srqs)) {
>> +		srq = list_first_entry(&pd->srqs, struct ib_srq, pd_entry);
>> +		list_del(&srq->pd_entry);
>> +
>> +		spin_unlock_irqrestore(&pd->srq_lock, flags);
>> +		ib_destroy_srq(srq);
>> +		spin_lock_irqsave(&pd->srq_lock, flags);
>> +	}
>> +	spin_unlock_irqrestore(&pd->srq_lock, flags);
>> +}
>> +EXPORT_SYMBOL(rdma_srq_set_destroy);
>> diff --git a/drivers/infiniband/core/verbs.c b/drivers/infiniband/core/verbs.c
>> index e62c9df..6950abf 100644
>> --- a/drivers/infiniband/core/verbs.c
>> +++ b/drivers/infiniband/core/verbs.c
>> @@ -272,6 +272,9 @@ struct ib_pd *__ib_alloc_pd(struct ib_device *device, unsigned int flags,
>>   	pd->__internal_mr = NULL;
>>   	atomic_set(&pd->usecnt, 0);
>>   	pd->flags = flags;
>> +	pd->srqs_used = 0;
>> +	spin_lock_init(&pd->srq_lock);
>> +	INIT_LIST_HEAD(&pd->srqs);
>>
>>   	pd->res.type = RDMA_RESTRACK_PD;
>>   	rdma_restrack_set_task(&pd->res, caller);
>> @@ -340,6 +343,7 @@ void ib_dealloc_pd_user(struct ib_pd *pd, struct ib_udata *udata)
>>   		pd->__internal_mr = NULL;
>>   	}
>>
>> +	WARN_ON_ONCE(pd->srqs_used > 0);
> It can be achieved by WARN_ON_ONCE(!list_empty(&pd->srqs))

ok, I'll change it for v2.


>
>>   	/* uverbs manipulates usecnt with proper locking, while the kabi
>>   	   requires the caller to guarantee we can't race here. */
>>   	WARN_ON(atomic_read(&pd->usecnt));
>> diff --git a/include/rdma/ib_verbs.h b/include/rdma/ib_verbs.h
>> index 1f779fa..fc8207d 100644
>> --- a/include/rdma/ib_verbs.h
>> +++ b/include/rdma/ib_verbs.h
>> @@ -1517,6 +1517,10 @@ struct ib_pd {
>>
>>   	u32			unsafe_global_rkey;
>>
>> +	spinlock_t		srq_lock;
>> +	int			srqs_used;
>> +	struct list_head	srqs;
>> +
>>   	/*
>>   	 * Implementation details of the RDMA core, don't use in drivers:
>>   	 */
>> @@ -1585,6 +1589,7 @@ struct ib_srq {
>>   	void		       *srq_context;
>>   	enum ib_srq_type	srq_type;
>>   	atomic_t		usecnt;
>> +	struct list_head	pd_entry; /* srq set entry */
>>
>>   	struct {
>>   		struct ib_cq   *cq;
>> diff --git a/include/rdma/srq_set.h b/include/rdma/srq_set.h
>> new file mode 100644
>> index 0000000..834c4c6
>> --- /dev/null
>> +++ b/include/rdma/srq_set.h
>> @@ -0,0 +1,18 @@
>> +/* SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB) */
>> +/*
>> + * Copyright (c) 2020 Mellanox Technologies. All rights reserved.
>> + */
>> +
>> +#ifndef _RDMA_SRQ_SET_H
>> +#define _RDMA_SRQ_SET_H 1
> "1" is not needed.

agreed.


>
>> +
>> +#include <rdma/ib_verbs.h>
>> +
>> +struct ib_srq *rdma_srq_get(struct ib_pd *pd);
>> +void rdma_srq_put(struct ib_pd *pd, struct ib_srq *srq);
> At the end, it is not get/put semantics but more add/remove.

srq = rdma_srq_add ?

rdma_srq_remove(pd, srq) ?

Doesn't seems right to me.

Lets make it simple. For asking a SRQ from the PD set lets use 
rdma_srq_get and returning to we'll use rdma_srq_put.

>
> Thanks
>
>> +
>> +int rdma_srq_set_init(struct ib_pd *pd, int nr,
>> +		struct ib_srq_init_attr *srq_attr);
>> +void rdma_srq_set_destroy(struct ib_pd *pd);
>> +
>> +#endif /* _RDMA_SRQ_SET_H */
>> --
>> 1.8.3.1
>>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
