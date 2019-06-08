Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448063A176
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 21:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=utBrFr1nTEqfYlxMbGsNzlkTOVUIdAbVddGya61yNyU=; b=UiQPOjtBipyOzN
	+EU1Th3MPc1ad6huDCbPquq2HxzLuDsscS7Eyk7wM+JndWIL5StFQFZriwvrp2dtmFyUCHj9kFjqO
	bwSvBGUd9etM65YeQ5bL08MEWwvTixJMvdR2twH+zzILxWrhOaxrhuPapc8QqreOsGi25BZwER/HT
	ek2TiG+a8JPnzQEN2i+sqXKRIDHug7FJtNO7gCsUUdM1GNLTDCSdAQ1xEm/Ygi8pyjpHrJugafsAq
	++8L4bgdjP+iZSHcWICaF/f/ZtlvwJnL188oqZohkiHTLn2vvh6ETuG2HNmV7VzrWWblvRPs1H4/8
	CoFwy2MHc1C9jN3jyLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZgsq-0004BF-Hp; Sat, 08 Jun 2019 19:20:08 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZgsf-0004Ak-H4
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 19:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560021597; x=1591557597;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=TYsVGYnTtgLMIig4akYMCAKQeJd5i+hLs/NcgvC1lHc=;
 b=LhYILA1wAIw/EpK2JfUocEwesqHadhAaUiTTm8wdY6A6whLwbYAvd8Aa
 UMs+cJfYaI1XHwSfX9PT59f9BEfZx+T7jAWOglQ6Lto0S3QVyWFj/iZ5+
 jDk4IexRA9E/Cv9dHdicmu/l7Iah4iT7PtJk5UUbEyYdnrmf1LkSI5xjG
 mKHcyTdc/o5G+14rG0bAeTsmKbYgmHtY0DLZF92d1kMqSJOabIrI1J610
 tbbpHRjLd9N8cLM8Sk6ZnCZCRhVu4fZkwqtlwy+VXP9I665viskQlPUN/
 43vzrL9PDcjk7S/0LTqv4fSHRV/wiYiGq2WYx6Wh8dJxa0Yu4oMa0a9be g==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="216418864"
Received: from mail-sn1nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.59])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 03:19:54 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RBd0Cjc3+HfdWdTbcdgALKzf5oybjIHpvXEZXvvpF9g=;
 b=NTdOAIxQpB2Ly0lr7kL60+ndChz3gQq5nYcVyNOAQqAyU+H7lqmzXYSqgERB3SmN6k7JKzt0K271VPEus0dA4Qx51tJ5CR9BY1ZWN9iaMS69BQbw9yMVqprMX2YTgTgOw6wXGtRR4eDMnVAtUfIqBDp+MmJSeg3FSx2pN3+r4/c=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5415.namprd04.prod.outlook.com (20.178.50.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Sat, 8 Jun 2019 19:19:51 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 19:19:51 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V6 2/6] fabrics: Do not return in the middle of the
 subcommand
Thread-Topic: [PATCH V6 2/6] fabrics: Do not return in the middle of the
 subcommand
Thread-Index: AQHVGuvn7rIieT24v0KlYjz3YINj7A==
Date: Sat, 8 Jun 2019 19:19:51 +0000
Message-ID: <BYAPR04MB5749BE4514905A4231C53C1586110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
 <20190604154034.23386-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: baad4102-d263-4309-7e75-08d6ec4647f7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5415; 
