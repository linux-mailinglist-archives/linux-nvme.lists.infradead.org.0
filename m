Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CB7210C7
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 00:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=LUqglgvLRtKLpTA6HDQfL91ugl6iJ3w4qszuiE7wZZ4=; b=YiGn37sLOicX2t
	1A+et0RNqE8NKjGxGUKhK+wAbREhidierSGRAkU4G57olo42YVDvq43Fukn8jungdQU4sBkcwIH6p
	7+JZlBvfEj2T3ATD2VJaUBQrS3k+Y10+kD6CXgApNCKTZt6FXfJ0iu1Ep0tweQU2J9JH83/nxGUJt
	2S4DXFABLyFjmnGYkySg/Na30YyeGxdf6qMi+imb2x2zcRNICM92B8/UXjjIdKwtXHw+qCXo0bhRU
	BaCud50YWRWlB4mip4DspeUWRqCnRk0hclap3vVxt1qWVfjokmyOfT0AnmS4YaWwtr62HqC59WCVN
	bh81tECSPZXfQtVkvGdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPJM-0001t1-LG; Thu, 16 May 2019 22:57:16 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPJH-0001sg-8W
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 22:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558047431; x=1589583431;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=XHveOxuvHAfqS11bVe6kfESAqnrF0jGS7VL6cbqTP3g=;
 b=l1cv+UD346AVppi6ASi4MW+aLoyvhLnP+OvNohVyncfH4FvO7PtHDzEu
 L/jqE1VPa9ZlRZuJgZxhoIvaQ+c40jR62lxwB0mRZBo3Pi9uffgWqK2sV
 OTai6u/m4pfc07Ng1EfwIfRGZNhAWyJde4rdf9Z2hsxUzZw+TRyFJzZ96
 zMf4cKfvijisz4ez21XnYI/PsKzRp67ksjoGmEj4u2j2WEzYZvyHzUM4r
 K+GjHWOpoQTlAQons2gW5lTBgL8616f3+dn+KYlqpVh6trwBjCQhRwNzk
 NbNe2TxLmc1DLMSlNy6NQmMkxet8SdcExUU2PSjhrmHiNYw9LWX9vdojh Q==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="108461677"
Received: from mail-by2nam03lp2054.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.54])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 06:57:10 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H8jrRuvDk8whL5hfIvOnu8EDiccWEuozbobzc+6kAyM=;
 b=ogJ4OcMb/4lgfcpPP59QdOyQy4WTK0zdf64gVD+53lA+6FFWfbMSLURET7rLVL/M3nmPN5oM/FwQYoDD4DrJORK4GYJwEntxUa+iaKaVWjHPZwb0v8poBLN16NsJr996KTMJyzE2WysrY3Z8AU7UfQpmanatHB5Bz6eaglb2yVQ=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB3994.namprd04.prod.outlook.com (20.176.87.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 22:57:08 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 22:57:08 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Thread-Topic: [PATCH 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Thread-Index: AQHVDBhrVe+YWi68Dk+cBPOJ9MzHAA==
Date: Thu, 16 May 2019 22:57:08 +0000
Message-ID: <DM6PR04MB45215AEC51E8B3012AC6CC76860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516185036.17394-1-hch@lst.de>
 <20190516185036.17394-4-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21e07b68-53cb-436a-7521-08d6da51d31d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB3994; 
x-ms-traffictypediagnostic: DM6PR04MB3994:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB3994318AD9A83937D71B1EB4860A0@DM6PR04MB3994.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1002;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(346002)(366004)(39860400002)(136003)(189003)(199004)(52536014)(446003)(5660300002)(71190400001)(71200400001)(2501003)(486006)(186003)(476003)(3846002)(6116002)(2906002)(68736007)(26005)(7736002)(91956017)(73956011)(66446008)(64756008)(66556008)(66946007)(66476007)(76116006)(305945005)(72206003)(53936002)(102836004)(66066001)(4326008)(14454004)(6436002)(110136005)(8936002)(54906003)(74316002)(81156014)(9686003)(33656002)(8676002)(86362001)(316002)(81166006)(99286004)(55016002)(76176011)(478600001)(6246003)(53546011)(6506007)(14444005)(256004)(229853002)(7696005)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB3994;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VFa5AbycbFPjLNUpvRImBiniBL1oOrJtVlFCYX3Ha0hS+oSs0MMrSX1gSxJWiXQJ7pKMtLA7bkhcAcg+HLOaSvKnyMLWDIWZTpL1bNj391A4s0pgetytGDjwxiW4xfOkyFlNPRrZk/INAE9DizMPxn4M8WpEblNw64vHaRXN4p3jKWtPVXaUESxaWOBGA6KTmSdB+DLHsNMsOw4j5cvKM+dkcu556y7Rp/nphDO7QUB2nGp7zhI8dDp3jaIhe4iUGHs8r9XC+IYpZR1HsXW9YKg87WpKAfDoBV0Qs3xWGrUiIo5mn9joTWdLJ4XmO8w+pHLUjj3LPM3Y+9zBUXypg+paKen8eC5Q1Sxm+Tz6MH85s4SNS4qTG58susOwNBTH+dncrrUPRfNDJ6OgIEmR4k0CBu4T/k2Tc32gbtQwmYU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e07b68-53cb-436a-7521-08d6da51d31d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:57:08.7763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB3994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_155711_350596_F28995AB 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>,
 "kenneth.heitke@intel.com" <kenneth.heitke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good, with couple of small nits.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/16/19 11:51 AM, Christoph Hellwig wrote:
> Holding the SRCU critical section protecting the namespace list can
> cause deadlocks when using the per-namespace admin passthrough ioctl to
> delete as namespace.  Release it earlier when performing per-controller
> ioctls to avoid that.
>
> Reported-by: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 25 ++++++++++++++++++++-----
>  1 file changed, 20 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 27f4e0c4be69..a3102aabd525 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1394,14 +1394,31 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	if (unlikely(!ns))
>  		return -EWOULDBLOCK;
>  
> +	/*
> +	 * Handle ioctls that apply to the controller instead of the namespace
> +	 * seperately and drop the ns SRCU reference early.  This avoids a
> +	 * deadlock when deleting namespaces using the passthrough interface.
> +	 */
> +	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
> +		struct nvme_ctrl *ctrl = ns->ctrl;
> +
> +		nvme_get_ctrl(ns->ctrl);

nit:- just use ctrl instead of ns->ctrl in the above call since we are
already initializing it.

> +		nvme_put_ns_from_disk(head, srcu_idx);
> +
> +		if (cmd == NVME_IOCTL_ADMIN_CMD)
> +			ret = nvme_user_cmd(ctrl, NULL, argp);
> +		else
> +			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
> +
> +		nvme_get_ctrl(ctrl);
As Keith pointed out nvme_put_ctrl().
> +		return ret;
> +	}
> +
>  	switch (cmd) {
>  	case NVME_IOCTL_ID:
>  		force_successful_syscall_return();
>  		ret = ns->head->ns_id;
>  		break;
> -	case NVME_IOCTL_ADMIN_CMD:
> -		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
> -		break;
>  	case NVME_IOCTL_IO_CMD:
>  		ret = nvme_user_cmd(ns->ctrl, ns, argp);
>  		break;
> @@ -1411,8 +1428,6 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	default:
>  		if (ns->ndev)
>  			ret = nvme_nvm_ioctl(ns, cmd, arg);
> -		else if (is_sed_ioctl(cmd))
> -			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
>  		else
>  			ret = -ENOTTY;
>  	}



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
