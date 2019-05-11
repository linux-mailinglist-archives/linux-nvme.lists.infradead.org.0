Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825E21A9A0
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 23:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=aCJYlIBV1UCoL336740PCwa8Ae8OIgieVo+iD854cRw=; b=r6UXWlgoZT1g0V
	sZtlIgsjjSSYt75CGUjkQlGod1uGJAStWGxw+P8bE+VMS36j/Vdn3JnvDTFNegO3mA9vrURfOB8KO
	W0wUIJ8lInxCF+VPxTfbxjkyJssvThyyhaWeBoV95k/XF0Atrsq7+fB8pyt3UP70G0E55RYtZjGsg
	J4utodLI8kdVJFgKAWAk8YRWhBllhDGayfosgG0Wx2meRauy6LjIfCyFRXAN0FaXUfc8w1kSyhumy
	WqWZNv0xd2ZUDE1BXbQwBOE/XmgHnfvsiSNVgwRRduGBGP2mvSDdZZyUzqftMAnT8nYjqyfU8S9VJ
	lhMEhJGhavhLyAbR49ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPZuW-0001M5-QW; Sat, 11 May 2019 21:52:04 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPZuR-0001Lj-Nm
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 21:52:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557611520; x=1589147520;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=n10e7gUu/SdnklnywcORJH3S3RHm/IHB7ljNSHj1+18=;
 b=lHn3tmQsUfZN3nMoBQF5itpDSBjPLVO67W57BvLIKQYDJ3TOQZH3kNqL
 U97XfJDKmVwPDDqHREZj4romTNxpDyk9iWqVg/gn2v8jwLT+dMC+Owlnj
 FHn7o10sVkvZ4Krs3Nefd+hqJ+ks3Y1OqheVfqTiab2P86nTqLpjakNcs
 P3+TQ3qf5uv9JfAjqO9FL5ajobXtyEEXA5adgqMvjvply0ykch5KHp8ff
 xFKqWaL/taFOMWCBf+efJehLDyclgGvimpWU5o0d0eTdFz1N7fWdnM9sp
 Cz3XHf5yEWZ3in8G+vYIINki9waQ9G0FT0qX6O/b2QVkCsiSJf8BXuqdi w==;
X-IronPort-AV: E=Sophos;i="5.60,459,1549900800"; d="scan'208";a="109772076"
Received: from mail-dm3nam03lp2057.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.57])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 05:51:56 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RuLXjuSp83YxjvejrKgWWVDR4OcirE7Z+K9qgP3pMCE=;
 b=ej7UAccp52ouTcYiAipKp7dCbowgE73hkACzyWefp5ARShOxzIEM2SP4Ef0yNu1ZpIGELEIjJxBTnldp1xOUn/BSNF92sKN4iTHF5eIA2e4lJYNOX3qngw4dTE79ilTaMct4XcarGPfiEwmoCW00qPtxnVVSBpmObl6+qPk1V8U=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB3887.namprd04.prod.outlook.com (52.135.81.152) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sat, 11 May 2019 21:51:54 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.016; Sat, 11 May 2019
 21:51:54 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/4] nvme.h: Fix typos in status code values
