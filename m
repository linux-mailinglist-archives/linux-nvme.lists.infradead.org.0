Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9184210F1
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 01:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VBOoN33wHBM1dAPodh8u6Hr5MQo4jI+YTUfqqHKu98Y=; b=SL9LeZT0BpOrLZ
	8rK8fQC6QHlp+YgHoaQyTeAt/bt+dpc9AZ/vgrRblMymNJkCFjp9mki3LK6XdgF2MVHw379X9ILn9
	xVYEiddxhklIpSyFCSWE4g2qSaeAhmJXUUAvWF+gBtlPxiaz+fk9D8yeaxj1Lr/Zif0gUYOTSh7OK
	hDVcnFKy3wbJk6ZM/WQizauQVOYEB9CiMyaSHxXXWY03ZCoGyhNKkF75htIuv3VYgLg8j6QYkeC9f
	1Jmjv/1htll4djh826hI1BhC9hVIQZ5IM3XBKmJ8sj35LDZXU8sJGnMJrng1cx4CouoaAJykaBUGv
	LD3K7SGnaQr1UKQkby/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPXD-0007ZQ-JS; Thu, 16 May 2019 23:11:35 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPX8-0007Z4-0n
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 23:11:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558048291; x=1589584291;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=zZRS0AKbscvqWk+7h8YsRfXoWaHn2ilWigDLeNzQC5Q=;
 b=jNAslOtNf+8TcnvAgOsn8OQmCNY2ld9hqtvadKuUkv/xahPlPf0ZuZHH
 DOOq0q8bt3kHiB2Aaxmvm3xvOp/SlvOOTWnP2RFpN2ZD+2OhIwqblbYt7
 PHladbUeDyjAl9jl00j2F9QGCW/zBWTNx80IML2MrFHr7TwOcBO9Um38B
 yfBH36mqFDdGQfG5SBbw0cTnYOk6B1JIGqfRVVJYAHPTqoIVSl5Riydhe
 gTgFtPnWynzEZDXrsGtHXWSMdJHWjBj1JKe4Y7X+O/0VDvf3OnWzUGK6g
 WYIDKwF3d4hnUl5ZGiPxSQ/n6XC4m33mZcBSlESt58uEhbDtPHkKyVgR3 A==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="113409428"
Received: from mail-by2nam05lp2054.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.54])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 07:11:27 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2MK6y4PjPdWZTtBZ/WCe7K9rAAbMUXye+vDzKSF6M8=;
 b=XXAtRoxw8gSEUNuAbGOXkUn7MWRZS05EuXBCJbmiPyBZcnuAKIoQcVQ/+UPEyFm6qLV8tI6rv2rmwGXnHdJr9wTiCy5yZoom+BW24cXtdcJ/vUrfrRAjqlS/Sd9IjQWMFCbos56deADqTiU4j+4lfs5ZGikaAUbWrRyGGKZBmbM=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB5756.namprd04.prod.outlook.com (20.179.52.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Thu, 16 May 2019 23:11:26 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 23:11:25 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-cli: remove unused NVME_AER_NOTICE_*
Thread-Topic: [PATCH] nvme-cli: remove unused NVME_AER_NOTICE_*
Thread-Index: AQHVDAZA3JfF7a2kkkG/bCKdQPg2+A==
Date: Thu, 16 May 2019 23:11:25 +0000
Message-ID: <DM6PR04MB45210B9B1183749E041084F0860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <1558024889-9474-1-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14adf822-e489-4339-fc7d-08d6da53d1ff
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5756; 
x-ms-traffictypediagnostic: DM6PR04MB5756:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB57567445E5B42CD0B3BBF4A4860A0@DM6PR04MB5756.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(396003)(39860400002)(376002)(136003)(199004)(189003)(14454004)(478600001)(86362001)(476003)(486006)(256004)(25786009)(7696005)(446003)(14444005)(66066001)(72206003)(186003)(6116002)(2501003)(74316002)(26005)(76176011)(52536014)(71200400001)(71190400001)(5660300002)(4744005)(66946007)(73956011)(6436002)(53936002)(68736007)(9686003)(2906002)(76116006)(66446008)(55016002)(316002)(64756008)(33656002)(66476007)(99286004)(66556008)(53546011)(6506007)(3846002)(229853002)(8676002)(4326008)(91956017)(110136005)(305945005)(6246003)(102836004)(81156014)(81166006)(7736002)(8936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5756;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3ZlgLhgvZIUHL6bu0+GyVTFJswjAu+n1mLHiuxH/N4BCLuJs35JhvfbglimIoIsY3GuT3CZff2qoCu6gaxunmNdXJt6+HY5XcUe4atSCOK70B1LWi0JBfODspBMNyKuzInxGyhomrXyLIrBxrhULl2O0T9rBUy9/GH7rR/IEPq9ccLu2RyJSGhbEOOziwGwGpt5SLjjdJ4DMS6zbwmOykjYd/dT7QEOgfS2EiDVeUew7ideZrq/M2XwgUsWupQ03vHmInzoJVMKhgDSAKDcQMBLBW9MWuG+aCZTakRLDh+f8FQTuJWPUrNkqElQbnhQavNkNGJ3MUymJ3Ffhv8dC4Fu/ZLHVrncJyYMRVTlJLUFT3HCzyCMpt+6N+uXlxXxv8s1QpWcxFL8Ih+0D5K3/kwgRgJE6p9ZXJvzysBw3BEA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14adf822-e489-4339-fc7d-08d6da53d1ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 23:11:25.8000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_161130_183460_AEE9815C 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: Keith Busch <keith.busch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/16/19 9:41 AM, Akinobu Mita wrote:
> NVME_AER_NOTICE_* are unused and these values conflict with the values
> defined in the kernel nvme.h.
>
> Cc: Keith Busch <keith.busch@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
>  linux/nvme.h | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/linux/nvme.h b/linux/nvme.h
> index cac4d19..13fa52a 100644
> --- a/linux/nvme.h
> +++ b/linux/nvme.h
> @@ -589,9 +589,6 @@ enum {
>  	NVME_AER_SMART			= 1,
>  	NVME_AER_CSS			= 6,
>  	NVME_AER_VS			= 7,
> -	NVME_AER_NOTICE_NS_CHANGED	= 0x0002,
> -	NVME_AER_NOTICE_ANA		= 0x0003,
> -	NVME_AER_NOTICE_FW_ACT_STARTING = 0x0102,
>  };
>  
>  struct nvme_lba_range_type {



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
