Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A839188CE1
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 19:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l91TopFEqlcEHgHZDCawwNIQ8TwoaQIxUkUNlYfYV2c=; b=ByKJWTlI4EvTGd
	qfc4gJjr/D3FJ7A5EFqPneQCj+/MqpbOKk4ceNvVFbt3Df/3Ih7t1/+E42kopDeZmVWskGNlssqU9
	wzhOm/iOqGu7k37Zf3Z5TLrWwtffR+BPTzPzlWXEoClOwjCO6UyL9Ct2+CdQDMSKl8YhMKaYt5IL+
	5QVBOzOEWcHkXnNm3GDUZvSQuYkTLY4AT6LdvTo/b6KlrQaFUMm2dSPxfs/kxZUQ0gyxeiz8LImw6
	F5ir7KYBmL8i9yarUQZMyLvET178mEyuWtCYJs1agrpi5LWxCLEbnJJll23jrTgYOJ6AxzqTlLhYe
	w3qy9C3Y2zXazFVxO9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEGfy-0000Ac-S8; Tue, 17 Mar 2020 18:10:50 +0000
Received: from mail-am6eur05on2052.outbound.protection.outlook.com
 ([40.107.22.52] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEGfu-00009l-Mi
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 18:10:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KuCgyByGySZKMtKOjjHZ6hE1sb5nMv96K1uF5uU3SbesziywT82/V5Eq610mnNkVyw8Af0Fie0wGDgcqB7CZp+mQx91bKjI99K6AkWDkbWbAEOoKRqZIAz+2CKFGntIiX9ONrSqrhPxPSzON0MUBX/ta5WOr96u5x7tk8ftw5ZGfURlrPfRWODCxlNW3b2IofYpWgd4WP9JFaC0z76CdviZ0Qc42q6OaQxfTv4FLaC5KGrfZE5qWqMBDX9iGbf6I0OEUY42AtgHZ9esKrCvhl5aMVHnPEcwnw1aHtORpOXA2bSxTlim/iUL8IjddDP3PaeLeEWvT5OJbKL8/LjjD5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ghq074pjdmHC6oixQevInihWIDb0OlwNz3X0RDphByo=;
 b=AMXUcnE9sMM6p9BHFbE4yMM6ukRRmhk4Uedyd0M0sPMVN7eujA7qkz9R4ZbR6wbMYJXbEsTL7S4S/qJMUn5VYjYY7ubO1tcg/f3fLiG/CsD4CE8dy68b+SgIYcQnLrB152FcBl81mFJOxB4oNUoCBauB2uJ4g+scWuk551Gf9wQEcT2YWzyVlW7YuAcHWNUgeS7+u496nOuyavINM85+OpUEqyvHCiuJg+FkLe6C3+7YTY1sZ59ohfIF3mWYPlPs1UTSSBqEGOXbxR2ApldfXPLGT+4QTzyHbmLXoAXvfK+udrha6jcDjW2Zu7e/iDTkgXK2fmfv4y+rf2cW1XjYrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ghq074pjdmHC6oixQevInihWIDb0OlwNz3X0RDphByo=;
 b=q9fgMX8WtWdKxeFGA9XKHJzd5ZNpLlcKER3+WZ4IdR2wki6qAJkM2G+mZ5JT4TJpGi7oShxVib+774FsfPl/p/9QDKW+33Uw/ZEyU2QkGhX6jSj5AhMid3vpO/UDiv0ALjJCk28swjND/WU6n5z4bgX5CVn3l+rxW0RxdeA+DjI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=jgg@mellanox.com; 
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com (52.133.14.15) by
 VI1PR05MB6589.eurprd05.prod.outlook.com (20.179.25.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Tue, 17 Mar 2020 18:10:40 +0000
Received: from VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::18d2:a9ea:519:add3]) by VI1PR05MB4141.eurprd05.prod.outlook.com
 ([fe80::18d2:a9ea:519:add3%7]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 18:10:39 +0000
Date: Tue, 17 Mar 2020 15:10:36 -0300
From: Jason Gunthorpe <jgg@mellanox.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/5] IB/core: add a simple SRQ set per PD
Message-ID: <20200317181036.GX13183@mellanox.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
 <20200317134030.152833-2-maxg@mellanox.com>
 <20200317135518.GG3351@unreal>
 <46bb23ed-2941-2eaa-511a-3d0f3b09a9ed@mellanox.com>
