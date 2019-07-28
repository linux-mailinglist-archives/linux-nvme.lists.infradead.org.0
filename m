Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2724177D42
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 04:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w7E0dx4wS61Hlao3tiAKQz7ereWsDShoPHqieYUUKFI=; b=slrh0KpOx0/XG7pxTsDS1FVvt
	nT4HzIN8fBd3CVvgh9idklGnTxbLwnI1+0GPkDDkKGnoVita2ieSTntlAeWsGen7wEvdBsf6lcnIK
	BDdYl6RCwwJxNrvOq/a9ZQTlB52K7uFWYj7ePHa8w+ctmUgIPjRqlzL/+zCmDPPyEJXzfzkOG9w1v
	ZF1VyIo/7F83fOyIDJ/hA9rAa7Ca9WqZxGdFktEKg1vK/+l3LtfvxTl6D1xf/Jbai8BgOQIJpzuDF
	gW60M2OWhGeZi1fYZSGgsYSaT4vQerKDGRBsutF+UCQ9hZqEEMTl4WlTzuzF0eymvJKULTHVmOkpt
	03djnSH7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrYlz-0003zl-RZ; Sun, 28 Jul 2019 02:18:56 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrYlp-0003zR-J0
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 02:18:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qo+nw+9tN2dXmzhuK7at1YFdz/5o7D8YldO3nDjJ0WMtcc/NF0jTqT/FYfBqNDKjClJEhby2ZiLuCOr+x8EwBwBojQxL13LOqbaatp/LCaHMekNjTzgaAGU1edj03uF5r7hCeE109yFgXTgkYcRp9PwX2MN4lv6bWH/NlcEOjgA0bzGlL+mE0j+2p8ESt3NCyYkBQvRGthX15ssoDiVtGtWIbKTrlQbQK+KsuXpIexC/0oCKsK9ynQtYml06SNZh5tFy2+itC6BYwOn4CTPyuHIOi2iXERzAM70aW7Au9B6qLFLtfR3+7earWgTogKJEm2Q1+aOInfvCZ+5/GonRrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fz51hrBacGGwfAmgg1gba34zLweZs/7Hn1jx9rxxyvI=;
 b=YhFV/JijDOeya9/8ODzaQlitFJCMdTbV+upzAlG2lSvV73LKplp2tidWH9dA/efxPGzI9w4M1itLrNm8FLkXf7xSj4hFRpvQzb303l0b56JM0FSZWuAFeLK+71hpSd3BWuI9X8nHaNAnUYGsuhCEzm7CiAYdef/oHPn+wVVxAjtp2Y3TzbkCYkp9QC+/079IOdjhbNwLkJWWYMRbIyBGV7YHzddYbXP4jkktLz3oZiTDVeHCBAnXb8kpjA2V22BtOpO/CANZwmlX2r6Ri2FCiiRVYxGi4WBQPjA/c9flpL/LH4nP8nY67BNHWC+yX5b538Y74BOSidWkPrSieINtBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 193.47.165.134) smtp.rcpttodomain=suse.com
 smtp.mailfrom=mellanox.com;dmarc=pass (p=none sp=none pct=100) action=none
 header.from=mellanox.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fz51hrBacGGwfAmgg1gba34zLweZs/7Hn1jx9rxxyvI=;
 b=ouYO3pOSW+XpI8nOtd7Chygx2rTp24PQqxa0koNokWSyljAfW9wFJAeigXyi2gCbrSLUKZD1ijt8geiMq0LOHdu/bVvgSkgx1Y7kC8giXJ+wIHh60PkdRTA88n5NvMWmtD656qKfWxA+TmMUTAs9cPgHxYdQgk+JJDgAyDcRVcw=
