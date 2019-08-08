Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F1858BF
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 05:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=+9onmVJg1P6jpUllVfzc8P+6mthQbgPfp9ml/TgjF7U=; b=lHIP5u66gEBQtx
	VAvK3Fm0y+lGYy1zWrB1ffJ4mVQ14ZBheuZ85W2Kl2gxPHtCJasrrAhRQZ8nFHr2FV2ZgvsDKwyT7
	zuNDUxUXrIoJ6y+eXbJQm84nWiCvzsFt1vloNXJR2WIWT6KZ72WAuGsLM/7DsrojcmICdIxRaHrGb
	7UFMxWiVlCDYH9xBlHqNo5DTN8JcJmmysu1SaelwKXp60c1uKhW31v4nI2Uv9sGrj3ZC+WVSHlCLJ
	kCUOHRwGgUFd3g0J9Ue/kE1vp2pfpuh3T2I1nzc1llzQftNEEutiH6KB0m4vJNWz+t71GImNIKKUr
	7bkBExYfgbbsZg0aVweA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZOt-00035I-0A; Thu, 08 Aug 2019 03:47:40 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZOY-00032S-Dl
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 03:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1565236038; x=1596772038;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Nzphn4De2KsWcdAdCn2LnPCMfEuBnOsK0odL6VqnNcM=;
 b=izfDTIQEZnBQM0lYXUdqNmLgi4yAg4Wdttl+ZY/aq3B5FcTh0Qfx7I0p
 asqOiE3LbSdUmoFvjMwZ0OTbmIr/JrWFC67VQwp4Vcd7QpgbrFv8nvuj2
 urOo//GLMHtWOP3Kem17ZputfQ5byytq0t04+IVnbwH/7+VoLEdHyvT6D
 YLc3cebvLBayRRLVVMGGUNB0sXhUQRmwvCJiafeo6RFzUc9zISIuygVU+
 SmloknX+LDaA/GmgleLlcM/rwu0u4YuHkA3h92z2m8dEjWKS3jFUeVrpG
 fNVlJ7d4ZzmK61h/fxB404bsmP6e6PNlf6z8f66WwSLeyzmB+aI+LZyn+ Q==;
IronPort-SDR: 5aeasb6HHion7ce0bt0W/RDHPm6mx2uYFvfK5aGXUpZENSVzuikF7WdQ87DG7vGBMQOEPLtQzS
 QBi+hRPlFIvqyARpQRnwppXImH55mDC2zb6XQ96DBDcQJFOu2FReBk00oDUVsLuoSCnts/i0OX
 rDAV3w+ANMWEZjDMW3gLJFKXEp6ktAktywutQTlkEibFfV81URq7AooxvfFo/THh+n3Hhq+ouL
 KbvvgBxbbD5gIk4jYzYrZg2F+G1XYN7S0nNzg1kdJxB8qRvlXw8PhGIF1h91dJU16PuaQmWSZe
 /kw=
X-IronPort-AV: E=Sophos;i="5.64,360,1559491200"; d="scan'208";a="115340659"
Received: from mail-sn1nam01lp2051.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.51])
 by ob1.hgst.iphmx.com with ESMTP; 08 Aug 2019 11:47:06 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JsLYJozqQNYdDh2V4q27WMJ8OgMUWwxKyOk5C2MQQHM7C4eqNLnvRbfxVXW1kdGSxgzmKSeMmUIp8G99FYlaNSLFSpg1IoxwAlbzXkhz0/dK1Fvwy2ujRKzUC5X+Htw1QwniN/kC8lGGNKaVBuA+z4iSke5pMusv6szworulvi+MsfJGA+yfRMJbpa5mU86TBsEEXiTX4VHpryWQxkKCpx8g4spYKGSWwwvyAZMPmDH402S5s63+rl/DLi5xE9XBt8QphqCbMZzWD1XtApeAdel2TTuypOS4U1Mf+Qs+5OOu0gbXdAbzy3PQ3whsq+VBZZ5iQJ0MUMsEUvwM58gMtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+HucOUYXjaSbDI5rQ0Mjlwc294vbaNNsnUkiRc4kEfc=;
 b=kfPdNQJ0m0Vw/f87pb06BlHihGUy2A9005eYMAAGI3M9/tQKfFXd69/XSTne8FOYj2roZQDCtm81kXq5x+Z9n+J4fkDhCsIKuntnZsb+0c4E+by1emVlPdqm7vNRCJAJQ1PHEIBd5J/+OBT5/tX2lVjKZgYpO+m1CAZU19dPccWxv7lVDdSZACVYkpvRuzYZ88ZC2Z9XcAG5Qf0ptajKq7piKqe1r6V6XuG5+IZVdstFOlYIkGKdwQrmFOd1xWZ9LNofKC+Ifpp7/HX6WjMTb9mT7vwOb11IgBdOdl+ZYis+TBzayCheklTO6VFbq0yJH70yuRCrmD05Uf6PCRGX9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+HucOUYXjaSbDI5rQ0Mjlwc294vbaNNsnUkiRc4kEfc=;
 b=kuHNhGXPY3q9Af7YDRwZ0ezHVGOpwA5f6BORMv6ehZ9GxFUFLlPSUj46SHexa+IhXDpQ0oVu6Ugx/y5f6K4LosxhH2H6hOOy62GeRYrd9IMZvq4pEyeSnisOPnPFQaFdvEFcMFBPCK8e7L5KJUreJ8f/NNXuxppLuxL2+sIt8lo=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5861.namprd04.prod.outlook.com (20.179.59.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.17; Thu, 8 Aug 2019 03:47:03 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2136.010; Thu, 8 Aug 2019
 03:47:03 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Tom Wu <tomwu@mellanox.com>, Linux-nvme <linux-nvme@lists.infradead.org>, 
 "keith.busch@intel.com" <keith.busch@intel.com>, "hch@lst.de" <hch@lst.de>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH] nvmet: fix data units read and written counters in SMART
 log
