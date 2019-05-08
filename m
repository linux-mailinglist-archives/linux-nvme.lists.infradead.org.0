Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4C18011
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 20:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=btoJAVwUh2t8GOY3ywE9v+JmN6+T9LI1ZocJjrqE2Hk=; b=aqaALbtmbyoaeD
	C5se0yhvBk3tng/Wl0d8AuoVz8T8whu5IBxZCHXSYIGSmjHI9AslqdO/fUBxZPilhmdWXK4PWzqHe
	pBNThabmgd5eVeFWCDL+5b2IFBjHAk9sLA0alec3WTvVqe7AgYGnG+XyGRIissj0k8jZ95CNn7+u0
	CVxBBT7sKb839Hmd0XuOyjNYLlQOE2l4yYBX6pVWayFsWYpsAzQ0LsbnmAu1t04kBrWMnPO2t9GDQ
	YKv27966YB4Hg8w7FJLxup7Uzgi7B68tydtIYTMvVyDXn3nHU5ogSwXMTmzJQuBFKmt2NjfvsigbY
	9ZIxyuih5oJZZbMer2Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORfc-00034M-JX; Wed, 08 May 2019 18:52:00 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORfX-00033z-Fn
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 18:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557341516; x=1588877516;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=R/7qvHIdeg1+8JZD07HOTA4tIYzX8Q1g93jjlHqZDTg=;
 b=kywvLS1obpcOlrOku2QrgFuy7gJ6E1y+4NniKdpU/6T8kxi0ZqmfaFNk
 33kRjeB5uVU168yoajTzLhojQcaFoGAJu+alezE9Uz1TAKaRoNFfCOR2L
 nwocuSE51OUE01q04uhhrHT6bOavGuxXpYkZVejullmtkha2SJTKj2Wxz
 pdpGq0HIuRA9ieN2l5K39WmMWr8D9Ry3ocAUavuyhCd820y/vd2wnN6er
 0l7YS+aThD36+X/Bbr1xt56O/yjnzElGelw5Ij25aWKpzj+5DXoqF/EUn
 5ilskHoTh1bz6YCpDk+rHK/urvvuOeMCJ0kZLgCDsL4X8wgefTtIDFGPC w==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="112768877"
Received: from mail-bn3nam01lp2050.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.50])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 02:51:53 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tYVh8iF/qyCiomUN4p/7k92IANIKLLjxzVDIos9JNVk=;
 b=MuTFnL8iF1KLPF9UXfM1QzDyysYDn9techDfMpeaf65HKwDmg1c5OCUK1qpqjOoMdvTlF5u2u6+YEvc+f59L/YD7lfx2hPI49TpaxYMW05KY9CQ2h7M4aFJxJEcjpqugwYVs2Y32LXSeDuNkrCbUsPWz/j5Su67V3TtrcvEUBCo=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4782.namprd04.prod.outlook.com (52.135.122.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Wed, 8 May 2019 18:51:52 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 18:51:52 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "hare@suse.de" <hare@suse.de>
Subject: Re: [PATCH, RFC 2/2] nvme: validate cntlid during controller
 initialisation
Thread-Topic: [PATCH, RFC 2/2] nvme: validate cntlid during controller
 initialisation
Thread-Index: AQHVBXN9G+/jvfeUfUmJx7XzNB9zeQ==
Date: Wed, 8 May 2019 18:51:51 +0000
Message-ID: <SN6PR04MB45279ACEF3572C4F1F00ADF586320@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508075508.28552-1-hch@lst.de>
 <20190508075508.28552-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b366db5-2b51-4175-04e9-08d6d3e63be8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4782; 
x-ms-traffictypediagnostic: SN6PR04MB4782:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4782BC10CE408868DCB9102286320@SN6PR04MB4782.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(136003)(376002)(39860400002)(366004)(189003)(199004)(305945005)(33656002)(7736002)(53936002)(74316002)(9686003)(110136005)(316002)(86362001)(256004)(14444005)(2501003)(3846002)(6116002)(52536014)(14454004)(72206003)(478600001)(91956017)(76116006)(2906002)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(53546011)(446003)(6506007)(5660300002)(476003)(26005)(186003)(102836004)(25786009)(71190400001)(71200400001)(6246003)(66066001)(4326008)(55016002)(68736007)(229853002)(6436002)(15650500001)(486006)(99286004)(8936002)(81166006)(81156014)(8676002)(7696005)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4782;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aEPv66VyymBFYmOfuxEnA8KuKQUQIcbvRXfDD2nBvIElvUydv/Awn6h3ACwW3oaAcEF5qG3B69apf7vEVI9OrmbZ5iLDRTfGdi+zs2lwaff6DWyUYINgpuz63hFq0mVhlHYV3Cxs92peuW8bsue+UgJK+yJc8k5r2xVZ+ALXAepicsHfKwerxSfTKrn2D1WmulnFvdbE6GSjFlwxhE9OdHq+n91HRKxOzIXjRDYT3iUI56AHvvEJGNm6cJza02u/OewV7dUdwJpHwEOWMIHAAupjvM8u5Q97ai3RjHOCt4T4boeZ+VwzGwJmVf3KR8FvbJzyTw1Jz9INvf8kSgiIajVE1VXYd1fSdoLGrIwmhDItynaI+yMLcw0SLo9qsRijePsHgiX5DJe71SlmsYsfjTJP625M/mtFBME4GkclfsA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b366db5-2b51-4175-04e9-08d6d3e63be8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 18:51:51.9683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_115155_563229_E94CE080 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

On 05/08/2019 12:56 AM, Christoph Hellwig wrote:
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
> index 4f4ffcce7416..ce258cbdc642 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2341,18 +2341,33 @@ static const struct attribute_group *nvme_subsys_attrs_groups[] = {
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
> -	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
> -		if (ctrl->state != NVME_CTRL_DELETING &&
> -		    ctrl->state != NVME_CTRL_DEAD)
> -			count++;
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (ctrl->state == NVME_CTRL_DELETING ||
> +		    ctrl->state == NVME_CTRL_DEAD)
nvme_change_ctrl_state() is using spinlock to protect the ctrl->state.
Do we need to protect above check with the spinlock ?
> +			continue;
> +
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			dev_err(ctrl->device,
> +				"Duplicate cntlid %u, rejecting\n",
> +				ctrl->cntlid);
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
> @@ -2395,15 +2410,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
