Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DD132590
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 00:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aOx9zt9aGTUuziwLxKThvWoPe7SaUVf/ROGimSyVopA=; b=uI/P80rY1FHrru
	8Ttv3Q97YS1CuDAus4LxynSSxJkbgWoNl7yp40or5FkO/LI9Hq3yDdfXI5UXUT624gN9qKaLIoWkM
	RmC5TbZQDqxVA3K9pOuEil9KIA4EnHjBwkaCJ00kKymhSt40DpjGp22IZjie/y1qPrM0EG7JJXLoV
	/Ko3KotPMt4SMQcLjDajY6jj2FEM/p4Mcf9EvL89JzDQg3/L6cbWNRTuRCt6E+VwqA8UHCJVXA496
	CLh1eB45S7JiKjV54i2qBchj8pSn3wlSG3S8wd0RjJZ2c0WjZbRrPELRSgYrsf4+lRJwqcpURbgtQ
	4BbphTRfmwp4X/7qkj/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZIA-0004E5-Go; Sun, 02 Jun 2019 22:49:30 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZI2-0004CL-SL
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 22:49:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559515762; x=1591051762;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=KxFjWeVFb2N8h6/rMg6aYHzvMILK2R2JprM9JRWffsk=;
 b=OlvD8hLBxWttKVTZazWkaxkPVDolEvcig0l9NoLg/OFJHkhGt6LGBdQi
 WOatfOUkkYSPmnOdekyvG94dnUJHwlflAi5dD5ts+0rW5/bKk1qYvrBcP
 1+u3rr/Ox95HiBFVhuOKRPBxpt4mT+RKs9oMJxv7k/pLASWma1HjY5hlD
 CewlYl3dtRKUEd8g7JbRZ6cOQGNkK88nDd3T3vnAdDDpcain7aacdNz+2
 KZalHRRNdb/TEcPRxqQZ6rrmSMwOzckCk3oR9LX/X0UB21JrlLKu0jCjT
 3+kHklDUpQm1dqMp5Zl9QfThR9c+bmuxJEigrtZjDOFI6X8DJv9XPxV7J A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="215884383"
Received: from mail-by2nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.51])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 06:49:22 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AT1Cgnskznf2AWx4jDCUhkGQUv8QlZdN8e7RKE8wDA0=;
 b=clf1yI3AGhQfNpZZuOpUc6T7ezKAoOTvu43GN1UIDR5gYGHkFSakWfdD84kuWVxfXn2PG19ocM0asHtDkFwDNEs3zT9MHdx1+oGABL9uILmR8wRCEiISdta132bNUgcQSTwSTw4fH+IqSDH2ZptUeTlJ/lckSSRlNulSm6MsJi8=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5111.namprd04.prod.outlook.com (52.135.235.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 22:49:16 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 22:49:16 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2 2/3] nvme: enable to inject errors into admin commands
