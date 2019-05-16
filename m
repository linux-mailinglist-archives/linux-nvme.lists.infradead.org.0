Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA27210EE
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 01:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oZuQbPtqJ1IzwN56UumjRJL5zAHrr7AG9rehOxqlVJU=; b=Head0vnAT0Lnsy
	ikEwA4EbLLVuCRQX9tGlYsm6as4H8fFd8i7SDVblS8mDP9VrRGsU5vQW4GZ995eapp8Ch3bVxg6Hz
	lIMXvZvP4sWnBRBMwJ5qdsEdTzCOWFzGcPmjmys3nhje6Uj3ogg78IgKLzUTK/JGXmpG8TpjKzr6R
	o47NoWXCr7ugjSsrLpMEPqIwWTf76pN6XtxWXEJpJXjJmSXEsd5aml7TG9TQZti6q+7QVVJy6rA03
	31ZSVHFKZhtDmZb1z/rVBvVS7iCxXIVniMoWr+JcrydTBw59aChY60ll255kcYrs6btkpjTopS6sg
	qyahT1ziVUVTib3Kj3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPUM-00064l-Ep; Thu, 16 May 2019 23:08:38 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPUI-00064S-7m
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 23:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558048114; x=1589584114;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Bh9fFCUTHetnkSx7kDFRW/PFqr7e2QkCGiqtAprEmi0=;
 b=LMwTA1HUOoaIpW9LA3zKSsyckaWuSqk6jsFiFA6xuBINyyeAiDDuqdQu
 kVJtlAIbvR14Sqi3GMhy3+SwXsa9xTP66sGL5txCgPC3/GUxDzKK1XxvT
 KbX60CfShIvR54K96vDXyX214Eh2vINTwFqzdA1ImCzR7+9EzB/7oqJDv
 gCwrWJa3YhMS5qcMdkhoGqJuhYFjNZ7ftQ5xrgQVhrJjwYnQwbufdmMAg
 0ML8+CwqfPV3aJLXIQH/cCGGx24vQB2S7FPR4iMgBu90v+iCyrQ/bvV+W
 7QL9WzJZMorW4+mg5Z5cAzMR1/pLNDFjPxh9J0u3xqdNuspRk2oMDFx2m g==;
X-IronPort-AV: E=Sophos;i="5.60,477,1549900800"; d="scan'208";a="109705314"
Received: from mail-by2nam05lp2050.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.50])
 by ob1.hgst.iphmx.com with ESMTP; 17 May 2019 07:08:33 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zstvF3jwZMwBDJPWECqv+akWgeVcsJrBvtcBt7ro5NM=;
 b=LxtOWi8Dak6Fz5MEJnqK4iz/925GJnjxCnq7hJbj6vjbdw1tguVs06c2O6LKM0sOo2e5K0QWsQxkYcZKeqJJQ9IqSelnByap/CbmJb5uKqt9y7eQbeC9UayyDm36H1m3jmPmX7WYPr82nhDtQRSL+DuhRKo7U2aZ+C8DJoyqJWM=
Received: from DM6PR04MB4521.namprd04.prod.outlook.com (20.176.105.142) by
 DM6PR04MB5756.namprd04.prod.outlook.com (20.179.52.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Thu, 16 May 2019 23:08:32 +0000
Received: from DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef]) by DM6PR04MB4521.namprd04.prod.outlook.com
 ([fe80::984c:651f:d40d:f8ef%2]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 23:08:32 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Minwoo Im <minwoo.im.dev@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 1/2] nvme-cli: don't try to disconnect for ctrl with pcie
 transport
Thread-Topic: [PATCH 1/2] nvme-cli: don't try to disconnect for ctrl with pcie
 transport
