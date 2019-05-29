Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B571F2E845
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 00:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=wgqgVuC4lZ29RN0ZXrAoXtnWAX1ic12xJ5qXrf27zDA=; b=kyH1Gv0DPaJDuO
	olq9E2qj0NAEhNZvbKfC2y7e3XW2TIJoWUQIGJg2a8UvYaWGVH0QwhegMFioQWeoV2n7MVAsqq9Zk
	5udDFJR/C1/jXMDDfxLtNRqR2c7jZX8XveYCPd/haQJpwz+aaXOVGi2ZApKrNyDuT6vQQmIZuSKwa
	cectoIdo5RvgbdVpgKzDjVuP5EHzj95RA701zll8Zy7ap0+rfeNzPsi56sD2zrLyEs01YttW1Uq7O
	MMbinbn+9hBPB+rbjESSLaxP6sD2wfcbP7srTLh5wooj/N2XFm4zHvBMd4q/VbdL/tonVd6myETT0
	XtVY9qXLywqiaYGzK8vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW75p-0002Rm-3f; Wed, 29 May 2019 22:30:45 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW75k-0002PX-5N
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 22:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559169040; x=1590705040;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=vgMYhd16YqlGm2Hq51dlnifvaEkxHBtV3uAHthaIcjA=;
 b=Cm+Zoo1GSFweGkl1iUPS+PSmjOTysZ285AuKjSO+5//xaAUYThE47wU6
 7fDdZPJKCAc8NmZr+CSQMh0DtFrh4N7RNvWK1vF1QBKq6gFQzaKY8HQgR
 N5FP/GQQbEnh+1sIDTH3fXCuxUzjVirr+TAQXgnKe3nWrD+8LxbtHzhu1
 z5khyEmP2ix9aF1/sifPxjzPw2qCtH2hOUX+OwMiTytvviDjaaceUKfWi
 +BCwDGI3nP/oqjnLY68tuSN3IT2KRgkIHHSPbTKvob+B05ugC3QqDZqKi
 TQuP5/eMDLRgbqnuZfEiPq9Y+gW4bujYpxPPVj0A0cFo/jz8vdsLzaw2s g==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="114302414"
Received: from mail-bn3nam01lp2052.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.52])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 06:30:37 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZZ2TrvvW0EsUSh1kYfvsU8F+u62U6zycNNJ8OvGsXk=;
 b=KNYJc6hOvRywoFydSj0T0R/q73PYemYbNz/Iwya4ouF4T65gCgkYggiGSjvZgn18dQ6+fcNNxR4WGXnK1PDvIr3qJGIbbVJZImOoAuhZToLeevYLaol69DPIYZoqjLGDPnRt5dxHkqzjaJScBg4UYNXH5Go5X5Kbn2/rDjAxidE=
Received: from DM6PR04MB5754.namprd04.prod.outlook.com (20.179.52.22) by
 DM6PR04MB5340.namprd04.prod.outlook.com (20.178.26.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Wed, 29 May 2019 22:30:35 +0000
Received: from DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::749c:e0fc:238:5c6d]) by DM6PR04MB5754.namprd04.prod.outlook.com
 ([fe80::749c:e0fc:238:5c6d%4]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 22:30:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: James Smart <jsmart2021@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v2] nvme-fc: Add message when creating new association
Thread-Topic: [PATCH v2] nvme-fc: Add message when creating new association
Thread-Index: AQHVFm10d/kPVnP+V0yqWKpBgNrc3A==
Date: Wed, 29 May 2019 22:30:35 +0000
Message-ID: <DM6PR04MB5754C57EABBC657A2096E0DF861F0@DM6PR04MB5754.namprd04.prod.outlook.com>
References: <20190529222526.3672-1-jsmart2021@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e4480e6b-85dc-48d9-e07c-08d6e48544a1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5340; 
x-ms-traffictypediagnostic: DM6PR04MB5340:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB53402ED687EC0ED516226B48861F0@DM6PR04MB5340.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(136003)(39860400002)(346002)(396003)(199004)(189003)(81156014)(81166006)(6506007)(14444005)(71200400001)(33656002)(66446008)(74316002)(102836004)(53546011)(73956011)(55016002)(99286004)(7696005)(66946007)(64756008)(66476007)(66556008)(8676002)(76176011)(25786009)(52536014)(229853002)(26005)(256004)(8936002)(71190400001)(186003)(6436002)(66066001)(9686003)(3846002)(6116002)(6246003)(14454004)(76116006)(478600001)(7736002)(476003)(72206003)(91956017)(68736007)(5660300002)(86362001)(53936002)(305945005)(316002)(446003)(15650500001)(2906002)(110136005)(2501003)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5340;
 H:DM6PR04MB5754.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: O1Pqq3ZtzRlxd5l1+liUxmjAD14R8hCnAPpj0TAXXpqhQDP9vs4C68wiNAeeQC0qMFtZe7/kAIrXJ6PJ97BXkwahVO/LcMinDIcvvRfEBYb28/ZhYHd3QjU78PDEkVq+kloOE7+LLkuXcMNXmxbpmkIYd4qSmpwS7tnX9sXAmugBds2qBEWqiPBo6Wbu8CyZGsbmwof33kYPPk41fwIJABsScXu8qVzcaoRb5mltZZlOKervQCF53BKVYUDCTRr1gyTCMU9yF2FOW2zwswZ172UsOLoIRfa3YgE3CjT+3TxBhY1hDewZDb8mIz2hUHc+BkcTWkF8Pxq60ekty9oiN8zR8Iw61PYO9gYrkZisdd1GvyRz4BQcahHMOxTpm5NDGvG/Dn3u9an5niQqhEM6XVX4eLzeeWVOfvrT6fcStcg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4480e6b-85dc-48d9-e07c-08d6e48544a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 22:30:35.1227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5340
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_153040_389720_3BADC2DA 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 05/29/2019 03:25 PM, James Smart wrote:
> When looking at console messages to troubleshoot, there are one
> maybe two messages before creation of the controller is complete.
> However, a lot of io takes place to reach that point. It's unclear
> when things have started.
>
> Add a message when the controller is attempting to create a new
> association. Thus we know what controller, between what host and
> remote port, and what NQN is being put into place for any
> subsequent success or failure messages.
>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
>
> --
> v2:
>   Moved message to create association so displayed at initial
>    creation as well as at each reconnect
>   Changed message to additionally print host port wwpn and target port
>    wwpn.
> ---
>   drivers/nvme/host/fc.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index c17c887f2148..bd1be8aa2d65 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2607,6 +2607,12 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   	if (nvme_fc_ctlr_active_on_rport(ctrl))
>   		return -ENOTUNIQ;
>
> +	dev_info(ctrl->ctrl.device,
> +		"NVME-FC{%d}: create association : host wwpn 0x%016llx "
> +		" rport wwpn 0x%016llx: NQN \"%s\"\n",
> +		ctrl->cnum, ctrl->lport->localport.port_name,
> +		ctrl->rport->remoteport.port_name, ctrl->ctrl.opts->subsysnqn);
> +
>   	/*
>   	 * Create the admin queue
>   	 */
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
