Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 034A37D218
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 01:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=3djtFkhLilcj+BADOs1dEoXoL3MSdKaa4MojOY15nec=; b=h6LlqXv71D3JTx
	wNwD+ppWg5GreLmKyc49yQAbrJE8gf1N6om6ZpVgEQlqmvEsVE5+zHh/i9gvV4vLJTTheQWa1nZBU
	BkvkYMnbf5HqgMII5QuqFdE336qA5WW4YAmVme4pBRcrpqNQ8YqAO7+ressDbucwQgt4OvH/IXYFa
	Cs8LMeSoiKU7PF8jo64+bpnMHzK05T64vIH7nwgA3yMTsPbfZIVcj3WXb2CGLSfNMsBx5hYW4JMpk
	JGo3Ozbo68mTZYXwvJYUSR216Tz06TuQQMLJtrrNrhnN9ic8ky9hp/v4PkYNQiGSsrsYx+/1/oXyD
	iLtcekDbw3B0vBWuH5MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsyOG-0004rr-D4; Wed, 31 Jul 2019 23:52:16 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsyOA-0004rQ-Bd
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 23:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1564617130; x=1596153130;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=0jugi6R6yt+JMn7B88Zg9DpVNRJL/2ijx9bu8ENLwCA=;
 b=gmRjphMQNFamaqkAyKRz2RA27UNfNH2V3osWN1mZ+rKZohOFzTh7mOTH
 X62O8+2Eb/khNkJXh8puFcosHprL/ctv8TPb/2ICVFwOQl4qM7YcWdSnz
 xodKPxL1vPgzyFD3g3nwqMdwm2YMRpcBhkYXTNxPmsdzgMr2KV+8IHNw9
 doOgWTOBSzjm97agY3hPw5YmymAE6v7m3zF23i3sGNF1EAFLm+TX35Hb3
 j7qv96D126RKtP8jIbVPyCMyGCQvVTIP2Qr7hi53vUZ0U47rKEEuSfPTj
 ObTel9cy7PWi6gmCVU3Yw5c/tOn228sQrR9fBtWt5yAk9T1MB7qyXCERR A==;
IronPort-SDR: UGDWHMxGWdhRT3JdA1QeW7lf46f0O7zb1jbYR9FDQ64+qszRmb79OkttOFmot3UBcMUJdGOKs5
 fOZyNYgiOwprXxYuByJWQmQirdy5/gbeDP70QYIoC4wnutlAMpozem5k7Vju2MWz3y8RtTqXSn
 EX5ic6u6tLO/0NM6kRHM3ZaPxdcU468+7M+cses3cWb0HRLBL/03p6T4GTWzUA3GW1roR7lU/V
 OEfCJOvMVYo2dwKWVKtQFF8vLIJWR6SsnUkck7i0gg+PF38kO/BXEslhpNdbEKZ6OSjHOqJGnI
 xPQ=
X-IronPort-AV: E=Sophos;i="5.64,332,1559491200"; d="scan'208";a="114646344"
Received: from mail-sn1nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-SN1-obe.outbound.protection.outlook.com) ([104.47.32.58])
 by ob1.hgst.iphmx.com with ESMTP; 01 Aug 2019 07:52:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C7B4c7c4U5j3jmuaUlXUsp0aYetVyXGSFE6aX14ZvOum++/z9xgGaGLqENTQswSJ+XmfjfVRfI0B/uNZNEMUHIvNIC3ThRY1c6uyRtZfSmKUSD/Cq+8NccRcTPimUDubpXHOw5rPiBwdP5hl+kjLg4r+EKLQCIqzjfp3t2LVJbXxPy/nskOxQX+fphSGrwLRk/MzUv327LHO0msk9KpxoFYTlM/zkPFj3zTSLWNB4/S1tqsX4t14XflZHeA+Ut4z8kJ10yAp5jQXY9ZN7nQa5H0tbQIdjFxlvteN5oua8SggUQHKYkUoTSG5xjiUJB7uHU9WQXHAAni0acStKU9j/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dCp6gT0TxqPtwu0PE3gMzoLyJxtC1OWFC1y1MLQRuc=;
 b=c5+pV7c2Ml9eBbwOw7YlYmZWiIU2UQlGEOmCbPkgpFt2vlJTRGH/NHr6fUJcUxzLgqXkRlD1PaySyTw1UwT/4LQKbJAqkeoXW5D8JUn8RLfhIpnRVbzH7v+SOo7bzuZKQIgXfrUYEBFH3T0YxfVZ41ih6AB+gGBfVDpHB/evsoXg6yFiP+r/NKWPg+pEMgzGUQQoKuFkS85cVsui+WV6C7tQC1acpKeL2AB7oUAllRC4hevfAlncG6gfrsPi2TFjpXa+1ZGZMBiFiE4YKgTV9aHOLJDCwFm61FdwLcZxK/sFMFiMrV9sxMIqNxwovBx6fvN2OsBSDgk3RIHDndqP6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7dCp6gT0TxqPtwu0PE3gMzoLyJxtC1OWFC1y1MLQRuc=;
 b=VdTD4e+C6JeTRYkHF39kcWhSl22i4qVS0g5pHEqmQPpuykil6cZCLmBPqqLOj79sCbWpir66anstnbeiZe5dmGL9aKsT5KPhZQlacToNV2i+68UetaYjNDRA7knTxExT1/B0rSjMAdepkg4f37jXoRw1Tk2igxrenFlyp8bBfGw=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB4455.namprd04.prod.outlook.com (52.135.237.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Wed, 31 Jul 2019 23:52:06 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 23:52:06 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Logan Gunthorpe <logang@deltatee.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH v3 1/4] nvmet: Fix use-after-free bug when a port is
 removed
