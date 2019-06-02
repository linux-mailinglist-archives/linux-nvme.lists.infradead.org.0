Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B94C32595
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=irSE8i1nMfMiRRkVO8706V2SBYqjSlOIJU57qnlDN2s=; b=kgeEpFoksHA4q9
	oaKgKaKqug1G/zwdtfRmIbce5zQTXVyYlBPCSN9Z9Sv4TfNKofhINmBLFUx5JvqjHT4FFDtx5qz1S
	LcxHFdYpi65QbVnd1gREpfN/ZIbEaRI5XBvG/D7eNfPGFZEmGVemie8e0PGuHN3EO3d4dlcjEHn+O
	nUGnv8GlDlJ9bTDdAbG+fzDOMRSElAabzx1ZCJtpXHjwBMv3BDswyJZRX7iVVsTlIneZ1PURI2NMU
	07rjvGcJasdYCLtRoQwumIGoIo1VltRhpz8ATE7BvH5tj5uGvS0BECqBBDARi+NhmD2dA3IL3LvwU
	eRZCNOMka/bm5hIyqqPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZac-00025c-5n; Sun, 02 Jun 2019 23:08:34 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZaV-000255-9x
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559516907; x=1591052907;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=IbwE39g0erJk1/iTIyh9eqi2npK3wdhrR1FL+1Ommxc=;
 b=V4sP9IxEKqQ3sFCXsGyx0hM+mJcWNb6+e8C7G0F0lHMID2prLdC+AN36
 aSO0hRn/o16hdz8WwCqbYHkpdxmm9OKatefc/T9eVCj7vf3rjPcOioS2O
 L1UIeChlWcey/Mv3UoTvhDY4eGtrfkEHh9OZEnYaPC/KxMpcb2j5F5Ovg
 sb2ZG/U2nKrzQJgh9xGOXbT5QyWoferTYjWVl3iLyedXTrrQUqfscPM3z
 zWdQcH9vn2YfRcqpQ9iEiFiRPYv0TKpQWMsnHLZYOgOjY3Bo1LS/+3oa2
 5ex8dAfZNSKN8iC9HSC5x30LVK7IRoXq82zW/E0dCVRnbL7QKfhQvKV2f A==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="109613905"
Received: from mail-dm3nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.59])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:08:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69bjKHDUq1FPLduvstnj43wGekVOBgKchpNuQL6Yi+E=;
 b=aAQ3uouxvaw1XtfylF0bKDiIJBgwl0Z26TSC61fGKtTBYUUh+C1bS7h4EvQ+HLGbddI1xqMD3zgoj8W+VwJlAQLcHWPYpf1C7AOi9IOluv58nnqEZX3Dig2aAICEuRVYR1ejBSplVa3kwIdpJcOb60kPFscGaRoAxno/ZjTxLoM=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4182.namprd04.prod.outlook.com (20.176.250.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Sun, 2 Jun 2019 23:08:21 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:08:21 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V5 2/6] fabrics: Do not return in the middle of the
 subcommand
Thread-Topic: [PATCH V5 2/6] fabrics: Do not return in the middle of the
 subcommand
Thread-Index: AQHVEXf3/D7xEl/WVku6NJJPg347ew==
Date: Sun, 2 Jun 2019 23:08:21 +0000
Message-ID: <BYAPR04MB5749D2AD58284C2F5F859527861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
 <20190523145750.27425-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b3512fc1-ac2e-43bb-a9f5-08d6e7af353e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB4182; 
