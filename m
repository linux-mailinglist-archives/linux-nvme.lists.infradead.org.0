Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C647433502
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 18:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=x37foR+E6BZoF1zz+wQpmODfYT9Dx1EFJKVqdEtEesw=; b=I+RDBdI30CRyV7
	QJqzyGJAlNRGBcUe0Ot0rDgvHzfk7nk5iRnIbkIiaRK2f3mQg8T9OZYSM6lFSZMpRvX6qKI7xWF/U
	Ye1IxvyulyRLO0BvIGcqakvdbZHy/Q6JhqdtJklxbbHjyjEVmjJh7Hx1W7yoN1buyf5uRc7U4lKRr
	DcnmkmuI14+Mp+5jzAPOa9i641V/sOkBSXGNiwnYI3tDQUB1TtSsSr7RvYH2+oNYKdQBvd8Vb+qx4
	iRf5+1n3jv+iRuHfMlDUaBbyb/MnT2C6xf/e7/v1uKTlRI5awSGsl4hZ556gRN4ROZsFmT9Fd3PMn
	2pDqCUo0tfQpgSQa6EnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXptF-0006zx-4e; Mon, 03 Jun 2019 16:32:53 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXptA-0006ze-0y
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 16:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559579567; x=1591115567;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=HZHuaWWI1BVAn8p8UJotKItT4aMM5WfG6aPeRDyJ42k=;
 b=TdPl2/tviRvh/3GV0P4Q+TrkQwijxdLbtoMGKT0RiDkHaJXysfLjaT6q
 XJjGgYw6QPXWS4Ox0AzFkqrdiIWfG27PcrLAIcRa6PZFzQx/U+WiAZbQE
 a99WOMzszqBh1ughL0ElLARoPmmtPT6uTRsLxw8W3ciPuG4aHCeuYuyZw
 Pty7tEDqGaPm28hA0httrYWl5ZaeLBN+FoHJTGePqPrCmRkkVbAAxuGPj
 fnlbj5czA1iKyjVapfITd0nWoX7Dpxwq0xIinETxUU3arv2nG2tsUdfnN
 HanknF4zwQqNrlBxgJnVKIazlwBBvaKOki4fbm14LL8/9MuBfUz1UveNU w==;
X-IronPort-AV: E=Sophos;i="5.60,547,1549900800"; d="scan'208";a="215953147"
Received: from mail-bl2nam02lp2050.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.50])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 00:32:43 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y/Kux83sNfSBL/GW81SKAJLKKHhatt1OWIFVZ05gnuU=;
 b=yoNvocf9fcas+1L4TD53sFgVWJ//axsGeyhuZITGCmo7WiMPvw6Bt0ET0/e72XSA81GCUniBKgr6k1JwyNMyLob5xSN6xJQbpvlcRDUiYm3rty9zXCarIBIcxyJai/PTD0SiwLfJKlBxU6mCQP610ERYqDCjey/8itGfTwWVe7A=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5703.namprd04.prod.outlook.com (20.179.57.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 16:32:40 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:32:40 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 4/5] nvme-print: fix json object memory leak
Thread-Topic: [PATCH 4/5] nvme-print: fix json object memory leak
Thread-Index: AQHVFsw4DHO16KnTrkGmXN2nrCjXxg==
Date: Mon, 3 Jun 2019 16:32:40 +0000
Message-ID: <BYAPR04MB5749791616213945550D579F86140@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <1559209406-713-4-git-send-email-maxg@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfe2aa8b-a404-472b-562b-08d6e84118ed
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5703; 
x-ms-traffictypediagnostic: BYAPR04MB5703:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB5703D19DCA45C910340A8A3F86140@BYAPR04MB5703.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:147;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(39860400002)(346002)(366004)(376002)(199004)(189003)(71200400001)(110136005)(7736002)(54906003)(52536014)(256004)(305945005)(71190400001)(316002)(229853002)(476003)(486006)(33656002)(14454004)(74316002)(2201001)(66476007)(66946007)(73956011)(76116006)(66556008)(66446008)(86362001)(4744005)(64756008)(446003)(5660300002)(66066001)(9686003)(6246003)(2501003)(3846002)(6116002)(25786009)(4326008)(68736007)(53936002)(6436002)(2906002)(55016002)(81166006)(81156014)(76176011)(8676002)(72206003)(478600001)(8936002)(186003)(99286004)(7696005)(26005)(102836004)(53546011)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5703;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TJPjfoVeG1A/zAaCDmitIShhllejCM3BHWBHzlaslmeTJn+vjCdsD2dy4RlO/iDIgsbnCraWpHSlBUIixy+Eg4PQMdxILPavEpySa5QKYJJV5uOS2YCu9KfPzvE9UsadFQD4gBL5sfaRLUMSUOK0pWHwAvNLJbbXqh9cjxcBKmS4ArDdGWW7IAVTnc7GWIKsTlLujg3mgjRw1FBXxACSjTRwfPxgBbKZrsGjnepovbkIZJBjRhH9cutQLQkFI0LrBYCh764g6rCUnJPiyJJh952TjDmed3DsdLK0RyC2znHz9hCMJvJ7TUY67h9WntgaDaPaCYHu8APS0jDi0xl6BD/LzCyFgkEljVJcpzUV/DFzy6i8rDEVqE5M6oP5tn2gsq8Genkp5ZWUL85KQfhzbzdQFBt8uxTkuvvAnbszE9I=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe2aa8b-a404-472b-562b-08d6e84118ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:32:40.6640 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5703
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_093248_177271_40127CAA 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "shlomin@mellanox.com" <shlomin@mellanox.com>,
 "minwoo.im@samsung.com" <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/30/19 2:44 AM, Max Gurtovoy wrote:
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme-print.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/nvme-print.c b/nvme-print.c
> index 2c4822e..6f85e73 100644
> --- a/nvme-print.c
> +++ b/nvme-print.c
> @@ -2918,6 +2918,7 @@ void json_print_nvme_subsystem_list(struct subsys_list_item *slist, int n)
>  		json_object_add_value_array(root, "Subsystems", subsystems);
>  	json_print_object(root, NULL);
>  	printf("\n");
> +	json_free_object(root);
>  }
>  
>  static void show_registers_cap(struct nvme_bar_cap *cap)



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