Thread-Topic: [PATCH v3 1/4] nvmet: Fix use-after-free bug when a port is
 removed
Thread-Index: AQHVR/i8tpJRykRFFUC6z3IaFYfMVA==
Date: Wed, 31 Jul 2019 23:52:06 +0000
Message-ID: <BYAPR04MB5749D4309C95D1318BEC505B86DF0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190731233534.4841-1-logang@deltatee.com>
 <20190731233534.4841-2-logang@deltatee.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c1521fe-60df-4ed3-ba22-08d716121827
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB4455; 
x-ms-traffictypediagnostic: BYAPR04MB4455:
x-microsoft-antispam-prvs: <BYAPR04MB4455C4E6DBC68D39CFF65B4186DF0@BYAPR04MB4455.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(136003)(39860400002)(396003)(189003)(199004)(7696005)(71200400001)(446003)(316002)(6116002)(3846002)(74316002)(14444005)(26005)(71190400001)(66066001)(7736002)(14454004)(4326008)(53546011)(6246003)(2201001)(6506007)(486006)(186003)(305945005)(9686003)(229853002)(256004)(476003)(55016002)(8676002)(110136005)(33656002)(86362001)(8936002)(81156014)(5660300002)(81166006)(25786009)(54906003)(102836004)(66476007)(66556008)(53936002)(66946007)(2501003)(64756008)(66446008)(2906002)(99286004)(52536014)(68736007)(76116006)(478600001)(6436002)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4455;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yOvbmTTwqEr7ipbaBd5UQCgYxnXk8BpOR/S6edKdqdND+vQ8di6xhApNpn+40L+ieR9BZkttm6VptBF2vHymHavv5o4OGZo+T1/dHim3FrwqJEZ4Q/n/MU0hSMeE3BE2kvjEzUSjWLolrdouEMZorZhTtxaHYTXJ3EHqQ4mAa08zO8uBKIvQXh2a91sgAVlp++fdHbvlTOGDVQ5TwSikcTH68+RmPYlzSL+vIbG4s54H8CweMvDpIZ7HEZbH3WlOFP5iZ4h7kFxgUf0OmjZgK4hA3FGGWwexhsTvEwBIYFhAQGH3YbbHEFIHMIHWRM8L9EY/qi1YdVVK6r/jK6nqjCBxdM6smblJhfag0X19Mi1J2Na8/FzVGTI6kmAx5OMnFe01njrip1exS7Q1kXkvMxxXkeD4ZQ+7glaL+VlSd7Q=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1521fe-60df-4ed3-ba22-08d716121827
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 23:52:06.4804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4455
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_165210_684199_58622C0D 
X-CRM114-Status: GOOD (  15.38  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.

Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 07/31/2019 04:36 PM, Logan Gunthorpe wrote:
> When a port is removed through configfs, any connected controllers
> are still active and can still send commands. This causes a
> use-after-free bug which is detected by KASAN for any admin command
> that dereferences req->port (like in nvmet_execute_identify_ctrl).
>
> To fix this, disconnect all active controllers when a subsystem is
> removed from a port. This ensures there are no active controllers
> when the port is eventually removed.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>   drivers/nvme/target/configfs.c |  1 +
>   drivers/nvme/target/core.c     | 12 ++++++++++++
>   drivers/nvme/target/nvmet.h    |  3 +++
>   3 files changed, 16 insertions(+)
>
> diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
> index cd52b9f15376..98613a45bd3b 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -675,6 +675,7 @@ static void nvmet_port_subsys_drop_link(struct config_item *parent,
>
>   found:
>   	list_del(&p->entry);
> +	nvmet_port_del_ctrls(port, subsys);
>   	nvmet_port_disc_changed(port, subsys);
>
>   	if (list_empty(&port->subsystems))
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index dad0243c7c96..b86a23aa9020 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -280,6 +280,18 @@ void nvmet_unregister_transport(const struct nvmet_fabrics_ops *ops)
>   }
>   EXPORT_SYMBOL_GPL(nvmet_unregister_transport);
>
> +void nvmet_port_del_ctrls(struct nvmet_port *port, struct nvmet_subsys *subsys)
> +{
> +	struct nvmet_ctrl *ctrl;
> +
> +	mutex_lock(&subsys->lock);
> +	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
> +		if (ctrl->port == port)
> +			ctrl->ops->delete_ctrl(ctrl);
> +	}
> +	mutex_unlock(&subsys->lock);
> +}
> +
>   int nvmet_enable_port(struct nvmet_port *port)
>   {
>   	const struct nvmet_fabrics_ops *ops;
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index 6ee66c610739..c51f8dd01dc4 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -418,6 +418,9 @@ void nvmet_port_send_ana_event(struct nvmet_port *port);
>   int nvmet_register_transport(const struct nvmet_fabrics_ops *ops);
>   void nvmet_unregister_transport(const struct nvmet_fabrics_ops *ops);
>
> +void nvmet_port_del_ctrls(struct nvmet_port *port,
> +			  struct nvmet_subsys *subsys);
> +
>   int nvmet_enable_port(struct nvmet_port *port);
>   void nvmet_disable_port(struct nvmet_port *port);
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