Thread-Topic: [PATCH v2 2/3] nvme: enable to inject errors into admin commands
Thread-Index: AQHVGUo4YX2cmH1nJ0S0sFLb4Kgn3A==
Date: Sun, 2 Jun 2019 22:49:16 +0000
Message-ID: <BYAPR04MB57496C754D504636FDA28E58861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-3-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1f1688ac-e2af-4371-949b-08d6e7ac8ab7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5111; 
x-ms-traffictypediagnostic: BYAPR04MB5111:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5111EDBD0F4B7020B7300857861B0@BYAPR04MB5111.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(376002)(39860400002)(136003)(199004)(189003)(52536014)(256004)(5660300002)(14444005)(446003)(476003)(71190400001)(68736007)(71200400001)(478600001)(316002)(14454004)(486006)(72206003)(2501003)(86362001)(8676002)(229853002)(81166006)(81156014)(33656002)(99286004)(7696005)(55016002)(6436002)(186003)(66946007)(73956011)(25786009)(76116006)(4326008)(8936002)(64756008)(66476007)(66556008)(66446008)(9686003)(53546011)(110136005)(6506007)(102836004)(53936002)(66066001)(54906003)(2906002)(6246003)(305945005)(76176011)(7736002)(3846002)(6116002)(74316002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5111;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iC9uYCLZmj/wHmgEx+V+M+9DEPigL22Cl8jmMUTsvBbkSk8/xPhFJhNC+SAfD+iJJNQ1WUxENSSPR+mpoF5oo0rVCv+sVOfmfZSbUbvNXD43m0E6Rkf+86HPGOym6mDfWDqEgv8WRQvnEVqB7oy9VBU96G8l4DDn4hZC1ZUhLCEbzgTaOzZrpJtxj7nlWC8UQfRyMkey4A1TY6nw25iLK1K2HKACzMrmsz0LnuSPIOktgR2hcgFrV9XldCj63ugJDGmKvue2+j+bE2lAGMkUfTgapKZUOLYdCFlgQ+8lqt2dvbn7oMhkXjbaBuBnTPq/7YMVeqY1DGiTi27zqyEmOHt1B+VrpfVxKubjCE86rk49qhvhX4+4Ctd4aKifxo2zybdvu3NJ7puvom1RpviIbrNBBR6nuUlkPFJnFm8eb7w=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f1688ac-e2af-4371-949b-08d6e7ac8ab7
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 22:49:16.5393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_154923_108015_342CA51B 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 6/2/19 6:51 AM, Akinobu Mita wrote:
> This enables to inject errors into the commands submitted to the admin
> queue.
>
> It is useful to test error handling in the controller initialization.
>
> 	# echo 100 > /sys/kernel/debug/nvme0/fault_inject/probability
> 	# echo 1 > /sys/kernel/debug/nvme0/fault_inject/times
> 	# echo 10 > /sys/kernel/debug/nvme0/fault_inject/space
> 	# nvme reset /dev/nvme0
> 	# dmesg
> 	...
> 	nvme nvme0: Could not set queue count (16385)
> 	nvme nvme0: IO queues not created
>
> Cc: Thomas Tai <thomas.tai@oracle.com>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> * v2
> - add Reviewed-by tags
>
>  drivers/nvme/host/core.c         |  3 +++
>  drivers/nvme/host/fault_inject.c |  5 ++---
>  drivers/nvme/host/nvme.h         | 20 +++++++++++---------
>  3 files changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 9fca8457..66d8199 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -4093,6 +4093,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
>  
>  void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
>  {
> +	nvme_fault_inject_fini(&ctrl->fault_inject);
>  	dev_pm_qos_hide_latency_tolerance(ctrl->device);
>  	cdev_device_del(&ctrl->cdev, ctrl->device);
>  }
> @@ -4188,6 +4189,8 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
>  	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
>  		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
>  
> +	nvme_fault_inject_init(&ctrl->fault_inject, dev_name(ctrl->device));
> +
>  	return 0;
>  out_free_name:
>  	kfree_const(ctrl->device->kobj.name);
> diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
> index 18ad983..5868edf 100644
> --- a/drivers/nvme/host/fault_inject.c
> +++ b/drivers/nvme/host/fault_inject.c
> @@ -60,14 +60,13 @@ void nvme_should_fail(struct request *req)
>  	struct nvme_fault_inject *fault_inject = NULL;
>  	u16 status;
>  
> -	/*
> -	 * make sure this request is coming from a valid namespace
> -	 */
>  	if (disk) {
>  		struct nvme_ns *ns = disk->private_data;
>  
>  		if (ns)
>  			fault_inject = &ns->fault_inject;
> +	} else {
> +		fault_inject = &nvme_req(req)->ctrl->fault_inject;
>  	}
>  
>  	if (fault_inject && should_fail(&fault_inject->attr, 1)) {
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index c1658ed..e710829 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -147,6 +147,15 @@ enum nvme_ctrl_state {
>  	NVME_CTRL_DEAD,
>  };
>  
> +struct nvme_fault_inject {
> +#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
> +	struct fault_attr attr;
> +	struct dentry *parent;
> +	bool dont_retry;	/* DNR, do not retry */
> +	u16 status;		/* status code */
> +#endif
> +};
> +
>  struct nvme_ctrl {
>  	bool comp_seen;
>  	enum nvme_ctrl_state state;
> @@ -257,6 +266,8 @@ struct nvme_ctrl {
>  	 */
>  	struct thermal_zone_device *tzdev[9];
>  #endif
> +
> +	struct nvme_fault_inject fault_inject;
>  };
>  
>  enum nvme_iopolicy {
> @@ -323,15 +334,6 @@ struct nvme_ns_head {
>  #endif
>  };
>  
> -struct nvme_fault_inject {
> -#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
> -	struct fault_attr attr;
> -	struct dentry *parent;
> -	bool dont_retry;	/* DNR, do not retry */
> -	u16 status;		/* status code */
> -#endif
> -};
> -
>  struct nvme_ns {
>  	struct list_head list;
>  



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
