Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D84B134F1B
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 22:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pcl32DxFNGrN0UPW3VasnVpPuLSl2LznniQdeoyyGDo=; b=mcjSX6BvEJC3p9dF/qQFE2lWd
	YmlDZMUmvhiRcKxmOq7pMwDHDmMFgeJKEs5vq1QCvh+MloEBvheLxj7gpEn1pn4BHN6bIwkKfEZ64
	NUjZenQRx05c7m4/0mVgxSfuqI+ABPwAdf6HCaOtinz9yNYhn8gYfd7BydS+eSGoO0yQfg2fsE1ls
	uvGSxUFzPu1Zu0/y4WX4KbhK//SwTUoKdjGksixhDi2FkM4gKloXppR1teFpcxtVgKG4FK9P9nohb
	zXqosZ6fwbWt4A7VHOmIl69fZmOHWBfBhv7XSKIj+H4xscAa1negUer0z1YYCgZBnnffdOa2O3MF1
	yYEQbdQsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJCM-0005eI-S0; Wed, 08 Jan 2020 21:49:06 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJCG-0005cg-Pf
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 21:49:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UCZA7Kjv951HWskJVEIMVemV7SC+n6O5dcTKcFjUFpSYp2+IADUsomJIUSmKjcv2aAASiIAPWS7bkOpJMqGk1QC8QQr9jb6cGebfqY17nn7hP1vxvL4VFPornZcXGothQWvuTaiftOut7NrICzMreJnuYZRziQWpdUOAnpsGlEDoLZ4V0tw+c55TXXDTsfKwxE7a0Y+VZ69X+fHLnO6tGXsufePi7A9NpebUawXsrvMYnoomESLeajGFzs6qdUpnYnCfgqXBtF9jMKlPYfHfsF6dsAehoF7fxJE2wvpKRO9AgHoXABfudjd3y1wk5Azkcfd5fV6ypjhEToOhDIZQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kfFDVSpHuuiwSz67sXDrPtQ/RsJB/6Hcb/Plz51AtI8=;
 b=Q6p74sk0p/+EpcCcYHtmqALo7iw6Bmat0nVp8Ackt6UfQC4nq5ju0Siw9mayHfFmskDeyLOo8EOpvzKaZRLV+dVPYEiBVd3WPNO5PIHcSiYDGmkAFJKRLd6cS3KLmwliTPj4iMSNjAnx4E2j4+0G4YidCTMQS+xColWrkboDZJMJ2wkliGWNHaj8O0mSLWvE4c6xp5Q9FhPeYRUCY+fh6fYM4mTjxvIlPkzieHmf1ESFQtesHBkvFE8c9Z0oDZCvAC5MBHk4087I5pNOLXTI81rdw7CQFETa6qfAjGIffZrBd09WsRGOZ4N0KMjd7s9kzM4g4zyi48B70MSLJUHvMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.47.165.251) smtp.rcpttodomain=lst.de smtp.mailfrom=mellanox.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=mellanox.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kfFDVSpHuuiwSz67sXDrPtQ/RsJB/6Hcb/Plz51AtI8=;
 b=QEDEp8XcxVRu+p0lhmJMF12T0XQLJoZphLSEpYubyO155ZLT4lyIleVZsav6sEFvCZYUpWKJJIT3rHZbFcDmbDoColoFbtharPq8Ffq7uiB9ttu93dTwzmWReqwdvWUJaF4+WiR+zFoGjRVWYQ73woqULnzPd+tJmoVFNCsb96k=
Received: from AM3PR05CA0107.eurprd05.prod.outlook.com (2603:10a6:207:1::33)
 by DB6PR0502MB2904.eurprd05.prod.outlook.com (2603:10a6:4:9f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 8 Jan
 2020 21:48:54 +0000
Received: from DB5EUR03FT050.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by AM3PR05CA0107.outlook.office365.com
 (2603:10a6:207:1::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.8 via Frontend
 Transport; Wed, 8 Jan 2020 21:48:54 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.251)
 smtp.mailfrom=mellanox.com; lst.de; dkim=none (message not signed)
 header.d=none;lst.de; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.251 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.251; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.251) by
 DB5EUR03FT050.mail.protection.outlook.com (10.152.21.128) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2602.11 via Frontend Transport; Wed, 8 Jan 2020 21:48:53 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Wed, 8 Jan 2020 23:50:24
 +0200
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Wed,
 8 Jan 2020 23:50:24 +0200
Received: from [172.16.0.23] (172.16.0.23) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 8 Jan 2020 23:48:51
 +0200
Subject: Re: [PATCH v10 6/9] nvme: Export existing nvme core functions
To: Logan Gunthorpe <logang@deltatee.com>, <linux-kernel@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>
References: <20200108174030.3430-1-logang@deltatee.com>
 <20200108174030.3430-7-logang@deltatee.com>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <707b39a3-b58a-44b7-7ffa-0c2bd3f28e21@mellanox.com>