Received: from AM6PR0502CA0060.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::37) by VI1PR0502MB3104.eurprd05.prod.outlook.com
 (2603:10a6:800:b6::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2094.16; Sun, 28 Jul
 2019 02:18:39 +0000
Received: from AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by AM6PR0502CA0060.outlook.office365.com
 (2603:10a6:20b:56::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.15 via Frontend
 Transport; Sun, 28 Jul 2019 02:18:38 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; suse.com; dkim=none (message not signed)
 header.d=none;suse.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT057.mail.protection.outlook.com (10.152.17.44) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Sun, 28 Jul 2019 02:18:38 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Sun, 28 Jul 2019 03:40:52
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Sun,
 28 Jul 2019 03:40:52 +0300
Received: from [172.16.3.2] (172.16.3.2) by MTLCAS01.mtl.com (10.0.8.71) with
 Microsoft SMTP Server (TLS) id 14.3.301.0;
 Sun, 28 Jul 2019 03:40:50 +0300
Subject: Re: [PATCH] nvme-rdma: fix possible use-after-free in connect error
 flow
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190726172949.1635-1-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <60bd61aa-2022-aac8-b6dd-da1319656da0@mellanox.com>
Date: Sun, 28 Jul 2019 03:40:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190726172949.1635-1-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [172.16.3.2]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39850400004)(2980300002)(199004)(189003)(51234002)(2486003)(23676004)(31696002)(336012)(76176011)(86362001)(26005)(16526019)(36756003)(53546011)(11346002)(476003)(2616005)(126002)(50466002)(5660300002)(70206006)(2906002)(70586007)(478600001)(446003)(186003)(65956001)(65806001)(230700001)(3846002)(6116002)(106002)(31686004)(47776003)(54906003)(8676002)(67846002)(110136005)(8936002)(6246003)(58126008)(356004)(6666004)(65826007)(4326008)(81156014)(316002)(16576012)(81166006)(486006)(305945005)(229853002)(7736002)(64126003)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0502MB3104; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d66b3600-b5b5-4dce-6d01-08d71301e6d0
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3104; 
X-MS-TrafficTypeDiagnostic: VI1PR0502MB3104:
X-Microsoft-Antispam-PRVS: <VI1PR0502MB3104A563FF4C9BF0A68420BCB6C20@VI1PR0502MB3104.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 01128BA907
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: +KvSXr/Cnp035+t7PYwKne1L9GLcwwn2zdKQQLwPj6J9V5MMCmPoh4YO5SAWAnJLdWAUo69qOY859uYFmfZTKoGnEofdKxlh8iI64fNIhifbZMsedeEbqdwmoJV4+fX3/3vsKcwz0wWKVyxNgaC4XErIOsFl39HtzzLyhWxNr9uSJhJDyZgTOVe76/zhhFk52wIP161eNx73CD9a7RRuivvGAN6Bb9lRUCB/JzMt7fm7FZHCOp/IbtNgRxpoApC+bV8YrJVxfdKGkUJMup9iTnx7UW4DM8ggNFy0/rqVs7Z9s0KWwWdtfxp8JEqFQB+F0q6qgV1xXLRGzbNmnC5iF5ud37kvNwcB9VJoFEYetVwKzWmpfzsccPk9m8oDy1/I+kR+pLf7QDQpT99QEHCyZaqw36z5gSHPc2xgsM7t7K0=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2019 02:18:38.1896 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d66b3600-b5b5-4dce-6d01-08d71301e6d0
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_191845_700572_20F90B5A 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 NMoreyChaisemartin@suse.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 7/26/2019 8:29 PM, Sagi Grimberg wrote:
> When start_queue fails, we need to make sure to drain the
> queue cq before freeing the rdma resources because we might
> still race with the completion path. Have start_queue() error
> path safely stop the queue.
>
> --
> [30371.808111] nvme nvme1: Failed reconnect attempt 11
> [30371.808113] nvme nvme1: Reconnecting in 10 seconds...
> [...]
> [30382.069315] nvme nvme1: creating 4 I/O queues.
> [30382.257058] nvme nvme1: Connect Invalid SQE Parameter, qid 4
> [30382.257061] nvme nvme1: failed to connect queue: 4 ret=386
> [30382.305001] BUG: unable to handle kernel NULL pointer dereference at 0000000000000018
> [30382.305022] IP: qedr_poll_cq+0x8a3/0x1170 [qedr]
> [30382.305028] PGD 0 P4D 0
> [30382.305037] Oops: 0000 [#1] SMP PTI
> [...]
> [30382.305153] Call Trace:
> [30382.305166]  ? __switch_to_asm+0x34/0x70
> [30382.305187]  __ib_process_cq+0x56/0xd0 [ib_core]
> [30382.305201]  ib_poll_handler+0x26/0x70 [ib_core]
> [30382.305213]  irq_poll_softirq+0x88/0x110
> [30382.305223]  ? sort_range+0x20/0x20
> [30382.305232]  __do_softirq+0xde/0x2c6
> [30382.305241]  ? sort_range+0x20/0x20
> [30382.305249]  run_ksoftirqd+0x1c/0x60
> [30382.305258]  smpboot_thread_fn+0xef/0x160
> [30382.305265]  kthread+0x113/0x130
> [30382.305273]  ? kthread_create_worker_on_cpu+0x50/0x50
> [30382.305281]  ret_from_fork+0x35/0x40
> --
>
> Reported-by: Nicolas Morey-Chaisemartin <NMoreyChaisemartin@suse.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/rdma.c | 16 +++++++++++-----
>   1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 97f668a39ae1..7b074323bcdf 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -562,13 +562,17 @@ static int nvme_rdma_alloc_queue(struct nvme_rdma_ctrl *ctrl,
>   	return ret;
>   }
>   
> +static void __nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
> +{
> +	rdma_disconnect(queue->cm_id);
> +	ib_drain_qp(queue->qp);
> +}
> +
>   static void nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
>   {
>   	if (!test_and_clear_bit(NVME_RDMA_Q_LIVE, &queue->flags))
>   		return;
> -
> -	rdma_disconnect(queue->cm_id);
> -	ib_drain_qp(queue->qp);
> +	__nvme_rdma_stop_queue(queue);
>   }
>   
>   static void nvme_rdma_free_queue(struct nvme_rdma_queue *queue)
> @@ -607,11 +611,13 @@ static int nvme_rdma_start_queue(struct nvme_rdma_ctrl *ctrl, int idx)
>   	else
>   		ret = nvmf_connect_admin_queue(&ctrl->ctrl);
>   
> -	if (!ret)
> +	if (!ret) {
>   		set_bit(NVME_RDMA_Q_LIVE, &queue->flags);
> -	else
> +	} else {
> +		__nvme_rdma_stop_queue(queue);
>   		dev_info(ctrl->ctrl.device,
>   			"failed to connect queue: %d ret=%d\n", idx, ret);
> +	}
>   	return ret;
>   }
>   

looks good,

maybe we can add dev_dbg print for successful connection.

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
