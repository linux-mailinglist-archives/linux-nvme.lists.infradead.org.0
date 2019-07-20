Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0C06F0C7
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 23:22:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3SP8zyon02gsff+DOwPt5YTPUnVJG3gppQsuEnoldaw=; b=B+3HQ0AQqwZ9kr
	MfeOn5ty+C6YYu9iNPu9lvJRm8NWOBxL0Ij3kRku6z1sHtkg0NqRnFwhKPJtuTbg/v/eySCsMJjh8
	BvDGTFLyx09vhmjPOeNPBSnM3sYsAddTT9i2AtcXKqYIBQMuzdvAnJyiRnBHDvHbuZOpeiVv3Ghio
	nBy7dV35HGnHodAOX9cNSaWm29rp+B2zonUkPG4fJtwq8OfjvVrohGajLCzAshrS3ahdzf36+gFcI
	vs9MVo4eipn/u7yaCZfJsK3UAtPG8Jh77gAwFcaf2WbKZAGqoU8FEk2KQeoGku39BnrTPJxR1yGO3
	hvm7sanPS0trj99nNt/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1howoF-0000Bx-No; Sat, 20 Jul 2019 21:22:28 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1howo4-0000BR-Ov
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 21:22:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563657737; x=1595193737;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=XxQ+GWfo0s4RTYV7OZ/zxCrDUwhfkUVUFVB1bl+76hg=;
 b=hCQbb2fcuspW0G29MY5yjyO9ARhVSyjCDzLmhI7M/xzsUqcDKpV7aRI8
 DQNbIle0zs8kll9LZowQ7nk61V1XoTs/lCZ5PFZVeF3sw1qr7/SDB18kX
 58AjNfyyjTughbSR3apaVavPseSb6dRSi77d/4UzgDYL/Rm+5mKa2NNKY
 IF2dsddflYGC7ymEWOtd/6ll0pe4xlI1kGJzyjz+AippxOXPCNJiRwv5f
 53R+3l1v7nhJW/jdAFpo/ouMCDf3gB9a/vN6RQeXP6xtSngoQsEYteHP0
 u6VDZGBZTLcWUJovZ6pALuN/+kw77pGbYHCWNHzRfzNBppIRjm3l3CHDQ g==;
IronPort-SDR: WEY+3bwRiHxz1U+PA7zZ+XcZwnbicoT49k/HokM3iWEu1hB0S0LjpZfoE/YovTMPp8m85HEPkv
 lo+Yr+6YhDMNI2EKhyzh6sjcmagJWZSkDtCDVwLWwJNa1bD5b0H9sOCkLJuchc+tZGw4/GzgJk
 vMlznFDnlSeYHQAXHlc+7wgiSod46dDOVOaZhmeQ59a3yBXEFCSzxWS0NxIEFIknIyoBpFhAra
 ryDu/jNf6WW7kcgFRPsCjegzPG7Vf2/VoK6hipSSROTBZQF2SaxB8fr5twpdEmQaX63A1wIMq5
 DRY=
