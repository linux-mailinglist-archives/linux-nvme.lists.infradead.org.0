Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1E01895FA
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Mar 2020 07:47:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh7mo1VzmGSm7t9FipM1feJo4XGYXb8hUmkci8catiM=; b=ZOlcYGdPSVq4XG
	2iAi3ZaadtxXkjEJBjKkbLuP9LqhQ6O1XsDLPZ52f1qNV5CHgUlqtwXOjccKTbQYRZQQnSpZv0/9R
	Rgn5R6TWApphni4IJJke+zklUJkXjg47KwDCqR0YIgyqBD+3O9H5wcs71HJonPn3VKbdcloNVwpm1
	Yz8Ysf9GO762PSnLsqYIAxq7ys6vc1RiWPyiRl51QzXKCRa2tCmuwNZey0fu4QPHl/uoG3zPN9TMs
	J6pndS10505uVf4v2T6Nr1xf+aver8uWxI/QIige5I0Y0AzbM35qZOXJm2g8zWKpnMGXO0r/djE8l
	c8foQJcAP/wxbe0DRGXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jESUH-0003Y9-6u; Wed, 18 Mar 2020 06:47:33 +0000
Received: from mail-eopbgr150055.outbound.protection.outlook.com
 ([40.107.15.55] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jESUD-0003Xp-3U
 for linux-nvme@lists.infradead.org; Wed, 18 Mar 2020 06:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lEPVpGWaFubFDeseQ9cAFO290ewoDIcpg5bCjDa2lIYx0ZlBhgKDYhwIVN9915OisTBhmgICKLZw7b53TRrYz7zHoJ6jQUQBiH2aC4PRwXpwVMCqKQZZWmbqq1+R5qmhmoYCc4YImZu6vfwQTgUTdVxDoKQzG24LiGCtXxECbF6WsnStba8D+Q7ZRIRKG7X0zi4WUwe3TDAAY3DQwyyZnEpFcyW+Vgi2AslwnT6oXXNNyajd18n9vvBZDPx/sSr82r1tRICtL+C/xQ5+tCR2d/xsOL/qojnOUZ68e43YcTs5fvmJrrQ7q/LVo9EyKRYjgfb31130MyVjBlgR19fnlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cdCYOu+RC3qvSNwD6MBrLxGmNQOX2sqQHLS9JTl8Pgo=;
 b=g5ZBmepm1So9tuB8vy2bJEB1NDvskWi/VVckdI8xw0QFIUqdm9NMbithYe2YxuF4McJPmGUBNHU+VF1cmZUIBSJeH8oYJ2aEV3WNFA9fCK62C7kYEjF/rqvhPAWZQRHM8up6nOeJB4UAAlICk0qfcxfSlguQhwZz5qUh+5BZ6oR30m4Zn3Z4mod9C+nuNn3REoAMlHgQRJE/oLjQJjB/yhSAZD3yi/GhsRrtT4prpWa+Sr+5R+I5BuF5B5kJvu8dH5WactBDfll1l1pev+IZ96wBsLtQdll8c4lEVXrKTMVlN9YnXrGTlHytOY0nowRCCAxGc5HWOgwGlMPls1Thqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cdCYOu+RC3qvSNwD6MBrLxGmNQOX2sqQHLS9JTl8Pgo=;
 b=S65Fi3GBwnYphFAs2goPxKxahgafAhn7Fe9AMCu6yApvaHbm83801M3itiadGOHtoQNlTRvWGgN1zbAYG4fr64Ewz0eiKv27GuXi8nM2/Q/PsE5XfoUBxEiPOhRtWRiBeB26O9gzy/LLsyul85jNFqv5N5hqYzs1SCC9L32ZhHU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=leonro@mellanox.com; 
Received: from AM6PR05MB6408.eurprd05.prod.outlook.com (20.179.5.215) by
 AM6PR05MB6133.eurprd05.prod.outlook.com (20.179.3.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Wed, 18 Mar 2020 06:47:26 +0000
Received: from AM6PR05MB6408.eurprd05.prod.outlook.com
 ([fe80::c99f:9130:561f:dea0]) by AM6PR05MB6408.eurprd05.prod.outlook.com
 ([fe80::c99f:9130:561f:dea0%3]) with mapi id 15.20.2814.021; Wed, 18 Mar 2020
 06:47:26 +0000
Date: Wed, 18 Mar 2020 08:47:24 +0200
From: Leon Romanovsky <leonro@mellanox.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/5] IB/core: add a simple SRQ set per PD
Message-ID: <20200318064724.GP3351@unreal>
References: <20200317134030.152833-1-maxg@mellanox.com>
 <20200317134030.152833-2-maxg@mellanox.com>
 <20200317135518.GG3351@unreal>
 <46bb23ed-2941-2eaa-511a-3d0f3b09a9ed@mellanox.com>
Content-Disposition: inline
In-Reply-To: <46bb23ed-2941-2eaa-511a-3d0f3b09a9ed@mellanox.com>
X-ClientProxiedBy: PR2P264CA0019.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::31)
 To AM6PR05MB6408.eurprd05.prod.outlook.com
 (2603:10a6:20b:b8::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a00:a040:183:2d::393) by
 PR2P264CA0019.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18 via Frontend Transport; Wed, 18 Mar 2020 06:47:26 +0000
