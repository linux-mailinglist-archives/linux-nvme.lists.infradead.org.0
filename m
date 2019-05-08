Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2651825B
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 00:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=v3KSPnGIXHwW6pjnmTmBbDwKy1ar7yAeEIB7wQTOK/o=; b=UXrts0xt09B4Vl
	0Dl9EnS0avwUx+qYa8zsb2LY2Ux55fDoaEfpVEyMN3KA3JfxJ3No8BxTKbWdLOulgngAtyt1wS6jy
	rrzfawqcciQXVYdS6U7SEY2qpNw4fVX1+POMLPNNwEIzy19p1JaQ95+9j0EGX26iPEMKbI9NdEZ5X
	M5jxHLEQL0Thbela7gNQ+9nrbPMnXNgkKDgsY4M8Zl2CSiJr+RRAElTcVgORVJ7tGHk/Yp3HcTerl
	9KizIJpAsOSw0issnNQamU0LXeirMp0AuEy0/DK7HKUd9MHO58YFqeHhBmi42fNrRqDRzSuxbVd1d
	AJhVOreS0tfPViLc2uaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOVHB-0002NT-NT; Wed, 08 May 2019 22:43:01 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOVH5-0002Mm-VM
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 22:42:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557355375; x=1588891375;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=UnEhIti74BjmlcSsf43KBnCrepeDj2pxhoBADNpVox4=;
 b=djaoLeE4i7UEGvyP5zLmMHWbwgNK5H7+4+U3+7htxx3kMzAzRxpfFt9F
 cD56DwwYk+mxxVnZr6x43eI35EShsOfUIpLVanvAOqAd3ET/q9WNjz9sw
 tkary/tqbFbvrykK7CJZ6yb2wF02Xjvp5rxop9K/cz/mH9p9T09+HVKjf
 wlU6ej6Knk80RBfFmB/3dasgA/48mSs7OIinkU27tiSKIGT2L4kZeMVu5
 koZKwlF1r6TGgkockLWo7fJRIvb4dBnW1QjAobyD0eKJ6/x1g1gcopTqb
 DNCjZCB7ZQ0a+f6nbpU94hgLfIRvYsV9c6tFXXxMZ1MDCXyOf7YUklNAz g==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="213851745"
Received: from mail-bn3nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.51])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 06:42:53 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FBzGvwzqLLUnwW6xybAy527E1PVxlURp3Z2Pcpara5E=;
 b=Ue2U2EfEQlggz3f9qTX4z4HkbG9ETB5yILspRss5g3hqg5haCxllFKyCbN/HniORHpvT7MtqfsUd+DBKpKiY3ClfCULtzlH+nY0aLVcXqGfQa9o16HWqFFHtUSWjv2XXIdJZy9OrcxdZsQ1eaQ0l8Aan9kbkE+rj7sCjxBQZuOw=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4349.namprd04.prod.outlook.com (52.135.72.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Wed, 8 May 2019 22:42:51 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 22:42:51 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "hare@suse.de" <hare@suse.de>
Subject: Re: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
Thread-Topic: [PATCH, RFC 1/2] nvme: change locking for the per-subsystem
 controller list
Thread-Index: AQHVBXN5Usa1+Ajv5Eyxi9XCWjICAg==
Date: Wed, 8 May 2019 22:42:51 +0000
Message-ID: <SN6PR04MB452790A4249949BA3C43DB4786320@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508075508.28552-1-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5abfe8d8-bea5-4401-a5c6-08d6d40680fe
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4349; 
x-ms-traffictypediagnostic: SN6PR04MB4349:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4349D323A26AAE3C3B1D94AF86320@SN6PR04MB4349.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(110136005)(7736002)(52536014)(3846002)(229853002)(53546011)(25786009)(102836004)(316002)(26005)(6506007)(9686003)(476003)(486006)(66476007)(66556008)(64756008)(66446008)(66946007)(305945005)(74316002)(73956011)(76116006)(91956017)(2501003)(81156014)(256004)(14444005)(6116002)(53936002)(5660300002)(8936002)(478600001)(86362001)(72206003)(33656002)(446003)(8676002)(76176011)(2906002)(186003)(7696005)(71190400001)(55016002)(6436002)(99286004)(14454004)(71200400001)(6246003)(81166006)(68736007)(4326008)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4349;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mL13/h6Imll720qaciAkZgvEUE0yR0Fb1ZRlo25s3XHgkQ3R1SxojhUAm4ds7pU4KfShwPTwUuslHCaVvG+EDg9obGsiJZ1kXfACAaDOqWxYv6159qIm8bGJrfS9Xq+p6iLSBVgySkYSsYouRunGvUXrIcvRIla63Qfrjq0XO05mUnQbBlh5+MdMiQ09m7mMkP1TVp3pV+K7NAS/xN7pYDp01aJjM+Pc8N+xCdW5nYdQZmF85Y09I/wsCmpl0HaZ01NS/skv8CyGU4PvBwcaw+Yk/69k3gCFC0BCnJx5ZbQ12rJ4lL53/3eFP62bN2ATqN+eWHXpkZNwwzvkdcRF1S01Sh5ZZAefd7TANThXyaSLw8TR2RRGDMDxhAycUqzyv6RfeY282XpwqZF7a3KDszSMeVf9bUBxe7iDpwYEtPQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5abfe8d8-bea5-4401-a5c6-08d6d40680fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 22:42:51.7807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_154256_015855_DE2AE275 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 05/08/2019 12:55 AM, Christoph Hellwig wrote:
> Life becomes a lot simpler if we just use the global
> nvme_subsystems_lock to protect this list.  Given that it is only
> accessed during controller probing and removal that isn't a scalability
> problem either.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 30 ++++++++++++------------------
>   1 file changed, 12 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index eebaeadaa800..4f4ffcce7416 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>   	int count = 0;
>   	struct nvme_ctrl *ctrl;
>
> -	mutex_lock(&subsys->lock);
>   	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>   		if (ctrl->state != NVME_CTRL_DELETING &&
>   		    ctrl->state != NVME_CTRL_DEAD)
>   			count++;
>   	}
> -	mutex_unlock(&subsys->lock);
Please correct me if I'm wrong.

