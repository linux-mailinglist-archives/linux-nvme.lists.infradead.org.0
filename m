Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99852D0E7
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 23:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Tf55Pr2wjeMgcjgpCB03jUY0E8QI4027SlcMGavZgRs=; b=ghTP+AdkXCouvh
	ei1HBXODs9gl9wXxlSP2V3XS//nXhPtgR/KpvoR+qIE0ymmAuehSmUwuyULbkDTQMhMa5dxzRRGbH
	QIRYjOBvrH8BvHkTzaWWxJTADzFVcCMF0GpQTmhyBbjKKwwe8tQaOiNac29XvBqBVVXJv5w7CZuw4
	Cbf2+7ZMDZY5powxn54sasZrHyxYco+fmkH+OxJILo2jc8CVvGVKYisNh/BtWv2B8xhluegrdidlt
	xKxI/wYe05DzSN41AVkUMVm3njRzA+vyKx3kxoy2Z9jd56D/oMN7agNgDGISd7CnbL0sOo2VZQJCm
	e95vr8t6sWYW7dAzu+uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVjUJ-00014y-5w; Tue, 28 May 2019 21:18:27 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVjUC-00014O-VB
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 21:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559078300; x=1590614300;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Bd+63MQAG92As65/rjhG2VN2TlfSvEOCSJRBxf2TGg8=;
 b=Nv3n5FNcqOmTELbWRq38xyTvAt3lesEmi9+mDqwwUeZOF+DkOimAsijy
 xm/mqnLvuUbPI6DBDDlCB96zIJFtZvLUnpnf4H7B2xj4O9O5kfdaiVLMC
 MU1zNbHIj9srHphubOjLc9txFKUNf55//RJhMTmxhwHJJPWJYl/BQXhF9
 UlDluvPn4mgf9lVmFqX7e3+HCy/Edj2K3j4S9CrqpQGe9shM8IW4/VeB2
 q5rxtd8h1tSgQd7SLUhGT7x1qflvUdDWLgh8Vf5yh5mVg1dDr6vM7+uYo
 M5f+Y8j/7f7kxPAkHsWUmM8IgbSn0QRnuZcaeDHqQafksWonbZf2MrZKw A==;
X-IronPort-AV: E=Sophos;i="5.60,524,1549900800"; d="scan'208";a="215492294"
Received: from mail-bn3nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.52])
 by ob1.hgst.iphmx.com with ESMTP; 29 May 2019 05:18:15 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TfUKoL4G/HHL4V7uRtwvEvPJbx7I/0e+qW5bF3T9Nhs=;
 b=yv5rWWUypSCl1JH40+juFtOL618pXp4RsiOI66oM4S5uaWTmGUKs9TOLBVWbfoAsFWNEyFeit9uo5YbOE0SQfEjSB5UhW9CHjdI5wIUz1McJLHs6YxIGjlkN7uMf8KioveFPbPYdntfl9j+wGu+mBVio2AVqU1hrHIELwg9a68I=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5368.namprd04.prod.outlook.com (20.178.50.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Tue, 28 May 2019 21:18:09 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 21:18:09 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: James Smart <jsmart2021@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-fc: Add message when creating new controller
Thread-Topic: [PATCH] nvme-fc: Add message when creating new controller
Thread-Index: AQHVFYN/Zb030j0vGEeFnOy84fgXRg==
Date: Tue, 28 May 2019 21:18:09 +0000
Message-ID: <BYAPR04MB5749C2F9F987025C2FD6BD5A861E0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190528182404.3463-1-jsmart2021@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.47.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dce88c73-5d21-49db-8945-08d6e3b1fbc8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR04MB5368; 
x-ms-traffictypediagnostic: BYAPR04MB5368:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5368E6E8CE8C93CF6258A856861E0@BYAPR04MB5368.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(376002)(136003)(366004)(396003)(199004)(189003)(486006)(5660300002)(9686003)(81156014)(81166006)(6436002)(71190400001)(72206003)(6116002)(53936002)(33656002)(229853002)(8676002)(6506007)(446003)(26005)(55016002)(6246003)(476003)(186003)(478600001)(68736007)(3846002)(74316002)(8936002)(25786009)(53546011)(256004)(15650500001)(99286004)(316002)(2501003)(64756008)(71200400001)(52536014)(73956011)(66946007)(66476007)(66446008)(66556008)(76116006)(102836004)(76176011)(305945005)(66066001)(7736002)(14454004)(7696005)(14444005)(110136005)(2906002)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5368;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kmzm0YcOSOP+eZZ32sds+uD10S5wjoFHZbKlwqjDa/rGvyoErxjtUGjZhzNVVhAV623anVEyiNb2wikIBta+3g/QdZuUtrUrORlwB0dOFM5w+X5Zdc9KQVIfH1kCxcuwwIFgb6JK6k1DCvbzrTWdjekp2yP1r1ugNnaM2JiLPz5aeG7KpCy3F8gTeJ2woh+SRCHDX6Ndo5YowE7FT/O8WEXEY6oHa3YlcUh/KAEXHsORzekyq8cHeSdxECRm4pf0UR+3IttxgTztqPkmFltAAosXbmJjuqtLZWQXMrZJ6l6NIMMp9DHfe3L9WnCxvzFDEzn7dbrhUM8yNOIIaHmvXSAWQsDj0tLGilgoU8UBZg0j6iVeaWFIzVVD0xBiFjB99iPeupMTqNZPSD2189y0XB3eMUhPCCxtWUDr8DfiIzQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dce88c73-5d21-49db-8945-08d6e3b1fbc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 21:18:09.0365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5368
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_141822_153670_9F90CD60 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 05/28/2019 11:31 AM, James Smart wrote:
> When looking at console messages to troubleshoot, there are one
> maybe two messages before creation of the controller is complete.
> However, a lot of io takes place to reach that point. It's unclear
> when things have started.
>
> Add a message when the controller is first attempting to be
> connecting to. Thus we know what controller and its NQN is being
> put into place for any subsequent success or failure messages.
>
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>   drivers/nvme/host/fc.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index c17c887f2148..5c9b69ee2c1f 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -3129,6 +3129,10 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
>
>   	nvme_get_ctrl(&ctrl->ctrl);
>
> +	dev_info(ctrl->ctrl.device,
> +		"NVME-FC{%d}: creating new ctrl: NQN \"%s\"\n",
> +		ctrl->cnum, ctrl->ctrl.opts->subsysnqn);
> +
>   	if (!queue_delayed_work(nvme_wq, &ctrl->connect_work, 0)) {
>   		nvme_put_ctrl(&ctrl->ctrl);
>   		dev_err(ctrl->ctrl.device,
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
