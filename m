Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B051B9E6
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7gex4MyaVeFrPv7JCCpAO+PO68toz7+FaEMQ9qqfg3I=; b=euk9pNWWBgOHqL
	ErrRLPzIY3908H/FZGqp5UB4arI9Aj5ariUcAG2/lYevKGDbp7Vm0KN7Q5epjR5ovc2Quq0WmLaTP
	kzCQq3XIleRIA3IQqUJ9pdkExOyE0At6bpeiLN1ji8S675wS70VYJp/DjHOgbMwJjcXqFtK4YSohq
	4ysVil9rMWq1SfTi+wILD+ZODNvRJ2CgQFKy0tuQNG1LewAyridjRVGc1O099ycmMlkD1ix4wewq6
	sLp2Iu1vsH9/e1knk8llP+LfPV6VjpQ+g48VkbRWHHGLx0HXv0m3+wEDkEm119XCLulXYVKFV51sx
	lbkkJPvX503K5NmL0Uww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCpD-00034N-My; Mon, 13 May 2019 15:25:11 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCp7-0002P2-1n
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557761106; x=1589297106;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=51577D36CSzR1L3PoAPGLYaDDhfcSmG+6z9UQdG84wQ=;
 b=pecwm1LZPVZwR+gUeGq9P863rPs/3418BouPqMz7G5DDcVJW7hWqoQwJ
 k7xKlAbzoVkD+YT58mlH7Ie0ytXzXsRNMdSTONmz/tEqaCMmls/1COyLd
 xfFRch9QGzUv8ao+RSQ59kc4IVedf0wClc+1e8OU5T5PKHUBtmVUNOXu9
 u+OZskRHEn3pmoNaGS04s417mrYZSSEEJMVQwJL2yJ1FsxFxDd8SjfebX
 yI+DBseW9mSYkauaQ6haZlGJx2LMdY7fmtrI0IRyEmwun7OA44wbnYZaE
 wRRiD1RlW7EyfmPwW2RisRVhEFimMBBIP7o/Gyzm3HbjpkKJJ1A/2ILd3 g==;
X-IronPort-AV: E=Sophos;i="5.60,465,1549900800"; d="scan'208";a="207527536"
Received: from mail-by2nam03lp2058.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.58])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 23:25:01 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imCWbY8H6AEVGd9XM4aC2/P9yOK4hujtOiFMXSuCZAU=;
 b=SSRxjVpwabhdpVBAIkD435D+OksCEyIe6ejwici3RSQ7DwHeB2Om5oPtlofMZQ+mG+tUNu+DeFkXYC16jB4ROyVLA4n0j5i2XLebWJiQclufOhyyIY9ERPzf7NlNK5xuArxIIoLcKHnSo599rEKxe9CvCv/QY28GJHGCRbd1gP8=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4944.namprd04.prod.outlook.com (52.135.114.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Mon, 13 May 2019 15:24:59 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 15:24:59 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Akinobu Mita <akinobu.mita@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/7] devcoredump: fix typo in comment
Thread-Topic: [PATCH v3 2/7] devcoredump: fix typo in comment
Thread-Index: AQHVCNsROeeWe5OvjkSMfroZKWp4fg==
Date: Mon, 13 May 2019 15:24:59 +0000
Message-ID: <SN6PR04MB452707FD4C32EE927D80294F860F0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-3-git-send-email-akinobu.mita@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 065ad1f2-6f65-4933-32d8-08d6d7b729af
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4944; 
x-ms-traffictypediagnostic: SN6PR04MB4944:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB494419653003622B07BCEB63860F0@SN6PR04MB4944.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(486006)(186003)(54906003)(110136005)(66066001)(476003)(446003)(6436002)(26005)(305945005)(7736002)(33656002)(9686003)(99286004)(55016002)(2906002)(316002)(68736007)(7416002)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(53936002)(91956017)(76116006)(2501003)(229853002)(71200400001)(6246003)(81156014)(14454004)(5660300002)(72206003)(4744005)(71190400001)(52536014)(81166006)(8676002)(76176011)(86362001)(4326008)(8936002)(25786009)(74316002)(7696005)(14444005)(3846002)(6116002)(6506007)(256004)(53546011)(478600001)(102836004)(2201001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4944;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ujfX9Nunt7hmGPfc51CAAC218Qmk7lKKnMoc+j7e+iWY7lqwc4lHjatUmQBGfvTPSmOVGyBJjoVNEYQuhln+fTf/sIgby0K3Zyx7ZIR7zoorRBxRGv7ItAoBccyFeZ8n704StUlzHYqB5Bvt2vux6G8ZQxbL1KWVf9NVfYE3f+alDUychv7gMduiArTDRUr+rRut/DWsDnFHeiHMW1NjisW4OtRccig377F+tnNPgRbgfslD/8nrM2vT6iYS3MidTLMfow0FPNqQzsXOKl2rGJF3ArYBGnrHxUl/VpOTM0+B39Vohgaakc8akhG1iws194YQJUXeER5sYv0f8MyT+Vihsfo1G9iiXuTk+OZ2J0v5sUUwtFyJMWV/KkmhhH8iiM36xFovuUXQNu966hmQUUY1CqoZomK0KdCWpQu2T+s=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 065ad1f2-6f65-4933-32d8-08d6d7b729af
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 15:24:59.6797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082505_141684_7EC3B0BF 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>.


On 05/12/2019 08:55 AM, Akinobu Mita wrote:
> s/dev_coredumpmsg/dev_coredumpsg/
>
> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Minwoo Im <minwoo.im.dev@gmail.com>
> Cc: Kenneth Heitke <kenneth.heitke@intel.com>
> Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
> ---
> * v3
> - No change since v2
>
>   drivers/base/devcoredump.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/base/devcoredump.c b/drivers/base/devcoredump.c
> index 3c960a6..e42d0b5 100644
> --- a/drivers/base/devcoredump.c
> +++ b/drivers/base/devcoredump.c
> @@ -314,7 +314,7 @@ void dev_coredumpm(struct device *dev, struct module *owner,
>   EXPORT_SYMBOL_GPL(dev_coredumpm);
>
>   /**
> - * dev_coredumpmsg - create device coredump that uses scatterlist as data
> + * dev_coredumpsg - create device coredump that uses scatterlist as data
>    * parameter
>    * @dev: the struct device for the crashed device
>    * @table: the dump data
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
