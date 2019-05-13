Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492221B9BA
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NPUfoWBleSodD4J+52zXhQDcfqmgcNPqKqyPyAFMdUM=; b=DD2evg0Omr7Aap
	YY0MWoQHXUkwIQbq+2irBLFm6qcQ71/YGd3mT/mXUl4g0m2qP4rMqO0QhCyn6UvAxjgZd4qTNfuw0
	d7XjMKqDJoanuo+2QYIdVHHHuK9QbwV0E3y//mEJkuFREd8/tWo7HCEh4kzCeDTKMOOf9174r3kbJ
	e1xAT1yvNyZ42iRorwvD9aYdpu0NiXb+ECfplw2j5rT1Oy6BeeDe0Iflmw9yZXGed2qX8YsM1z+9O
	He/3SLITNkffQGXGUKs2uVDmmUN06KMRPDMha0oTcE4XaHQhPtIizLVNSRFf5y3g1/p1msQwERdGx
	E8q82AvSF2LDPGx1rhPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCgl-0007j9-4M; Mon, 13 May 2019 15:16:27 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCgf-0007i8-96
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:16:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557760581; x=1589296581;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=nTB6GGjUtpFLS1URLoSfzZQ6IBdQhcDq44UmoUAiVhY=;
 b=insghXuRR40AYk1W+NPPDPdMbPzXsraqfUcv0vmGHZx+4+AsAfRxces+
 0LxUtCcZ2WFPUbUOb2xb6c0qKJXv505P7MtjP/LGJ2efbTNt1Apsmn5ge
 0F+2jMpc0R2sHZI1ZvASzmC8TvEWZ9fWbXM6r9v8hprfsgTVOVAKVACDP
 HJ4uLWwqw2RRkC2Dc0DUCF+pH7S2MDs4btWVJgJTmqtckWlMNglY/9Z20
 biIcevRB8CUwiehYMn0Sai4McLDFQpGRhNJiv9NOA3Td1elH/ozbZSE5F
 JqiBJqjWVlEm2zGJhOaBgeVw7y9OADdp82+YeBvyat9EFjT4Z/9pGgMdZ g==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="108154532"
