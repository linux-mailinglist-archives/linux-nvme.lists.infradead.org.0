Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20A83258F
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 00:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RGZ1ueQlN7sJgrshKoIo+9bn9jvOxVhWr7KHG11AaOE=; b=XYIM9oUWqXbyev
	VL5kf8uHAQ+dOSOm2tonZ0FoclftmK3V+XbAJAKOLLsU9FZ5phHNFjD+xAGmdKN0Yp1X99Jv/GEaH
	5D7YEHjAzoTcIr/9fO+mH8wd/usvExK+qGm02eDD4tZUFR2586UHd7Nzqh/9JT9b6kR/nEhG86Og3
	eCQbzI/znhC6pJWEOrbwbh3H0hbRT2RhuXISBlZUr52/bxqV15lL6//E+pmDMx5vhE/OY4xdWuhrO
	jseS/kAf5d96n5UpseannXNfabeSAOAtOf707MsvUd1RZ5jnr8f1YihV1aRrGr9a9p5k9mtpRsI3y
	2bV94Co7FJrNHngYgJlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZHu-00045r-58; Sun, 02 Jun 2019 22:49:14 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZHo-00045V-Dm
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 22:49:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559515748; x=1591051748;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=bFO2Dn5WmH/rs7KQjYHwCqItWbsk9eH0hPvbXqd3kvo=;
 b=CJwL4d5NV+DpHHDanQD/l25bSF+5QiDGYoi/Bd+8x5q3LEiW+I257zck
 qncoDtDjlUO7WitiiHv79wMuap7OhDN1nbBMVURq72NWGFxE3tYd8wTHG
 WTBt564Heq3Sf2/Szu5p27pmeTwbiy2CB3PvgKYhkWEw+9Kg9oRTcH2S6
 Sdj8Wv614A0f4vi3dT1Jg5UPFFF+eLfnvQFSBynl+shbJCyxVyMPMJHK3
 KpWO7KptkY+wStJ+i6D4rGH6HQUELTECBeodc78wmhISfavttdJYWOnnu
 X2SOaczjpqUCBW1HVdITP1ncY51P6OZ8zti+NvtHkwB0ct0RZWOwzFPSv A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="215884364"
Received: from mail-by2nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.56])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 06:49:06 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ak9sH4BrLNM6itLKCOpBDPv+cRvKRPUntKszoWHdFQA=;
 b=xQyc7rP/5m+BtS3YcMF0KE1RPWgYI/Fmo/HHAINhK+zpivGo+LPjEoSlZE1Izh1S+gBhHDV10GRuj0srpSgW+xUxZ11OObmqL60iO639GD8wh6PfWLWB6Wa2vDdhVJfqxDlulw7etaXkbnA3Yq/Zo2Evd/u+QFuqveH/efGPcrU=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5111.namprd04.prod.outlook.com (52.135.235.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 22:49:04 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 22:49:04 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2 1/3] nvme: prepare for fault injection into admin
 commands
Thread-Topic: [PATCH v2 1/3] nvme: prepare for fault injection into admin
 commands
Thread-Index: AQHVGUo7ydF+S/tvIEG3wfiGCB322w==
Date: Sun, 2 Jun 2019 22:49:04 +0000
Message-ID: <BYAPR04MB57493EBBA22254D3B81EA6B2861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
 <1559483421-11361-2-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 338bf229-4f3e-41e6-8372-08d6e7ac83a4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5111; 
