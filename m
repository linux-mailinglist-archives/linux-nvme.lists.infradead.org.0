Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2448E22753
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 18:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=W6jUTDBLGhhoN5OOr9cHWm6LSfedsy15lUEyOXZtmvs=; b=qgPbaZUBYPJ5x4
	ySxyGeqJXq/ohZmX0bi+LwQTsccbxVvvd3DbF4i1KIWkp6WmIBV6VwvmwtSgh7Te2ZSNNDrLFgDL+
	ZLFUGQ11q0+lckiasK3zR/pEyvA+dUJje+r3xScsBNWcRSXiRgC5/ZujbOzqb8qze7ae6Mvw/BSHJ
	LQZ4Id0E5C9nu4TvXF9AV4t6/u+pvcxSyjmp2AxJpvhWSW9XrS/IWZ/309md1R3Odpplhve04+3Ph
	n+Vr1zf1XOV9pOPDbWpr+vSjSQMtwTtVYIqbLeNzAWUrLDF0NO7IiLIWgQthW07yQBDqFY4p2nGKq
	E8PQgHOzPbGJHrMurklQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSOz6-0001OK-DG; Sun, 19 May 2019 16:48:28 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSOz0-0001Nr-2j
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 16:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558284502; x=1589820502;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=71nmYnSdyDGZAnfxlR4Yo9M1tumfaTnzweydBUk3z6k=;
 b=lA750nLklmNX7PGBJIR4MoywO0oznacUFnPYDVjeJdePFgEoV5fLS3yG
 Zuns+l/85QHXF9Rb4WLg310lttHJg8e0aYOIoXVkd9BKw7r5FTzMpzHc/
 N5uS7ai7qyqK5G09HhrZ3SRmrK1YglJACqaswa7uJXj732NOkojzj5MB6
 DYMA1Mw0wrukx87Mjdtuh3sA0qbW96WAuYchigSpo8GlPnf8CKF/o97l8
 I3a9ePlOoaQG6Ji0OPhe9H/KRkBk4cgJSGPsfwmcRhEDwys6UhrHU1+aK
 aWMSU348kipQ8J04RaPBkLS38s+FpDOYBceLxVu3aZ1toxd+HF2+Gl8/s g==;
X-IronPort-AV: E=Sophos;i="5.60,488,1549900800"; d="scan'208";a="214759998"
Received: from mail-bn3nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.59])
 by ob1.hgst.iphmx.com with ESMTP; 20 May 2019 00:48:15 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o6qerCAbUKJxhrHxOv7F5TwYuL01tuZOEX0XHavBek4=;
 b=ByLFwyYhlNSPXc7Q2LD+qLQiLgC/88YRwXD6GiyE9t57qrOCx5di8of9UeoBbJS0PXQlR0qVW/33x54hpVT+Sw1mRRF6Xgqw9KFvovvBksdf7j532VWxprc5zDJ0bJbRJhh0BOkd0lxNoAHMnZTexQeBr+4pFMHyVOfOlRf2+XQ=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4967.namprd04.prod.outlook.com (52.135.232.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Sun, 19 May 2019 16:48:13 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1900.020; Sun, 19 May 2019
 16:48:13 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH V2 1/4] nvme.h: Fix typos in status code values