Thread-Topic: [PATCH] nvmet: fix data units read and written counters in SMART
 log
Thread-Index: AQHVTZBH9M0WA4dEwkOgGV8wfb67mg==
Date: Thu, 8 Aug 2019 03:47:03 +0000
Message-ID: <BYAPR04MB5749C461B4FD6BB8E9EC4CAA86D70@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [71.6.111.190]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f41cfa4-3913-41a2-c977-08d71bb31387
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5861; 
x-ms-traffictypediagnostic: BYAPR04MB5861:
x-microsoft-antispam-prvs: <BYAPR04MB5861904933727C38F520A6EC86D70@BYAPR04MB5861.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(376002)(39860400002)(366004)(189003)(199004)(476003)(478600001)(8936002)(2906002)(4326008)(81156014)(25786009)(2501003)(64756008)(52536014)(66446008)(66556008)(76116006)(6246003)(81166006)(86362001)(66946007)(5660300002)(66066001)(486006)(6116002)(66476007)(53936002)(14454004)(9686003)(3846002)(446003)(53546011)(71190400001)(305945005)(74316002)(55016002)(76176011)(316002)(256004)(229853002)(8676002)(102836004)(7696005)(6506007)(33656002)(2201001)(26005)(186003)(99286004)(71200400001)(54906003)(7736002)(6436002)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5861;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:3; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wV/NINyy4AjVGPSSl9VEwa9vnwC8Y5mvGJ6okcEKTrs65ybzDOsIYETRV/TVc6zhef0fSeeJkdQ4D9e3VUQeJygzL5tjsEI3+aB+tByopWJErXHYbyPnDw1RvRBmmFS8ui84guOtpBF8qklE067j3fsm/Cr3EJlYhq3OE4bBMEEapUY+WKDzYCyKkDVVxXuC22DnNsQ31D5Et28Cfror9ig0v3e3FbSDYTTsWMZfUTeQLLx5HFYc2MmYrafqACIxmE83v3FPZw5BMbcNL3n6gtbUOEH3XyX+ALLCCuarf3yirTKKN5d6vaRfcfICBKcZvDl5xdYXysnk8ytfgZzTdu8h0jQpGb6USTVF8zwsvWQTXYKefM8oLrCY30AX64nbPftjOjx95zbm707PIcB66wkG/42cK7XBPjV7TFmBgD0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f41cfa4-3913-41a2-c977-08d71bb31387
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 03:47:03.6666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5861
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_204718_630889_757E2C02 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
On 8/7/19 7:23 PM, Tom Wu wrote:
> In nvme spec 1.3 there is a definition for data write/read counters
> from SMART log, (See section 5.14.1.2):
> 	This value is reported in thousands (i.e., a value of 1
> 	corresponds to 1000 units of 512 bytes read) and is rounded up.
>
> However, in nvme target where value is reported with actual units,
> but not thousands of units as the spec requires.
>
> Signed-off-by: Tom Wu <tomwu@mellanox.com>
> Reviewed-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/target/admin-cmd.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
> index 9f72d51..4099093 100644
> --- a/drivers/nvme/target/admin-cmd.c
> +++ b/drivers/nvme/target/admin-cmd.c
> @@ -81,9 +81,11 @@ static u16 nvmet_get_smart_log_nsid(struct nvmet_req *req,
>  		goto out;
>  
>  	host_reads = part_stat_read(ns->bdev->bd_part, ios[READ]);
> -	data_units_read = part_stat_read(ns->bdev->bd_part, sectors[READ]);
> +	data_units_read = DIV_ROUND_UP(part_stat_read(ns->bdev->bd_part,
> +		sectors[READ]), 1000);
>  	host_writes = part_stat_read(ns->bdev->bd_part, ios[WRITE]);
> -	data_units_written = part_stat_read(ns->bdev->bd_part, sectors[WRITE]);
> +	data_units_written = DIV_ROUND_UP(part_stat_read(ns->bdev->bd_part,
> +		sectors[WRITE]), 1000);
>  
>  	put_unaligned_le64(host_reads, &slog->host_reads[0]);
>  	put_unaligned_le64(data_units_read, &slog->data_units_read[0]);
> @@ -111,11 +113,11 @@ static u16 nvmet_get_smart_log_all(struct nvmet_req *req,
>  		if (!ns->bdev)
>  			continue;
>  		host_reads += part_stat_read(ns->bdev->bd_part, ios[READ]);
> -		data_units_read +=
> -			part_stat_read(ns->bdev->bd_part, sectors[READ]);
> +		data_units_read += DIV_ROUND_UP(
> +			part_stat_read(ns->bdev->bd_part, sectors[READ]), 1000);
>  		host_writes += part_stat_read(ns->bdev->bd_part, ios[WRITE]);
> -		data_units_written +=
> -			part_stat_read(ns->bdev->bd_part, sectors[WRITE]);
> +		data_units_written += DIV_ROUND_UP(
> +			part_stat_read(ns->bdev->bd_part, sectors[WRITE]), 1000);
>  
>  	}
>  	rcu_read_unlock();



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