x-ms-traffictypediagnostic: BYAPR04MB5111:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5111BC7115464A6958445BD4861B0@BYAPR04MB5111.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:177;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(396003)(346002)(376002)(39860400002)(136003)(199004)(189003)(52536014)(256004)(5660300002)(14444005)(446003)(476003)(71190400001)(68736007)(71200400001)(478600001)(316002)(14454004)(486006)(72206003)(2501003)(86362001)(8676002)(229853002)(81166006)(81156014)(33656002)(99286004)(7696005)(55016002)(6436002)(186003)(66946007)(73956011)(25786009)(76116006)(4326008)(8936002)(64756008)(66476007)(66556008)(66446008)(9686003)(53546011)(110136005)(6506007)(102836004)(53936002)(66066001)(54906003)(2906002)(6246003)(305945005)(76176011)(7736002)(3846002)(6116002)(74316002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5111;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OloQxFEdIMeNkJrRX4WAqFWy9Obp8E8X3BGNqLtATTQnmz9+Rgmr5rUi0bF4Ja02wWNJbI44gzI6eeu3qKxoIDLbeDrBpsrbhz3BTkxJhNw57535X7LrtSfenaqw9FwYXVG9bTUMmSQmSzuKqw634neZ+8wwEcAlM/XMA1TMLvqOZQ50W9tkmxa4w+nFBdXF8YvMkJVPdZNFWxsL+uNRV6jdib42zcmLO5m882EA+440rfC12nQLwvinNebxOHOMYZ3MRyGz07Xr63bDhrx+OlV6++5aMT+Qsz0uWwc7TTW3y3zFtecX4z5Bpg8SlkXE7ZFiJPtUbWaw7rsLaRU0g4uUFtUtOLbBvpM3VQoVL9YwkXfAINWg6ATDOh9LDBWNi5BJ0lZD9xVCzkfDJG8FfGKGeJgeNZioeyWriUwavps=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 338bf229-4f3e-41e6-8372-08d6e7ac83a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 22:49:04.7502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_154908_657091_6E8C4D29 
X-CRM114-Status: GOOD (  20.09  )
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
> Currenlty fault injection support for nvme only enables to inject errors
> into the commands submitted to I/O queues.
>
> In preparation for fault injection into the admin commands, this makes
> the helper functions independent of struct nvme_ns.
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
> - rename the argument 'name' to 'dev_name'
> - add Reviewed-by tags
>
>  drivers/nvme/host/core.c         |  4 ++--
>  drivers/nvme/host/fault_inject.c | 34 ++++++++++++++++++----------------
>  drivers/nvme/host/nvme.h         | 20 ++++++++++++--------
>  3 files changed, 32 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 26c8b59..9fca8457 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3698,7 +3698,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  	device_add_disk(ctrl->device, ns->disk, nvme_ns_id_attr_groups);
>  
>  	nvme_mpath_add_disk(ns, id);
> -	nvme_fault_inject_init(ns);
> +	nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
>  	kfree(id);
>  
>  	return 0;
> @@ -3723,7 +3723,7 @@ static void nvme_ns_remove(struct nvme_ns *ns)
>  	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
>  		return;
>  
> -	nvme_fault_inject_fini(ns);
> +	nvme_fault_inject_fini(&ns->fault_inject);
>  	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
>  		del_gendisk(ns->disk);
>  		blk_cleanup_queue(ns->queue);
> diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
> index 4cfd2c9..18ad983 100644
> --- a/drivers/nvme/host/fault_inject.c
> +++ b/drivers/nvme/host/fault_inject.c
> @@ -15,11 +15,10 @@ static DECLARE_FAULT_ATTR(fail_default_attr);
>  static char *fail_request;
>  module_param(fail_request, charp, 0000);
>  
> -void nvme_fault_inject_init(struct nvme_ns *ns)
> +void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
> +			    const char *dev_name)
>  {
>  	struct dentry *dir, *parent;
> -	char *name = ns->disk->disk_name;
> -	struct nvme_fault_inject *fault_inj = &ns->fault_inject;
>  	struct fault_attr *attr = &fault_inj->attr;
>  
>  	/* set default fault injection attribute */
> @@ -27,20 +26,20 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
>  		setup_fault_attr(&fail_default_attr, fail_request);
>  
>  	/* create debugfs directory and attribute */
> -	parent = debugfs_create_dir(name, NULL);
> +	parent = debugfs_create_dir(dev_name, NULL);
>  	if (!parent) {
> -		pr_warn("%s: failed to create debugfs directory\n", name);
> +		pr_warn("%s: failed to create debugfs directory\n", dev_name);
>  		return;
>  	}
>  
>  	*attr = fail_default_attr;
>  	dir = fault_create_debugfs_attr("fault_inject", parent, attr);
>  	if (IS_ERR(dir)) {
> -		pr_warn("%s: failed to create debugfs attr\n", name);
> +		pr_warn("%s: failed to create debugfs attr\n", dev_name);
>  		debugfs_remove_recursive(parent);
>  		return;
>  	}
> -	ns->fault_inject.parent = parent;
> +	fault_inj->parent = parent;
>  
>  	/* create debugfs for status code and dont_retry */
>  	fault_inj->status = NVME_SC_INVALID_OPCODE;
> @@ -49,29 +48,32 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
>  	debugfs_create_bool("dont_retry", 0600, dir, &fault_inj->dont_retry);
>  }
>  
> -void nvme_fault_inject_fini(struct nvme_ns *ns)
> +void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject)
>  {
>  	/* remove debugfs directories */
> -	debugfs_remove_recursive(ns->fault_inject.parent);
> +	debugfs_remove_recursive(fault_inject->parent);
>  }
>  
>  void nvme_should_fail(struct request *req)
>  {
>  	struct gendisk *disk = req->rq_disk;
> -	struct nvme_ns *ns = NULL;
> +	struct nvme_fault_inject *fault_inject = NULL;
>  	u16 status;
>  
>  	/*
>  	 * make sure this request is coming from a valid namespace
>  	 */
> -	if (!disk)
> -		return;
> +	if (disk) {
> +		struct nvme_ns *ns = disk->private_data;
> +
> +		if (ns)
> +			fault_inject = &ns->fault_inject;
> +	}
>  
> -	ns = disk->private_data;
> -	if (ns && should_fail(&ns->fault_inject.attr, 1)) {
> +	if (fault_inject && should_fail(&fault_inject->attr, 1)) {
>  		/* inject status code and DNR bit */
> -		status = ns->fault_inject.status;
> -		if (ns->fault_inject.dont_retry)
> +		status = fault_inject->status;
> +		if (fault_inject->dont_retry)
>  			status |= NVME_SC_DNR;
>  		nvme_req(req)->status =	status;
>  	}
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 53f0b24..c1658ed 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -323,14 +323,14 @@ struct nvme_ns_head {
>  #endif
>  };
>  
> -#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
>  struct nvme_fault_inject {
> +#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
>  	struct fault_attr attr;
>  	struct dentry *parent;
>  	bool dont_retry;	/* DNR, do not retry */
>  	u16 status;		/* status code */
> -};
>  #endif
> +};
>  
>  struct nvme_ns {
>  	struct list_head list;
> @@ -359,9 +359,7 @@ struct nvme_ns {
>  #define NVME_NS_ANA_PENDING	2
>  	u16 noiob;
>  
> -#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
>  	struct nvme_fault_inject fault_inject;
> -#endif
>  
>  };
>  
> @@ -382,12 +380,18 @@ struct nvme_ctrl_ops {
>  };
>  
>  #ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
> -void nvme_fault_inject_init(struct nvme_ns *ns);
> -void nvme_fault_inject_fini(struct nvme_ns *ns);
> +void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
> +			    const char *dev_name);
> +void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject);
>  void nvme_should_fail(struct request *req);
>  #else
> -static inline void nvme_fault_inject_init(struct nvme_ns *ns) {}
> -static inline void nvme_fault_inject_fini(struct nvme_ns *ns) {}
> +static inline void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
> +					  const char *dev_name)
> +{
> +}
> +static inline void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inj)
> +{
> +}
>  static inline void nvme_should_fail(struct request *req) {}
>  #endif
>  



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
