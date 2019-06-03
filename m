Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BA334E6
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 18:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=zQVq3+sJurb4S+1X3jZUzA7uEfB8sp7YZ7Tb3Jjx/70=; b=N07PJEvoTDzd+H
	kA5TgGYo0UGtjGrABPkZDhvRHHs/4rEITzjpZQiuRo/Sv54EWfzBmAKGGQXiqOH4tlm4ixcZesNDu
	GiqVZxStOU0k0xQGSpuCj9EQMi6AnMSFDNmo2maa8UAJnd4zuGvQMMyDuRU9DDBd1LqwYoHiMQv/h
	5Mh3CoMZ5coXZ65sjM/BYv6sJ/PUsaGgfwBekRvj2J5MzDnZNnsdxeik0w3U/4dSxtG+PEwU1IP8i
	fP51z4FGahqAq5dniVcgLxWLosqHVZ502bTo9hZIaJOHOiysAVb/AgQtjwmRrjsksYJK+vwbR9KWA
	J/h3CJIEufNgyp7zufRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpmb-000509-Jf; Mon, 03 Jun 2019 16:26:01 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpmW-0004xz-96
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 16:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559579192; x=1591115192;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=tg6ibMfU3f7cwD/TXVYAAdP2qatosXNdkrvvCIsqgyg=;
 b=NVAxiMoogBOJSI7lnknzrqA5qOj1VWq7F2Hmmcrk+jaCRSjxb2Blh/cY
 bFLqfufeq6q/VuSY8w0wORT4iA0xKKQNJvpfbk7WYQbgt9D57kRrcdCFz
 p+p0EluOMk/+dn+atN1ouZOzcufW5VaYhJo6gsW/L8F7nJuD2lTCTsjVv
 dsV+r9cI5IUZR8CzgAvOGxRSsY/9rWRA0zdY+yfkJNmS0uHGfFSK+RxGr
 8BKnuyIFDo1w8fdUKUn3x/j8zAhZ6MGN/8iOJbUDYp6RusIS+wCwUmARI
 P/HhTGu4FILsjzyC/+/4gBmd1C4cZHmpabFkXf/kZFIZQgFSIggLd3Aik g==;
X-IronPort-AV: E=Sophos;i="5.60,547,1549900800"; d="scan'208";a="209277956"
Received: from mail-bl2nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.55])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 00:26:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WclY2wlAYE20C8/N+eHKFNAh0Uk2z6WY1vf335+A3gw=;
 b=hVp7U6mEQV7qVjf1ysARCzTUkzE2yz9xDhfRiY+O6rSRiswM6WDMuCsGTV6P1pU4Y+VANySYLnABxxYCSmZxLX0GKm/VFN6ZoLVRdF9UCdTs76MhXW5Op1k7XvhUKHb5L1ummk7XjegZ0zg8FJMz254E3IW2dZKxP73vOPCtZM4=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5237.namprd04.prod.outlook.com (20.178.48.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 16:25:48 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:25:48 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 1/5] nvme: update list-ns nsid option
