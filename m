Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E6C101CF
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 23:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Qj7JqvB1QSXKnZYIEu13fKmqCmVc91w/FbZhRT18B1U=; b=tBi6gRvAqP9YsY
	S+CXIbEGMswMauIHEtQqH9rb7q48hMljk/vW2HKQ2HWm2zglvHJgUFnK/D50eao0bjNnTxekMkRFw
	pgiyu5DSPyiWjkD9gdCDIShjvVy2tjpHTKpscfbkdEw/jQbFCKEoF50PIqekr9BGgToVGs/2WiVgs
	i0TVDimbLNwjFyPxJrF66b3a0qlTEm/Sp2nCrbMQKywghW6cvSfQc+ZQolh6WDOXjCnE4vHBtenyI
	M8duRd9naBCvoT/Az4FaN4PnRVWPKrAUlrV8u9B6bNFmYczU57FFAHBvq5DHyujWd0y0lS/GBTMm/
	R85jzyIbOMCfxstLS9XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaKj-00084B-18; Tue, 30 Apr 2019 21:30:37 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaKd-00083Y-SA
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 21:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556659832; x=1588195832;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=ghF7n5G93aoKfoXwrNtHq1jqc7C9nqTsn+MkOC4AxEk=;
 b=S/RsLkY2pc2YpmcYwq0K2giJzyeucvrMboknHTlNokdJI2Gm8czCxFpj
 UAh5gqtZBqbqzIXjLoF8Dwo2y7GEz7WPG6gI9TrvgaEljsZJ3vptBlpK8
 59p59dMt9ErUwAOA/I7BohnI6TrZ4MCvxPR0FYVznqrFnJEFqfSl8UK+M
 A74ieKF8LyYYfAG/AmA2FGLzso/f5erwYGbjCli5m5BvsIJKmo4WXFxQi
 +zIyrL6YtkCAVGW57Mlb5/MiHoVfxGOXs2dDI5Rvt6jwCRbaoARSD9bpv
 oNS+xxOU4Z098Xiq/xyIPA5F6L9rXf6LeIshaKgpdY+tl0gwf8Zh3+DYI w==;
