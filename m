Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CD7210E4
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 01:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5dpRfWI+5I8pATKGuVM0Xfpt/XY5+RybtWo1lRLS7xc=; b=EPNUC5/TA+kmLn
	dIHS4fucYBdTxaYXhqBCPAKn06J3phAKzZlOtkLjZWME2Iuc0xkSw9ki2kRUYPIMdt0hegmXa902R
	mU7S4Sx6FoYW9RQlcFo5SEAneINqFLC4w4e982n3BkVpTtoYCn7U0R06zYc2uFTZo9yKA00c9foxs
	d/lwE4sHPY5o2x9Dzk5+qAe12M9amm1qf2kblii1xVZU/8BU3KcrP7wGjKUKGcQP9+uXD2EmsPO0m
	bY33lwtsmlS2PD01/VyxmkViWTGTje7gsH+um0jY4b5t3pa3DKfjc6Tla5UqyM/tx7MILf8w3JQVR
	GxWY9AviTYv4SenDyPFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPOS-0004Rs-IF; Thu, 16 May 2019 23:02:32 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPON-0004RR-8H
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 23:02:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558047747; x=1589583747;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=oCktFSFz0HhNOtoZY85+94giD1IUGN75LkLvRh0SY9I=;
 b=LBeOQonZG/TpHkIVG7xuCZ/cKFd0RNtIxj5dhvo0AVw2OZkxRp0Z0sXD
 9LDIsXkWzp5QKOPfcrTAePL68tMlXpbrKk2oSoz3Ih0tcs+xy1xRaS1q/
 cGEtSwB/izT2vXEE1HMfDghj2XjlgcNlJ/X/AjERCAfS9kNhxMTL4EIF1
 Y3bIo4Snwp0Tzo8LC0wPvmbPHFtTWD9a+P6AoKGdkaCv5Maj//iROOr/l
 NG+BV8WeINQ9LSCuABu0Xk8v9C8ikprdxFacjMrbdsMJypOhSqsN8erYX
 SHGISU7keFsMFRTXz82mv8yAM+UcN3IUAsvyrlB6WD8TPuPFyG4o/zYdg A==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="109705070"
Received: from mail-bl2nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.53])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 07:02:25 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loEqVGug4pt39uWWAjfiHBxkOZsZMRbhwHSPv35X4lM=;
 b=z/8DI/DXnFz27H+AH1RnRXuQXGFC0W62XaL6KVf8vrkYt+M8QP2d0wz86JQWV5r4WXdKXjOHtCzCTAc2Sds1xLGSOhXiZwsqpuGRuS/PHpsVkUbFzExnI7AD129/TTNpK/0iPr07sRzl9wpKPKKTwbkLNwJN24n9K4P2jEKP8HY=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB4475.namprd04.prod.outlook.com (20.176.104.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 23:02:24 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 23:02:24 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/2] nvme-cli: remove unnecessary initialize of local var
Thread-Topic: [PATCH 2/2] nvme-cli: remove unnecessary initialize of local var
Thread-Index: AQHVDAw7kgYfTb5PaEe1F5mQST6EOQ==
Date: Thu, 16 May 2019 23:02:24 +0000
Message-ID: <DM6PR04MB4521100AAE335BF495B4B46F860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
 <20190516172350.11864-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3ed0a79-af23-461f-a550-08d6da528f0e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB4475; 
x-ms-traffictypediagnostic: DM6PR04MB4475:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB4475A129A3340B77A917E1BC860A0@DM6PR04MB4475.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:283;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(376002)(346002)(366004)(39860400002)(189003)(199004)(53936002)(486006)(66946007)(73956011)(91956017)(76116006)(7736002)(14454004)(2501003)(6246003)(66476007)(476003)(316002)(8936002)(6436002)(446003)(478600001)(71200400001)(33656002)(66556008)(64756008)(66446008)(4326008)(71190400001)(305945005)(68736007)(186003)(8676002)(81166006)(229853002)(81156014)(25786009)(66066001)(55016002)(256004)(26005)(14444005)(72206003)(9686003)(52536014)(99286004)(53546011)(5660300002)(7696005)(6506007)(76176011)(4744005)(110136005)(74316002)(6116002)(3846002)(86362001)(102836004)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB4475;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: X+yt0EJkrxtubjU3janU99fOVT1QiQexFGZT2FtSDvHlQY+vZ5zDOENiwS/SDS9VqMVW+jgxvipzZ4v7eu5LTHgDWDuwy6lHDLHoQ4ywChew2HlxyNhO0GTF2xC8adIyVA6bzYv/4QkEfepQxz3rDznGWdKdOJVaBn5r+XPUklkhYE7xcTbz95VSvZgZxgWxyrPwbTlA3l+Uqbvm1TJzDcs2dT7zM+hpm0kyHazNODFxuUhb3SwAegCL7Wf4vB0Paue66zTkOjS3QJx0hTVann7mWj33xfy89j/Jwj9FF/7DqjEWF50aCvtA+j831MkTUNWXM3drmXWq+/IWgB7pp/1LxqN64UcWv0Vnvl/WPD+301ZVroUwC2LLyjKVSExRidzFbnxvUKS93l0oqdEMLQbMI107fP/ceep5+Wxh2OE=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ed0a79-af23-461f-a550-08d6da528f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 23:02:24.0729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4475
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_160227_406976_A116B259 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 5/16/19 10:24 AM, Minwoo Im wrote:
> This patch does not have any functional changes here.  Just clean-up the
> unnecessary initialize.
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  fabrics.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/fabrics.c b/fabrics.c
> index 733a24b..573a6ef 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -1180,7 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
>  int disconnect_all(const char *desc, int argc, char **argv)
>  {
>  	struct subsys_list_item *slist;
> -	int i, j, ret = 0, subcnt = 0;
> +	int i, j, ret, subcnt = 0;
>  	const struct argconfig_commandline_options command_line_options[] = {
>  		{NULL},
>  	};



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
