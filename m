Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1206A1696C
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Ggee8mfd8yx2BecrHFWK8lIMF/hMb9HIr4h+C13U3ik=; b=Gt8HsMONGqaUAz
	8Qtj0GD6rCA/EOVRxzMsOhM1Mzx24F2S650+qNyBMEgHY3PJQlrf8YYzHuIwKfHw71pZ+oOmSeb9W
	wuIL89+RivKZR/HTPz9s1N6YSa43OjZte9geZeIBymKReqEJ1HSJBftveErj4PM2HaMuE61UWASSj
	cdFmXfMbVTMkTvw5EaxjNokwM3KCM6Jp74ZQqposEnkmImHkAAcUJxA7SAs4kt4msyUNHA2ElBDOe
	TVHJVBrFrdyKk8DgnIl8l+No5q1nv/1Y64/72uTTmhlFxRD8ahm/YezE1I8GkguZ4XvQJDAfN5W91
	WLXg1tZXbErCyTyZdD0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO46K-0002XG-D1; Tue, 07 May 2019 17:42:00 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO46F-0002Wl-0q
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 17:41:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557250914; x=1588786914;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=Aqfv8bte4O2HcYt0lff9qDyZKmFB7VFpc9htTQrvi/o=;
 b=RcsaxLAl+PF6aSIJzxg/hJimLjbvdihNpQ+AlLpLRmpLj+yaZv1lWIEp
 Fv5rtWGkB655Rxrv0fGQtN8a/p39NRHDWUaRFB2mrYy5bQ6nKQvsNB/sq
 TWfcUuQcEUnpXne65Y5RLzogNwS/jO+xKfAVYkZyB6T4LTYizpqO2ICpl
 Ag0kskQjJoHzpDK2Hri93dAT9Rdhde5uOO5rQTE0GtURhld3kiv/YBD+S
 3jGFiBWkAT0uqywZhV23OsGFJG5eNkPmPuoKEPlppm2vXc/qLANNjJthR
 KAC4QhjM7/JfWni6bj9aJ/SdC+VHPV+ShqqeF+R0/iHJSSSCUwmIIbYGl g==;
X-IronPort-AV: E=Sophos;i="5.60,442,1549900800"; d="scan'208";a="213720204"
Received: from mail-co1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.52])
 by ob1.hgst.iphmx.com with ESMTP; 08 May 2019 01:41:52 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4cw455upwGHUtAwzNgQ5TKUtUfYSxxp3STqZPa+xYtc=;
 b=mVNBml0DeDG1zAu1TJ7hJJHcr7zPSZsyw2ZRTHzJFNpOGqsxtgT366PJIyk51QK3acy32UDdRoyZ5ROBE2BnYs3hU7GvuyscC9hi6Gh376qfzvFf9Z+W0KQGEpep8ByZRRENiO+zpe8uznGrOyk1f53mofrfoiwMg/NuHBuO7BQ=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4158.namprd04.prod.outlook.com (52.135.71.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 17:41:51 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 17:41:51 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Keith Busch
 <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>, Christoph Hellwig
 <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: mark expected switch fall-through
Thread-Topic: [PATCH] nvme-pci: mark expected switch fall-through
Thread-Index: AQHVBOB79kdJ84ToAkqBJNoy4OB4Dw==
Date: Tue, 7 May 2019 17:41:51 +0000
Message-ID: <SN6PR04MB4527B0A6917F74B5C241FD0F86310@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190507142300.GA25717@embeddedor>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.174]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4afcc66-6e02-4829-e513-08d6d31349b6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4158; 
x-ms-traffictypediagnostic: SN6PR04MB4158:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4158841C38489E1FB46EA29486310@SN6PR04MB4158.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:813;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(346002)(39860400002)(376002)(366004)(396003)(189003)(199004)(68736007)(446003)(110136005)(86362001)(9686003)(8936002)(478600001)(81166006)(316002)(74316002)(72206003)(52536014)(14454004)(6436002)(54906003)(8676002)(55016002)(76176011)(7696005)(33656002)(229853002)(66066001)(81156014)(476003)(256004)(26005)(14444005)(53546011)(71190400001)(71200400001)(4326008)(305945005)(99286004)(53936002)(25786009)(186003)(6246003)(7736002)(102836004)(6506007)(5660300002)(73956011)(3846002)(2906002)(6116002)(91956017)(76116006)(486006)(66946007)(64756008)(66476007)(66446008)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4158;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e7vRaO42a6cNTaLtSQ+rYa92Y8ync5EWwNlACo2pIuuXzekJI8fYh1B8PnsgfMLvU6pvag3kZXQZuBO3aIUqyr/k6RioeoTmLUGYWANgeXn2Lo7Nrkz1KbVYTSm/hx9vmx7kkBK5ovoP7LreIcBXYdIOkQRVA71qVYAhJdNxIYVjuoZ9SCKduLE11RAfxYvqGuj+4aky1Xltu1D9rbve1Ae4Qc9wtZWxtSoiZU8h/HtevZP4mAXRxgMV/pckFmJX3bR87mysboNquRrzw/r7xzY8qs+jc+9KxMF0W0ct/UHq+q81PIabSYZ8CiGbwE/q1NJCGZFnWh97R/DKhvgIobR/nQkZ8XwULcVr56fKwIn2+Flt1bfUMxFJVsLJqIU5HTuPS80WXvZx5gKJ9IWOkYd6zVfrbvQUyw9U/f7GDgA=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4afcc66-6e02-4829-e513-08d6d31349b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 17:41:51.3035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_104155_072612_E76837CC 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 5/7/19 7:23 AM, Gustavo A. R. Silva wrote:
> In preparation to enabling -Wimplicit-fallthrough, mark switch
> cases where we are expecting to fall through.
>
> This patch fixes the following warning:
>
> drivers/nvme/host/pci.c: In function =91nvme_timeout=92:
> drivers/nvme/host/pci.c:1298:12: warning: this statement may fall through=
 [-Wimplicit-fallthrough=3D]
>    shutdown =3D true;
>    ~~~~~~~~~^~~~~~
> drivers/nvme/host/pci.c:1299:2: note: here
>   case NVME_CTRL_CONNECTING:
>   ^~~~
>
> Warning level 3 was used: -Wimplicit-fallthrough=3D3
>
> This patch is part of the ongoing efforts to enable
> -Wimplicit-fallthrough.
>
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
> ---
>  drivers/nvme/host/pci.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 3e4fb891a95a..a12f992868c9 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1296,6 +1296,7 @@ static enum blk_eh_timer_return nvme_timeout(struct=
 request *req, bool reserved)
>  	switch (dev->ctrl.state) {
>  	case NVME_CTRL_DELETING:
>  		shutdown =3D true;
> +		/* fall through */
>  	case NVME_CTRL_CONNECTING:
>  	case NVME_CTRL_RESETTING:
>  		dev_warn_ratelimited(dev->ctrl.device,



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
