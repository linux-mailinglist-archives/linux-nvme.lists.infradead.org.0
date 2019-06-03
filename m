Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A833505
	for <lists+linux-nvme@lfdr.de>; Mon,  3 Jun 2019 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=CaG1h9O01/RDpDCthjxJKEHSaQz50dMaGK1iK5h7Jpg=; b=Neu99xlh8EdFch
	tC33EFIs8Su6vuiFVi3Ywhna3DW0GPaPf+HGNQez8v7p86fCD0koMubyiTCHiWODyZk+H945dvGAJ
	oHPjs4PeBiH62Xl/iMD9LPeoxl0Di0xGarxGEi6+k2AkRHhmpRbkY2Cu7zUAg8HQOjuk2/OiwSQ9C
	SMOSa/l3h60tAOdSfpxSFQmrxkHU/2e5eVWLsR5a6mreabG8DDCbIqMdwcRH1ZMFOIqCJf90aUCqj
	dIWUeGQP9nqDVYjzf6F6LNaR4MosALGTyuMRWCBTLibiwJPWEhlT1xI+QxtQRGvNjwUSUuI1iiGE5
	QSmLKQf3EzhpAHjTe/Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpte-0007TO-Dm; Mon, 03 Jun 2019 16:33:18 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXptS-0007M3-R5
 for linux-nvme@lists.infradead.org; Mon, 03 Jun 2019 16:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559579587; x=1591115587;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=YT3egw5g0B/uwwTaY+umPrwc8Yogk2VloKAKCiLZgwo=;
 b=XczVryJR9351mu+xCAw2lu2MVzaM+ATNZPeHbY5XWNvXKKBiHz+NAuVc
 3yMZY9Zf+o9s7qdvpORCzm/Uj2/zYdW2fPu/NE1a5xbkWBCkIQ6JlZ/pv
 XP/+KjpFLpOZTjM5a8aycZuD0d4/ri1RVKGiNBO66LKYQAtl49/Ix0k4C
 64tyj3WDdQS6uTBWYvhIl9i2OvuQzBr5OPYiXaGxG0FwUcjXjnzNVWdJY
 hkW9dVKdfk9T7FtoIjT/C05G6G3Tqx6J3DdfX/cUYcKSZ1Dyqc9ZR/Zw9
 qm3KzfCN0RVcOSlNnz3UAS5GaS0pmsWAIsd+7q4D1PxlTuNfWhpkc/LuV w==;
X-IronPort-AV: E=Sophos;i="5.60,547,1549900800"; d="scan'208";a="111359227"
Received: from mail-cys01nam02lp2055.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.55])
 by ob1.hgst.iphmx.com with ESMTP; 04 Jun 2019 00:33:03 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0bCuAqXhfMZHnfAMidIh5q7svdbe1SdnEBsDtNKAQrY=;
 b=E6S53+Jpye7AuQy3TNQxF1B+2Kx7ttiWhy1HW8NfXGMcAdy9BSn11vdDbRjm4kL9YLw9VJ7hKPpsCD6YWjNIfwIZhWjRYJrRueqI8Z/454o7P9FzonQ1wQg1yDLCMdktETHQ0n+DioPjwhcm5UX1Zenl/vvoJt74o21gOqOMMF0=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5527.namprd04.prod.outlook.com (20.178.232.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Mon, 3 Jun 2019 16:33:02 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::ad42:af4b:a53b:80f5%4]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 16:33:02 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Max Gurtovoy <maxg@mellanox.com>, "kbusch@kernel.org" <kbusch@kernel.org>, 
 "hch@lst.de" <hch@lst.de>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH 5/5] nvme: fix coding style issue
Thread-Topic: [PATCH 5/5] nvme: fix coding style issue
Thread-Index: AQHVFsxALKp0h7ViU0652txK1TkjvQ==
Date: Mon, 3 Jun 2019 16:33:01 +0000
Message-ID: <BYAPR04MB5749196B1B64839154AA405486140@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <1559209406-713-1-git-send-email-maxg@mellanox.com>
 <1559209406-713-5-git-send-email-maxg@mellanox.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0196dcd7-c5ac-41f5-0ba2-08d6e841259c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5527; 
x-ms-traffictypediagnostic: BYAPR04MB5527:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <BYAPR04MB552780EB3CDE31D696C6A9A986140@BYAPR04MB5527.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1186;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(346002)(136003)(39860400002)(396003)(376002)(366004)(189003)(199004)(76176011)(102836004)(6506007)(99286004)(486006)(6246003)(53546011)(4326008)(7696005)(2201001)(25786009)(86362001)(446003)(54906003)(55016002)(26005)(71200400001)(71190400001)(9686003)(2501003)(186003)(476003)(110136005)(316002)(256004)(66946007)(73956011)(76116006)(6436002)(33656002)(66446008)(64756008)(14444005)(66556008)(66476007)(229853002)(68736007)(2906002)(52536014)(7736002)(8936002)(5660300002)(478600001)(72206003)(305945005)(4744005)(14454004)(3846002)(6116002)(81166006)(81156014)(66066001)(53936002)(74316002)(8676002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5527;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GDgHflApzuSmL8u2tgRQ/hXxAn+bYKD7N2YRLVp2RJ3oI2kUGYckLlf7l2M/oqfFEk5/jZOyhMdfa0IW3N2FWtWBiZ2AtFKSW990Cgze4lF5HZAcYxojy7EV8QT2dzq2ejGkViFm3hr1vXbgwYqiPfB8V2aWERoAcVuisiPTKJSKiVmVyuaTKGSCNiYZYTA/b1l1wDrrwyOJlP296NYmt0NopMgvK2KNal8QhkmWo52Ql7Ve+1omoauSfYjAk9NkVgCZ8E/roU/FKRPd2HSikmqkyWV+PrQeAaTL5RkwCSpDKEGHYhoAmAST1BGDNmH9g5cJJZU5MqFDt2O6FYyRcxf8JephJeKA+Qa4PubcswwyCtEhWprF+E/ZPSTwaEZknvkOKtOn/I3qnUsGZgn/YwYKUQHJxSYpbL6w01h7MnY=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0196dcd7-c5ac-41f5-0ba2-08d6e841259c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 16:33:01.9346 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5527
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_093306_981659_17DA503F 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
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
> It's more common to use the following coding style:
> if (condition) {
>    do_that;
>    do_this;
> } else if (condition2) {
>    do_this;
> } else {
>    do_that;
> }
>
> Reviewed-by: Minwoo Im <minwoo.im@samsung.com>
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  nvme.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/nvme.c b/nvme.c
> index 3310abd..2fd4362 100644
> --- a/nvme.c
> +++ b/nvme.c
> @@ -988,11 +988,11 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
>  		for (i = 0; i < 1024; i++)
>  			if (ns_list[i])
>  				printf("[%4u]:%#x\n", i, le32_to_cpu(ns_list[i]));
> -	}
> -	else if (err > 0)
> +	} else if (err > 0) {
>  		show_nvme_status(err);
> -	else
> +	} else {
>  		perror("id namespace list");
> +	}
>  
>  close_fd:
>  	close(fd);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
