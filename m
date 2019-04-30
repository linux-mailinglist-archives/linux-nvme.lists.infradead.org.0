Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031E0101D0
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 23:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=fFydViEqLt7s1SOIk91c+odXTjU2afgHf014sgVM3Ys=; b=TwhnkMFg9OkgI8
	jW6WRq1ALILit+Qw1ZCdmDKS/bfA+Kk3MCsZeHjodMyjk2BfdV4qzH/siXzFCo/y3goqfs69olPmi
	ksvsOKoKbkE8oZJ2NGVfHmyy6ZA+69evj5sPFRH+Dqc6S93R2vNQNDxYI4RAxbcO5P0UPoE+iO3Jt
	ky8JNm/JU40ijSQWFZl/+LtnpA1e1W8XCfkaxPdnxb7APiVOYnb6sNXHYxqCa44XjRingdlesUo3b
	SXKRitkGIYj+a0ODGSlcXPlEhB+IGN2qzamCp/TeigiX0B0hOToH/x9DUvQfVeoqYt/2YlnnSrUzR
	iLGxZmFWpfasDJO8tONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLaKw-0008Df-8l; Tue, 30 Apr 2019 21:30:50 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLaKq-0008CW-Ud
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 21:30:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556659845; x=1588195845;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=X52R6qTn0B5RhjsUbTJHmGyylye/D/l1rho67OezmIE=;
 b=pyjN65xZ/J8sr2AN74zm8ypW9BqSUO3mslFakWN2mhJ2vlPtDAtbnXrS
 Y3OK/v6qdyhSzeGvZs9tBh9q4cHN3U8zw3M3jWmMVsAuvFKNprIbPt/qp
 RNi+903qDd63x4gizWMnGagZVFok+qeJ9uMYZdQ1DctfNbLc+P2+0kpLe
 +frLmx96i23CU0SkdIZjgaEl4+PMZ/hMyJ+XNiyOgIHEEiMm+AFdxJA7Y
 zeUaZ7ToisasrYtfutVp7SFioVAi6XB8+idzOuH3Sx1QB+SPGLNXyVzx3
 bI/PzJqPwvDeuwskkdfSHvucWsm5VerLBwxhFHuk1qP4mA64gPuOQ8W6A A==;
X-IronPort-AV: E=Sophos;i="5.60,414,1549900800"; d="scan'208";a="107211464"
Received: from mail-co1nam05lp2052.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.52])
 by ob1.hgst.iphmx.com with ESMTP; 01 May 2019 05:30:42 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O2mXmjSlBtsCqYUHDgaqXWv+xhuewJs0AXh1piij0eg=;
 b=Ayj6rzpwxhwvjyqLSO3i4UYojTjxkHgaOYzj1biHxp0RvRE7aPPZjmOph8KcwPk7nFb2tf+Jq0Kvl8cLSwA84F1x/gRduUWLxlEJqZl3lbjb8nZSSXGvcBvDmB7A+zVie0+lbwmaFcMjXzmvH3KQrqVYSDSLn4jLnOAaTkN9jeg=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB5133.namprd04.prod.outlook.com (52.135.116.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.16; Tue, 30 Apr 2019 21:30:40 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Tue, 30 Apr 2019
 21:30:40 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "keith.busch@intel.com"
 <keith.busch@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 2/2] nvme: mark nvme_core_init and nvme_core_exit static
Thread-Topic: [PATCH 2/2] nvme: mark nvme_core_init and nvme_core_exit static
Thread-Index: AQHU/2riyy6yEA7+kUKSAOpgCWcFiw==
Date: Tue, 30 Apr 2019 21:30:40 +0000
Message-ID: <SN6PR04MB4527AC70AF3A55476B74743E863A0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190430153833.9011-1-hch@lst.de>
 <20190430153833.9011-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b67ed3eb-16d5-4087-24b3-08d6cdb3180a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB5133; 
x-ms-traffictypediagnostic: SN6PR04MB5133:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB513374E1A80A27FF4F9FB719863A0@SN6PR04MB5133.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:98;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(376002)(39860400002)(136003)(366004)(189003)(199004)(305945005)(52536014)(53936002)(8676002)(81166006)(6246003)(7736002)(6436002)(5660300002)(3846002)(2906002)(4326008)(6116002)(74316002)(86362001)(229853002)(25786009)(68736007)(81156014)(256004)(2501003)(110136005)(478600001)(102836004)(186003)(66556008)(33656002)(2201001)(446003)(6506007)(53546011)(486006)(55016002)(476003)(316002)(9686003)(26005)(8936002)(66066001)(7696005)(71200400001)(66446008)(71190400001)(66946007)(99286004)(76116006)(66476007)(72206003)(73956011)(64756008)(76176011)(91956017)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5133;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4lyLE3h0AWlV+rMwi6WK4p0hFVvFy5OsouWhQE41MdKglQFCR/gznt3kDXtuoN7KcNBqNaI+k3w6eOuMJu5HqLeFkfI7GRfujwF7VlV3MdhunVEtoDUBwfKfjqrnnD8t9MKd9SK5ktAmegycN2xrb3FlbwnN4BZqh+Nf5rD4xQfCOKg2J4siWidjP8egJwSpwmSsYH1IRDWYmAP13CsdndWx5MWDK7YKKZqaHu5RCGfo2XiRwoLtYzChOqc8ljcimRkol887pxef4hPEAeaP5hC/0iZ1hMTTDzYLFcRMIrliYUeN0PczHWK7oY+1PM+yGA5PwlLDi3UC//JzKpcWm8XAQ5CITi9MzkqGaDfJWRP+0DOgIbvzJ0b/rrigqQaX+/+8btF6W+2XPwj9iCKrXBc26rsGqjd9ohRV6UOiCHU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b67ed3eb-16d5-4087-24b3-08d6cdb3180a
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 21:30:40.4431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_143045_048373_302204D8 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 4/30/19 8:39 AM, Christoph Hellwig wrote:
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 4 ++--
>   drivers/nvme/host/nvme.h | 3 ---
>   2 files changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index e970c5adee28..cd16d98d1f1a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3904,7 +3904,7 @@ static inline void _nvme_check_size(void)
>   }
>   
>   
> -int __init nvme_core_init(void)
> +static int __init nvme_core_init(void)
>   {
>   	int result = -ENOMEM;
>   
> @@ -3956,7 +3956,7 @@ int __init nvme_core_init(void)
>   	return result;
>   }
>   
> -void __exit nvme_core_exit(void)
> +static void __exit nvme_core_exit(void)
>   {
>   	ida_destroy(&nvme_subsystems_ida);
>   	class_destroy(nvme_subsys_class);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 527d64545023..5ee75b5ff83f 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -577,7 +577,4 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
>   	return dev_to_disk(dev)->private_data;
>   }
>   
> -int __init nvme_core_init(void);
> -void __exit nvme_core_exit(void);
> -
>   #endif /* _NVME_H */
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