Date: Wed, 8 Jan 2020 23:48:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200108174030.3430-7-logang@deltatee.com>
Content-Language: en-US
X-Originating-IP: [172.16.0.23]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.251; IPV:; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(2906002)(336012)(186003)(53546011)(26005)(5660300002)(498600001)(8936002)(16526019)(81166006)(81156014)(8676002)(6666004)(356004)(4326008)(110136005)(31686004)(70206006)(2616005)(54906003)(16576012)(31696002)(70586007)(36756003)(86362001)(3940600001)(2101003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0502MB2904; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:InfoDomainNonexistent; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f62e60a2-f726-46f7-ac7e-08d794848e59
X-MS-TrafficTypeDiagnostic: DB6PR0502MB2904:
X-Microsoft-Antispam-PRVS: <DB6PR0502MB29040DC84AFA7F3DC9ADEE14B63E0@DB6PR0502MB2904.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 02760F0D1C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZuPX3CEKdFFS/eiapG4lLMO9HRPYq0GJJITowrue0dIksmDDhrzGKYlgGuq1itemo69VF8k5uzBC83DEFRsmUblzcykQDzsS4LNmguCeYbHCIEpN5ou89NciZod+rSmypZlCdAjuA9AcOsmwIEmiSeykODQvHof67ZwBBOnc+8S3HDYmSYLH1H/k25ZOcjnhp9UZrHLDKRavq1XfOCP4zE+cBDPXOs12LW3ehWZHdf3ksxLu5DPVbvFvg2zJDucpD5fDseNAop3PS6EI6Rzh+A+Vs7TzWInYHRK5O4J+VeCikcFCWoYavGz8NRqN4DHDap5zgbQIAQWZ+163qzXt4Kn9jwBJ5/BBIbuabHRNCEhycZYYbn9US6BjjCsSIOdI4pi+bPyypHPpTKdSRlWNw/4490EQY3HsRko+nsVdsee+1VqA8ZwOYOWt8S8HtpKRzxORH7hYB0ttSoCWO+KUL3VNjhIUtWqKoW/DvWGWjrm9lDletTYCYFB9RCds6UjdOxZ3pI72EdmSd9IF4oJxrw==
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 21:48:53.9118 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f62e60a2-f726-46f7-ac7e-08d794848e59
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.251];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0502MB2904
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_134900_909701_1F19D8D0 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


On 1/8/2020 7:40 PM, Logan Gunthorpe wrote:
> Export nvme_put_ns(), nvme_command_effects(), nvme_execute_passthru_rq()
> and nvme_find_get_ns() for use in the nvmet passthru code.
>
> The exports are conditional on CONFIG_NVME_TARGET_PASSTHRU.
>
> Based-on-a-patch-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>   drivers/nvme/host/core.c | 14 +++++++++-----
>   drivers/nvme/host/nvme.h |  5 +++++
>   2 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index d7912e7a9911..037415882d46 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -463,7 +463,7 @@ static void nvme_free_ns(struct kref *kref)
>   	kfree(ns);
>   }
>   
> -static void nvme_put_ns(struct nvme_ns *ns)
> +void nvme_put_ns(struct nvme_ns *ns)
>   {
>   	kref_put(&ns->kref, nvme_free_ns);
>   }
> @@ -896,8 +896,8 @@ static void *nvme_add_user_metadata(struct bio *bio, void __user *ubuf,
>   	return ERR_PTR(ret);
>   }
>   
> -static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
> -				u8 opcode)
> +u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
> +			 u8 opcode)
>   {
>   	u32 effects = 0;
>   
> @@ -982,7 +982,7 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
>   		nvme_queue_scan(ctrl);
>   }
>   
> -static void nvme_execute_passthru_rq(struct request *rq)
> +void nvme_execute_passthru_rq(struct request *rq)
>   {
>   	struct nvme_command *cmd = nvme_req(rq)->cmd;
>   	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
> @@ -3441,7 +3441,7 @@ static int ns_cmp(void *priv, struct list_head *a, struct list_head *b)
>   	return nsa->head->ns_id - nsb->head->ns_id;
>   }
>   
> -static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
> +struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   {
>   	struct nvme_ns *ns, *ret = NULL;
>   
> @@ -4225,6 +4225,10 @@ EXPORT_SYMBOL_GPL(nvme_sync_queues);
>    * use by the nvmet-passthru and should not be used for
>    * other things.
>    */
> +EXPORT_SYMBOL_GPL(nvme_put_ns);
> +EXPORT_SYMBOL_GPL(nvme_command_effects);
> +EXPORT_SYMBOL_GPL(nvme_execute_passthru_rq);
> +EXPORT_SYMBOL_GPL(nvme_find_get_ns);

Since this is the convention in the driver, can you export the symbols 
at the end of each function ?

Otherwise looks good,

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>


>   
>   struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path)
>   {
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 356e4062796e..b1b1e7dd866b 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -687,6 +687,11 @@ static inline void nvme_hwmon_init(struct nvme_ctrl *ctrl) { }
>    * use by the nvmet-passthru and should not be used for
>    * other things.
>    */
> +void nvme_put_ns(struct nvme_ns *ns);
> +u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
> +			 u8 opcode);
> +void nvme_execute_passthru_rq(struct request *rq);
> +struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned int nsid);
>   struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path);
>   #endif /* CONFIG_NVME_TARGET_PASSTHRU */
>   

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