X-Originating-IP: [2a00:a040:183:2d::393]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 78748429-4e54-44b8-d45a-08d7cb083877
X-MS-TrafficTypeDiagnostic: AM6PR05MB6133:|AM6PR05MB6133:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR05MB6133BC68E5E85AA9C12D84ECB0F70@AM6PR05MB6133.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(7916004)(4636009)(396003)(136003)(366004)(39860400002)(346002)(376002)(199004)(81166006)(6486002)(81156014)(1076003)(8676002)(8936002)(33716001)(33656002)(86362001)(16526019)(186003)(316002)(6496006)(52116002)(66476007)(66946007)(478600001)(6636002)(53546011)(2906002)(107886003)(9686003)(4326008)(5660300002)(6862004)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6133;
 H:AM6PR05MB6408.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rFZGUItNovrguKx/KMRRZhSPDnwTd7LaGFB9DbBWkZE3ydjRbC5vFWLuA5EvvAzBzIT4LlL6fO69IDuK9MP3jJ/PkeZV8aKK3vJn/brd1aaG6XXZcp+QXOKC/LRhyC2cRqWcezk9ssWOxIpo/SPk2Kr7pKRSV4qdi+JtXELMBFUfsE9L12VWDOWO5lr5uqZfFHWdGbx6guPM7mlJGdg3nGPw7EKKv295NtOtsWhrsWrBZ5MaUGtHHSDf3SMVFqdBkY9vtiVQaP0vwearXHz20vmKlmCyWazxGNd/uyi+25Dmi5ezw5HdXaMt1AcDLaedGf6l6rkjGYkmkZU5JFUZ6s7XdSPN8E52FyfsEwdMcPqGjNto5+nw+3Zll9omGdGwS12x8SxrEibnURs9qSnUQa+iOkKprHUvToZZiAQPO/rxezlKRhd0hs80m1il12pF
X-MS-Exchange-AntiSpam-MessageData: UhB36T0XX/QgttM6XZ55Kuroq7GbFhTcfl0KE3klOJL1ridHwBnbNKcJnHFh8mZ0nibhIgYPrTCdCsaKxEURxrB0fHfqaDj1R0Ar77NItDxnOz8vasEn8tOqY6c6qyHEytgl2aytpcMxxRnpecnUxqK3afjYYcDjz5/ov4ahf5E=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78748429-4e54-44b8-d45a-08d7cb083877
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 06:47:26.5517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /hB7oRh50ah1Ym/Oca/3/ljw5eNK+7NTO8pkErKGO4eAMPUJl0LuqmNekNYwgr1I8C7ofhA9CSzZY4gh3fsNAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_234729_209448_2954616B 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.55 listed in list.dnswl.org]
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
 shlomin@mellanox.com, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, idanb@mellanox.com, dledford@redhat.com,
 jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 06:37:57PM +0200, Max Gurtovoy wrote:
>
> On 3/17/2020 3:55 PM, Leon Romanovsky wrote:
> > On Tue, Mar 17, 2020 at 03:40:26PM +0200, Max Gurtovoy wrote:
> > > ULP's can use this API to create/destroy SRQ's with the same
> > > characteristics for implementing a logic that aimed to save resources
> > > without significant performance penalty (e.g. create SRQ per completion
> > > vector and use shared receive buffers for multiple controllers of the
> > > ULP).
> > >
> > > Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> > > ---
> > >   drivers/infiniband/core/Makefile  |  2 +-
> > >   drivers/infiniband/core/srq_set.c | 78 +++++++++++++++++++++++++++++++++++++++
> > >   drivers/infiniband/core/verbs.c   |  4 ++
> > >   include/rdma/ib_verbs.h           |  5 +++
> > >   include/rdma/srq_set.h            | 18 +++++++++
> > >   5 files changed, 106 insertions(+), 1 deletion(-)
> > >   create mode 100644 drivers/infiniband/core/srq_set.c
> > >   create mode 100644 include/rdma/srq_set.h
> > >
> > > diff --git a/drivers/infiniband/core/Makefile b/drivers/infiniband/core/Makefile
> > > index d1b14887..1d3eaec 100644
> > > --- a/drivers/infiniband/core/Makefile
> > > +++ b/drivers/infiniband/core/Makefile
> > > @@ -12,7 +12,7 @@ ib_core-y :=			packer.o ud_header.o verbs.o cq.o rw.o sysfs.o \
> > >   				roce_gid_mgmt.o mr_pool.o addr.o sa_query.o \
> > >   				multicast.o mad.o smi.o agent.o mad_rmpp.o \
> > >   				nldev.o restrack.o counters.o ib_core_uverbs.o \
> > > -				trace.o
> > > +				trace.o srq_set.o
> > Why did you call it "srq_set.c" and not "srq.c"?
>
> because it's not a SRQ API but SRQ-set API.

I would say that it is SRQ-pool and not SRQ-set API.

Thanks

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