Thread-Topic: [PATCH 1/5] nvme: update list-ns nsid option
Thread-Index: AQHVFswvZdPx8Y1hckC3ed4FG/WDMg==
Date: Mon, 3 Jun 2019 16:25:48 +0000
Message-ID: <BYAPR04MB57490F48796046F710BE786C86140@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83cc6cd9-e977-4ada-2140-08d6e840231b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5237; 
x-ms-traffictypediagnostic: BYAPR04MB5237:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5237803260F3A7F81020E93D86140@BYAPR04MB5237.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:466;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(39860400002)(346002)(136003)(199004)(189003)(15650500001)(486006)(446003)(74316002)(5024004)(14444005)(256004)(476003)(33656002)(316002)(7736002)(186003)(305945005)(52536014)(478600001)(14454004)(25786009)(8936002)(81166006)(81156014)(8676002)(5660300002)(72206003)(4326008)(54906003)(110136005)(6246003)(66066001)(2201001)(99286004)(76176011)(26005)(66446008)(2906002)(6506007)(53546011)(73956011)(66946007)(76116006)(7696005)(2501003)(66556008)(66476007)(64756008)(6116002)(3846002)(102836004)(71200400001)(71190400001)(229853002)(86362001)(53936002)(9686003)(55016002)(68736007)(6436002)(309714004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5237;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0Na/X79wTKCFCW+lpxlDe/1AQ3opDZKzpFS0yaS900T1GqzEzK+DwFMJSv1VeauN33/wwWYtHD+ZbAqu3Bhoav03jOl8FCRlFni0XVKq4aYCJuiB7ZPW3lmWQK61qUrEa2cH3u/mIVwIX0hkExffN6EzrqgGkrpBt2MpQG3iPNP10f/bSkdYFaH7GscTsV58dUUhf5fGnM8AVI0knhxDNnaZhE7nm4mHwF5JkSB4F4eJzXZcXuN/DfCJxuGpsFjXnxVZ6ZId4V1ooeYFCwUDA/eXKTFfm9Tbp/YXu/KUU+JsyZJl5tbEFeg3Z/mklfNByk7k6CDYnJ5+7fteyWQit/I50rDfyLYXS2BOqpUKa0P4mXaDXOyRyWdZEq2QDpjzwxpkALKi3opyTNJQPebSYiM+mrP4qSfXaufq9ZNZDgs=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83cc6cd9-e977-4ada-2140-08d6e840231b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:25:48.2076 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_092556_428141_D9B788C5 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "shlomin@mellanox.com" <shlomin@mellanox.com>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch overall looks good go me, except one nit.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/30/19 2:43 AM, Max Gurtovoy wrote:
> This commit updates the optional nsid argument to define the wanted
> nsid for start, instead of starting from nsid + 1. E.g. in case we've
> wanted to get the list of namespaces starting from 1, before this
> commit, we used the "--namespace-id=0" option. Nsid 0 is not valid in
> NVMe spec, thus change it to start counting from the given nsid.
>
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
>
> diff --git a/nvme.c b/nvme.c
> index 9819fcb..9d763f5 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -950,9 +950,9 @@ close_fd:
>  
>  static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
>  {
> -	const char *desc = "For the specified device, show the "\
> -		"namespace list in a NVMe subsystem, optionally starting with a given namespace";
> -	const char *namespace_id = "namespace number returned list should to start after";
> +	const char *desc = "For the specified controller handle, show the "\
> +		"namespace list in the associated NVMe subsystem, optionally starting with a given nsid.";
> +	const char *namespace_id = "first nsid returned list should start from";
>  	const char *all = "show all namespaces in the subsystem, whether attached or inactive";
>  	int err, i, fd;
>  	__u32 ns_list[1024];
> @@ -963,7 +963,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>  	};
>  
>  	struct config cfg = {
> -		.namespace_id = 0,
> +		.namespace_id = 1,
>  	};
>  
>  	const struct argconfig_commandline_options command_line_options[] = {
> @@ -976,7 +976,14 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>  	if (fd < 0)
>  		return fd;
>  
> -	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
> +	if (!cfg.namespace_id) {
> +		err = -EINVAL;
> +		fprintf(stderr, "invalid nsid parameter\n");
> +		goto close_fd;
> +	}
> +
> +	err = nvme_identify_ns_list(fd, cfg.namespace_id - 1, !!cfg.all,
> +				    ns_list);
nit:- Can we get rid of the new line for the last arg in above call ?
Can be fixed at the commit time.
>  	if (!err) {
>  		for (i = 0; i < 1024; i++)
>  			if (ns_list[i])
> @@ -987,6 +994,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>  	else
>  		perror("id namespace list");
>  
> +close_fd:
>  	close(fd);
>  
>  	return err;



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
