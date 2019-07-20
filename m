Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FDC6F0C2
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 23:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ygvG2CrrgZvbCj7szQB81EXnDJK81e2g3ks8VX/ylmQ=; b=kQV6yvAqmKvOK/
	WxOvDR97VBBTOSv6GeH5S1o98FKn7671/NuJ3m7lNLFc5c9HsGRKUpVFVOnUiE4zDQD5iE2iKPpm/
	BmTLtghplQdpidoiADAnETdBsOELJ+TSE62gUmx2mGRwMx1a2dl5vRRkm2c8YQNcyAJlG7mqmSYCj
	GOsU6Ypmakz/JxriPqGtOi53ZuQh+iQnVQgFt0lc54zKF1cBVN5zsZ6aeyDi5S1PnK1ltvM+M1/iG
	t/o8uzxBAw2QXowp8jMmhIV33IFBKw7eSRVI9jvQ4UwZIbywWjBfgk/YdqKCKggP+YyTZKkBC1rGe
	bMIu8dnVwgeT5MwXWhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1howhX-0006tt-Ho; Sat, 20 Jul 2019 21:15:34 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1howhP-0006tM-Et
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 21:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563657323; x=1595193323;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=/xwauXEa8/puIhsRf/wMukcjU8hFhnT/VY9N6srYDoY=;
 b=rNpGidS3Uew+cKDhuaxVV0Or+bZaY2+Xl2+LOVp52f/qtEa70h8OHYXK
 TgXgqFQOX+WKWnUqGsxOtU3Z6dwtprtH5xN7jHCE3BHabQJF/5nos0AG2
 m0XIHWxzodvxykCm92sn9a5J53pGX5eHKTW5m8iwRn1a4LPVSv5a82wT2
 IzI2CR65Kpbpj391AJE36GKxNXuuBqtUksCcNHq8iRBR5qgNUNTANI+7G
 tAkvQI/2ZcCqdOG9ycE0WCGMmH/SbPaW39atXKwMwAn08jBSXC6MuTX1r
 9zP5fbAwFxacw/+YHAEmYyPwsKpdpQ/lk+bA+IkJKdaHkzjtAxAdBWTfh Q==;
IronPort-SDR: jQGD2hkXHIlePOy2N8TUIWmRGJcfsw58MUkNYliz10EYZmQZnbwC7ASgAC7tFdLHqeMXIioMYi
 NU+omrRjSiyKu7FIJdtU0GNJBIpxmdeK6gQ2xJyIAdkYg+ApL9y/w+Yw/qXL337VeHsoHbYD1h
 HcFw7QgcwI0OnwlsheSSF+EFx3PZz3bMDBFYhTlH+HweB+mzdVwFe0cBdpZtd/xvIADEul6Ofj
 GTcAi+rbZXPFvz+UnEAwSRVl57mO5GIL7zT3ONJdHw0J9u3gSmk8jQ5QqdAm0ljKdKzyzBO6ei
 5yU=
X-IronPort-AV: E=Sophos;i="5.64,288,1559491200"; d="scan'208";a="118340474"
Received: from mail-dm3nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.55])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jul 2019 05:15:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFZ+vJgWjIDzqaP5Up1izat4ad+VytoXHzGhagzP1o+ZRlz+KjH+p4VijuxKLEoqqo0NYs5ifLsx0W8+FgcOoHj3qnEURtIV7LktstVFf5QsIVm2tqOu9gBH0eRjc5p5d6ARZOSTxhNvgfD7a1UqigHGqoYjBaZ93AVIlMhD1z0DRHvyXwKts8VQ+SR7HVby39EIR+oW52aGmbMyRGHhenmLnUCMjqs7PXlLDK+Tlq3NxuUguOfItKjUUzYQMWvENM0N+vV9XlRfshwLCSiZrMP9N51OBPQcyYz+C0Sw1VJ/xu4j3a5tze6Gr8GcKBEFvzK/FbR4b5izqUIMk/495w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJHOTwGbVsDrmRacXORDVi2gwXrxi7g83l0kP/dPbH0=;
 b=h9EbOXJGyFzme5z5HE/eNSJhVVKXgXObB5wAgMZiZ0xjEpHF3bbrI8KjMaajXzE9Fp655C0GXTWl3jam8N1Kn2y2rDzjCU6GaVS5lvsnu/B+mGGbm9E5tvIcMwHQSrqQr5lrlZEAVMIBe9lX+HOBrKep7EvKNJUCsO9ueis2ZXztqc5pxTDC+fFPaWbDULfYIrkDf9Yb9ojVAtK3Ht6b2iZHO3UNfd4tyj+ehAhfhoznEPI8MY97kD8zYNz5LD+Glj6tgfaJJMBkE/p6fv7CvlLQy+9TkUalwulraIteTR0uXGvx2ORR1mz8QPNrKyg97oLF0KEJq4LdCjXgUs2zZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sJHOTwGbVsDrmRacXORDVi2gwXrxi7g83l0kP/dPbH0=;
 b=ffoiBRBI1NXwZ92Jb6x+S57HCtAQ5r3x4Agu8Ilhf8y8vD3CSOwqD8dhKP3oIEQgUcVb25PoCksi/+rXj/6mEpLDorrWxVhyxV8EHxaVUqE8yLQl0nyOiY3SmG4UkdFUDvNXDo/y6sIh+SrZjW49htxzvkP3/lewjI6TTKixjjk=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB3846.namprd04.prod.outlook.com (52.135.214.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Sat, 20 Jul 2019 21:15:14 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2094.013; Sat, 20 Jul 2019
 21:15:14 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/4] nvme: have nvme_init_identify set ctrl->cap
