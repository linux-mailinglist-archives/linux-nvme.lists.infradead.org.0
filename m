Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0991AEC99
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 00:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=e90wKQ2ryvWKjcVCjOun+cjWJRsaSqU0flqY+lUHmnc=; b=gblWSqXyVhpIby
	umcQ82E6zwnTkcZSC18w5DDtbVJJZwOp1Orbmsjc7TZFRsQUaEy9XkZ4EPqgIzLPzS9pl79aYUM3V
	dVQudtqMU46tL1bSMCPSpitgZp+G6DdpxrEIsB1oE4ViSiaZoOlPb42TbnMphZLSFo0qmVLP2M1pm
	TVVk1W2tCD8B6LnrflWNsANrIXQJvKUGTMjq3MfKx4V4OsZWBEtuurlMEBuuu3u31jHpUKjdrTwe8
	tXml4Tt9l8p8YoFJZiOde4pKTHgoSSlWpWq3FziGOCZw2wNcuVDtv+Ii9M2LU6V3JEyvLSxYIaZk5
	zdi8FeDHMb+/UfjD8VuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEXW-000074-Lm; Mon, 29 Apr 2019 22:14:22 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEXR-00006e-9U
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 22:14:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1556576057; x=1588112057;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=H6/2My/oBeyEMr8knKbYDg9V3p8RV6oSDaRpUlofUbs=;
 b=Jubp7V1DaeXK/Ea0NRYWZFBjpklbuYTOFVb9j3gsvTAEsZHJyzbwne/n
 4YZXZ0MxWhvaj5nSjWFUb6rHHnRWfKvRA7LPLZVIFPg7uyP1u/RTG4FgZ
 hfyMiuiMlk7feWRvZcUZeAraLwcdZLa3hevoYDUI+cQwOKFZytJQCiJhz
 RP5oh6+ssfxaqTfFBujOvguVbumOGW4OcZRb0FNradX2CkDTJEhfYrhTm
 PDZo0CzRKLQ+UhQPs13Y/ZDZ9aXqOKcsWBy1M4Y+0ZyGrOwLlXcYL8UVq
 +1GqADBybGeIn5j45C6Wmg/LwR0NpHsVRCpqx5kWTVmVr/eU4A/G+1Un/ w==;
X-IronPort-AV: E=Sophos;i="5.60,411,1549900800"; d="scan'208";a="107111305"
Received: from mail-by2nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.59])
 by ob1.hgst.iphmx.com with ESMTP; 30 Apr 2019 06:14:17 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NZpaWikFzYerIERmLP0LjFEuWIYEN7VdqdPQaRV/5tQ=;
 b=XvGiixCUbgcshpLNI89CwEteCc6k6OmU3YC/ooVqErcpHQAYLYA/TKTCVr3X0QHriIVeUaqk3CH8mfkHOyTtdh2SyoAB6/phkMJpnqEcMuZ9buqDuTZa4RiRJ4jZWSjrVjq5B7wP3kfGRW4v7ydN6XW8OuEfU3k+pcfnKogmEwk=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4319.namprd04.prod.outlook.com (52.135.72.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Mon, 29 Apr 2019 22:14:15 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1835.015; Mon, 29 Apr 2019
 22:14:15 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH] nvmet: fix ptr_ret.cocci warnings
Thread-Topic: [PATCH] nvmet: fix ptr_ret.cocci warnings
Thread-Index: AQHU/rUi/X3mcWJFukeNj8Wd9t7TxQ==
Date: Mon, 29 Apr 2019 22:14:15 +0000
Message-ID: <SN6PR04MB45271D793C898E527914578086390@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <201904300131.gB7Qr2Ik%lkp@intel.com>
 <20190429175734.GA20932@lkp-kbuild08>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 641456d2-10ed-436e-939f-08d6ccf00441
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4319; 
x-ms-traffictypediagnostic: SN6PR04MB4319:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4319DC226DCD341472F2E54486390@SN6PR04MB4319.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:327;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(39860400002)(376002)(346002)(189003)(199004)(54906003)(72206003)(25786009)(476003)(7696005)(71190400001)(33656002)(99286004)(81156014)(316002)(52536014)(8936002)(6916009)(53936002)(966005)(71200400001)(5660300002)(486006)(2906002)(81166006)(478600001)(6306002)(9686003)(55016002)(66066001)(68736007)(97736004)(76176011)(4326008)(6506007)(102836004)(53546011)(8676002)(6246003)(446003)(66446008)(186003)(6436002)(64756008)(14454004)(74316002)(7736002)(66476007)(76116006)(229853002)(73956011)(66946007)(91956017)(3846002)(305945005)(6116002)(256004)(66556008)(86362001)(14444005)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4319;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0hCbZ+afmIGFj+tbpcvvV+k6ggVxdXgLn2t4rf8WmsS59CR0nKe9/13dLpZ/qIxjPNmIzNsF2mBaO2HhI6QX+CMVQ7BxmOKJudgP3LO8Ig7R/SXeje6ciaHDmnkfhoCp2zB6PraLR9G1Nzq2+/vxF2T/HItEz7ubgoyxS5VZYjZ6/DIztJMz7aoKqg+g1TmlovWRZyaARWeZt6wEhJCOteACOiv8VohPSKLjo5MFa5BEOqixFu5Modp2Boz2mpOYcXbExLMWLAD1jBHhkPbxyNqE3aIJvHkLeFhf+hgdm5Rwh8VTD76GI8bh+C1p6OiHdgYtzobFkJ2Xprvio1mtPNc2i8XwbsZwLakTvEOhUdYaBOcMh07tZp4S8XbKHKDiPhUKYdy8z3IieeqT6CB2+pgB/fr0HYn6lqvAUAURePw=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 641456d2-10ed-436e-939f-08d6ccf00441
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 22:14:15.4177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4319
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_151417_369498_6C0CC6BE 
X-CRM114-Status: GOOD (  14.39  )
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Minwoo,

Can you please resend this patch with the suggested change ?

On 04/29/2019 10:58 AM, kbuild test robot wrote:
> From: kbuild test robot <lkp@intel.com>
>
> drivers/nvme/target/discovery.c:375:1-3: WARNING: PTR_ERR_OR_ZERO can be used
>
>
>   Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR
>
> Generated by: scripts/coccinelle/api/ptr_ret.cocci
>
> Fixes: 6b7e631b927c ("nvmet: return a specified error it subsys_alloc fails")
> CC: Minwoo Im <minwoo.im.dev@gmail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> ---
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   3d17a1de96a233cf89bfbb5a77ebb1a05c420681
> commit: 6b7e631b927ca1266b2695307ab71ed7764af75e [9188/10649] nvmet: return a specified error it subsys_alloc fails
>
>   discovery.c |    4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
>
> --- a/drivers/nvme/target/discovery.c
> +++ b/drivers/nvme/target/discovery.c
> @@ -372,9 +372,7 @@ int __init nvmet_init_discovery(void)
>   {
>   	nvmet_disc_subsys =
>   		nvmet_subsys_alloc(NVME_DISC_SUBSYS_NAME, NVME_NQN_DISC);
> -	if (IS_ERR(nvmet_disc_subsys))
> -		return PTR_ERR(nvmet_disc_subsys);
> -	return 0;
> +	return PTR_ERR_OR_ZERO(nvmet_disc_subsys);
>   }
>
>   void nvmet_exit_discovery(void)
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
