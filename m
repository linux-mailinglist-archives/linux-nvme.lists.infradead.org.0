Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC136F0C4
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 23:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=35WQvyuYIzgp4TpGmkrRbK+QP9+i1b2YrNrlpzHVwtI=; b=EnXxZzhB4/ReM+
	NDOF++j68Q42FqAUTJs0Yzn/iAZD0IjlPuGfLbx2ZXBrxyxfJKgulyCWJ2kUqsDLyc0OL/eFmJbrM
	f2LAMxGWUAyOFVvYHIaypfW86Q17UJuC2FyBeQgHxWuSCIk3meEmQFvb6f0gD3nGf7N1iJEtyKImF
	vWae6YgJ/7WoMMsJfpvQfnf3u4F8+u2s3ahMd7uMDbP3/WsM1HDGViparzPyMNojpFk4g9BrJFPtx
	NLyxwidhtULVEx4SsJ6d26NQDaonS1wxhuxRMKku+AWbzJ1a181fEb2PNp3HAlEHGXuK57f38d3yi
	5S7KDDuYEyS2CK64KA7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1howkt-0007Bz-UF; Sat, 20 Jul 2019 21:19:02 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1howkf-0007BS-9K
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 21:18:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563657547; x=1595193547;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=eXB1Rgx7xPFGGppnfxccClaNz3c7DJ5h98N3ln2xQ0Q=;
 b=d89kGTOfAeB/Kh9DA3xAZifixsHl/ue61oBISsglrIVEDl22SAwT54pK
 WqREPAAUEKee0AKRBLdA3+dN1jWwDRKmJvfZszYte/FpiKvv0bL/G2s+X
 WUqlOwdrelZ+Tgbt+4qKqISn+2x0D2Nsk+qd2xHmAohWXPvgyyyfr+N0O
 SneTVxKxDYIkB1Kt7440sz2+bwnn6jM+S3/KBoeo0clkoYTsPhjqv1smI
 RinBgr3C9XFRY6xKSjwU0d8gv6PKQoDodrJOiZDOe8PODZYitNBhQJ89I
 dKit8Ziim0XNFZJkS1SKVe1EfTrjRZ2m5KurhfJBh3iyFX9sHikJiheoN Q==;
IronPort-SDR: HHB5ifEtAveoaqV3Bgw6SbrU3knKU000ytUGfjVGJxw98mYTNv1dIQirUV6QRVVo2UGNooK1Tx
 rf/Wj9zJuw7O+A3aQMxLjX9P+Wq0vBturFvyqc76JRHiJXEaPD51WCWT4vYBtGwVeIw9gW6XB2
 lXYA95KljahmGWmqFubhrzdIJKawelU6XmZS9XrFNHldhL6GFDy2R136sgkqsDdYRL8Cy6KJzE
 tTL95HSOfoMjP3lTm9B7gFXSQGr7GX2ZlFcjAM3LYUSgtJI/JSAQKLvdAl9IH/820VqXrq54Vr
 dWg=