Thread-Topic: [PATCH 1/4] nvme: have nvme_init_identify set ctrl->cap
Thread-Index: AQHVPmqb4Tld6IhZVU2rJnEDb42L9w==
Date: Sat, 20 Jul 2019 21:15:14 +0000
Message-ID: <BYAPR04MB57496536D23B276FA3E9BFDA86CA0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-2-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 269549d7-afdb-4140-be06-08d70d575ba0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3846; 
x-ms-traffictypediagnostic: BYAPR04MB3846:
x-microsoft-antispam-prvs: <BYAPR04MB3846EB31E253F13355A8A2B486CA0@BYAPR04MB3846.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:419;
x-forefront-prvs: 0104247462
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(39860400002)(136003)(346002)(366004)(189003)(199004)(52536014)(76116006)(66066001)(6116002)(3846002)(6436002)(71200400001)(86362001)(71190400001)(316002)(5660300002)(81166006)(229853002)(81156014)(8936002)(54906003)(8676002)(66446008)(64756008)(53936002)(99286004)(110136005)(66946007)(66476007)(66556008)(74316002)(7736002)(33656002)(14454004)(4326008)(478600001)(25786009)(305945005)(68736007)(6246003)(76176011)(2906002)(7696005)(55016002)(9686003)(2501003)(256004)(486006)(6506007)(53546011)(186003)(102836004)(26005)(476003)(446003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3846;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: L7Ue7qusWRFU3GK1wvqFBgpy/oJ4CoPh+9VZY1sgI6uu5kRqkjHGNOT5AfFsSfK1r/qfaHltyUEPkbk/1X3OL7cGKXCDjj+ITmAD32rSOpaBPu/K1WaU11MRnNDhFeFb92an+LJQWwWUcWA98T6dS8CWgmddGWnclNiAhJPrrVQz0BbpU627cDkLWKcirBfxVCly74mNZOOAz1F7HxCvab+TPrBH93np/JnP/Fdla5YrSYr+RKErkZJjMMboGzpXBiE2exxuAvuH86487QzvJLkONF/tnWQ32gIMf0siUXCCEEqxuj7l3ghUAJqEmSGEV5tZrOT8HgP2zaNPztc9GYDXlLALLkI17qghdRvZ00g+9jW/8LjgeoPzfSG8lQ1vJCsc9EPu37JGnDk0zBi9h9WCldgYJdA2qedZVa3Zln8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 269549d7-afdb-4140-be06-08d70d575ba0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2019 21:15:14.6141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_141523_697054_353B15E5 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 07/19/2019 12:46 PM, Sagi Grimberg wrote:
> No need to use a stack cap variable.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 76cd3dd8736a..058e06e40df8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2563,7 +2563,6 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
>   int nvme_init_identify(struct nvme_ctrl *ctrl)
>   {
>   	struct nvme_id_ctrl *id;
> -	u64 cap;
>   	int ret, page_shift;
>   	u32 max_hw_sectors;
>   	bool prev_apst_enabled;
> @@ -2574,15 +2573,15 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>   		return ret;
>   	}
>
> -	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &cap);
> +	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
>   	if (ret) {
>   		dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
>   		return ret;
>   	}
> -	page_shift = NVME_CAP_MPSMIN(cap) + 12;
> +	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
>
>   	if (ctrl->vs >= NVME_VS(1, 1, 0))
> -		ctrl->subsystem = NVME_CAP_NSSRC(cap);
> +		ctrl->subsystem = NVME_CAP_NSSRC(ctrl->cap);
>
>   	ret = nvme_identify_ctrl(ctrl, &id);
>   	if (ret) {
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