X-IronPort-AV: E=Sophos;i="5.64,288,1559491200"; d="scan'208";a="118340558"
Received: from mail-sn1nam02lp2057.outbound.protection.outlook.com (HELO
 NAM02-SN1-obe.outbound.protection.outlook.com) ([104.47.36.57])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jul 2019 05:22:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3V4yn2saQfRCgEQrkDu2WOv2CCS6puLFTRxHYp7zeIolysvJPr+xp4WKoRpC0dXoA609vI43kM4+/idl+7aDquE/y60uleooMY7N5+O4fNJ6LQgL3B6YM0qsgl4r/t+xGAIMpZz3OMbL4qQKBMcFPPl1rCdvqwMhpRWTMgjICBJljVRfzVE9w9AqkZ1h6hT4wzASH34HE4NqEoQ4lPNYkaw0CMIcHwOBRfGPg+sY3GPB6IBGqK6yhhc48o5f3bYcG+aJIWJXK+o5lO2ThODQu89XRrFN0B+sW/1O6mzlefWvby4Lmb07R038sMxs7OYwAuUCp0Or1KSeE9c/mXqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MEFxLMfhmg60NxmMFm5Pll3KL9798eOEr9T2djhwdE4=;
 b=IAFB1uaRyV4tIUswknXcbzkLKV0m6UU54avlU3WLgqH+X9chfi7aahQ1PJIGU0oYU8x48d/lJ8HvGFeErFTIzOa1VnnKwwqVW+3K4zsiexqVounOMEywuUP5HTnWT3Z8/Bck4W25G/SJj0VB0LKmCO7eHwnx9R8OljBJwLhGAUfDVay11bnj1T1IkpWvLUygCFopq9keTdZATcS+eCOXz+PPyEUtvGPJmnZ0cssvlZ5Zy0cKiKn7EhKd4l4GCRceA5u96PMPSeaAx2U86fRKLlCeXdwQVjdvjZZtmkHWHeYXK+R7foComGpEkdCW47uLxhyGJ2j5XQvfFvMbN8s5Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MEFxLMfhmg60NxmMFm5Pll3KL9798eOEr9T2djhwdE4=;
 b=cElt/HhI0XD6k8tRhyyyEw3NQVIuSz2DdX/CDn0rTtutY126cMOfT2Bfz/1feOQtIbrJW8zTaSWNjeeiOY/21fIVoe8G6faYRhIsf7Obr9rjgSPoTRDA9zVpelrYSivVmZ6/bnSA8DSceZLQLd+bSFfOAMs6q8S3SAbmTBbH5Lg=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5286.namprd04.prod.outlook.com (20.178.49.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Sat, 20 Jul 2019 21:22:13 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2094.013; Sat, 20 Jul 2019
 21:22:13 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 3/4] nvme: don't pass cap to nvme_disable_ctrl
