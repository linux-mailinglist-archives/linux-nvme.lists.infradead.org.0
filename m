Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CB92B888
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 17:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DLPL7aOaf4xfoq5XQ95dr2hILLyc4PtwkfoFUZ94B4c=; b=dvdbFnJy3GjfS1mzHKjVICSEg
	WEYoNPZRLrttNJS7Y0oUeAYzJmf1fo9O2t8CF2N0cJ+KMDQXOzq+WB8e4T76GXxxjTzEtidsQDsBn
	5360u5URSQZlhgogkhrCNf/AMiw1Yr8vHNUhUxvoyxxLM2BDP+5D/drTSdSpeCl1C5YhK312urAkI
	7vPo0BPqbA4jZW5WYw0l/dKk4VdRVk6vr4a5UPjE9K7q7h/y3MH1pntmwzvS9lyAQEJwGATop0gaI
	CS7vwSkj2ehoa+PtSjK5GdnzroJ2eY89H8UzyBYpnozONICSYSOzJRLOsl8aQ3hVyjMW8AElMdPd/
	wJBn4nQYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVHn6-0004bq-PW; Mon, 27 May 2019 15:44:00 +0000
Received: from mail-eopbgr00083.outbound.protection.outlook.com ([40.107.0.83]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVHn0-0004bJ-RI
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 15:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbWo2iP8gPf6z2ee8J4sato5toSaaEl+iUBJxUTnq1o=;
 b=F6AMvUXtnolhW131Jt9GjFUe/hIqmxurNJrgUKFe1JkNBGjon+vKIc6ygmWejjvTyltEq9OdipINDLqMwgR07ofVwoYa6YpyIUbaT+1Kc9TfdLQ3q8dfKIa55EDWlKClOtyxDRTotmHPuQ/q1K6qbGkZRWy4hOjtB7iQXPeIjSM=
Received: from DB6PR05CA0004.eurprd05.prod.outlook.com (2603:10a6:6:14::17) by
 AM6PR0502MB4054.eurprd05.prod.outlook.com (2603:10a6:209:1d::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.15; Mon, 27 May
 2019 15:43:51 +0000
Received: from VE1EUR03FT046.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::204) by DB6PR05CA0004.outlook.office365.com
 (2603:10a6:6:14::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Mon, 27 May 2019 15:43:51 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT046.mail.protection.outlook.com (10.152.19.226) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Mon, 27 May 2019 15:43:51 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Mon, 27 May 2019 18:43:50
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Mon,
 27 May 2019 18:43:50 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Mon, 27 May 2019 18:43:49
 +0300
Subject: Re: [PATCH 1/2] nvme-rdma: fix queue mapping when queue count is
 limited
To: Sagi Grimberg <sagi@grimberg.me>, <linux-nvme@lists.infradead.org>
References: <20190524041004.23200-1-sagi@grimberg.me>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <35bf4975-a67b-8851-09e1-217969c6fb2e@mellanox.com>
Date: Mon, 27 May 2019 18:43:48 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190524041004.23200-1-sagi@grimberg.me>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(396003)(39860400002)(2980300002)(189003)(199004)(67846002)(2906002)(486006)(11346002)(446003)(65956001)(47776003)(65806001)(77096007)(186003)(16526019)(58126008)(110136005)(31696002)(23676004)(6246003)(2486003)(54906003)(106002)(26005)(76176011)(336012)(36756003)(5660300002)(4326008)(14444005)(478600001)(126002)(2616005)(476003)(6116002)(3846002)(356004)(65826007)(81166006)(81156014)(31686004)(64126003)(70586007)(70206006)(316002)(7736002)(305945005)(229853002)(86362001)(53546011)(16576012)(230700001)(8676002)(8936002)(50466002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0502MB4054; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4424a50e-c78b-4b98-0cca-08d6e2ba1de3
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR0502MB4054; 
X-MS-TrafficTypeDiagnostic: AM6PR0502MB4054:
X-Microsoft-Antispam-PRVS: <AM6PR0502MB4054DF1A87E5632231566644B61D0@AM6PR0502MB4054.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0050CEFE70
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: +M8lyIiSEVBT1gxhKQT8nkg138UxYyJMxtfXvYoePBN2leJNXo0osHVLGf81fgEN3MZWukDEojv4VeQ5536Dm58sV1xQC8+M7CYNErxl4iEOYKqgLhqp9wWIfnj0oh7vaw7heMG5HCsHHRMNEPyQRh+QpBKYClCtd6fzOchLuRe7rxAMPFXzFaiRyOBM8+tBh5VqSHaVz9q1zTb4nL5cPug4AetQU25rDU60ojyxUCrmKoBIXwuqeqSY5u0Xm56n4T65yGx5oj7OcjgJ/XpO8wbS7EDocLZHvV80TS3OOOL2Dm0NFN53aLMCHP8lY3fa5fpdtt6R+a42dB4y2+NirTNqikYZAbbqz/nrdRW9ONyYLsM5eSmgqYedjHZQb+MtwoxqS6h3qQcX5x8tyhVgYrwB7LYaLAGAFQDMQWjwg9I=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2019 15:43:51.0815 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4424a50e-c78b-4b98-0cca-08d6e2ba1de3
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0502MB4054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_084354_936630_D228D76E 
X-CRM114-Status: GOOD (  30.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 james.r.harris@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/24/2019 7:10 AM, Sagi Grimberg wrote:
> When the controller supports less queues than requested, we
> should make sure that queue mapping does the right thing and
> not assume that all queues are available. This fixes a crash
> when the controller supports less queues than requested.
>
> The rules are:
> 1. if no write/poll queues are requested, we assign the available queues
>     to the default queue map. The default and read queue maps share the
>     existing queues.
> 2. if write queues are requested:
>    - first make sure that read queue map gets the requested
>      nr_io_queues count
>    - then grant the default queue map the minimum between the requested
>      nr_write_queues and the remaining queues. If there are no available
>      queues to dedicate to the default queue map, fallback to (1) and
>      share all the queues in the existing queue map.
> 3. if poll queues are requested:
>    - map the remaining queues to the poll queue map.
>
> Also, provide a log indication on how we constructed the different
> queue maps.
>
> One side-affect change is that we remove the rdma device number of
> completion vectors device limitation when setting the queue count.

Why creating more rw queues than completion vectors ?

Did you test the performance with this change ?

> No rdma device uses managed affinity so there is no real reason as
> we cannot guarantee any vector based queue mapping. This change is
> squashed here because this patch needs to go to stable kernel and
> its simpler having it here than having it live on its own without
> a clear indication why it ended up in stable kenrels.
>
> Reported-by: Harris, James R <james.r.harris@intel.com>
> Cc: <stable@vger.kernel.org> # v5.0+
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/rdma.c | 94 ++++++++++++++++++++++++----------------
>   1 file changed, 56 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index f383146e7d0f..cd7d93727b30 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -640,35 +640,12 @@ static int nvme_rdma_start_io_queues(struct nvme_rdma_ctrl *ctrl)
>   static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>   {
>   	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
> -	struct ib_device *ibdev = ctrl->device->dev;
>   	unsigned int nr_io_queues;
>   	int i, ret;
>   
> -	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
> -
> -	/*
> -	 * we map queues according to the device irq vectors for
> -	 * optimal locality so we don't need more queues than
> -	 * completion vectors.
> -	 */
> -	nr_io_queues = min_t(unsigned int, nr_io_queues,
> -				ibdev->num_comp_vectors);

I wouldn't do it in this patch as we need to see perf results for this.

> -
> -	if (opts->nr_write_queues) {
> -		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
> -				min(opts->nr_write_queues, nr_io_queues);
> -		nr_io_queues += ctrl->io_queues[HCTX_TYPE_DEFAULT];
> -	} else {
> -		ctrl->io_queues[HCTX_TYPE_DEFAULT] = nr_io_queues;
> -	}
> -
> -	ctrl->io_queues[HCTX_TYPE_READ] = nr_io_queues;
> -
> -	if (opts->nr_poll_queues) {
> -		ctrl->io_queues[HCTX_TYPE_POLL] =
> -			min(opts->nr_poll_queues, num_online_cpus());
> -		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
> -	}
> +	nr_io_queues = min(opts->nr_io_queues, num_online_cpus()) +
> +		min(opts->nr_write_queues, num_online_cpus()) +
> +		min(opts->nr_poll_queues, num_online_cpus());
>   
>   	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
>   	if (ret)
> @@ -681,6 +658,34 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>   	dev_info(ctrl->ctrl.device,
>   		"creating %d I/O queues.\n", nr_io_queues);
>   
> +	if (opts->nr_write_queues && opts->nr_io_queues < nr_io_queues) {
I would use local variables for write/poll/default queues and not 
ctrl->opts pointer.

opts->nr_write_queues is not limited to num_online_cpu and can be 1000 
(and you might steal poll queues).

Maybe we should limit it in nvmf_parse_options ?

> +		/*
> +		 * separate read/write queues
> +		 * hand out dedicated default queues only after we have
> +		 * sufficient read queues.
> +		 */
> +		ctrl->io_queues[HCTX_TYPE_READ] = opts->nr_io_queues;
> +		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_READ];
> +		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
> +			min(opts->nr_write_queues, nr_io_queues);
> +		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
> +	} else {
> +		/*
> +		 * shared read/write queues
> +		 * either no write queues were requested, or we don't have
> +		 * sufficient queue count to have dedicated default queues.
> +		 */
> +		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
> +			min(opts->nr_io_queues, nr_io_queues);
> +		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
> +	}
> +
> +	if (opts->nr_poll_queues && nr_io_queues) {
> +		/* map dedicated poll queues only if we have queues left */
> +		ctrl->io_queues[HCTX_TYPE_POLL] =
> +			min(opts->nr_poll_queues, nr_io_queues);
> +	}
> +
>   	for (i = 1; i < ctrl->ctrl.queue_count; i++) {
>   		ret = nvme_rdma_alloc_queue(ctrl, i,
>   				ctrl->ctrl.sqsize + 1);
> @@ -1763,17 +1768,24 @@ static void nvme_rdma_complete_rq(struct request *rq)
>   static int nvme_rdma_map_queues(struct blk_mq_tag_set *set)
>   {
>   	struct nvme_rdma_ctrl *ctrl = set->driver_data;
> +	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>   
> -	set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
> -	set->map[HCTX_TYPE_DEFAULT].nr_queues =
> -			ctrl->io_queues[HCTX_TYPE_DEFAULT];
> -	set->map[HCTX_TYPE_READ].nr_queues = ctrl->io_queues[HCTX_TYPE_READ];
> -	if (ctrl->ctrl.opts->nr_write_queues) {
> +	if (opts->nr_write_queues && ctrl->io_queues[HCTX_TYPE_READ]) {
>   		/* separate read/write queues */
> +		set->map[HCTX_TYPE_DEFAULT].nr_queues =
> +			ctrl->io_queues[HCTX_TYPE_DEFAULT];
> +		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
> +		set->map[HCTX_TYPE_READ].nr_queues =
> +			ctrl->io_queues[HCTX_TYPE_READ];
>   		set->map[HCTX_TYPE_READ].queue_offset =
> -				ctrl->io_queues[HCTX_TYPE_DEFAULT];
> +			ctrl->io_queues[HCTX_TYPE_DEFAULT];
>   	} else {
> -		/* mixed read/write queues */
> +		/* shared read/write queues */
> +		set->map[HCTX_TYPE_DEFAULT].nr_queues =
> +			ctrl->io_queues[HCTX_TYPE_DEFAULT];
> +		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
> +		set->map[HCTX_TYPE_READ].nr_queues =
> +			ctrl->io_queues[HCTX_TYPE_DEFAULT];
>   		set->map[HCTX_TYPE_READ].queue_offset = 0;

why we should set the READ map in case of shared queues ?

In that case we should rename TYPE_DEFAULT to TYPE_WRITE..


>   	}
>   	blk_mq_rdma_map_queues(&set->map[HCTX_TYPE_DEFAULT],
> @@ -1781,16 +1793,22 @@ static int nvme_rdma_map_queues(struct blk_mq_tag_set *set)
>   	blk_mq_rdma_map_queues(&set->map[HCTX_TYPE_READ],
>   			ctrl->device->dev, 0);
>   
> -	if (ctrl->ctrl.opts->nr_poll_queues) {
> +	if (opts->nr_poll_queues && ctrl->io_queues[HCTX_TYPE_POLL]) {
> +		/* map dedicated poll queues only if we have queues left */
>   		set->map[HCTX_TYPE_POLL].nr_queues =
>   				ctrl->io_queues[HCTX_TYPE_POLL];
>   		set->map[HCTX_TYPE_POLL].queue_offset =
> -				ctrl->io_queues[HCTX_TYPE_DEFAULT];
> -		if (ctrl->ctrl.opts->nr_write_queues)
> -			set->map[HCTX_TYPE_POLL].queue_offset +=
> -				ctrl->io_queues[HCTX_TYPE_READ];
> +			ctrl->io_queues[HCTX_TYPE_DEFAULT] +
> +			ctrl->io_queues[HCTX_TYPE_READ];

I would use set->map[TYPE].nr_queues (the real offset).


>   		blk_mq_map_queues(&set->map[HCTX_TYPE_POLL]);
>   	}
> +
> +	dev_info(ctrl->ctrl.device,
> +		"mapped %d/%d/%d default/read/poll queues.\n",
> +		ctrl->io_queues[HCTX_TYPE_DEFAULT],
> +		ctrl->io_queues[HCTX_TYPE_READ],
> +		ctrl->io_queues[HCTX_TYPE_POLL]);
> +
>   	return 0;
>   }
>   

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
