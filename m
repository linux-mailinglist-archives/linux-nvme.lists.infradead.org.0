Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AC83A189
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 21:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=XChniWgCYNr9EDUVNDtPSDORRD+bV4Fc3T76s8/nMgE=; b=ZeOhpoMFzCtwX9
	PpisjEuaa/ewgEriopmBGEq2hZeS1fXs6kcK71hsYqbQ6vD0dtGlQ62TH/UfLYyxMavdkiFYRzOTW
	fxpwwfopGaDS8jGZPjgNHZwpGl4PcbfgdFtGZ+UkPhBRmcggI0pQ4R16BU/WMTmdltzslLo/QACCW
	EVmsaMgTxVH8HcnhcqAvyzPi9Wwo8GDrWYjzWNpkqwM87PEnUMQMZ0Xx3PvCHU/CSNQ3RPmhW+Clj
	h74tkY093BsLhIYJ+G24g0PERVaXxWEuf+QUyzUSClVN7emK1JpxGdtlrkRbPtH9AR6sr+c/w/7bJ
	OymB4rvAi0q/weJFnQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhCn-00038C-GH; Sat, 08 Jun 2019 19:40:45 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhCg-00037m-9K
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 19:40:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560022841; x=1591558841;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=KbzGPQz3xl9KNzRURusB4t6chM8AerCQr2FenQ+YhYM=;
 b=m62ldyabgxWZikxVP2W/mMLbd9SNpUFdjcSaToVBWMaBwwmgcEViGczW
 TlwVKEquhhjIi7uqM+ANB7HLPM2BV8tfAx8lCKNhYGYJElyVkzPNUNndc
 IkTBulKXfI8pZM+jtiYJCMGJE5E8pvSxGaHAE5NXlZKiUGeenGKnjuLNl
 UE5CZZ5TImT6Aym8ppnj91XC2E0e96nnhggB7lBokxD7q8NGytKzQVthF
 wnsspYngK8Ramfr60zBTeSLDcLnwsFNcWifZWMZSc18m6CftcJeYyYxrI
 3G9FCedxYP3zC4V4CHLKEl96QFNO2zrD1AC9kKfXl4xGM9CoyXQsz6bMl g==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="209752327"
Received: from mail-cys01nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.56])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 03:40:40 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BxIeI/vVSYV2TgqyBpgm5xJX9NB3lBjo2x/T5tnXXq0=;
 b=OMOSd/IIYf8Y63xTiHDXnawtdNaF5sm0dpUbkGsa+g7gYt3M3/ksV6ZC0EDUow+yDtuTVyG10fl6tG7ZkS6N3iITjwdF75Zva9kZQXjVx+yuNM35/b9FAEPbrHQfvYOPEckKL3bguttDT/sRjDU7LbBlkSjqM1PPzh3B3XvNEy8=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB3896.namprd04.prod.outlook.com (52.135.214.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Sat, 8 Jun 2019 19:40:35 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1965.017; Sat, 8 Jun 2019
 19:40:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme-pci: put error value when state change fails
Thread-Topic: [PATCH] nvme-pci: put error value when state change fails
Thread-Index: AQHVHij72DAk4pxvvEu5jSx82SjQAQ==
Date: Sat, 8 Jun 2019 19:40:35 +0000
Message-ID: <BYAPR04MB5749D11F63CCEC12B091747786110@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190608183520.25926-1-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a8b182a-e9e1-4ef8-8c3f-08d6ec492d6d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3896; 
x-ms-traffictypediagnostic: BYAPR04MB3896:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB3896CFE585751E21DD9021F186110@BYAPR04MB3896.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0062BDD52C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(376002)(39860400002)(136003)(396003)(199004)(189003)(6246003)(66066001)(5660300002)(53936002)(25786009)(9686003)(476003)(72206003)(478600001)(68736007)(486006)(446003)(52536014)(14454004)(76176011)(3846002)(6116002)(14444005)(6436002)(99286004)(102836004)(53546011)(6506007)(256004)(71190400001)(7696005)(71200400001)(2906002)(86362001)(81156014)(81166006)(8676002)(316002)(55016002)(26005)(33656002)(186003)(110136005)(54906003)(2501003)(4326008)(7736002)(305945005)(8936002)(74316002)(76116006)(66446008)(66946007)(73956011)(66476007)(229853002)(64756008)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3896;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vzCc8r9CSNTVWgiA+5bLiGFZUVzFVyHOP4Srqs8veQAe1kKtiaARgIEptkteCDAJF9jeXawhToEhpnKzUuxKGHtaC04aLIpnkATuVrMAX3XPco/O+QMmGhLucBOBjRwHYajRXB2RVhNnEpRGYRzoensNqsFEQqteSFt2wG/97vwcTpStxkBwtyK4Y/xZKD3wVR0qouERGok2wmK7NmDmlw87T3aioL2gjHugrjc5/INuTDIeRp64tKeJIxLafC93321gUWUF55wz0gq0671etg7FVEKltFrtUhRIuXFuDH3TOv0nir9R7hsNx0x0cxQF0mxSF/2vbu2bL1q7PSq0KtP2nZU34AT3Hk6eN1EPpfTHcVBENuDHyAL6pzacwfeADr8X8+Pgtw7sUEIwOieqy0m/A3f3iOlCtyjUpdF97uU=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a8b182a-e9e1-4ef8-8c3f-08d6ec492d6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2019 19:40:35.6736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3896
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_124038_371773_9E697EF2 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 06/08/2019 11:35 AM, Minwoo Im wrote:
> If state change to NVME_CTRL_CONNECTING fails, the dmesg is going to be
> like:
>    [  293.689160] nvme nvme0: failed to mark controller CONNECTING
>    [  293.689160] nvme nvme0: Removing after probe failure status: 0
>
> Even it prints the first line to indicate the situation, the second line
> is not proper because the status is 0 which means normally success of
> the previous operation.
>
> This patch makes it indicate the proper error value when it fails.
>    [   25.932367] nvme nvme0: failed to mark controller CONNECTING
>    [   25.932369] nvme nvme0: Removing after probe failure status: -16
>
> This situation is able to be easily reproduced by:
>    root@target:~# rmmod nvme && modprobe nvme && rmmod nvme
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/pci.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 5c051a8470d4..fa0a1983d6a5 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2524,6 +2524,7 @@ static void nvme_reset_work(struct work_struct *work)
>   	if (!nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_CONNECTING)) {
>   		dev_warn(dev->ctrl.device,
>   			"failed to mark controller CONNECTING\n");
> +		result = -EBUSY;
>   		goto out;
>   	}
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
