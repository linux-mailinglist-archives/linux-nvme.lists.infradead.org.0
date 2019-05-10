Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C7A1A2D1
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 20:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8/4lW9ju6MX1sx/o+5s0La9Zb7Io6pl9N41FDZbqguQ=; b=p6+pml+GWkyug8
	ldUqJtAj49GoQNc6CEpB/KlNLoQiTwlaglnBJ7lnk/X9dq5ZL7zhJZMRVM3oyfFRNISXRhnHjadVm
	p3q2REgwcOPU7BW+37OWiexiG9Ba2Qwa9C/x7UooOIxVBob7krE40BIVi2+xsgyooRs+3vhlDczOz
	tLsmn74wdyFVYXOFMh+K4N35aP3rsaE87CUClx6FFpVZR7PD53Bxs5c7Z6KmlVR3696Frji8IBamI
	gZLGqZPZPMXID/rJG0hs2D/CiduUkZGlW0GY7hy8ReFneQbRmtRvUpq9EA8vyg2rOa5TJc9FpK6nM
	tSDeHVC733PxiQZUPAuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP9tj-0004bg-Ot; Fri, 10 May 2019 18:05:31 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP9te-0004bF-RP
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 18:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557511527; x=1589047527;
 h=from:to:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=gwNgah+3IJk4ljv46kIEDAT1f1FKYpeAWk9oz/kZi0g=;
 b=KwzKOVNSdwU9Mc6E9XqNHVa1mGEmVJZWSJU/k1uOiLq22S7bGDYhNe/A
 UysI2qX08OkzC8IPQHsMAgpnnPT2lXOIxx3SGlwJ5XeD/cFRCKOCtFFNd
 XiR6Ie+29cfQ0xaGSWmbknZf14Lu2LRYtkZkKNtcc6bjez8oNtRKV+qOy
 7PR3pg9Ts1Rb6UmzFwPOgf/gN8kX3Qo2mxXfyskEi5uFjyas3/kHSkN3O
 y2yejGSW+Shkc6P6vPvZDQVgvBb8p2Q4XT+jxtimymumXIJk0TyCirUNb
 AS2JWUnaeuBJM0DrEcX2XXYnGk9xcRL16llTjMoW6eAyf32dtnrC67L2s A==;
X-IronPort-AV: E=Sophos;i="5.60,454,1549900800"; d="scan'208";a="108008214"
Received: from mail-sn1nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.58])
 by ob1.hgst.iphmx.com with ESMTP; 11 May 2019 02:05:24 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T5mGJcQ/YCk5YDHpi2XaEH3vpBZWd9tQZjxqqA88h4k=;
 b=Yo7uTKt3MstIo92BLpo0LtqEfStJ7sHQe2YBqUbdcK1HLc4wXpGmFo5Btit6EQn3T+niP2Hm0WsOIUkCo9qwDcP1kcsmDmdUJ/qvyJBZz+d5RLaba+OpIaf/IfomRJxTpnOo39DUmAE30nZEFkMjH6za0WTBWb9cDeB4K5g1gXc=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4669.namprd04.prod.outlook.com (52.135.122.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 10 May 2019 18:05:22 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Fri, 10 May 2019
 18:05:22 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 0/3] nvme-core: add user command filter
Thread-Topic: [PATCH 0/3] nvme-core: add user command filter
Thread-Index: AQHVBcz6NLAgsk8/L0+Ngp1zc0Y/Rw==
Date: Fri, 10 May 2019 18:05:22 +0000
Message-ID: <SN6PR04MB45272218338D99D53202D70B860C0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508183634.4682-1-chaitanya.kulkarni@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98091565-c5fb-4609-85cb-08d6d5721249
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4669; 
x-ms-traffictypediagnostic: SN6PR04MB4669:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB46695F3737C9C21C375714B7860C0@SN6PR04MB4669.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(39860400002)(366004)(136003)(346002)(199004)(189003)(6246003)(305945005)(53936002)(33656002)(8936002)(25786009)(2501003)(81156014)(81166006)(8676002)(71200400001)(71190400001)(68736007)(256004)(7736002)(76176011)(6506007)(2351001)(53546011)(99286004)(7696005)(102836004)(2906002)(3846002)(6116002)(476003)(486006)(446003)(74316002)(186003)(26005)(52536014)(86362001)(66066001)(6916009)(5660300002)(4744005)(72206003)(6436002)(5640700003)(14454004)(9686003)(91956017)(316002)(76116006)(73956011)(64756008)(66946007)(55016002)(66556008)(66476007)(229853002)(66446008)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4669;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PjvvPj8cNIwL6ThVjjIo2FcjkK7eAnYacIpzJK2HV/EvCL3UzLl60HOeINKMv6wm9oMytRD9MlRuKu+cVYohKK+uXNHPlXWvoMA6F1YuQVjqGd0yQaftKgdHiD2iVh/HEU/shdyMJ0mN0lx4Kau/RCpVog84vnSHigz7psZcGvVJN/cUD2TP33QyfiJviYEHdwNPQfj/ueG79eRoghD7rG9GsNGwSkh50uvRtpu4IzsCbchIAxT1v+Ua7j8QXR7lxDOfCn3Vi8eG2kKtvitWop2NS/9VzZk8pbq8++nN82vHCQI8HHnnUmBitY4SfeHMz6nwl7MxrnL5P37LXMQngrkpckSiCneo8lUXmUtdAwyQ6h5UK/RbPyVxU+pAF8dIQT/LRtrhEHzb9Kum39SNPMuhyW38emv7GBhy9khgG68=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98091565-c5fb-4609-85cb-08d6d5721249
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 18:05:22.8579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4669
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_110527_007512_D3912F8D 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Gentle ping.

On 05/08/2019 11:36 AM, Chaitanya Kulkarni wrote:
> This patch-series adds a filter to allow only certain user commands.
> Right now we use this infrastructure to prevent the user get log page
> commands where RAE bit is cleared. We only allow get log pages to be
> read with RAE == 0 where we issue the uevent to the userspace so that
> user can clear the log pages.
>
> Here we white list the log pages which are only allowed when RAE == 0.
> We also allow Vendor Specific log pages irrespective of the RAE.
>
> Chaitanya Kulkarni (3):
>    nvme: introduce and use RAE bit macro
>    nvme: add sanitize log identifier
>    nvme-core: add filter for user commands
>
>   drivers/nvme/host/core.c    | 64 ++++++++++++++++++++++++++++++++++---
>   drivers/nvme/target/nvmet.h |  2 +-
>   include/linux/nvme.h        |  3 ++
>   3 files changed, 64 insertions(+), 5 deletions(-)
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
