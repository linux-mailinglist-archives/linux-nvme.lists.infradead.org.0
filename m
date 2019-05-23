Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9417D276D1
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 09:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oryJmZKTyc4vDtEkGko5rW8a9BuT6N2PWh2tr5uXHI8=; b=X1ZDjJREARgcL+3NT8mahiaVo
	W2JYkB17M2PPuY7qUTtAb///R4DmipOo0UX/Zp06DytFzHFKs3iR3h4LnKI6a/CTLKMruRY490dVi
	Z5dliAOYo505EU2egpAsGJro6EA5HipFi+xZIbkpXKVSZjaJinrcU5EeV9O6bXvxz+McPvIOn155j
	Np1bSJWR/J9QaqrYp8AF8Q6DwOiWnNCZYNzkc0WY4xp1mo31FaQ0RBhAS8HDW6+aBIiJ4wxvlXkAp
	REaPF6IaE8wX3O+eE3BV+UB0GaiqFkJOOtPdaCC8zbJOouwVYFGs2+rx1fJtnkVeDx2dMM8JnwAJs
	HqMhiW9gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTi3A-0000Ch-O4; Thu, 23 May 2019 07:22:04 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTi35-0000Bx-NJ
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 07:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tc2XpKfb0KF6yd5noWnPrLFiA0DtpbWkYblnOKxHQzc=;
 b=rms5KtFY/5onl3MtvhK9brOSEZW2dLTR2LS7u2AufzYc/faQ7xbhbSyxRPzH9g5U9EAIxwAkSlf6dODNO5Crn3pp5w++uH/ogBMcp7MTY8Uq/oVrWWbnRtu6NK6bIwamvk0e0GBagDj2/uFPCq4XOtGdc0kSfDu+cUh2UIQib5w=
Received: from VI1PR0501CA0022.eurprd05.prod.outlook.com
 (2603:10a6:800:92::32) by AM6PR05MB6421.eurprd05.prod.outlook.com
 (2603:10a6:20b:bb::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.18; Thu, 23 May
 2019 07:21:49 +0000
Received: from AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::205) by VI1PR0501CA0022.outlook.office365.com
 (2603:10a6:800:92::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Thu, 23 May 2019 07:21:49 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lists.infradead.org; dkim=none (message not
 signed) header.d=none;lists.infradead.org; dmarc=pass action=none
 header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 AM5EUR03FT057.mail.protection.outlook.com (10.152.17.44) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 07:21:49 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 10:21:48
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 10:21:48 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 10:21:47
 +0300
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
To: Nirranjan Kirubaharan <nirranjan@chelsio.com>, <bharat@chelsio.com>,
 <sagi@grimberg.me>, <hch@lst.de>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
Date: Thu, 23 May 2019 10:21:46 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(39860400002)(376002)(346002)(396003)(2980300002)(199004)(189003)(7736002)(316002)(26005)(305945005)(5660300002)(2201001)(77096007)(229853002)(67846002)(4326008)(16576012)(110136005)(58126008)(23676004)(2486003)(336012)(31696002)(106002)(6246003)(446003)(16526019)(126002)(186003)(486006)(65826007)(476003)(2616005)(36756003)(8676002)(81156014)(11346002)(81166006)(86362001)(230700001)(50466002)(8936002)(70586007)(70206006)(14444005)(356004)(3846002)(47776003)(64126003)(478600001)(53546011)(6116002)(31686004)(76176011)(65806001)(65956001)(2906002)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR05MB6421; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd56b39b-174d-425c-93f0-08d6df4f522c
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:AM6PR05MB6421; 
X-MS-TrafficTypeDiagnostic: AM6PR05MB6421:
X-Microsoft-Antispam-PRVS: <AM6PR05MB642167AC9FFE7A69AAE9FE5DB6010@AM6PR05MB6421.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:519;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: uxJ4q+N1cA5tY5yVPe/o9HCgi2PN2EVuEEQbwRhh5F+PkcHP/HAME6OXZKGqHYMELtkEHBdG20AeShALAmkl34rs5hTsuTeNcIAlWBmEs2AtxD8zUIn63L7nCp9lPndKVcLoW7GrmBhcX+MLSSDZPqwkmJ9zB1QCjN2dJfYb3B41v36jYi5RPuD5B5eiZkey+C6l67CyXiQvDVwlFqIlEMkuwozVsQjlA0I1IjbVgt+rB3OmYuSfgo++/65HPNwOacP6POuaUL6hKmg2DOOW390W9dV3iW2yTwthRS0psPegX3VwsrXPEqJzZf+Ifr87122Le/N8RVkGC3q23xlAmbhflFJrz7yF726DxDVf065GwdpUPfzotsw/QrUhCkzlZXliQ3FqgqXjChDblz4Jji56O7GNI/lJwCqrR5V1Fck=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 07:21:49.0725 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bd56b39b-174d-425c-93f0-08d6df4f522c
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6421
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_002159_870853_9D7AF248 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.51 listed in list.dnswl.org]
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 5/23/2019 7:51 AM, Nirranjan Kirubaharan wrote:
> Return error -ENOMEM when nvmf target allocates lesser
> io queues than the number of io queues requested by nvmf
> initiator.

why can't we live with lesser queues ?

I can demand 64K queues and the target might return 4 and it's fine for 
functionality.

where is the NULL that you see ?


>
> Signed-off-by: Nirranjan Kirubaharan <nirranjan@chelsio.com>
> Reviewed-by: Potnuri Bharat Teja <bharat@chelsio.com>
> ---
>   drivers/nvme/host/rdma.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index f383146e7d0f..187007d136cc 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -641,7 +641,7 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>   {
>   	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
>   	struct ib_device *ibdev = ctrl->device->dev;
> -	unsigned int nr_io_queues;
> +	unsigned int nr_io_queues, nr_req_queues;
>   	int i, ret;
>   
>   	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
> @@ -670,9 +670,16 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
>   		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
>   	}
>   
> +	nr_req_queues = nr_io_queues;
>   	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
>   	if (ret)
>   		return ret;
> +	if (nr_io_queues < nr_req_queues) {
> +		dev_err(ctrl->ctrl.device,
> +			"alloc queues %u < req no of queues %u",
> +			nr_io_queues, nr_req_queues);
> +		return -ENOMEM;
> +	}
>   
>   	ctrl->ctrl.queue_count = nr_io_queues + 1;
>   	if (ctrl->ctrl.queue_count < 2)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