x-ms-traffictypediagnostic: BYAPR04MB5415:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5415B315AF61A7EFA378680D86110@BYAPR04MB5415.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(376002)(396003)(39860400002)(199004)(189003)(73956011)(66556008)(3846002)(76116006)(66946007)(6116002)(66446008)(256004)(486006)(476003)(66476007)(53546011)(6506007)(76176011)(7696005)(186003)(25786009)(102836004)(26005)(5660300002)(52536014)(99286004)(86362001)(446003)(14454004)(9686003)(55016002)(110136005)(33656002)(229853002)(68736007)(72206003)(478600001)(54906003)(316002)(64756008)(53936002)(6246003)(74316002)(8936002)(71200400001)(81156014)(305945005)(2501003)(71190400001)(8676002)(81166006)(2906002)(66066001)(4326008)(7736002)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5415;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AVKpC6n60tpFSCFU3YW1jONCYRFYcqvjR7jpHmajooXsC+K9dAa+mA2CUeMoEqYbU/OOCU+BSMb9tgemixNy9vcvJNgWVK1Iiq4SwxiXkZWqqU3yjH5mpyPbA6DQ/71xyP1Ewl5iPdP2JNYDN4XseXZ+Phe1hnqzHk29E7YjguvnsJqop3ac8DVRsUlt52K6ZIN3XGuuhHEnmRhuxUgmW1c5QymiJqAV5QOWwpA9OkBp+BnXAFG/uatWm44OrtwMDyqpOUkp7oltngwtDi4PBMvvrX11KHiGOAQtATysOX4NTrnwtOuAfQW5eQs0A1NFHHl6slQjz/dLD92w0816TRjolSrmHUaryllfuVxtZ8JwDc669wx2OVfW0RFT0bIKcR/6l2R99UoL8VkYk7pIgUDtUYokKQ3mSBE/p5D58io=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baad4102-d263-4309-7e75-08d6ec4647f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 19:19:51.7162 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_121957_689134_49EBF6DE 
X-CRM114-Status: GOOD (  16.28  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 06/04/2019 08:40 AM, Minwoo Im wrote:
> This patch also makes fabrics module to not return the internal error
> status in the middle of the subcommands to support uniformed mapped
> error value which will be introduced in the next patches.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   fabrics.c | 31 +++++++++++++++++++------------
>   1 file changed, 19 insertions(+), 12 deletions(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index 573a6ef..7be7f59 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -984,20 +984,23 @@ int discover(const char *desc, int argc, char **argv, bool connect)
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> -		return ret;
> +		goto out;
>
>   	cfg.nqn = NVME_DISC_SUBSYS_NAME;
>
>   	if (!cfg.transport && !cfg.traddr) {
> -		return discover_from_conf_file(desc, argstr,
> +		ret = discover_from_conf_file(desc, argstr,
>   				command_line_options, connect);
>   	} else {
>   		ret = build_options(argstr, BUF_SIZE);
>   		if (ret)
> -			return ret;
> +			goto out;
>
> -		return do_discover(argstr, connect);
> +		ret = do_discover(argstr, connect);
>   	}
> +
> +out:
> +	return ret;
>   }
>
>   int connect(const char *desc, int argc, char **argv)
> @@ -1029,21 +1032,23 @@ int connect(const char *desc, int argc, char **argv)
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> -		return ret;
> +		goto out;
>
>   	ret = build_options(argstr, BUF_SIZE);
>   	if (ret)
> -		return ret;
> +		goto out;
>
>   	if (!cfg.nqn) {
>   		fprintf(stderr, "need a -n argument\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out;
>   	}
>
>   	instance = add_ctrl(argstr);
>   	if (instance < 0)
> -		return instance;
> -	return 0;
> +		ret = instance;
> +out:
> +	return ret;
>   }
>
>   static int scan_sys_nvme_filter(const struct dirent *d)
> @@ -1148,11 +1153,12 @@ int disconnect(const char *desc, int argc, char **argv)
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> -		return ret;
> +		goto out;
>
>   	if (!cfg.nqn && !cfg.device) {
>   		fprintf(stderr, "need a -n or -d argument\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto out;
>   	}
>
>   	if (cfg.nqn) {
> @@ -1174,6 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
>   				cfg.device);
>   	}
>
> +out:
>   	return ret;
>   }
>
> @@ -1188,7 +1195,7 @@ int disconnect_all(const char *desc, int argc, char **argv)
>   	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
>   			sizeof(cfg));
>   	if (ret)
> -		return ret;
> +		goto out;
>
>   	slist = get_subsys_list(&subcnt, NULL, NVME_NSID_ALL);
>   	for (i = 0; i < subcnt; i++) {
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
