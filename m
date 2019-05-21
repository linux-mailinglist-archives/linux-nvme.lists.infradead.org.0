Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C82D24A87
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 10:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G4FUHK/xFdxlLEjwPPcrZBpIEYeHOB4RvnZ4Y7Be+ao=; b=s5dnRQsFAYsAAy+K8po45pqty
	OmGv1XRiYgaXvWifsMyYsIqYjHi85gdQf20JVf9IHRe4IjKjDKMGpw9r9NqJ1q36H/d799WxO07JW
	F199Qo3x9kNV0D1a1aAaAdNa4RPw7zs0j6TbTEtaFuFfl11z7zA6E1Hl09MYMjVqmgyDF1ZF0CYuA
	Ak89eh5iFtjzsvkZhvuLCVTRu8CVj9zhyMTlEPd77/zUTQViXt1egKwUvT7oPqQV2dYeOBPtvcsKv
	mGnKvnxTkynSO2/OLzgGpS1BCYjAKice2HHl+kvXCA+AAO8CFyBwHUfawltoYLUhrPRr6DC4NFG0F
	q8El9Wyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0H3-0003Ak-0U; Tue, 21 May 2019 08:37:29 +0000
Received: from mail-eopbgr30053.outbound.protection.outlook.com ([40.107.3.53]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0Gx-0003A8-V1
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 08:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MQtRoZKldYryuD3GYgVmgA29w5GBjfwTSUJE9hPehcw=;
 b=lKXWtLrKCye1Hv2sC8hqxr5Uajgy7dDZif5YbPFi18v9bJgctoR2WaSefSbCp/mEKx4hRU1ADBVDidyMVpo9Ua2UiLMvWm73JH/3PUC78tTesM6/aGgLQhEXaf961XQqmCK3T7gRFkHCV8emmiUtdurvFkCPVSjcMpOG8475jnI=
Received: from HE1PR05CA0211.eurprd05.prod.outlook.com (10.171.110.139) by
 DBBPR05MB6428.eurprd05.prod.outlook.com (20.179.42.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Tue, 21 May 2019 08:37:18 +0000
Received: from VE1EUR03FT020.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::205) by HE1PR05CA0211.outlook.office365.com
 (2603:10a6:3:fa::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Tue, 21 May 2019 08:37:18 +0000
Authentication-Results: spf=pass (sender IP is 193.47.165.134)
 smtp.mailfrom=mellanox.com; acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=pass action=none header.from=mellanox.com;
Received-SPF: Pass (protection.outlook.com: domain of mellanox.com designates
 193.47.165.134 as permitted sender)
 receiver=protection.outlook.com; 
 client-ip=193.47.165.134; helo=mtlcas13.mtl.com;
Received: from mtlcas13.mtl.com (193.47.165.134) by
 VE1EUR03FT020.mail.protection.outlook.com (10.152.18.242) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1900.16 via Frontend Transport; Tue, 21 May 2019 08:37:18 +0000
Received: from MTLCAS13.mtl.com (10.0.8.78) by mtlcas13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4; Tue, 21 May 2019 11:37:17
 +0300
Received: from MTLCAS01.mtl.com (10.0.8.71) by MTLCAS13.mtl.com (10.0.8.78)
 with Microsoft SMTP Server (TLS) id 15.0.1178.4 via Frontend Transport; Tue,
 21 May 2019 11:37:17 +0300
Received: from [10.223.3.162] (10.223.3.162) by MTLCAS01.mtl.com (10.0.8.71)
 with Microsoft SMTP Server (TLS) id 14.3.301.0; Tue, 21 May 2019 11:36:40
 +0300
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <linux-nvme@lists.infradead.org>, Ming Lei <ming.lei@redhat.com>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
From: Max Gurtovoy <maxg@mellanox.com>
Message-ID: <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
Date: Tue, 21 May 2019 11:36:26 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190509181314.082604502@linuxfoundation.org>
Content-Language: en-US
X-Originating-IP: [10.223.3.162]
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:193.47.165.134; IPV:NLI; CTRY:IL; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(346002)(136003)(396003)(2980300002)(189003)(199004)(31696002)(476003)(478600001)(2616005)(36756003)(486006)(446003)(11346002)(126002)(6246003)(64126003)(7736002)(230700001)(2906002)(336012)(356004)(6666004)(86362001)(8676002)(50466002)(305945005)(81156014)(65956001)(77096007)(14444005)(26005)(186003)(16526019)(81166006)(58126008)(54906003)(53546011)(16576012)(7416002)(110136005)(316002)(65826007)(106002)(3846002)(23676004)(2486003)(6116002)(47776003)(8936002)(4326008)(70206006)(70586007)(31686004)(65806001)(5660300002)(67846002)(229853002)(76176011)(3940600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR05MB6428; H:mtlcas13.mtl.com; FPR:;
 SPF:Pass; LANG:en; PTR:mail13.mellanox.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c78e5377-34bb-445a-bc22-08d6ddc788dd
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DBBPR05MB6428; 
X-MS-TrafficTypeDiagnostic: DBBPR05MB6428:
X-Microsoft-Antispam-PRVS: <DBBPR05MB64285AC43F42ECC4D7B183DEB6070@DBBPR05MB6428.eurprd05.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:639;
X-Forefront-PRVS: 0044C17179
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: q284Fp4J1QEKtGzm4vQpR6TC2M/lhR+PfLOP99b/TEUwqpOtaHZJoRfTGuQbmCGYeTsgiFfrtZvOPUo6NYkTWdjIa9gpK+v9X45xKxS0nGSjHdW1zrXPi0gcBl9dOhUzzhsN8LQLDE3iPwzvD3Yd22yb6DMVIMSz8UhIbnb+hlRFLMKL/puPytIE1KEHYV5oJUBE4JIByLG9/m3Cl4+SG/+LuxsHDAjA1l3mVJdth+z1fNCdhUwL4b/yIdV3S8VYrdfqsxPMd8zLXI5J9ARzlmke+cCMKG+29dE0XnDg1VUSKHb+VqTFqvivNsLSxGR5edUi3M4MWdSb7ByTvX+emKKt4zuNWZWZkAlAG+ydA3kbUBNvNK0o378JSBK6KWIgJSBELYToyxDFoym1hVm430/gjQRrMQv8GYzkTkz6h54=
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2019 08:37:18.0549 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c78e5377-34bb-445a-bc22-08d6ddc788dd
X-MS-Exchange-CrossTenant-Id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a652971c-7d2e-4d9b-a6a4-d149256f461b; Ip=[193.47.165.134];
 Helo=[mtlcas13.mtl.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR05MB6428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_013724_050246_6A02B06B 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, Sagi
 Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>, Keith
 Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>, Bart Van
 Assche <bvanassche@acm.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/9/2019 9:42 PM, Greg Kroah-Hartman wrote:
> [ Upstream commit eb3afb75b57c28599af0dfa03a99579d410749e9 ]
>
> nvme_cancel_request() is used in error handler, and it is always
> reliable to cancel request synchronously, and avoids possible race
> in which request may be completed after real hw queue is destroyed.

Ming,

If the completion is async in the block layer, can't a "good" request 
(not a canceled one..) complete after real HW queue is destroyed ?


>
> One issue is reported by our customer on NVMe RDMA, in which freed ib
> queue pair may be used in nvme_rdma_complete_rq().
>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Bart Van Assche <bvanassche@acm.org>
> Cc: James Smart <james.smart@broadcom.com>
> Cc: linux-nvme@lists.infradead.org
> Reviewed-by: Keith Busch <keith.busch@intel.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> Signed-off-by: Jens Axboe <axboe@kernel.dk>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>   drivers/nvme/host/core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 6a9dd68c0f4fe..4c4413ad3ceb3 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -291,7 +291,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>   				"Cancelling I/O %d", req->tag);
>   
>   	nvme_req(req)->status = NVME_SC_ABORT_REQ;
> -	blk_mq_complete_request(req);
> +	blk_mq_complete_request_sync(req);
>   	return true;
>   }
>   EXPORT_SYMBOL_GPL(nvme_cancel_request);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