Received: from mail-co1nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.59])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:16:21 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tmj1X9bKOu0NvVnfpKMovpRu85Q5LuYzAE76U1bTuL4=;
 b=RYJm6yawjC3fiuoJc6QZuXbvnoLe2l1lVMVFvjL/R7xILji5idJXle+AFzj3kruJOhchbMEpfjxP/pFC/AlUdl4I+7reQMZyHd/mvzzdVwKhya7LRBf/2v2EqenickoY3qVBlLaTmwmfL1Mp1LXVmTJYUxUO5UBrzU7C9TdGC84=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3935.namprd04.prod.outlook.com (52.135.82.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Mon, 13 May 2019 15:16:19 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:16:19 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "hare@suse.de" <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme: validate cntlid during controller initialisation
Thread-Topic: [PATCH 2/2] nvme: validate cntlid during controller
 initialisation
Thread-Index: AQHVCVTEX7Pxb+t0CEGE3uiBHL/kvw==
Date: Mon, 13 May 2019 15:16:19 +0000
Message-ID: <SN6PR04MB45270478B09DF4C9516B2280860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190513062510.756-1-hch@lst.de> <20190513062510.756-3-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d678e8f6-dc36-4202-f0b3-08d6d7b5f38c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3935; 
x-ms-traffictypediagnostic: SN6PR04MB3935:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB393592A38C5317E4C8D4A806860F0@SN6PR04MB3935.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:751;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(346002)(136003)(376002)(366004)(39860400002)(199004)(189003)(15650500001)(66066001)(55016002)(52536014)(71190400001)(71200400001)(5660300002)(68736007)(14454004)(486006)(446003)(14444005)(6436002)(256004)(476003)(66446008)(64756008)(110136005)(2906002)(7696005)(76176011)(7736002)(3846002)(66556008)(99286004)(305945005)(6116002)(66476007)(66946007)(73956011)(74316002)(4326008)(76116006)(72206003)(91956017)(53546011)(6506007)(229853002)(25786009)(102836004)(9686003)(86362001)(8676002)(81156014)(186003)(81166006)(53936002)(33656002)(6246003)(2501003)(478600001)(8936002)(26005)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3935;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2nnO2D8DV8jt7fhaswy83ddLQ+5gREP1ZXDKMO+zopOlaz9tbib1eWJenV7OzDrqG3PBNE8IrrIFmjuPOTw2Uekp36kszhQvL2RKxWeErg4t+YudMVzi0fibdtZbxIGIuKPKAsF/RY1DI8tCpukxSuCqjHl4TE/+YACcaa3ap3O8nQU8LKz3Eh7NlAhVeuR5JrXQOrQgsUUHib3fTYLJthVWpGNd2zycIrzK7TZffj3rH2aU1Yudq0kPmwLLhROSi1eZgnAC3ZXqLS8wfRTToA+gLNZG7aMhkuQC70ZSHbzEvpNWo3KQ4oK6R+aFoqGvIgczrghA1Hw7iONhOJQc7czhgmN38Dh3X9Ocsd+IbcUJS1cAW9Cx60z7fXvFxOgpsP/R1XsfN+F0mc0H27S3hinFsw0Nx/1Li08GKqSW8fg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d678e8f6-dc36-4202-f0b3-08d6d7b5f38c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:16:19.3645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_081621_359930_0831DF18 
X-CRM114-Status: GOOD (  18.64  )
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
> The CNTLID value is required to be unique, and we do rely on this
> for correct operation. So reject any controller for which a non-unique
> CNTLID has been detected.
>
> Based on a patch from Hannes Reinecke.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 41 +++++++++++++++++++++++-----------------
>   1 file changed, 24 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 70a2bc01e41e..09a1d5ca872f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2341,20 +2341,35 @@ static const struct attribute_group *nvme_subsys_attrs_groups[] = {
>   	NULL,
>   };
>
> -static int nvme_active_ctrls(struct nvme_subsystem *subsys)
> +static bool nvme_validate_cntlid(struct nvme_subsystem *subsys,
> +		struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   {
> -	int count = 0;
> -	struct nvme_ctrl *ctrl;
> +	struct nvme_ctrl *tmp;
>
>   	lockdep_assert_held(&nvme_subsystems_lock);
>
> -	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
> -		if (ctrl->state != NVME_CTRL_DELETING &&
> -		    ctrl->state != NVME_CTRL_DEAD)
> -			count++;
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (ctrl->state == NVME_CTRL_DELETING ||
> +		    ctrl->state == NVME_CTRL_DEAD)
> +			continue;
> +
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			dev_err(ctrl->device,
> +				"Duplicate cntlid %u with %s, rejecting\n",
> +				ctrl->cntlid, dev_name(tmp->device));
> +			return false;
> +		}
> +
> +		if ((id->cmic & (1 << 1)) ||
> +		    (ctrl->opts && ctrl->opts->discovery_nqn))
> +		    	continue;
> +
> +		dev_err(ctrl->device,
> +			"Subsystem does not support multiple controllers\n");
> +		return false;
>   	}
>
> -	return count;
> +	return true;
>   }
>
>   static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
> @@ -2397,15 +2412,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   		__nvme_release_subsystem(subsys);
>   		subsys = found;
>
> -		/*
> -		 * Verify that the subsystem actually supports multiple
> -		 * controllers, else bail out.
> -		 */
> -		if (!(ctrl->opts && ctrl->opts->discovery_nqn) &&
> -		    nvme_active_ctrls(found) && !(id->cmic & (1 << 1))) {
> -			dev_err(ctrl->device,
> -				"ignoring ctrl due to duplicate subnqn (%s).\n",
> -				subsys->subnqn);
> +		if (!nvme_validate_cntlid(subsys, ctrl, id)) {
>   			ret = -EINVAL;
>   			goto out_put_subsystem;
>   		}
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