X-IronPort-AV: E=Sophos;i="5.64,288,1559491200"; d="scan'208";a="213624243"
Received: from mail-dm3nam03lp2055.outbound.protection.outlook.com (HELO
 NAM03-DM3-obe.outbound.protection.outlook.com) ([104.47.41.55])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jul 2019 05:19:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DrMZ/HApoQjp9+6piaBx7tXah4egBC6nVn9lxkO+sQrvDh1FyJACgqDZn84dbO3j1KNcERzx8O1mRbtwn1TgzLP4Hu8U0DNrO/RYJdK0JItlwxTOwEgspKI14yBVkCVjlsNA+TlE5y8K0rybzo1VZB/2ictoH2H9REcFnY79puMdTNjWO0guL6/l0cr3wcA1CQRxkZ/3q2iLN9CTn9oZnJFLYUk+D4gPWB3os7NItCutLTPEqB/EQvVF5coSsqe1vc1jmmRPZa+uLB9obror4OLCYlZ8bbDwldkZ2+qjd36Lb32u2lN/K2AH7I026NRr+hUgv8DwgqQLUV9nt9L0dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yq0sY15KzesGB610iyTQZFfnCCxRZ0eOfufItjHir8U=;
 b=NKadVkvZEBupez+M3jp1Ew4NqBsMstX+9OPC/fkOaEd6+jLQti7mRgsh4+l6H+NT2rxjEJUSSQuWQZ4Rut/SR/ZKISheIznK3JpMJtOQKT94T3dccEKzJY6ZrOBWUdM/oIzYXvSeioAlrItX/dbDAh7zMNbvbEf1PNhg19JIY6eqxnBhLt3JPxtyofo/Bm+Mbyj8kYa1P5oALiOfqCLHuxLVUyEEXQz5SYrKafi+iOn66LLcGR1YwzCES8lHj+4al6kLNUwsYMK6IxCjTAdqnFcd0iMrbuJlP6ioE3cTmbWpo3mt0/9keeqelcOFZeAws/o2rwsIwkyf/OZ9wXtRHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yq0sY15KzesGB610iyTQZFfnCCxRZ0eOfufItjHir8U=;
 b=ROi7nKzcVIvJ8I/aioV22eYgr4QPrDnES3rSdrOMFDGD3LbS1i666OJO+LLTT9o24M+DqjY5ixk3/XRpug+76U9Vivc/dEAYbSVMAFl+u1eUSQNtBJen1U1tf//okVATSIp+RRApOrcs5RCrwkiYoIbAdBT4Gfs43BAmtOzEfy0=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB3846.namprd04.prod.outlook.com (52.135.214.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Sat, 20 Jul 2019 21:18:39 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2094.013; Sat, 20 Jul 2019
 21:18:39 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 2/4] nvme: move sqsize setting to the core