nvme_free_ctrl() seems to be removing the ctrl from subsys->ctrls which 
gets added in the nvme_init_subsystem() and it is using subsys->lock.

In order to make above change work across nvme_init_subsytem() and 
nvme_free_ctrl() and it is not in the hot path, do we need to use 
nvme_subsystems_lock in nvme_free_ctrl() also ?
>
>   	return count;
>   }
> @@ -2394,6 +2392,9 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   	mutex_lock(&nvme_subsystems_lock);
>   	found = __nvme_find_get_subsystem(subsys->subnqn);
>   	if (found) {
> +		__nvme_release_subsystem(subsys);
> +		subsys = found;
> +
>   		/*
>   		 * Verify that the subsystem actually supports multiple
>   		 * controllers, else bail out.
> @@ -2402,14 +2403,10 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   		    nvme_active_ctrls(found) && !(id->cmic & (1 << 1))) {
>   			dev_err(ctrl->device,
>   				"ignoring ctrl due to duplicate subnqn (%s).\n",
> -				found->subnqn);
> -			nvme_put_subsystem(found);
> +				subsys->subnqn);
>   			ret = -EINVAL;
> -			goto out_unlock;
> +			goto out_put_subsystem;
>   		}
> -
> -		__nvme_release_subsystem(subsys);
> -		subsys = found;
>   	} else {
>   		ret = device_add(&subsys->dev);
>   		if (ret) {
> @@ -2421,23 +2418,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   		list_add_tail(&subsys->entry, &nvme_subsystems);
>   	}
>
> -	ctrl->subsys = subsys;
> -	mutex_unlock(&nvme_subsystems_lock);
> -
>   	if (sysfs_create_link(&subsys->dev.kobj, &ctrl->device->kobj,
>   			dev_name(ctrl->device))) {
>   		dev_err(ctrl->device,
>   			"failed to create sysfs link from subsystem.\n");
> -		/* the transport driver will eventually put the subsystem */
> -		return -EINVAL;
> +		goto out_put_subsystem;
>   	}
>
> -	mutex_lock(&subsys->lock);
> +	ctrl->subsys = subsys;
>   	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
> -	mutex_unlock(&subsys->lock);
> -
> +	mutex_unlock(&nvme_subsystems_lock);
>   	return 0;
>
> +out_put_subsystem:
> +	nvme_put_subsystem(subsys);
>   out_unlock:
>   	mutex_unlock(&nvme_subsystems_lock);
>   	put_device(&subsys->dev);
> @@ -3695,10 +3689,10 @@ static void nvme_free_ctrl(struct device *dev)
>   	__free_page(ctrl->discard_page);
>
>   	if (subsys) {
> -		mutex_lock(&subsys->lock);
> +		mutex_lock(&nvme_subsystems_lock);
>   		list_del(&ctrl->subsys_entry);
> -		mutex_unlock(&subsys->lock);
>   		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
> +		mutex_unlock(&nvme_subsystems_lock);
>   	}
>
>   	ctrl->ops->free_ctrl(ctrl);
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
