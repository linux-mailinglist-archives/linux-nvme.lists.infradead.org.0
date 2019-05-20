Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEF3240B4
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 20:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5rcJ5LWYWtyGA0tuO2e2OGn0vD1kf51p9giG9mLOGvk=; b=X0Gphgb2fTRLls
	5/I06anvXhFVB3LNwBRGGK/U+3pjMk3LV2gZmhvPVSXEHDi24e3RVmvy9qgLDX+u+JqYP7CCzW9oo
	crTsNRRYfxFov+AYgt+TTRybHqHaQgUxjYxhsBZqBusCIN7Nu03hykORWH0/00qzuTc39PFDU1jQL
	r3W2eCsOgJidF6+JziAKJu4xiuyEvYl5R7z8HZG0PciFyeqm6fVfSzoVFim6GMDWYXmhAe7hLPVlI
	zht8pxJbECQQJ1tzZA6eoJqIYq+FjZAtSz6yydoWh9SZ462P8Uw0Z3QweYTS7L6xDgkRtz7bE0GYm
	qXkyS5Cz+iUc+9NXh8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnOE-0007Vx-Ea; Mon, 20 May 2019 18:52:02 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnO8-0007Vc-KY
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 18:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558378330; x=1589914330;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=ZdiN8lQbqwOcr6jx3bHnMW3YFNWTOiMmKPrlLp4yW4M=;
 b=FeHaxUjskS/Ca8aXxTmvZ+d1+f/d1QQY52JiVkpb8qx6Kyts2RHYrn09
 QLDQUaBlae1ZzAmlkaS7zZ4x09IfL+zOXkkuhgKcB57EqSnJzc+cV/Mcc
 6/CMmnHFHMivZJJsa9wmKPyARRuXPwbbeKr0js03vyaNEoUsGjaRIxWRy
 9yz0g2xPJof6I2phUBXYnsjDgUS+JQ+YOeLxXc6UWF33rHd/utZdc/EBj
 ub4lzczpt+J7bFPyXsfBVU2/mg+9ukH5NJNKELVwErCkT7hpj07yX4y7v
 q518AilClZ9a5L6UtwqBfIWqmqQ5E3kcWALu0AaomnMaZeMbGCaMoWGaa Q==;
X-IronPort-AV: E=Sophos;i="5.60,492,1549900800"; d="scan'208";a="208143776"
Received: from mail-cys01nam02lp2058.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.58])
 by ob1.hgst.iphmx.com with ESMTP; 21 May 2019 02:52:07 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0rNa5W8k1XUk8mhRX8XVxAReJBx2JUacaEVs6/E0W3U=;
 b=BlOjGvdMMbDHdiszLILmnpJAtPE46Sdn4ZtupnF3nZqdiU2MclxblHxSgJh7X4ZrJQ50GzDbpLlxUJ/W+KkaEODsTtKdGCZreGXceEMFvkF/KC69/5ZouwcPlAAa35XVgHZXeixDlAbPDJkcj8Vrb3USAx49lzosYWOsL3kJKKQ=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5063.namprd04.prod.outlook.com (52.135.235.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 18:51:53 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 18:51:53 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>, Sagi
 Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme: copy MTFA field from identify controller
Thread-Topic: [PATCH] nvme: copy MTFA field from identify controller
Thread-Index: AQHVDzQj2XbPc82AV0aatpbAKDyUTQ==
Date: Mon, 20 May 2019 18:51:52 +0000
Message-ID: <BYAPR04MB5749E41D46DA20B09A2C5BD186060@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190520174206.29464-1-keith.busch@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34e7331b-2185-4c0c-4d2f-08d6dd543970
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5063; 
x-ms-traffictypediagnostic: BYAPR04MB5063:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB50634DB7424625D3589870E386060@BYAPR04MB5063.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39860400002)(366004)(346002)(376002)(199004)(189003)(54534003)(33656002)(68736007)(8676002)(14454004)(81156014)(256004)(14444005)(110136005)(52536014)(6116002)(3846002)(6436002)(6506007)(76176011)(478600001)(53546011)(8936002)(7736002)(2906002)(66556008)(7696005)(6246003)(53936002)(72206003)(99286004)(81166006)(2501003)(316002)(66476007)(229853002)(305945005)(66446008)(64756008)(102836004)(55016002)(5660300002)(4326008)(66946007)(76116006)(86362001)(9686003)(186003)(73956011)(486006)(25786009)(476003)(74316002)(446003)(66066001)(71200400001)(71190400001)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5063;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q5plbzLpcyUmieI4cbcFMJ85mZc/YY6UhMV4UeHjMKt2hMLjPPHUzqcTWyzG2MLrrx3rEn2zt2VzCqEISqB3hM1Ae+NkSVR2UJBAFmQM4YVz0h5CJr95yNvXB+1rKx2lKzV5hDsNR8M0eVRDuGU3iFS+ceUUo62SuymOZsTNMGC8p2NoiSMRe2RuULGCFGBSqcfynhamRdmkH4W6geSSovLDl01RsTYoAA7TALhQt3DeSurrw5/e9vHLnCnsu1IS7BBbbwyEQb2/kDPsVSS3s/mXd+DO4OiN5WaH0RSXEyFpIn0FWGd+EXaUQFogkDONhce6FkgX0fV4i2BKXSUlD/IQ/26hyjUEqQHT89iiVWhuXlFjaHeXY9FiR1nya0uVs9BZ8RUGmhYyM9UER6n6WzQj5krK3xeLJJgzqpgn8gM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34e7331b-2185-4c0c-4d2f-08d6dd543970
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 18:51:52.8807 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_115156_784933_BE21162C 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Laine Walker-Avina <laine.walker-avina@intel.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Indeed we don't set that.

root@mat ~/nvme (nvme-5.2-rc2)# grep -ir mtfa host/*.h
host/nvme.h:	u16 mtfa;
root@mat ~/nvme (nvme-5.2-rc2)# grep -ir mtfa host/*.c
host/core.c:	if (ctrl->mtfa)
host/core.c:				msecs_to_jiffies(ctrl->mtfa * 100);
root@mat ~/nvme (nvme-5.2-rc2)#

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 05/20/2019 10:47 AM, Keith Busch wrote:
> From: Laine Walker-Avina <laine.walker-avina@intel.com>
>
> We use the controller's reported maximum firmware activation time as our
> timeout before resetting a controller for a failed activation notice,
> but this value was never being read so we could only use the default
> timeout. Copy the Identify Controller MTFA field to the corresponding
> nvme_ctrl's mtfa field.
>
> Fixes: b6dccf7fae433 (=93nvme: add support for FW activation without rese=
t=94).
> Signed-off-by: Laine Walker-Avina <laine.walker-avina@intel.com>
> [changelog, fix endian]
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>   drivers/nvme/host/core.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 7da80f375315..eb3fb561b165 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2557,6 +2557,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>
>   	ctrl->oacs =3D le16_to_cpu(id->oacs);
>   	ctrl->oncs =3D le16_to_cpu(id->oncs);
> +	ctrl->mtfa =3D le16_to_cpu(id->mtfa);
>   	ctrl->oaes =3D le32_to_cpu(id->oaes);
>   	atomic_set(&ctrl->abort_limit, id->acl + 1);
>   	ctrl->vwc =3D id->vwc;
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
