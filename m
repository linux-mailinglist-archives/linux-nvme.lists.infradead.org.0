Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8498A2108C
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 00:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XJelBPD13SsE2oqksw63UAU3aPdxHe7iXwGMrO9Vviw=; b=Ci7FwLJs45Tt0u
	6duDiiuqVXlwVMKyY2uTBH9LITkCrfy9AEq1z2UAL6wN2dLg96Z9yDd3rVU+1FK/HkN9C1w5B2EOm
	ALdA6XFwI9L0erXi6wlaovjUneVsRjxbgZYFe3EAJc2z5YUXC7MeyRu2QWqnbtv3fgVyW96CsLPjX
	UQQwVV9HHMaVFjKkPkXfuQptDwP9vTmh+fXjYcCswK+ndtrRPwvPm533aEvWDGgk8ld/RexePt2LH
	yAPfkrEEXWzBSQT+/bWS2l2hAbXTIsI3ivATlzOQqGETYU3bbyPG3aMSUDLHSZdeqMbGBoGH8MkdQ
	yCyFo1Rejb6izVnTjJZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROwn-0000SV-34; Thu, 16 May 2019 22:33:57 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROwh-0000SB-9e
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 22:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558046031; x=1589582031;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Zh5xUTzAK9etqji+5IIJ7PudH0lSuKeHk3+6Y20tEQA=;
 b=oX0iP+Gc1SuIK/xXD/pCUDny74cEGIF0r1Ko1tXmCO5FiDzhrSYP+Zk8
 eJZnDIHx/gLAI3GK0JeGoublna9CURKVTGqic6fqtZ8cQ+uuOYam0ZV7z
 vPGdYgtvTrf3DPOOayqZCkBs/gamfbm2rgiibnD2/feYTPB4dVe/pIc4b
 0HTp6ws4L4o14L9AuE0ngsNEEtF0JYjoAW4EOTAf5W73T0j63FPGy92XO
 lEUpXfMweiYYfztY+M/PiRgz8fGV67kIxeblL4L1GxvTRe/WcVD4Rx5mq
 f/4Zqwz2o8bGCNmjeRc97La50iWnTU7GzoXgbrhJ2GcR7Fh6cMztBVmef A==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="110165650"
Received: from mail-co1nam04lp2056.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.56])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 06:33:37 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MuegMtzjln/d7ivfISq+WtM7ZU2/d4TYeprVjsbdQz4=;
 b=IgvW0Ffv2Df3JcBnbg8qwG7BAxAaO6SWYwJ2xLUj+WiRpWb0nuJkguYmU4Ly+fU4/7clEN3/8K7G5DNp3ohtb0f33iGQP0JJoa4I09/S3EjnCQ4QywQDHdKCL4JaQH73fqlwoy1louOfDFfDXjq88Rf28SQtS9FckssRRLhu57I=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB5260.namprd04.prod.outlook.com (20.178.25.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 22:33:36 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 22:33:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Christoph Hellwig <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/4] nvme: remove the ifdef around nvme_nvm_ioctl
Thread-Topic: [PATCH 2/4] nvme: remove the ifdef around nvme_nvm_ioctl
Thread-Index: AQHVDBht00oTc+LLGk6/IPOXRl1a3Q==
Date: Thu, 16 May 2019 22:33:35 +0000
Message-ID: <DM6PR04MB4521A2EDC680B06D311E1C61860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516185036.17394-1-hch@lst.de>
 <20190516185036.17394-2-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.175]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 393ac998-9fe9-4a8c-c1e4-08d6da4e88fa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5260; 
x-ms-traffictypediagnostic: DM6PR04MB5260:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB526022693E4148F0191CED92860A0@DM6PR04MB5260.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:345;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(189003)(5660300002)(8676002)(99286004)(68736007)(110136005)(2501003)(256004)(4744005)(14454004)(33656002)(54906003)(52536014)(478600001)(72206003)(66066001)(81166006)(81156014)(8936002)(55016002)(6116002)(2906002)(64756008)(66446008)(91956017)(446003)(6246003)(76176011)(66556008)(316002)(6506007)(7736002)(102836004)(66946007)(26005)(6436002)(9686003)(3846002)(305945005)(229853002)(7696005)(4326008)(74316002)(86362001)(71200400001)(71190400001)(76116006)(53546011)(25786009)(476003)(486006)(73956011)(66476007)(186003)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5260;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KBqVboJMO9Ygixt/BknZB2BInSy8qVTJrgYRL6URgQXomYbXYb+1UkTSzEyxFzEuIQUqZd/Q7f0tT2/suOb0LhOv/xgt0VX+Vlbm0gZ/jXLIO7qCm3c5fc2/v2im6GGWo/A1akc8vuoLaQGpNuCPLNAiBB+XFa6wMKnlLFSNZuTSJUaxJsYnWmQxqoI+VtbLMD9zGuLc6OCddU/Strri6XSw7KeS570mxuEWRaXwX+RbgnCuH/ddUvlHgUKQ5v+VqDCPab5cqCbV+PMjh1cQVfKTTF4iI59/GZdMNYVHoHYjl/F6w69xCeYU5X6uNgO80GXk7oJXXE+XMHjZR+H3U0vB2aWNO6R4/tQ2WNqj9xjNXbQznfJ44Ioqa3AkqXP9SS1yNC8kRXhmppgGxUKw/yTw+aHBdRQghT9YMsrkwx8=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 393ac998-9fe9-4a8c-c1e4-08d6da4e88fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 22:33:35.9443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_153351_374611_064722BE 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>,
 "kenneth.heitke@intel.com" <kenneth.heitke@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/16/19 11:51 AM, Christoph Hellwig wrote:
> We already have a proper stub if lightnvm is not enabled, so don't bother
> with the ifdef.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/core.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index eb1c2c349014..7f72d57efc27 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1395,10 +1395,8 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
>  	case NVME_IOCTL_SUBMIT_IO:
>  		return nvme_submit_io(ns, (void __user *)arg);
>  	default:
> -#ifdef CONFIG_NVM
>  		if (ns->ndev)
>  			return nvme_nvm_ioctl(ns, cmd, arg);
> -#endif
>  		if (is_sed_ioctl(cmd))
>  			return sed_ioctl(ns->ctrl->opal_dev, cmd,
>  					 (void __user *) arg);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
