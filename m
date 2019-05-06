Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2281513E
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=JDzkYc9j3bcmleKzpeMzHEX9TN52QU3qpHDvqwAdMqE=; b=lR5myn/AjIzk3d
	87Sj4U5n9rT3tvu9VAu1u7GZSA0hkDMt47VqKExEPCQvAj4VbpG95y3WsK9iFlMe++FC7SfGgB+UZ
	JrhrW4DWIctosiCeaBi6D9KzSPrP5Tqcx4jcxw3Zp0CC321sWutUD+lx9QdGs25LohBOktqCfqU+S
	v1qJCjrzOEA9ZRXV7wNsWYE0LXSkUF1R9q04Ik31lJ9v7T6zoX4L17GR6foCpZXDAC/++iZ7CKSrd
	pIbpDuKjaUmdM7ruhvmL85EzSpRfEyMcQFrSMZIUxlpQsQTdJr7inUJwlFnBycS8xfA1b34QwQjDa
	rhiOsNJM9dheAjLWOkcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgUT-0004kD-9L; Mon, 06 May 2019 16:29:21 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgUN-0004b0-Hd
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557160155; x=1588696155;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=sGhljThMV5tw95Gpbiky/m6FZnJipkwabxz7CZYKwxI=;
 b=LOqqaMLDOnZ0HwPc8QlS3rfudFW+8oTrIhn0Yx3jejwTFs6hgMDUZEIX
 dD30akmBvOd9OB6fgyVhi8BaKPuz0UB5MLoKyKJGq8acr9D+w0sUqkaIE
 6uNo/eZ3k/J7qS8AuTbz24DujV9tFT5+irhMwXR/XStP42kykeqX0jrY5
 mbBGOmdLdyXxSXr4RFQcDuo8RAE5/qZgPcfe1QuuLbSN5Pp5IjeZTHGC5
 3TeAAtYXdIXIydUFjXwq+urQydgdAfNRMhBPhpZrZ1VlBqRoyBLyoerWw
 //9Uzf045hvoFE1+GYLZSqgFdd57fE5jZiODRzajhWif1kHeFCqFHxDOP w==;
X-IronPort-AV: E=Sophos;i="5.60,438,1549900800"; d="scan'208";a="213595904"
Received: from mail-bl2nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.55])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 00:29:13 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yPEv9rr9Z4G94Lt17xt6vR1xNq95JJ6E4Jtq9+Zx8CA=;
 b=ZCC2dLceJT69egX6ay1qiHyjUoXYHOKOXjF5sv21dU69RQ5OfF6LRuWZ1x6phBrv+V3t65xCc/Hth3oaR2ChX0hNCCYoSVxQzCTiJqGJeOVGRyaD/ZDuD2kV4Cn2yv4UF85nOCHmTeC0OhUaIDAt2jGvQ99pNBXAJcOFIotciHA=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4640.namprd04.prod.outlook.com (52.135.120.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Mon, 6 May 2019 16:29:12 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 16:29:12 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-trace: Add fabrics command opcode name
Thread-Topic: [PATCH] nvme-trace: Add fabrics command opcode name
Thread-Index: AQHVA1ZajBbIfcyzR0GzAipDj1et/g==
Date: Mon, 6 May 2019 16:29:12 +0000
Message-ID: <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505152201.23830-1-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 218c85ac-2621-4c10-7aba-08d6d23ff922
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4640; 
x-ms-traffictypediagnostic: SN6PR04MB4640:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB464015B0899BC9B838A8863186300@SN6PR04MB4640.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(396003)(376002)(346002)(136003)(199004)(189003)(229853002)(8676002)(52536014)(14444005)(256004)(66066001)(8936002)(66946007)(99286004)(5660300002)(81166006)(316002)(7696005)(71200400001)(71190400001)(110136005)(54906003)(6436002)(76176011)(305945005)(476003)(66556008)(86362001)(2501003)(14454004)(91956017)(4326008)(2906002)(33656002)(66446008)(486006)(446003)(9686003)(7736002)(55016002)(68736007)(81156014)(64756008)(74316002)(478600001)(26005)(186003)(72206003)(6506007)(102836004)(73956011)(6246003)(6116002)(76116006)(3846002)(53546011)(53936002)(66476007)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4640;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1qO7XRVyLgiKUJR8JOEk9UmIt5Jc2/t9Cz/QEp27FA3N7vv9BTn7ugXu101pcu4zCGrRnXWxF+KWeZ9ScejHsZ4ZlZHWbuEX8MSTNPdXhu/m7sjVyXrJWQWpo6kE40k3/BTwM7RTtWmVsYpYrfu6qw9pc61bePV5HmWkNpbBMO5vx2MWq/UeLxGPh4uHZyMZBTdp2lDsLEihPV5OfbYPDDs9znmQrUJPn38bU/3T16gOPsOpjuUH2zBGC9vWDrfLG+vY247X0jAFvNROfOoAUK7VASN2PZYVfByv0FXxlDKWXI/Cj/jQ/eNSLYDeB0nQ9wS/j4bgpapmgJdWpjwUOiuDl6awlX8GgBqMEnO32qg5GyWvYt2JiGJ5uifM2yGO3qsAcxMvgjo293GzINa0YyXveO7+v7XPthr5oMcpZAc=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 218c85ac-2621-4c10-7aba-08d6d23ff922
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 16:29:12.2932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4640
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092915_592775_8782E521 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please do not mix admin and fabric commands.
On 05/05/2019 08:22 AM, Minwoo Im wrote:
> Opcode 0x7F is for fabrics commands.  We can also print it out
> "nvme_fabrics_command" instead of 0x7f in raw.
>
> Before this patch:
>    cmd=(0x7f cdw10=00 00 00 00 1f 00 00 00 98 3a 00 00 ......
>
> After this patch:
>    cmd=(nvme_fabrics_command cdw10=00 00 00 00 1f 00 00 00 98 3a 00 00 ....
>
> It would be nicer if trace can show which command in fabrics commands
> are now being excuted, but not for this time.
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/trace.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
> index 97d3c77365b8..f91580bf2e2f 100644
> --- a/drivers/nvme/host/trace.h
> +++ b/drivers/nvme/host/trace.h
> @@ -37,6 +37,7 @@
>   		nvme_admin_opcode_name(nvme_admin_directive_send),	\
>   		nvme_admin_opcode_name(nvme_admin_directive_recv),	\
>   		nvme_admin_opcode_name(nvme_admin_dbbuf),		\
> +		nvme_admin_opcode_name(nvme_fabrics_command),		\
>   		nvme_admin_opcode_name(nvme_admin_format_nvm),		\
>   		nvme_admin_opcode_name(nvme_admin_security_send),	\
>   		nvme_admin_opcode_name(nvme_admin_security_recv),	\
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
