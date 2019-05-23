Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18C1277C6
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 10:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NuIGaVui6xH98WTEA+ofq46+fWKmUS2e+hCOhCGHHho=; b=h5G9/AwTji32z/hkuHOMDPpE3
	8hz8zCwenG0uaizenpAz2UNqj0C4R83gDU45x5kH5xJdujTBFPF5aP1dmzfnBJq6fQgKN4w4+xFXa
	+JBVB+H+Oe7xxhMg1sMuxs6GDnVCx1d/kSIFworTLxg6NdYco0+zXSVkIY1ngxITV+r/dchPYFcts
	uJ6lGLPSoWBMOOHu6nFISAV2ClTvRd3O2mYC5YIKJk9zJkNm3xM/IRhpqenTbfSSOjZgE0TPy5UxQ
	XZmhSnNteGk9K+S9fmL5cb4awO/Sy7HAUS0z8K1PcsiRw6HUto8FcOKDwO4h7GyWWDO5cL/dMnvNm
	S2BDs3b4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTirU-0005Zv-7J; Thu, 23 May 2019 08:14:04 +0000
Received: from mail-eopbgr40061.outbound.protection.outlook.com ([40.107.4.61]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTirP-0005ZQ-BG
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 08:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PJ2qV2oO1P+Sr2/8ES5rdbIzfM5jHLVEgbvDPByhGRg=;
 b=XSoPMceTIbtau80cmMKRilYg5ihGLL6nE8JaBG7hbcT8wDkfg0Gw5J/ikqu99wXsQfLaByJcur5eVtFRO/QKgOkIBvSnwbU9/cZ1FuckWioW8DQ4RNEqiD/JmmUyBYKB1fNVppgD89knw/kjFCBS/kGVreBhyBxvBtcyipRsXwo=
Received: from AM4PR05CA0013.eurprd05.prod.outlook.com (2603:10a6:205::26) by
 DB3PR0502MB4060.eurprd05.prod.outlook.com (2603:10a6:8:11::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 23 May 2019 08:13:56 +0000
Received: from VE1EUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by AM4PR05CA0013.outlook.office365.com
 (2603:10a6:205::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Thu, 23 May 2019 08:13:55 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT053.mail.protection.outlook.com (10.152.19.198) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1922.16 via Frontend Transport; Thu, 23 May 2019 08:13:54 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Thu, 23 May 2019 11:13:53
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Thu,
 23 May 2019 11:13:53 +0300
Received: from [172.16.0.248] (172.16.0.248) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Thu, 23 May 2019 11:13:51
 +0300
Subject: Re: [Suspected-Phishing][PATCH 1/1] nvme-rdma: Add association
 between ctrl and transport dev
To: <linux-nvme@lists.infradead.org>, <sagi@grimberg.me>, <hch@lst.de>
References: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <53ba6182-53bc-ef4c-f818-94ea6e69f9f0@mellanox.com>
Date: Thu, 23 May 2019 11:13:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.248]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(376002)(136003)(2980300002)(51234002)(189003)(199004)(65826007)(67846002)(7736002)(14444005)(316002)(8936002)(16576012)(106002)(36756003)(64126003)(230700001)(305945005)(3846002)(6116002)(2201001)(478600001)(2906002)(229853002)(356004)(53546011)(86362001)(50466002)(446003)(11346002)(31696002)(2616005)(58126008)(110136005)(126002)(486006)(54906003)(476003)(76176011)(16526019)(186003)(81156014)(8676002)(65956001)(65806001)(5660300002)(23676004)(6246003)(2486003)(81166006)(4326008)(70586007)(31686004)(70206006)(26005)(107886003)(47776003)(336012)(77096007)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0502MB4060; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4990359e-aab4-4f22-8fb9-08d6df56995f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DB3PR0502MB4060; 
X-MS-TrafficTypeDiagnostic: DB3PR0502MB4060:
X-Microsoft-Antispam-PRVS: <DB3PR0502MB40606E63609A8AA99ECDAA2BB6010@DB3PR0502MB4060.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 00462943DE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: uLuehFjxgXQLdnCd7r3yVffVE7rxdty+rtD16NTkhoMKMtlXgBaYcAUZDbPfMmlcuTB6Ebwx07AebGKdD18wMz4eSKFS1UCUqlU7NVwxjqwmZIdx8EEtXUX2gmP6y98r75AQm2qrx8+HJgxxIQu7XhE8O4DpQPRNlWOGhsCc5DJsa7iXtS0lZpbaPF0C+Hk646cMl2Luw/j/caLXaesTy/uJDUtKPnql67uCHsfJJn2kX/FmupzW7qTnEpSHvYqxl7JUvd+nzRCRzmqLHL9YRRxtQIf89XkqmNAz2uMqLm5UvWFP0/ZleyDkT9I+5N8ER+96JMw13kqlaxT25ClQNFHVDRakGSTPoDHGdoqE4v+SypFvm+iCVd5mqEbGreuczMoGwdyDbBLB+gdtdvphZBaEI2SFMhHcA+FIL4jDpVw=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2019 08:13:54.1202 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4990359e-aab4-4f22-8fb9-08d6df56995f
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0502MB4060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_011359_391652_219AEBF8 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.61 listed in list.dnswl.org]
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
Cc: shlomin@mellanox.com, israelr@mellanox.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Sagi/Christoph,

can you review this please ? we need to fix that scenario for 5.2


On 5/21/2019 4:19 PM, Max Gurtovoy wrote:
> RDMA transport ctrl holds a reference to it's underlaying transport
> device, so we need to make sure that this reference is valid. Use kref
> object to enforce that.
>
> This commit fixes possible segmentation fault that may happen during
> reconnection + device removal flow that was caused by removing the ref
> count between block layer tagsets and the transport device.
>
> Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/host/rdma.c | 51 ++++++++++++++++++++++++++++++++++++++----------
>   1 file changed, 41 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index f383146..07eddfb 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -354,6 +354,21 @@ static int nvme_rdma_dev_get(struct nvme_rdma_device *dev)
>   	return kref_get_unless_zero(&dev->ref);
>   }
>   
> +static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
> +				   struct nvme_rdma_device *dev)
> +{
> +	ctrl->device = 	NULL;
> +	kref_put(&dev->ref, nvme_rdma_free_dev);
> +}
> +
> +static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
> +				   struct nvme_rdma_device *dev)
> +{
> +	kref_get(&dev->ref);
> +	ctrl->device = dev;
> +}
> +
> +
>   static struct nvme_rdma_device *
>   nvme_rdma_find_get_device(struct rdma_cm_id *cm_id)
>   {
> @@ -743,12 +758,16 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
>   static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   		bool remove)
>   {
> +	struct nvme_rdma_device *ndev = ctrl->device;
> +
>   	if (remove) {
>   		blk_cleanup_queue(ctrl->ctrl.admin_q);
>   		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
> +		/* ctrl releases refcount on device */
> +		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
>   	}
>   	if (ctrl->async_event_sqe.data) {
> -		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> +		nvme_rdma_free_qe(ndev->dev, &ctrl->async_event_sqe,
>   				sizeof(struct nvme_command), DMA_TO_DEVICE);
>   		ctrl->async_event_sqe.data = NULL;
>   	}
> @@ -758,23 +777,26 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   		bool new)
>   {
> +	struct ib_device *ibdev;
>   	int error;
>   
>   	error = nvme_rdma_alloc_queue(ctrl, 0, NVME_AQ_DEPTH);
>   	if (error)
>   		return error;
>   
> -	ctrl->device = ctrl->queues[0].device;
> -	ctrl->ctrl.numa_node = dev_to_node(ctrl->device->dev->dma_device);
> +	ibdev = ctrl->queues[0].device->dev;
> +	ctrl->ctrl.numa_node = dev_to_node(ibdev->dma_device);
> +	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ibdev);
>   
> -	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
> -
> -	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> +	error = nvme_rdma_alloc_qe(ibdev, &ctrl->async_event_sqe,
>   			sizeof(struct nvme_command), DMA_TO_DEVICE);
>   	if (error)
>   		goto out_free_queue;
>   
>   	if (new) {
> +		/* ctrl takes refcount on device */
> +		nvme_rdma_ctrl_dev_get(ctrl, ctrl->queues[0].device);
> +
>   		ctrl->ctrl.admin_tagset = nvme_rdma_alloc_tagset(&ctrl->ctrl, true);
>   		if (IS_ERR(ctrl->ctrl.admin_tagset)) {
>   			error = PTR_ERR(ctrl->ctrl.admin_tagset);
> @@ -786,6 +808,14 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   			error = PTR_ERR(ctrl->ctrl.admin_q);
>   			goto out_free_tagset;
>   		}
> +	} else if (ctrl->device != ctrl->queues[0].device) {
> +		/* ctrl releases refcount on old device */
> +		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
> +		/*
> +		 * underlaying device might change, ctrl takes refcount on
> +		 * new device.
> +		 */
> +		nvme_rdma_ctrl_dev_get(ctrl, ctrl->queues[0].device);
>   	}
>   
>   	error = nvme_rdma_start_queue(ctrl, 0);
> @@ -825,7 +855,9 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   	if (new)
>   		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
>   out_free_async_qe:
> -	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> +	if (new)
> +		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
> +	nvme_rdma_free_qe(ibdev, &ctrl->async_event_sqe,
>   		sizeof(struct nvme_command), DMA_TO_DEVICE);
>   	ctrl->async_event_sqe.data = NULL;
>   out_free_queue:
> @@ -2027,9 +2059,8 @@ static void nvme_rdma_remove_one(struct ib_device *ib_device, void *client_data)
>   	/* Delete all controllers using this device */
>   	mutex_lock(&nvme_rdma_ctrl_mutex);
>   	list_for_each_entry(ctrl, &nvme_rdma_ctrl_list, list) {
> -		if (ctrl->device->dev != ib_device)
> -			continue;
> -		nvme_delete_ctrl(&ctrl->ctrl);
> +		if (ctrl->device && ctrl->device->dev == ib_device)
> +			nvme_delete_ctrl(&ctrl->ctrl);
>   	}
>   	mutex_unlock(&nvme_rdma_ctrl_mutex);
>   

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