Thread-Topic: [PATCH V2 1/4] nvme.h: Fix typos in status code values
Thread-Index: AQHVCa3vtLSNMFnmoUyV11Jh2gbcbQ==
Date: Sun, 19 May 2019 16:48:12 +0000
Message-ID: <BYAPR04MB5749A82313D11DC76974C16D86050@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
 <20190513170342.9497-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa2f0cc3-9863-4398-141e-08d6dc79c884
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4967; 
x-ms-traffictypediagnostic: BYAPR04MB4967:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB49677232A38AD3385B90E07C86050@BYAPR04MB4967.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00429279BA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(376002)(396003)(346002)(136003)(366004)(199004)(189003)(71190400001)(8676002)(8936002)(81166006)(7696005)(68736007)(52536014)(2906002)(6436002)(86362001)(76176011)(71200400001)(102836004)(53546011)(2501003)(6246003)(66556008)(6506007)(316002)(72206003)(53936002)(14454004)(64756008)(66446008)(5660300002)(4326008)(25786009)(73956011)(66946007)(5024004)(76116006)(256004)(14444005)(99286004)(66476007)(55016002)(74316002)(229853002)(66066001)(478600001)(110136005)(81156014)(7736002)(476003)(6116002)(33656002)(186003)(305945005)(446003)(9686003)(3846002)(486006)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4967;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: x4b73RQk6u0o4HkYVvnjulCMbWdFtSKKyJ/8dWxOY72yd1eLOkiu2wYRHoif86FkKCx4uRtY2F1aVtLG8eqhMj5o8h7I1An1oYX3qj6Xe54Mhoz/UijTe0xxPEnP8MSB7HrIWWGlv1JL1I4TCbfxk7phveF0bHnMpGmtZEoWIMTz5JPbLf0/BgRWmYKtqXHlOCKKnvlNV0Ip5mbujPJSWXTLZp2o0WpUa1yk0fMQMWvbysu7bQPK4nGhzPXGW+Ao1ytj3l7nKUFGCsdaEXsPnqcPioYU2k3Nk68fuLmncVORL5mu0wjqcw7qXiTr1VEIwb9z3pQO1a5mXfy3Ehu86Q7DDYSH/rZxJgQwdx8kF2JdJL+DIvRNnkPFvzVrc9pPlAu7EItTbTDZhTr0ro8QzWQuO65Zstv1sBr+eJxkyCM=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa2f0cc3-9863-4398-141e-08d6dc79c884
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2019 16:48:12.5790 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4967
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_094822_297324_7FDEC07A 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 05/13/2019 10:04 AM, Minwoo Im wrote:
> Fix typos in status code value.  linux/nvme.h in kernel project is going
> to be fixed soon or later.
>
> Cc: Keith Busch <keith.busch@intel.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   linux/nvme.h | 4 ++--
>   nvme-print.c | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/linux/nvme.h b/linux/nvme.h
> index 2c840b9..c99b438 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -1365,9 +1365,9 @@ enum {
>   	NVME_SC_FW_NEEDS_SUBSYS_RESET	= 0x110,
>   	NVME_SC_FW_NEEDS_RESET		= 0x111,
>   	NVME_SC_FW_NEEDS_MAX_TIME	= 0x112,
> -	NVME_SC_FW_ACIVATE_PROHIBITED	= 0x113,
> +	NVME_SC_FW_ACTIVATE_PROHIBITED	= 0x113,
>   	NVME_SC_OVERLAPPING_RANGE	= 0x114,
> -	NVME_SC_NS_INSUFFICENT_CAP	= 0x115,
> +	NVME_SC_NS_INSUFFICIENT_CAP	= 0x115,
>   	NVME_SC_NS_ID_UNAVAILABLE	= 0x116,
>   	NVME_SC_NS_ALREADY_ATTACHED	= 0x118,
>   	NVME_SC_NS_IS_PRIVATE		= 0x119,
> diff --git a/nvme-print.c b/nvme-print.c
> index c038355..0ce88d4 100644
> --- a/nvme-print.c
> +++ b/nvme-print.c
> @@ -1801,9 +1801,9 @@ const char *nvme_status_to_string(__u32 status)
>   	case NVME_SC_FW_NEEDS_SUBSYS_RESET:	return "FW_NEEDS_SUBSYSTEM_RESET: The firmware commit was successful, however, activation of the firmware image requires an NVM Subsystem";
>   	case NVME_SC_FW_NEEDS_RESET:		return "FW_NEEDS_RESET: The firmware commit was successful; however, the image specified does not support being activated without a reset";
>   	case NVME_SC_FW_NEEDS_MAX_TIME:		return "FW_NEEDS_MAX_TIME_VIOLATION: The image specified if activated immediately would exceed the Maximum Time for Firmware Activation (MTFA) value reported in Identify Controller. To activate the firmware, the Firmware Commit command needs to be re-issued and the image activated using a reset";
> -	case NVME_SC_FW_ACIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
> +	case NVME_SC_FW_ACTIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
>   	case NVME_SC_OVERLAPPING_RANGE:		return "OVERLAPPING_RANGE: This error is indicated if the firmware image has overlapping ranges";
> -	case NVME_SC_NS_INSUFFICENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
> +	case NVME_SC_NS_INSUFFICIENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
>   	case NVME_SC_NS_ID_UNAVAILABLE:		return "NS_ID_UNAVAILABLE: The number of namespaces supported has been exceeded";
>   	case NVME_SC_NS_ALREADY_ATTACHED:	return "NS_ALREADY_ATTACHED: The controller is already attached to the namespace specified";
>   	case NVME_SC_NS_IS_PRIVATE:		return "NS_IS_PRIVATE: The namespace is private and is already attached to one controller";
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
