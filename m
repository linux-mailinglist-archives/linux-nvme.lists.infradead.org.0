Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42BD3259E
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 01:18:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=52eOGig/npIgVowTuVZgVcwW4dyp39tBto5b++1ERaY=; b=djd4KaUcwfivxz
	UKNK0Frgs/jKVQLQ1fwIA/LnpL3V88wiFffQ0rzcHeq+Ky++5buj3aY+KMRvos4REkqKHHSpOFaX4
	sVI5ujy8U7zxEtHIUJdpXq8kSAoZiD64Klkho1xjxNd/brFevdvOen3Q/llS9sy3N6QCld2Cwzq+w
	i+F5LG/YxU3byJoZIgRaSgE87nebaR3M/n2hf3Rq0MozR6RuTWbrjUkctce1doWdHC+AmJHFVFlcU
	/L+wozh68lzUWhR3QQMrVdxfGIkYPKv79a5fmUrYSI2wKFCayghLX4WZpyP0swd6KtYoM9WBAHstu
	fJb7JXfcH7Oung4LkrNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXZkM-0005hP-1g; Sun, 02 Jun 2019 23:18:38 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXZkG-0005h4-3E
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 23:18:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559517512; x=1591053512;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=xUUgkhTD6knbslUFGjYFi3wbGmlHy1yU61v07N5p9Ok=;
 b=ADZeITsXiTQnCBanLRA1mAxLB7MF37YBIib1BZfJgm1zbQv3O9wB0cWR
 1BpUMeGlKH2Nef5yRXv+Hx/Lh4QJRUmr4n4/4ZEDobWtDqCGg8st7E/dR
 TwwoBPRQmFwLd0voeHYVPqqpZNlC+9096Z61L8ULJgBjLf+TTVuEhKmv/
 /miggU5ZKc0eiBADBLzBsjbsT5JcXc95I4s6cbHb9FXB0z38Qt5WNtekj
 /VclViIvehPkhAFFxQorY0a14YrcUoTEvA+iXjnNwJIPUnAvb9k0b7h02
 J/h+wFXnTRvSP/d1e+DD/4+Ersh23v0tvAfXK4gaHsiLp2EMOmdiHdO+V g==;
X-IronPort-AV: E=Sophos;i="5.60,544,1549900800"; d="scan'208";a="111295122"
Received: from mail-sn1nam02lp2051.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.51])
 by ob1.hgst.iphmx.com with ESMTP; 03 Jun 2019 07:18:30 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K8LMiFzJl5VTo2+8qw3AZGycMlbTKzMlVCnnC0gzsFc=;
 b=cLjgDw+J89ZmnZ04koWllzG8lzKbB0hRoF0jiN3Uck2v56LNnReDt4UrwgAUYNi6wr/7nbukFvAFKLxoKqbAOgA4ptAxHCs+hdNmcYiUiti4Ib9Fq73DMjx0d+gU3S+aX8eFdVmlU/hanneNzmB2nEIhblj4knKeSBeClNNxxhI=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5544.namprd04.prod.outlook.com (20.178.232.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.16; Sun, 2 Jun 2019 23:18:27 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Sun, 2 Jun 2019
 23:18:27 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli: update command message for "help"
Thread-Topic: [PATCH] nvme-cli: update command message for "help"
Thread-Index: AQHVGD6U0lg0ka76l0CMcP/SWpf4Jg==
Date: Sun, 2 Jun 2019 23:18:26 +0000
Message-ID: <BYAPR04MB5749574DBF57DD74F454D15A861B0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 055fa7ef-bd80-40bb-a223-08d6e7b09e01
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5544; 
x-ms-traffictypediagnostic: BYAPR04MB5544:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5544CE65644B88CFD6672FCA861B0@BYAPR04MB5544.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:208;
x-forefront-prvs: 005671E15D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(366004)(346002)(39840400004)(189003)(199004)(55016002)(9686003)(102836004)(74316002)(76176011)(6246003)(478600001)(54906003)(4326008)(4744005)(110136005)(53546011)(6506007)(8936002)(7696005)(33656002)(2906002)(81166006)(7736002)(305945005)(71200400001)(71190400001)(8676002)(86362001)(81156014)(14454004)(14444005)(15650500001)(256004)(486006)(6116002)(476003)(52536014)(68736007)(2501003)(446003)(66066001)(229853002)(25786009)(6436002)(53936002)(99286004)(3846002)(66476007)(73956011)(66556008)(64756008)(66446008)(66946007)(26005)(186003)(316002)(5660300002)(72206003)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5544;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ykQIFJi6LS4dLD+Ygbza0cIuGT1h7BLaDc9vP4VvR1JqgrFQdSDs6ktlxm3v94JJbNKt1hebr5k+6fuaQvw6T7Dh0/NSVqmpc3QF97zzzcdT60kXouMVAxQp33EJg/xPjJyZJVRx+PD+SXBRNCxtmlYZQ5Begos7QsMjvy4Ur3ZebGReFjr9zolyc7pxFEQ0iMeXeQMMdiQoRkrQkpd086lRZPVBOZkRSMx15UHSWELlWOVtqW5SErD7hXHOLPOShMi7/r4uftVoGiHbDhusXjS5yhcfmiZiFxtCyIMU40DrIcW4K3rAofcvr1tzQ5mEQpZJZCFNVFHi0iRZErTAMgbu1lWk6Ea8hrpvdgC8sAI+3nPT103bi5eKzRRzsX2Br9MQ1OkvCyWCfqjJ9fm4WOfJ12n/ari5CesIwtMXXBQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 055fa7ef-bd80-40bb-a223-08d6e7b09e01
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2019 23:18:26.9312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5544
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_161832_193980_EE709195 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/31/19 10:55 PM, Minwoo Im wrote:
> The "help" subcommand will show the man page, not the help message which
> is printed out to stdout by --help option.  The previous message might
> make confusions between man page and --help options so that it needs to
> be updated.
>
> Cc: Keith Busch <kbusch@kernel.org>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  plugin.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/plugin.c b/plugin.c
> index 4750df6..8fd0605 100644
> --- a/plugin.c
> +++ b/plugin.c
> @@ -91,7 +91,7 @@ void general_help(struct plugin *plugin)
>  					plugin->commands[i]->help);
>  
>  	printf("  %-*s %s\n", padding, "version", "Shows the program version");
> -	printf("  %-*s %s\n", padding, "help", "Display this help");
> +	printf("  %-*s %s\n", padding, "help", "Display the man page");
>  	printf("\n");
>  
>  	if (plugin->name)



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