Thread-Topic: [PATCH 3/4] nvme: don't pass cap to nvme_disable_ctrl
Thread-Index: AQHVPmqvVDNNdDi3uk6y5+X+/wsRgw==
Date: Sat, 20 Jul 2019 21:22:13 +0000
Message-ID: <BYAPR04MB574973AD83411B2CD72414BB86CA0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-4-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 495e04fc-6469-4459-9512-08d70d585516
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5286; 
x-ms-traffictypediagnostic: BYAPR04MB5286:
x-microsoft-antispam-prvs: <BYAPR04MB52860CD6905CD26765CE60D986CA0@BYAPR04MB5286.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0104247462
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(346002)(376002)(136003)(39860400002)(189003)(199004)(8676002)(99286004)(54906003)(86362001)(6246003)(71200400001)(110136005)(7736002)(305945005)(71190400001)(4326008)(2501003)(74316002)(229853002)(53546011)(52536014)(76116006)(66946007)(64756008)(8936002)(66446008)(66556008)(316002)(6506007)(81166006)(81156014)(68736007)(5660300002)(7696005)(76176011)(9686003)(55016002)(2906002)(66476007)(53936002)(26005)(102836004)(33656002)(186003)(476003)(66066001)(6116002)(3846002)(6436002)(446003)(14454004)(486006)(25786009)(14444005)(256004)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5286;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nVYFtTO6FbriXywW3lsTCw1Sn7glRSO6OGpZ1N76bgocS7GVunYeZlTrLigHYVT9TgoEt8tiHcwOyzMSzxI7R0Msp5Qn0vOaJbTkuy7HZSTpnAaXhBasAC7TPYCsbXzXBOBPlI+H4eFs1q2Aac2ALIkcxMdU8sq6k4eDxbvRWuGE53uhJnaFS2uZk/FmgNI7Us5Ar4gtFpX757zpvSH91HYQkRXZQBmLi7oCpOc4a9GA4iVA6dTIcxO9MUqR6IrHu2k9JNy6QgKBrb+9tuwReN4tS1aV4ApGLT/QKYU3s9XmSrAvY/VF/VkMqm3ogt0N16JeRGnD+6Zlxah0BZQVP1jkZ1wak0RWB4hs5JoxmkrsF08m34MNCaW/Z3Aahd5kWi1SyVsxtdm4TSVxr0mV/Ahe09usVAf4JwPHPRQnl4k=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 495e04fc-6469-4459-9512-08d70d585516
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2019 21:22:13.1111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5286
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_142216_940348_AB147344 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 07/19/2019 12:46 PM, Sagi Grimberg wrote:
> All seem to call it with ctrl->cap so no need to pass it
> at all.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 4 ++--
>   drivers/nvme/host/nvme.h | 2 +-
>   drivers/nvme/host/pci.c  | 4 ++--
>   drivers/nvme/host/rdma.c | 2 +-
>   drivers/nvme/host/tcp.c  | 2 +-
>   5 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index da4182aa16b0..60e924b0b510 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1949,7 +1949,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
>    * bits', but doing so may cause the device to complete commands to the
>    * admin queue ... and we don't know what memory that might be pointing at!
>    */
> -int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
> +int nvme_disable_ctrl(struct nvme_ctrl *ctrl)
>   {
>   	int ret;
>
> @@ -1963,7 +1963,7 @@ int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
>   	if (ctrl->quirks & NVME_QUIRK_DELAY_BEFORE_CHK_RDY)
>   		msleep(NVME_QUIRK_DELAY_AMOUNT);
>
> -	return nvme_wait_ready(ctrl, cap, false);
> +	return nvme_wait_ready(ctrl, ctrl->cap, false);
>   }
>   EXPORT_SYMBOL_GPL(nvme_disable_ctrl);
>
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 716a876119c8..a7f8fccb1f35 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -426,7 +426,7 @@ void nvme_complete_rq(struct request *req);
>   bool nvme_cancel_request(struct request *req, void *data, bool reserved);
>   bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
>   		enum nvme_ctrl_state new_state);
> -int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
> +int nvme_disable_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
>   int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 0f38c1d96d19..f2e74043dc6b 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1403,7 +1403,7 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
>   	if (shutdown)
>   		nvme_shutdown_ctrl(&dev->ctrl);
>   	else
> -		nvme_disable_ctrl(&dev->ctrl, dev->ctrl.cap);
> +		nvme_disable_ctrl(&dev->ctrl);
>
>   	nvme_poll_irqdisable(nvmeq, -1);
>   }
> @@ -1679,7 +1679,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
>   	    (readl(dev->bar + NVME_REG_CSTS) & NVME_CSTS_NSSRO))
>   		writel(NVME_CSTS_NSSRO, dev->bar + NVME_REG_CSTS);
>
> -	result = nvme_disable_ctrl(&dev->ctrl, dev->ctrl.cap);
> +	result = nvme_disable_ctrl(&dev->ctrl);
>   	if (result < 0)
>   		return result;
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 8e9f0fd5b01f..8e2094fb5e7e 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -1860,7 +1860,7 @@ static void nvme_rdma_shutdown_ctrl(struct nvme_rdma_ctrl *ctrl, bool shutdown)
>   	if (shutdown)
>   		nvme_shutdown_ctrl(&ctrl->ctrl);
>   	else
> -		nvme_disable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
> +		nvme_disable_ctrl(&ctrl->ctrl);
>   	nvme_rdma_teardown_admin_queue(ctrl, shutdown);
>   }
>
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index fba80dc61ce1..4a32d5350fc5 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -1896,7 +1896,7 @@ static void nvme_tcp_teardown_ctrl(struct nvme_ctrl *ctrl, bool shutdown)
>   	if (shutdown)
>   		nvme_shutdown_ctrl(ctrl);
>   	else
> -		nvme_disable_ctrl(ctrl, ctrl->cap);
> +		nvme_disable_ctrl(ctrl);
>   	nvme_tcp_teardown_admin_queue(ctrl, shutdown);
>   }
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
