Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DDD21C85
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 19:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Q7+1oAQvYFMbq77yox5qZbwqZ/MGQBu/WfkO689Z5pI=; b=KbYY7Fm2iYvIpW
	3YjOkHdzTU8MY95FXPG7eu+K51yIomrAUp3cS322kPEuHT5wION3NX6coB4EbVCBLS32sXVrUrPbf
	QpOCecJU84fHbQv1RqXNiiP88ghNrr75du6NxSdgYNpKGI5wVtVGXNeWwnvyWQdtpwI5OMnEhgMTo
	7aM3gejDYhC6rpKyXCp0DigF0fqOtMTkF18bu4Hwssp1Zh8Z/L38ngW3jWXJA0nH04z0NkmCCsJ2t
	o24w5gcL3HYLYPU7FrZ5EkJhnMBtr9G4S7tXJAPj2mKZjEeDUm4h5epDpusYBSA02GwEmtML7qI6t
	qlS23c7fnzRE6uAgcV1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgis-0005Bt-Us; Fri, 17 May 2019 17:32:46 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRgim-0005BY-Ij
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 17:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558114360; x=1589650360;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=6h9r4evFWlBFal5ZG1P0BjLiL3SPoIbcpJoN/I77LKM=;
 b=rGXRBNNwtMnWinDJ0On9aKNKwnv/6Gsue4NrNbBR3fh4i2A9ZQ4BVffa
 hSiixLj6eNkKu03iv7pb6E/I3dZxgoZdQIDk0L92hNoQgawiVSFngOwlH
 DJTjppqYWY0CImEYsmUHA80YPft25GlhmvvP5KmF0lJ257TeWcWQI2LCO
 wOAWlLDpeEKpXei9HXbzhCn2mpmRO7Z7v/OxddwXJOgwcQ7yrF24XXRWt
 9BbSiAeezZrCaKJHHCyN3sqXw6ES/Um/yjdUGIDMn+T6ZeVC8UM5BmOGm
 fsNBUM7Ep0SUJMIzgxCBcCpPnwQJSxNTbxG7GHKeH4a4ztj17n/Uw9LRA Q==;
X-IronPort-AV: E=Sophos;i="5.60,480,1549900800"; d="scan'208";a="110228467"
Received: from mail-bl2nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.53])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 01:32:37 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VqN2/B+F2mZaixiMTEjf0JhKnnU6AOkEjSVOgIjKnOM=;
 b=ceLlWOZxszvx6SC0UIi0g3vr8wazHwTnmGuq+jF2UKulJddRMDzLNXNLtGsbbSqjf/9KeCXAb6TwX7+bnDT2KmV1XGqFav7tboSuzKrx7kzCdInAA1dDsNsEu/DCmTPj+N5VUOlq/QixhAX7oLtvXhx4F+/3VpaxrmtCLiDbyyY=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4880.namprd04.prod.outlook.com (52.135.114.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Fri, 17 May 2019 17:32:35 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::b163:e740:af6e:2602%6]) with mapi id 15.20.1900.010; Fri, 17 May 2019
 17:32:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>, Sagi
 Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme: Fix known effects
Thread-Topic: [PATCH] nvme: Fix known effects
Thread-Index: AQHVDMxSYTBHlVwUB0ebj5PUeGTnoA==
Date: Fri, 17 May 2019 17:32:35 +0000
Message-ID: <SN6PR04MB4527DDE02A29308B60249AF1860B0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190517161346.25102-1-keith.busch@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [2605:e000:3e45:f500:80ac:e3f3:7436:d81d]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7cdc43b8-16ed-4c60-913e-08d6daeda697
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4880; 
x-ms-traffictypediagnostic: SN6PR04MB4880:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB48801CE08F0285F48FA72A2D860B0@SN6PR04MB4880.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(376002)(366004)(39860400002)(199004)(189003)(478600001)(8936002)(25786009)(71190400001)(71200400001)(72206003)(74316002)(33656002)(52536014)(2501003)(5660300002)(68736007)(53936002)(6246003)(66556008)(64756008)(66446008)(66476007)(966005)(76116006)(66946007)(73956011)(316002)(91956017)(256004)(6436002)(76176011)(81166006)(2906002)(6116002)(476003)(446003)(229853002)(53546011)(81156014)(14454004)(7696005)(86362001)(14444005)(305945005)(6306002)(102836004)(6506007)(46003)(8676002)(99286004)(186003)(110136005)(9686003)(55016002)(7736002)(486006)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4880;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kf+rjH5d8hpMkmTDem0ko/T2tkugE4Umzt6LasWwh4mewbola8aPwiZgNEYK1x7Ncu+ZDYC27CkIkdFvbkJLxfY7/95shqQlzLtJjKYcFE0uLLEfEQtMnD+e0q+Amr0rn2zPe/StxqceUVMPjUgcaKmkc8Jn/dAb/Re5EQsZd2DGBlMY3mHgxZHQGZpC+v2l9oLr4LDI7PXyWRnU4/8rOhpUjwAjaP/gVxrPl4u8ILeSvJhgu33jve1/vIgqpV3qoq822wduxsKzkbcsZOsLSaS4TXtVcXEuEQFyvJyivHexRf99DHZfyefZrXp4C3eJ+1eQPRxr8nqF3Wck++rFGkQvY8nsDqynSPhyvjJ+R2bak/wrWP1Y6UDkTKZXkODjLr9zAxYhuRsPY92suzp2VfifAqYMi0H+ejc559E7eEA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cdc43b8-16ed-4c60-913e-08d6daeda697
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 17:32:35.5040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_103240_705495_E34B9B46 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxim Levitsky <mlevitsk@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/17/19 9:19 AM, Keith Busch wrote:
> We're trying to append known effects to the ones reported in the
> controller's log. The original patch accomplished this, but something
> went wrong when patch was merged causing the effects log to override
> the known effects.
>
> Link: http://lists.infradead.org/pipermail/linux-nvme/2019-May/023710.html
> Cc: Maxim Levitsky <mlevitsk@redhat.com>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index f2411d50e764..5175451916d1 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1273,9 +1273,9 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>  		return 0;
>  	}
>  
> -	effects |= nvme_known_admin_effects(opcode);
>  	if (ctrl->effects)
>  		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
> +	effects |= nvme_known_admin_effects(opcode);
>  
>  	/*
>  	 * For simplicity, IO to all namespaces is quiesced even if the command



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