Thread-Topic: [PATCH 2/4] nvme: move sqsize setting to the core
Thread-Index: AQHVPmqq++qeZJLAMkSr7ZokVouoAA==
Date: Sat, 20 Jul 2019 21:18:39 +0000
Message-ID: <BYAPR04MB5749A02F2DE52E8392786E8F86CA0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-3-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23fbb195-0055-44f4-b884-08d70d57d5b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB3846; 
x-ms-traffictypediagnostic: BYAPR04MB3846:
x-microsoft-antispam-prvs: <BYAPR04MB3846A3164BFD5AE1E62EC10686CA0@BYAPR04MB3846.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0104247462
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(346002)(136003)(376002)(39860400002)(396003)(199004)(189003)(25786009)(478600001)(6246003)(305945005)(68736007)(7736002)(33656002)(74316002)(14454004)(4326008)(53546011)(6506007)(26005)(102836004)(186003)(256004)(2501003)(486006)(446003)(476003)(2906002)(7696005)(76176011)(9686003)(55016002)(66066001)(6436002)(3846002)(6116002)(52536014)(76116006)(8936002)(54906003)(110136005)(99286004)(66556008)(66476007)(66946007)(53936002)(66446008)(8676002)(64756008)(71190400001)(86362001)(5660300002)(316002)(71200400001)(81166006)(229853002)(81156014);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB3846;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0Aj9HCJfbc5gL8sIXG7u0DSfSZv9q77HwRrWlNCGnoYAH+niEZjCBIN61QQbWsRONfBDL+ZBzlhiLSpXzYxZGNKdvNuPvs44/rGx8Xu7QTfiHRLzHvnUPfqFK3iEHSWq+beqmpnxxPG0ixe0/OngREgQ9QjcphzGhcZdZ6QSyntKE2vQsVeZ5/4nLvblPLrvQ6q2xwO7hV1XQ8oI2l4EMKBb4+HLOxrDqC1fIXFW8xXdCvX6d4xpn0jKY4O3/I3do5OEyABTCHE0v5oxO2N/fEk38x30TzuWpj7gCt/UNYu/QgN7LcsfXOozp7a5kzV4hu+pTjlyshzkS55d4xB5WnVVrYRjqE7fZiKt1h7d8p5kvjzbn4Gtme1Wcsm342dx2XJjFyXeoMB4SdIeBHmNsjdTi2j5ynp9FMWKJqj3Zq4=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23fbb195-0055-44f4-b884-08d70d57d5b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2019 21:18:39.3429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB3846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_141845_435677_632FA150 
X-CRM114-Status: GOOD (  15.37  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good to me.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

On 07/19/2019 12:46 PM, Sagi Grimberg wrote:
> nvme_init_identify reads the cap register right after, so
> no need to do that locally in the transport driver.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c   |  1 +
>   drivers/nvme/host/fc.c     | 10 ----------
>   drivers/nvme/host/pci.c    |  1 +
>   drivers/nvme/host/rdma.c   | 11 -----------
>   drivers/nvme/host/tcp.c    |  9 ---------
>   drivers/nvme/target/loop.c | 10 ----------
>   6 files changed, 2 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 058e06e40df8..da4182aa16b0 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2579,6 +2579,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>   		return ret;
>   	}
>   	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
> +	ctrl->sqsize = min_t(int, NVME_CAP_MQES(ctrl->cap), ctrl->sqsize);
>
>   	if (ctrl->vs >= NVME_VS(1, 1, 0))
>   		ctrl->subsystem = NVME_CAP_NSSRC(ctrl->cap);
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 1a391aa1f7d5..67d420bd79f6 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2647,16 +2647,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   	 * prior connection values
>   	 */
>
> -	ret = nvmf_reg_read64(&ctrl->ctrl, NVME_REG_CAP, &ctrl->ctrl.cap);
> -	if (ret) {
> -		dev_err(ctrl->ctrl.device,
> -			"prop_get NVME_REG_CAP failed\n");
> -		goto out_disconnect_admin_queue;
> -	}
> -
> -	ctrl->ctrl.sqsize =
> -		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
> -
>   	ret = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
>   	if (ret)
>   		goto out_disconnect_admin_queue;
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index bb970ca82517..0f38c1d96d19 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2316,6 +2316,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
>
>   	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
>   				io_queue_depth);
> +	dev->ctrl.sqsize = dev->q_depth - 1; /* 0's based queue depth */
>   	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
>   	dev->dbs = dev->bar + 4096;
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 7b074323bcdf..8e9f0fd5b01f 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -809,17 +809,6 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   	if (error)
>   		goto out_cleanup_queue;
>
> -	error = ctrl->ctrl.ops->reg_read64(&ctrl->ctrl, NVME_REG_CAP,
> -			&ctrl->ctrl.cap);
> -	if (error) {
> -		dev_err(ctrl->ctrl.device,
> -			"prop_get NVME_REG_CAP failed\n");
> -		goto out_stop_queue;
> -	}
> -
> -	ctrl->ctrl.sqsize =
> -		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
> -
>   	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
>   	if (error)
>   		goto out_stop_queue;
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index 8d4965031399..fba80dc61ce1 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -1721,15 +1721,6 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
>   	if (error)
>   		goto out_cleanup_queue;
>
> -	error = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
> -	if (error) {
> -		dev_err(ctrl->device,
> -			"prop_get NVME_REG_CAP failed\n");
> -		goto out_stop_queue;
> -	}
> -
> -	ctrl->sqsize = min_t(int, NVME_CAP_MQES(ctrl->cap), ctrl->sqsize);
> -
>   	error = nvme_enable_ctrl(ctrl, ctrl->cap);
>   	if (error)
>   		goto out_stop_queue;
> diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
> index 9e211ad6bdd3..d901a019e3a2 100644
> --- a/drivers/nvme/target/loop.c
> +++ b/drivers/nvme/target/loop.c
> @@ -369,16 +369,6 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
>
>   	set_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
>
> -	error = nvmf_reg_read64(&ctrl->ctrl, NVME_REG_CAP, &ctrl->ctrl.cap);
> -	if (error) {
> -		dev_err(ctrl->ctrl.device,
> -			"prop_get NVME_REG_CAP failed\n");
> -		goto out_cleanup_queue;
> -	}
> -
> -	ctrl->ctrl.sqsize =
> -		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
> -
>   	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
>   	if (error)
>   		goto out_cleanup_queue;
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
