Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868D015130
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=62MWsiJ8BZjLaSS3j4N1TuFkqcC2nYsI7+oscA5xQUs=; b=g6b8X0wb2nUC3R
	vNgsaOuO8dwnY2mexQWG1GPVbYxShp9ND7RR8qttx9f0d1MHBMaVLcpWGuD4zASw1RVmcWqfzqQ8N
	u0nRYaIzqLUHggOqd0Wy5BIe4P+ZKTPYU2LNqUCffsVEAsTDxkvrAeiXNknUUL0Ts4gij+5guvTqF
	hnjERdWOvFZTDCK9c2FGe9jwcuI7C9UdiUlePlxonE5+snBL/8CVqmPk3SoO80Kk6s8LVyX3tH9LS
	7pm4G4HGHe5+eIDhvFV3zXQFDCPkHruQxuo1INzfKGpkQEPxp0dqM1Cip+e8kLuPTavUbwWD3Sn5k
	x17hYXO4jJSDr+cx0aqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgRD-0003w9-1m; Mon, 06 May 2019 16:25:59 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgR4-0003tK-WB
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557159951; x=1588695951;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=dBcXJppg3bMFLmw1wNmK8Y3DaV+a93X9qIrBekk+ZK8=;
 b=eaMLn1LQ8EtUCx/O1swN6iIC1y/QjWVJzydjsD8hb5kAHxWAhEXzA3Sj
 aAi4WFO3+gPdrpSneGx+lCjP6NkhMw7PLTh1JD5zKWDILZ2Us40LkEQ9A
 KGoH7mCa36ZSpG2zg1if43WnExW8+yQK/ctVbxmcQktuBClaiBt/Wvx7Q
 FfUzcn3zfAyoR9tRaqOfb2LK6dTgdmfrCAwSMhAK+9B4wG+CgDmZmS9NU
 TRcyRW07aezb1qKnepyw2/VtohTadbl01pISLd4GAna/OnB4Mgq4b/f9C
 VlO0EVoCOIBtnHIWro+zc1GDgp1qJXMbWopWpSluz1RbQOQ0+9iw5f/5r g==;
X-IronPort-AV: E=Sophos;i="5.60,438,1549900800"; d="scan'208";a="108834753"
Received: from mail-bn3nam04lp2050.outbound.protection.outlook.com (HELO
 NAM04-BN3-obe.outbound.protection.outlook.com) ([104.47.46.50])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 00:25:51 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7PgQ9hynSDg75ycKVC1Q8mYI3E5/bbMagemptbdc0eg=;
 b=X3QifnDKWIZjOrbf8XzAahpLSwfkrhHxgIRTsSm7P7BjlpaH/BciXiCOOShwc/6xge6Cvf2leHzCQYQF36ZLUnjV9LcuwbC8zwPQVZ010C6zGUk9SBmwoQgLL8xmJhw3nuxSLcVimwhu83+m40dzrZq3UTDJDEuBvFvOHAYcEOM=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4062.namprd04.prod.outlook.com (52.135.82.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 16:25:49 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 16:25:49 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH 3/3] nvme: 017: fix nvmet pass data with loop
Thread-Topic: [PATCH 3/3] nvme: 017: fix nvmet pass data with loop
Thread-Index: AQHVA1QqzMpB1vP5BUSffPvuBQgzeQ==
Date: Mon, 6 May 2019 16:25:48 +0000
Message-ID: <SN6PR04MB4527A202C575B8DBD2CD1EBA86300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-4-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68768818-08a0-4825-f610-08d6d23f7fea
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4062; 
x-ms-traffictypediagnostic: SN6PR04MB4062:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB40626A5E2D435A34522CA05486300@SN6PR04MB4062.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(39860400002)(396003)(376002)(199004)(189003)(52536014)(54906003)(316002)(53936002)(446003)(476003)(486006)(110136005)(6246003)(5660300002)(7696005)(478600001)(72206003)(14454004)(26005)(102836004)(186003)(33656002)(91956017)(66556008)(66476007)(9686003)(76116006)(64756008)(66446008)(66946007)(76176011)(73956011)(6506007)(53546011)(8936002)(55016002)(25786009)(229853002)(3846002)(4326008)(81156014)(6116002)(305945005)(7736002)(71200400001)(256004)(81166006)(68736007)(8676002)(2906002)(74316002)(6436002)(99286004)(86362001)(71190400001)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4062;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 8wlJaw/uz4+3trCIXMFBNhaNpLK0SSA5YoeVqG+Fl3Vt8ADLHsI4tYLFibOyesBPtDviqvj+iR3rai9OmDyX0m1jrFua8DS7dsn358xX5b9Sx8r77KNKi5LLuIawBafMH68PjpBzyen8JRPLffpDMiSsaObWZvmCqyw5/IKezPwYlIQeEObIi44Gz1tavHcZPUiMrgM54F5vcBqFQCxexPMVCNbjEOkYMhd1jxpRay2pi0ozitfs73wqBXXc3EficWCgUKasBK9bh25IAyhsIN0Gt08tB9wA94Mo0iRRGc6BFj9BdML1G9+xcsc8SJrWt3si0oPP9yEyNIQEFoVzpZeFO+pcyimdC6aTwBFI+NzLKbKEBB/FGi6kXgXIu3CgrxZcDFg23CJooGbSuJhigKsRRRaxLguYQyO5aTGP9II=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68768818-08a0-4825-f610-08d6d23f7fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 16:25:48.9300 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092551_046120_041809D0 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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
Cc: "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We need to get rid of the string comparison here.
On 05/05/2019 08:06 AM, Minwoo Im wrote:
> The following commit has affected the result of genctr and treq field
> printed:
>
> genctr would increment two times per a subsystem due to
>    Commit b662a078 ("nvmet: enable Discovery Controller AENs")
>
> treq field would be printed out to support TP 8005:
>    nvmet driver:
>      Commit 9b95d2fb ("nvmet: expose support for fabrics SQ flow control
>                        disable in treq")
>    nvme-cli:
>      Commit 2cf370c3 ("fabrics: support fabrics sq flow control disable")
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   tests/nvme/017.out | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tests/nvme/017.out b/tests/nvme/017.out
> index 4b0877a..d7685f6 100644
> --- a/tests/nvme/017.out
> +++ b/tests/nvme/017.out
> @@ -1,11 +1,11 @@
>   Running nvme/017
>
> -Discovery Log Number of Records 1, Generation counter 1
> +Discovery Log Number of Records 1, Generation counter 2
>   =====Discovery Log Entry 0======
>   trtype:  loop
>   adrfam:  pci
>   subtype: nvme subsystem
> -treq:    not specified
> +treq:    not specified, sq flow control disable supported
>   portid:  X
>   trsvcid:
>   subnqn:  blktests-subsystem-1
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
