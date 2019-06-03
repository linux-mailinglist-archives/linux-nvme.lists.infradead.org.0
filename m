Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70D334E9
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 18:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=yFZhHCnoTTGvP/zBpEj/9F6BbaZgFMnh2wjp7iKvEBo=; b=q86TyaIgjVC0qh
	j6zsdMrE5z5Q5hfJ7z1IS/mk7Jh/gIANoHFGumw/WVCx2+3VJBsm57/tIgSz9E89ahLJxJrp+0rrK
	KTPSSvTORKsnuxSpcGInk0XtRQ2Pr0OZo0d/Js0mBXYNuNJjBUE9xbSiLLYG8EXwJgETMKNHtFFXz
	a7iB7sDmnYF3+YqWCHBF3XXIimg4xGj6KwJ1/FmmHuiFPWQ8Aj+HZ2Mg+eXwGW1VrdmINVk8GnwrT
	dk2/OWYBHyV5WkbfDQrnxhuFX1dCuae+Z/txMv58lRYqQO4mAPHtpoL5VhNAQnj6DCRxlw0Fb6BRs
	2LgJ/z2lO1mWaPQiT8AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpnT-0005DA-Jd; Mon, 03 Jun 2019 16:26:55 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpnO-0005CR-3A
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 16:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559579210; x=1591115210;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=ElxxIGor6L8nq5dWbjSbZR05whjpPs0d7jJxcesth2Y=;
 b=lcquqhbHXXnmTuHk9+qpzmTyqGhU5uTWIzK3HQmtsXzKTVmyY9ntw5cf
 JUleW4ezEboSOVFuFRI6u9A/hSi7czGUYB/NE/eYLC/Z+mEPLR+XbE+0j
 K7BzagQNIGKbDhk/rFUGcszrhOdLG46zxTTzpbKkknOLFyhG6fqHQ5vgz
 Y6oSameECFM46D/KRHbjNK+KhGu0Ff/CbK/sunUYucPuNehJLCVjOJLxh
 xcvRSin9G8Tl7B0+r3V8KpEYL+YAV2YKLCsD6eIGxzjQlwD7tji+6bLkP
 TIEOy7PKZEE/zZgWE7se742dNV49a1OuVRvlEPl41iliCXq1kFoUuKjg1 A==;
X-IronPort-AV: E=Sophos;i="5.60,547,1549900800"; d="scan'208";a="109677329"
Received: from mail-bl2nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.53])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 00:26:45 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NOEZ6kL+J93NKgHYiloAL6h9lnYCDxEcfmL7kHwA0VE=;
 b=LtY77d2Mh+el+kD142j1zP+W+dE2rJg9CxReGezeLnXuzogVBgzjUW8aYbm8A7v5zo8YA/lPMBH3kwnqdKp/61kOjdHMrHovWdTGJjLcIG395S0vKkifTtXLyMXvUpKCdUS42KjyI2pDKI/X/Wf7sSxmOo3MG5Bc8SxPe8z03sA=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5237.namprd04.prod.outlook.com (20.178.48.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 16:26:43 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:26:43 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 2/5] nvme: update description for "nvme list" command
Thread-Topic: [PATCH 2/5] nvme: update description for "nvme list" command
Thread-Index: AQHVFsxOo1y1XPoiD024UW80oJyyhw==
Date: Mon, 3 Jun 2019 16:26:42 +0000
Message-ID: <BYAPR04MB5749039CF8D73B22484A389486140@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <1559209406-713-2-git-send-email-maxg@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5bf37e9-451a-4d58-31c0-08d6e84043b6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5237; 
x-ms-traffictypediagnostic: BYAPR04MB5237:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB52375D1CFB52D15C166279EA86140@BYAPR04MB5237.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(376002)(366004)(39860400002)(346002)(136003)(199004)(189003)(486006)(446003)(74316002)(14444005)(256004)(476003)(33656002)(316002)(7736002)(4744005)(186003)(305945005)(52536014)(478600001)(14454004)(25786009)(8936002)(81166006)(81156014)(8676002)(5660300002)(72206003)(4326008)(54906003)(110136005)(6246003)(66066001)(2201001)(99286004)(76176011)(26005)(66446008)(2906002)(6506007)(53546011)(73956011)(66946007)(76116006)(7696005)(2501003)(66556008)(66476007)(64756008)(6116002)(3846002)(102836004)(71200400001)(71190400001)(229853002)(86362001)(53936002)(9686003)(55016002)(68736007)(6436002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5237;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ouy8hqCCUjeusSjgFqjjRXQZ+DQrwOM8oHEurau/xzRMrAoeAQldT4PsUK1sfaNYXTmtjMYAjkvY+kUfdOp/+wubrlqHmT4FKg3YVIEBgQw0Mrj+GoNe7dxPKSYnC9c+yRn44OxBF+F4qQkWCLR60YFoXEYwaPmdxiogdXmikcP9kXSw7VjZ/Se8sYV0/nshKxxLCZ5zUaJGPR8TtfWhpbCtznV6AgauBuOeQxhB7rGxQkkfX3e9vV7OVE7yaRip0byOzS/pIQHv7ZhsYXBxXUJhDzt/a2FXl/ssK4gQLZK/EVbyFjp/hdQkSoh6FS2371TrH+DtKkx9lAA7qQdaq5JWYxjmumBYMW+3+gQU3y15GcOOk/UspbnyoA8O1zMIufCu/sD/EU+9T0Zt28gsaV+LKssCqzZy+Xvcjpaeyq0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5bf37e9-451a-4d58-31c0-08d6e84043b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:26:42.9599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_092650_175343_6A0E3F21 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
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

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/30/19 2:44 AM, Max Gurtovoy wrote:
> The "nvme list" command doesn't get any device handle as an input
> argument. This operation prints out a basic information for all NVMe
> namespaces in the system.
>
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/nvme.c b/nvme.c
> index 9d763f5..3310abd 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -1801,7 +1801,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
>  	struct list_item *list_items;
>  	unsigned int list_cnt = 0;
>  	int fmt, ret, fd, i, n;
> -	const char *desc = "Retrieve basic information for the given device";
> +	const char *desc = "Retrieve basic information for all NVMe namespaces";
>  	struct config {
>  		char *output_format;
>  	};



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
