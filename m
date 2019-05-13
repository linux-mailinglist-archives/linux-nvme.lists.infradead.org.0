Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6821B9B0
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ymXyHWVLOJlMmPVsi+VVNB+dsg9XF8HC40PGrT4K/5c=; b=PqDDbDF8s0gNwh
	FLoBX9ycE36rApXRdkmacOrXJKFKf+Z7D5iNrQ5KEs32CVNJ+ge8K8MUZrEwoaGrUD+t4HmMT+Nkp
	ixtQDfEG7lxwmrla1gE1Wg3WoSf9PJvIeMr0BcVaDAw0YVdRq2dKoHi5S/kUsLYaJ4T+vfyyiM1v1
	QCcwL105tbj3SmAUauUrP0EWbhPiIZHtwu5hjpMOuY9fXY8HxytqQjOAuq4L0OLZhvJgat8lHpXeL
	PuSkJ64vB8pQFAbGaPaPX76nFIkTlu71R9/88l/wOMIZ7hY3HWno/Cx7TOsQCnNoacwT/RDlltK/I
	+kwTQEpo0sgM0h6C/5hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCg8-0007Bs-9Q; Mon, 13 May 2019 15:15:48 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCg2-0007BO-LK
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:15:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557760543; x=1589296543;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=I8G5f/O5zapgk1XvmjaRJiea8zzoGjszdM1qSSEVHVA=;
 b=p02TT8byB0HX4dRUuCDmyTxThPAEf/r+TTxsT8qtQtB08GhHDNBWgamK
 ixI5EcgDnYtDIUKI/Qlk2sfL38beEaa7QAAoqZnw+21Ihdz7cHxGO4x72
 eSzor8zqZxAG3advKM/lDLF4a/K/9OumkL6QqeIhJRIstNIgrgfY2/pzL
 XjK9dISUTddU6MRtbTZgdCql+0un3sOatjO0QIFhKwBsGQ3G9/g4bh4fn
 vFXiCvw0kDMPpXD2MUSV8ipaKxPYW9MXrnR8IADZpGJ4g8fH748mkA9F7
 0182EKbLLqVggmi1uCB1ySEM6bJsNr5r/mFThr4K6FsUWhBRppaoLdJus g==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="108154483"
Received: from mail-co1nam05lp2051.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.51])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:15:40 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mYUDmNQSorSz2gMka97W2UQ8vrgRFDPUeAouVX0AfME=;
 b=cu8F5LQtT8E0CzdegheE6WJPTewKp2tPQc9P/2ScnWL+nGzyASDtHFAF/1q47d90a/9itZb1i8RExVO2c+L0lZnuPM1UiJ7cNRlHvRipdQeeoW3eb8pgQpJ/g+MTOvlwij+wlfbEcE91D8GuPNdix+iSbPu1bBRDhCCFOOXbWVw=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3935.namprd04.prod.outlook.com (52.135.82.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Mon, 13 May 2019 15:15:37 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:15:37 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "hare@suse.de" <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme: change locking for the per-subsystem controller
 list
Thread-Topic: [PATCH 1/2] nvme: change locking for the per-subsystem
 controller list
Thread-Index: AQHVCVTB0TXy3AF0T0m7Zy7yIf6hgw==
Date: Mon, 13 May 2019 15:15:37 +0000
Message-ID: <SN6PR04MB4527D9CE64D51E7A1786DDB8860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190513062510.756-1-hch@lst.de> <20190513062510.756-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72cad0eb-8e38-4e26-55b5-08d6d7b5da89
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3935; 
x-ms-traffictypediagnostic: SN6PR04MB3935:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB393524F1F482CC1C0D7E7967860F0@SN6PR04MB3935.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(136003)(376002)(366004)(39860400002)(199004)(189003)(66066001)(55016002)(52536014)(71190400001)(71200400001)(5660300002)(68736007)(14454004)(486006)(446003)(14444005)(6436002)(256004)(476003)(66446008)(64756008)(110136005)(2906002)(7696005)(76176011)(7736002)(3846002)(66556008)(99286004)(305945005)(6116002)(66476007)(66946007)(73956011)(74316002)(4326008)(76116006)(72206003)(91956017)(53546011)(6506007)(229853002)(25786009)(102836004)(9686003)(86362001)(8676002)(81156014)(186003)(81166006)(53936002)(33656002)(6246003)(2501003)(478600001)(8936002)(26005)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3935;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9FWc4pJVMaN3TwT6d6rdmVZOZSuJ+ZeO+/lR8TlDS6+JCp7R8GRmqCxdRHRgnqmEUJ6ikGZ6pte4fv2mV+rdfRfDViMIc2/yH5gt7fpGw1FSug+0138qR/hTTS3bpC7IEM8jUJpQdZOi3VMnCh3+Wxg1xSmz8Kys0PL8eulVXmbbdAFF7zp6lSF7nivFjyfch43VDwFAMPaD3esOwlIpM3AR7cZs8JQUptr6v5B+5c1VGysNVcjrcyDW8RF3RdR2gDtZs1mmEDEh9LrURfWBnAEMOa5WPaSHWVd9efmbiyOe0zJZq1xQDqwkCPyzEZEoJj6VMlxbG8nK9EeuUwud/jYU29Y76nhF80Ec6ZPNMv6SDWPhm/laxfm0hYQX5POqriEd3CeJb0WjOCU4EpNgc3SPFZyMJULti7FXMTIXrx4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72cad0eb-8e38-4e26-55b5-08d6d7b5da89
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:15:37.3248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081542_740718_AF34C829 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>.

On 05/12/2019 11:26 PM, Christoph Hellwig wrote:
> Life becomes a lot simpler if we just use the global
> nvme_subsystems_lock to protect this list.  Given that it is only
> accessed during controller probing and removal that isn't a scalability
> problem either.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 32 ++++++++++++++------------------
>   1 file changed, 14 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index eebaeadaa800..70a2bc01e41e 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2346,13 +2346,13 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
>   	int count = 0;
>   	struct nvme_ctrl *ctrl;
>
> -	mutex_lock(&subsys->lock);
> +	lockdep_assert_held(&nvme_subsystems_lock);
> +
>   	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
>   		if (ctrl->state != NVME_CTRL_DELETING &&
>   		    ctrl->state != NVME_CTRL_DEAD)
>   			count++;
>   	}
> -	mutex_unlock(&subsys->lock);
>
>   	return count;
>   }
> @@ -2394,6 +2394,9 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   	mutex_lock(&nvme_subsystems_lock);
>   	found = __nvme_find_get_subsystem(subsys->subnqn);
>   	if (found) {
> +		__nvme_release_subsystem(subsys);
> +		subsys = found;
> +
>   		/*
>   		 * Verify that the subsystem actually supports multiple
>   		 * controllers, else bail out.
> @@ -2402,14 +2405,10 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
> @@ -2421,23 +2420,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
> @@ -3695,10 +3691,10 @@ static void nvme_free_ctrl(struct device *dev)
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