X-IronPort-AV: E=Sophos;i="5.60,414,1549900800"; d="scan'208";a="108419265"
Received: from mail-by2nam03lp2050.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.50])
 by ob1.hgst.iphmx.com with ESMTP; 01 May 2019 05:30:28 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KCrqboKsXpHWjZhh3laTtEsqqyFeJumKLVdlChVAUas=;
 b=GA65kxRbDt04D+6GnUvKlr9k8PnRT1k5llj8iDrszGHHtsdScTqiYWP9TYgx9NOFyYFLTUteqH3/4LxkDre/WatMuqcMSVT8gaBDWwxuBoTqDMnAssx4FEIzFonRY991mcGF0WPUTuHc394o3OP+kdBniGc8mLguGw9bDfrmv0A=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3807.namprd04.prod.outlook.com (52.135.81.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Tue, 30 Apr 2019 21:30:26 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 21:30:26 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "keith.busch@intel.com"
 <keith.busch@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme: move command size checks to the core
Thread-Topic: [PATCH 1/2] nvme: move command size checks to the core
Thread-Index: AQHU/2rfM/3Q+GlTSkGVjLCP9zX24g==
Date: Tue, 30 Apr 2019 21:30:26 +0000
Message-ID: <SN6PR04MB45274A0053D67600108FA903863A0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190430153833.9011-1-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2cee2fd-fe8d-4355-2ac1-08d6cdb30f7e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3807; 
x-ms-traffictypediagnostic: SN6PR04MB3807:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB3807AB06BF245705A160AD1A863A0@SN6PR04MB3807.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(346002)(376002)(396003)(39860400002)(189003)(199004)(6506007)(53546011)(66556008)(64756008)(26005)(66446008)(99286004)(76116006)(81156014)(66476007)(91956017)(53936002)(76176011)(81166006)(8676002)(4326008)(52536014)(6116002)(229853002)(5660300002)(66946007)(73956011)(8936002)(2201001)(316002)(9686003)(3846002)(7696005)(102836004)(2906002)(186003)(71200400001)(71190400001)(2501003)(6246003)(110136005)(74316002)(446003)(25786009)(486006)(256004)(14444005)(66066001)(7736002)(14454004)(72206003)(86362001)(33656002)(6436002)(305945005)(478600001)(476003)(55016002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3807;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VpDgcbtwpwWt8OognlZJDl0QhqY0w0QtnuDdl3awmwe4OqaMs3rhoEc580z/tbKBPiNwFyJmNgPBKgVU2zn7GXzB1O4tDU/1P8V+sTEYKUnybehByN80G+yyGV5nNmN3hOp096Y6FZXAK9YRNJd2JwwAowBJx+i4v/C5wVvDhtKPKR6q89gAZVzBSL59iuH5dHXduB0J1zuV5DxUALAC6AIxTojASvSKouaeFhauB0NF84ozqAW6+J+nTzvSQW7qeupLY0x1HnggatElrMYTxDlzMtQFrpKaSwdMJLCRUB21x35MpXUuflcc0T5+CX+a/G/sHF3zwziAK41/Vn7IBERvI3l3jkb839zf54vhkUsmNrgoAdMR81CxyGS6UBcwYVkMCTRkXA94uAst5kW9M1l0pFqZR1p8BArICRfDnR8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2cee2fd-fe8d-4355-2ac1-08d6cdb30f7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:30:26.1019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_143032_113816_B5AE7F0C 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good. Just one question about _nvme_check_size(), is there any 
significance for one _ over __ ?

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 4/30/19 8:39 AM, Christoph Hellwig wrote:
> Most command aren't PCIe specific, so move the size checking for them
> to core.c
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 27 +++++++++++++++++++++++++++
>   drivers/nvme/host/pci.c  | 31 +++----------------------------
>   2 files changed, 30 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 3dd043aa6d1f..e970c5adee28 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3879,10 +3879,37 @@ void nvme_start_queues(struct nvme_ctrl *ctrl)
>   }
>   EXPORT_SYMBOL_GPL(nvme_start_queues);
>   
> +/*
> + * Check we didn't inadvertently grow the command structure sizes:
> + */
> +static inline void _nvme_check_size(void)
> +{
> +	BUILD_BUG_ON(sizeof(struct nvme_common_command) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_rw_command) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_identify) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_features) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_download_firmware) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_format_cmd) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_dsm_cmd) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_write_zeroes_cmd) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_abort_cmd) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_get_log_page_command) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_command) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
> +	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
> +	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
> +	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
> +}
> +
> +
>   int __init nvme_core_init(void)
>   {
>   	int result = -ENOMEM;
>   
> +	_nvme_check_size();
> +
>   	nvme_wq = alloc_workqueue("nvme-wq",
>   			WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_SYSFS, 0);
>   	if (!nvme_wq)
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 9b02c4576591..1c4da31a97c2 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -226,33 +226,6 @@ struct nvme_iod {
>   	struct scatterlist *sg;
>   };
>   
> -/*
> - * Check we didin't inadvertently grow the command struct
> - */
> -static inline void _nvme_check_size(void)
> -{
> -	BUILD_BUG_ON(sizeof(struct nvme_common_command) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_rw_command) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_identify) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_create_cq) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_create_sq) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_features) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_download_firmware) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_format_cmd) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_dsm_cmd) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_write_zeroes_cmd) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_abort_cmd) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_get_log_page_command) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_command) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
> -	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
> -	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
> -	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
> -	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
> -}
> -
>   static unsigned int max_io_queues(void)
>   {
>   	return num_possible_cpus() + write_queues + poll_queues;
> @@ -2981,6 +2954,9 @@ static struct pci_driver nvme_driver = {
>   
>   static int __init nvme_init(void)
>   {
> +	BUILD_BUG_ON(sizeof(struct nvme_create_cq) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_create_sq) != 64);
> +	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
>   	BUILD_BUG_ON(IRQ_AFFINITY_MAX_SETS < 2);
>   	return pci_register_driver(&nvme_driver);
>   }
> @@ -2989,7 +2965,6 @@ static void __exit nvme_exit(void)
>   {
>   	pci_unregister_driver(&nvme_driver);
>   	flush_workqueue(nvme_wq);
> -	_nvme_check_size();
>   }
>   
>   MODULE_AUTHOR("Matthew Wilcox <willy@linux.intel.com>");
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