x-ms-traffictypediagnostic: BYAPR04MB4182:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB4182A01BC917B8843A69120B861B0@BYAPR04MB4182.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(376002)(366004)(39860400002)(396003)(136003)(189003)(199004)(8676002)(81166006)(81156014)(64756008)(305945005)(7736002)(74316002)(8936002)(3846002)(76116006)(73956011)(66946007)(2906002)(33656002)(52536014)(66446008)(66556008)(66476007)(6116002)(5660300002)(86362001)(7696005)(102836004)(25786009)(68736007)(53546011)(6506007)(76176011)(4326008)(186003)(6246003)(26005)(66066001)(99286004)(72206003)(486006)(256004)(478600001)(71190400001)(14454004)(71200400001)(2501003)(446003)(6436002)(110136005)(53936002)(9686003)(55016002)(476003)(316002)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4182;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5lk/S76JKtVqxe308Ap+OJssobgy7duXTKtn2RRG43DDQwN3sN3RebVS4RM5TKSoBtrlkmcNw4uZRWd2eh6C5C+UbslyEV036xkgwS24XV2dVb3j4ouEjCJb62v4410wRHbGqHIN7A4l1i9pcXCIFkYZ77OtknquTIyBhLw0PSX9zj6+43QDtPYy0tjyb5ZDAF5ivkguzMQJFfPwNeijhAtKWma9ksnOeOcHxZ6Uh7wfAv5gZC51IhWzRTtm+IhE2IEINdfXbwzik4jY99tJA95+Lo2VF8mpfABTyf7nY2I1kXjXAWomPXpCHLM2CA/Hs6YMlcNB9Sf1E3ljT+h3SXpaQgaTvwBWH3Gf7SVW1BEDHzzTsFsWQcFJVFkHirh5Rwj3VCnPdEybg7BJu9UNHe0r2/zULqdZGBPbbiBsaME=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3512fc1-ac2e-43bb-a9f5-08d6e7af353e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:08:21.6936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_160827_448900_D7107764 
X-CRM114-Status: GOOD (  18.93  )
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch overall looks good to me. Some code level consistency is needed.

On 5/23/19 7:58 AM, Minwoo Im wrote:
> This patch also makes fabrics module to not return the internal error
> status in the middle of the subcommands to support uniformed mapped
> error value which will be introduced in the next patches.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  fabrics.c | 31 +++++++++++++++++++------------
>  1 file changed, 19 insertions(+), 12 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index 511de06..469b4a1 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -984,20 +984,23 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> -		return ret;
> +		goto ret;
>  
>  	cfg.nqn = NVME_DISC_SUBSYS_NAME;
>  
>  	if (!cfg.transport && !cfg.traddr) {
> -		return discover_from_conf_file(desc, argstr,
> +		ret = discover_from_conf_file(desc, argstr,
>  				command_line_options, connect);
>  	} else {
>  		ret = build_options(argstr, BUF_SIZE);
>  		if (ret)
> -			return ret;
> +			goto ret;
>  
> -		return do_discover(argstr, connect);
> +		ret = do_discover(argstr, connect);
>  	}
> +
> + ret:

Particularly in this file you can see label named "out"  being used and
is also prefixed.

Can we make sure this change is consistent with the rest of the code?

> +	return ret;
>  }
>  
>  int connect(const char *desc, int argc, char **argv)
> @@ -1029,21 +1032,23 @@ int connect(const char *desc, int argc, char **argv)
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> -		return ret;
> +		goto ret;
>  
>  	ret = build_options(argstr, BUF_SIZE);
>  	if (ret)
> -		return ret;
> +		goto ret;
>  
>  	if (!cfg.nqn) {
>  		fprintf(stderr, "need a -n argument\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto ret;
>  	}
>  
>  	instance = add_ctrl(argstr);
>  	if (instance < 0)
> -		return instance;
> -	return 0;
> +		ret = instance;
> + ret:
Same here.
> +	return ret;
>  }
>  
>  static int scan_sys_nvme_filter(const struct dirent *d)
> @@ -1148,11 +1153,12 @@ int disconnect(const char *desc, int argc, char **argv)
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> -		return ret;
> +		goto ret;
>  
>  	if (!cfg.nqn && !cfg.device) {
>  		fprintf(stderr, "need a -n or -d argument\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto ret;
>  	}
>  
>  	if (cfg.nqn) {
> @@ -1174,6 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
>  				cfg.device);
>  	}
>  
> + ret:
>  	
Same here.
> return ret;
>  }
>  
> @@ -1188,7 +1195,7 @@ int disconnect_all(const char *desc, int argc, char **argv)
>  	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>  			sizeof(cfg));
>  	if (ret)
> -		return ret;
> +		goto out;
>  
>  	slist = get_subsys_list(&subcnt, NULL, NVME_NSID_ALL);
>  	for (i = 0; i < subcnt; i++) {



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
