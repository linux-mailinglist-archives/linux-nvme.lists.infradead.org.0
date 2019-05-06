Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E28215134
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=HW8e18cYSySjfsZCAvxqy2uYaRKr+QvSrKHWxrLs/QI=; b=PQHrEOK2rcDsB9
	f6dZ+b1kfJai+BrD3srsIAs4fFTl2q7AYonrPhyC8SgG8+qYJ+l2oBuyMdOF381PHRikMcg6P3ckB
	O8bkJ9/qNR3RlIL4igRaOi5Tb5HVcpUT7pPbYft7lyg+Nmy93sJnjyN/0FV4hojCSLQIp/EFXDN0J
	8Tl1rsVnJq65oJzc6CvkVVhRHl5aIxyUZMV1DmWX7G0pjqCAMioAkVZIcnGwXjXG6x0ig3dUw4Usp
	x9gVwfd0KuJs4vdkNEh/yIK21DQJ19miRKpfdaNMKNZyoIMncHEkhs3zYdal8fpOPtruMDpvm1bUE
	R6fkYYMlhxg/+5i1nNMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgS6-0004LW-BL; Mon, 06 May 2019 16:26:54 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgRR-00049r-07
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557159973; x=1588695973;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=aBN2XyOogjiXBo2x3Cy8FCVcyl4iWZ8kxjHIPn9tPTg=;
 b=DUx1UuhxdUHhaUNq6/ozZWYRCTdiLY25lewptaWFMFNCsBEKrWgr7Vbp
 lkTgkmoXNYTcISBIFhBcSyhBZoqQ5cNxpPXHgcClfO1I93+gGJHtl486v
 G02Ba4me7v1XUVa3+7vR3w90z+Vq0r5eOMIBRhfv1bBdQZEV0ohk9grtL
 AlG2l8kXlnwEgkG92dPwLf3pdy/veM9hI1z49plosPFjREnE8BJUqvxa+
 byWdJDlBX/pr3fj9EaVK/ODIbyBUaNlI+/qSqdioSMGlmuESR2fYMG3PU
 fGNxksQT03g6t5zQH62VTHpVgecepzHTvlJzA6GzKF9w1V/DhoZUpA0jS A==;
X-IronPort-AV: E=Sophos;i="5.60,438,1549900800"; d="scan'208";a="108834778"
Received: from mail-co1nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.58])
 by ob1.hgst.iphmx.com with ESMTP; 07 May 2019 00:26:12 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hOpXC3O6FcsnbyMoeMzdQU9Yr9ezmLVctL/744MYGSw=;
 b=D9zEvCZ68PaOgc6AIYOY9uS5w0c6/OnNAc+dWtj5HyxIaiFLJLRBlOil+jI23axgi8VfRhb1XmD3Lu9KI0JDy6qzcNBDVP2Kv9LxdtEEiBqGevhwJ6WNp13IMFJQqzy7i/evV9Gj2x5P0mgsW9apDXNOJQc2dupkfL1/jLynU8Y=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4062.namprd04.prod.outlook.com (52.135.82.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 16:26:11 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 16:26:11 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, Omar Sandoval <osandov@osandov.com>
Subject: Re: [PATCH 2/3] nvme: 016: fix nvmet pass data with loop
Thread-Topic: [PATCH 2/3] nvme: 016: fix nvmet pass data with loop
Thread-Index: AQHVA1Qn7EhCyAs9uk2B8q3mOzvu7Q==
Date: Mon, 6 May 2019 16:26:10 +0000
Message-ID: <SN6PR04MB452726B60D050C3A88A7456C86300@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190505150611.15776-1-minwoo.im.dev@gmail.com>
 <20190505150611.15776-3-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e7d05a41-3047-433d-ab6b-08d6d23f8d14
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4062; 
x-ms-traffictypediagnostic: SN6PR04MB4062:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4062E46144AE4C5B571F8F3686300@SN6PR04MB4062.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(346002)(39860400002)(396003)(376002)(199004)(189003)(52536014)(54906003)(316002)(53936002)(446003)(476003)(486006)(110136005)(6246003)(5660300002)(7696005)(478600001)(72206003)(14454004)(26005)(102836004)(186003)(33656002)(91956017)(66556008)(66476007)(9686003)(76116006)(64756008)(66446008)(66946007)(76176011)(73956011)(6506007)(53546011)(8936002)(55016002)(25786009)(229853002)(3846002)(4326008)(81156014)(6116002)(305945005)(7736002)(71200400001)(256004)(81166006)(68736007)(8676002)(2906002)(74316002)(6436002)(99286004)(86362001)(71190400001)(66066001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4062;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iTf5LsIJS3GtsLxyVuxYmy1LBOfROXV7e8akhZsAT3RLGPM0bozs+7CE1Nl19w9Ms2Rqd+xZ4ucwDIP0yrcVFzvE3B4IJfD2tF5dWBD+NWE+jx//4AI/czm1jrw+fzARs0g4uHCguAQqBqF5jfIcm7HEnAWelcvZlDVxslxIC7mOAMG06XwXAr5YutmGxU2JjKaaZX3lD6/s8OZPUZqm406k/Gurn7gh3QKcd3bb0wgAxAekFoCJO/PngkDS0SP0L3t+KovP01tyMv34aoJ50nPMGeUXaQkD0mzTW6nmNymBkRp4bvGCTqh24yqmm8dtzPR+owWxYsGp4LBv/MvjJ9HSCSMlggxGLd08RkPLYj3LnRNactEIDDEybr8oAqMroBvSVOlXJ6ZZ/jLOowq75qdrklKlr3aV4eiB8eYsoos=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7d05a41-3047-433d-ab6b-08d6d23f8d14
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 16:26:11.0087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4062
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092613_158395_41F556C5 
X-CRM114-Status: GOOD (  15.02  )
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
>   tests/nvme/016.out | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tests/nvme/016.out b/tests/nvme/016.out
> index 59bd293..8599066 100644
> --- a/tests/nvme/016.out
> +++ b/tests/nvme/016.out
> @@ -1,11 +1,11 @@
>   Running nvme/016
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