Content-Disposition: inline
In-Reply-To: <46bb23ed-2941-2eaa-511a-3d0f3b09a9ed@mellanox.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: MN2PR14CA0026.namprd14.prod.outlook.com
 (2603:10b6:208:23e::31) To VI1PR05MB4141.eurprd05.prod.outlook.com
 (2603:10a6:803:44::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (142.68.57.212) by
 MN2PR14CA0026.namprd14.prod.outlook.com (2603:10b6:208:23e::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.16 via Frontend
 Transport; Tue, 17 Mar 2020 18:10:39 +0000
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)	(envelope-from
 <jgg@mellanox.com>)	id 1jEGfk-0007Km-8V; Tue, 17 Mar 2020 15:10:36 -0300
X-Originating-IP: [142.68.57.212]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 341e701e-e82f-4685-b29c-08d7ca9e7ff3
X-MS-TrafficTypeDiagnostic: VI1PR05MB6589:|VI1PR05MB6589:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR05MB6589E17DABC05B7F0372EF17CFF60@VI1PR05MB6589.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(39860400002)(346002)(136003)(396003)(199004)(37006003)(33656002)(478600001)(2906002)(86362001)(81166006)(4744005)(9746002)(9786002)(8676002)(5660300002)(316002)(186003)(81156014)(26005)(8936002)(52116002)(4326008)(6862004)(6636002)(107886003)(66556008)(36756003)(1076003)(66946007)(2616005)(66476007)(24400500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB6589;
 H:VI1PR05MB4141.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4rE3t22D/5W6sy9ktaqk8nI8paF9HJuMDsAzM/r4pW1FsAPRLb4erYOp0J1ZWgN5DfgJoeacJ/Tt7nk5vKSsWdeoVcxMZn42JJZSe+R4zwq9NRa0wfXHErmzAl9EPjDzCFA7YYFECKwDwFz25zlSWAwiiRjWR+Bob4sJUULfL+JaF9biHzoroBdErrXUzO73FOhhsWaRnZmDsa2ZU37zn7sKKnn4vXoB+90VgOzthxnmGQEnJQjhYjrN1PIHwNaSklRYeaTrkW/mMkT7XLcM0tk98tqmvZ8GKmm+yW2+gPVJGeGD07jdAOTMc2KQnZtSS2cx1j02HxdkseWiy2GqR1vqUbuNHJMhPLX0HjMzPgSokntTBdmuTrUvufAhmRVfpC9jcMZPONKP97LoiKl4HFtRSe037g9xzO3M8Qwk847zRKETGCbBlOhHET17p9y8o/+qeemO3Ka70s//YBz6Aab2ydP4RXdLYVTg5Ni2KJpAxDytr4eH/aaXk0RNqIBp
X-MS-Exchange-AntiSpam-MessageData: OZMAahtjmEzNU1mJaqBIukoEKRYxUfZ7Dpq4wxwfrIRZybW2jWGHQd/fChBJdiiUE/oJUkfH277yo3s/iqdtWCW3p+Dq0a7nYP5m71o/XM7JFwMliBQvn7pWrIeooAHHuSJpOyHpqvtm/xnQeOtBoQ==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 341e701e-e82f-4685-b29c-08d7ca9e7ff3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 18:10:39.8124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zKGjPDVrufP/+tfxzehGNgwDCpLSvvP4elOnD5mm+oV3ShB42BLn6TjmKq2N8oHuCCuR+/J0b9A2NLTqcMIfdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_111046_798305_AE09F151 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 idanb@mellanox.com, linux-rdma@vger.kernel.org, shlomin@mellanox.com,
 linux-nvme@lists.infradead.org, Leon Romanovsky <leonro@mellanox.com>,
 dledford@redhat.com, oren@mellanox.com, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 06:37:57PM +0200, Max Gurtovoy wrote:

> > > +#include <rdma/ib_verbs.h>
> > > +
> > > +struct ib_srq *rdma_srq_get(struct ib_pd *pd);
> > > +void rdma_srq_put(struct ib_pd *pd, struct ib_srq *srq);
> > At the end, it is not get/put semantics but more add/remove.
> 
> srq = rdma_srq_add ?
> 
> rdma_srq_remove(pd, srq) ?
> 
> Doesn't seems right to me.
> 
> Lets make it simple. For asking a SRQ from the PD set lets use rdma_srq_get
> and returning to we'll use rdma_srq_put.

Is there reference couting here? get/put should be restricted to
refcounting APIs, IMHO.

Jason

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