Thread-Topic: [PATCH 1/4] nvme.h: Fix typos in status code values
Thread-Index: AQHVCDD5sKTHu25maU6+7Vpo4cH3WA==
Date: Sat, 11 May 2019 21:51:54 +0000
Message-ID: <SN6PR04MB4527556B978A62ED5FE57A57860D0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
 <20190511193713.29516-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:1052:134a:6e3b:f2ba]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0c105f9-303c-4b7a-1ee5-08d6d65ae231
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB3887; 
x-ms-traffictypediagnostic: SN6PR04MB3887:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB3887594CAB887DD9C22FD334860D0@SN6PR04MB3887.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00342DD5BC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(366004)(376002)(39860400002)(396003)(199004)(189003)(64756008)(8676002)(14444005)(81156014)(5024004)(53936002)(86362001)(66476007)(53546011)(6506007)(81166006)(8936002)(102836004)(256004)(66446008)(316002)(6116002)(7736002)(9686003)(486006)(476003)(2906002)(6246003)(305945005)(99286004)(74316002)(76176011)(72206003)(7696005)(478600001)(46003)(73956011)(14454004)(186003)(52536014)(91956017)(66946007)(446003)(25786009)(4326008)(66556008)(6436002)(76116006)(71200400001)(71190400001)(55016002)(5660300002)(110136005)(33656002)(2501003)(229853002)(68736007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB3887;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xzOOw28Lfn4479QCn8mTAI+uULxDGIqBwpNztHa09RiJQgabY52CcCDPdG5oqvZ/ruoTEN5TzGdOwn5bFRfMx3wOgdRX3dbSxGf9AOVwjrK3KW6N8agPUhfG4VqZkJPONIwL3moDbhil7PFzddkWZ5Qg1xMHpRfCHtye6RrYorj2tRw6g1YDmaN8XiclDOm4A9UjXmJyjgAKmGv1r9yoJBaXi9DHPZ91Rx2eu7emceUXSTS4jftBEhp0A9E1jOf9McLGDs/Xr4VsPp5nB/ADYguFA2nBx7AghivwNYTEq8lYwxlgdowAiSJNEwjDND7mprLHcG5gNOP+B25WlnZcLdxTkYc9pmsypB8mO3iL82Tn0qccnskIpgmtS02fTftkU/Wy64tjsDbvq32kcIkzjt3JpPwIKtK6byvkBhcB0Lg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c105f9-303c-4b7a-1ee5-08d6d65ae231
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2019 21:51:54.8103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3887
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_145159_819107_467714DE 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/11/19 12:37 PM, Minwoo Im wrote:
> Fix typos in status code value.  linux/nvme.h in kernel project is going
> to be fixed soon or later.
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  linux/nvme.h | 4 ++--
>  nvme-print.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/linux/nvme.h b/linux/nvme.h
> index 2c840b9..c99b438 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -1365,9 +1365,9 @@ enum {
>  	NVME_SC_FW_NEEDS_SUBSYS_RESET	= 0x110,
>  	NVME_SC_FW_NEEDS_RESET		= 0x111,
>  	NVME_SC_FW_NEEDS_MAX_TIME	= 0x112,
> -	NVME_SC_FW_ACIVATE_PROHIBITED	= 0x113,
> +	NVME_SC_FW_ACTIVATE_PROHIBITED	= 0x113,
>  	NVME_SC_OVERLAPPING_RANGE	= 0x114,
> -	NVME_SC_NS_INSUFFICENT_CAP	= 0x115,
> +	NVME_SC_NS_INSUFFICIENT_CAP	= 0x115,
>  	NVME_SC_NS_ID_UNAVAILABLE	= 0x116,
>  	NVME_SC_NS_ALREADY_ATTACHED	= 0x118,
>  	NVME_SC_NS_IS_PRIVATE		= 0x119,
> diff --git a/nvme-print.c b/nvme-print.c
> index c038355..0ce88d4 100644
> --- a/nvme-print.c
> +++ b/nvme-print.c
> @@ -1801,9 +1801,9 @@ const char *nvme_status_to_string(__u32 status)
>  	case NVME_SC_FW_NEEDS_SUBSYS_RESET:	return "FW_NEEDS_SUBSYSTEM_RESET: The firmware commit was successful, however, activation of the firmware image requires an NVM Subsystem";
>  	case NVME_SC_FW_NEEDS_RESET:		return "FW_NEEDS_RESET: The firmware commit was successful; however, the image specified does not support being activated without a reset";
>  	case NVME_SC_FW_NEEDS_MAX_TIME:		return "FW_NEEDS_MAX_TIME_VIOLATION: The image specified if activated immediately would exceed the Maximum Time for Firmware Activation (MTFA) value reported in Identify Controller. To activate the firmware, the Firmware Commit command needs to be re-issued and the image activated using a reset";
> -	case NVME_SC_FW_ACIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
> +	case NVME_SC_FW_ACTIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
>  	case NVME_SC_OVERLAPPING_RANGE:		return "OVERLAPPING_RANGE: This error is indicated if the firmware image has overlapping ranges";
> -	case NVME_SC_NS_INSUFFICENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
> +	case NVME_SC_NS_INSUFFICIENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
>  	case NVME_SC_NS_ID_UNAVAILABLE:		return "NS_ID_UNAVAILABLE: The number of namespaces supported has been exceeded";
>  	case NVME_SC_NS_ALREADY_ATTACHED:	return "NS_ALREADY_ATTACHED: The controller is already attached to the namespace specified";
>  	case NVME_SC_NS_IS_PRIVATE:		return "NS_IS_PRIVATE: The namespace is private and is already attached to one controller";



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