Thread-Index: AQHVDAwzF4KjKMPm2UOwwdaw73orfw==
Date: Thu, 16 May 2019 23:08:31 +0000
Message-ID: <DM6PR04MB452155C6620AF9B2BF47B093860A0@DM6PR04MB4521.namprd04.prod.outlook.com>
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
 <20190516172350.11864-2-minwoo.im.dev@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf56e9a7-330c-4de1-1c56-08d6da536a59
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DM6PR04MB5756; 
x-ms-traffictypediagnostic: DM6PR04MB5756:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <DM6PR04MB575684BDEEC3045816B3BBAE860A0@DM6PR04MB5756.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(366004)(346002)(396003)(39860400002)(376002)(136003)(199004)(189003)(14454004)(478600001)(86362001)(476003)(486006)(256004)(25786009)(7696005)(446003)(14444005)(66066001)(72206003)(186003)(6116002)(2501003)(74316002)(26005)(76176011)(52536014)(71200400001)(71190400001)(5660300002)(66946007)(73956011)(6436002)(53936002)(68736007)(9686003)(2906002)(76116006)(66446008)(55016002)(316002)(64756008)(33656002)(66476007)(99286004)(66556008)(53546011)(6506007)(3846002)(229853002)(8676002)(4326008)(91956017)(110136005)(305945005)(6246003)(102836004)(81156014)(81166006)(7736002)(8936002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR04MB5756;
 H:DM6PR04MB4521.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iEfDzXuDNrtmcfx59KzYmo8naiVOcCgFd+vskFwiiy3sHJF3mtWmWKcFeezlnnvVtDj8vRFghCHxjiSe3nioLVMAr8NJONBhtyhHh+50+k2p/l7gAFOzkxlBUVlucO4jdxKdP/PnQDXzwUJEwYxCQyIWdWUhEaIqCIqydwgbUFYbylIRAgcBxnctx+9AYymR5KAPY0cU5LEmotekTAiOOa910q8zPJD72PlUtxM/Pp8wPqjTFAi8yfM4wDORhUl164S3wUswxnXO/9CtEu/lxZ6Mjc/6+udeUiK3qBXJ1Twpbj/pegnaeTX4PXvWYpeEFFhsn6pE1NWuO/QUZSm4hr9w5mPjdyYoNwT3HuYmGXJzinIt7U6rWFekzdJGIrtzlUCcOkpaW74ryUB7rz8nRbAan7GPFtdUGApWzcgiByg=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bf56e9a7-330c-4de1-1c56-08d6da536a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 23:08:31.9360 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_160834_451039_8E399BE6 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

On 5/16/19 10:24 AM, Minwoo Im wrote:
> If a host system has both pcie and fabrics controllers, the following
> nvme-cli disconnect-all command will might not be working because
> contrlller with pcie transport does not have delete_controller in sysfs.

Can we please move following block of the output into the comment(not
sure if that is the right name)

of the patch section ? i.e. after signoff... line. This can be done at
the merge time also.

---

output

---

fabrics.c | 2 ++

>
> root@target:~# nvme list
> Node             SN                   Model                                    Namespace Usage                      Format           FW Rev
> ---------------- -------------------- ---------------------------------------- --------- -------------------------- ---------------- --------
> /dev/nvme0n1     foo                  QEMU NVMe Ctrl                           1         536.87  MB / 536.87  MB    512   B +  0 B   1.0
> /dev/nvme1n1     b92326b9b2323bf0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc
> /dev/nvme2n1     65fa04eddd9bbac0     Linux                                    1         134.22  MB / 134.22  MB    512   B +  0 B   5.1.0-rc
>
> root@target:~/nvme-cli.git# nvme disconnect-all
> Failed to open /sys/class/nvme/nvme0/delete_controller: No such file or directory
>
> This patch checks the transport type of the controller in iteration.
>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>  fabrics.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/fabrics.c b/fabrics.c
> index 511de06..733a24b 100644
> --- a/fabrics.c
> +++ b/fabrics.c
> @@ -1196,6 +1196,8 @@ int disconnect_all(const char *desc, int argc, char **argv)
>  
>  		for (j = 0; j < subsys->nctrls; j++) {
>  			struct ctrl_list_item *ctrl = &subsys->ctrls[j];
> +			if (!strcmp(ctrl->transport, "pcie"))

I didn't looked into the case but it is safe to use strcasecmp()? if you
are sure strcmp()

will do the job, please disregard this comment.

> +				continue;
>  
>  			ret = disconnect_by_device(ctrl->name);
>  			if (ret)



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
