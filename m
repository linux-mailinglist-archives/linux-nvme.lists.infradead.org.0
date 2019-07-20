Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274896F0C8
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 23:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=TeSuCnoN4o+bPolIRxJaQSydEwC+SwMbVvH5GRXl+OI=; b=cLUe51B4c4ePLt
	2mgtbY83ihp/+zpwFI3vSxjvJ4h8PYra4UaqgPt0elJmV5viyIqe+dhD4vlcO/bSsAiHq6eo8nUbn
	ljh9hs2CDxGSTFmpHE+jjKonOdAf2lfvrfIH+cfbhg/hvP5arhMp5F8IpWD6GxID81YYFajdunUYf
	6lVcCztb1dYDjTJzYQfglfEt+qOlF0+9csF99b/e0kj7eb/PKqeA1Ddj+wG7Il4CV5Xv+kSvdwz2N
	d5khHksI+zM+aMhXTVsSok5G3nIcWJhCWBiChkmXnky8dOX6dd1syQHOTeB4f5JxFJshvqz6/NdWW
	QQwWFUVA23SPId+E5KoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1howoz-0000Tj-6Q; Sat, 20 Jul 2019 21:23:13 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1howon-0000TN-Ss
 for linux-nvme@lists.infradead.org; Sat, 20 Jul 2019 21:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1563657782; x=1595193782;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=4jYMOnGW5aA/g8WVngJF9HSYIjjK5fk7EpLaXn4q/h8=;
 b=oVqmuGdxqIFIdM7fimTyIpWpIxS3+zyRo4TnqxatRvYcSsm4WXCMgeLv
 PY/qsdJCWuNNLl03icWTtxaq3/LbL1BhnUjByoL6yEQuML5YBYsf8wFJa
 ZJwOYyWQsby/yR6NNHMjSRSsJg/baiToekoYkhwrE2UZsPGWq4+HZKsQT
 ErEejxBlfpnubz/ezGVMYf4bJj405jAR4hR6RVoUi5N0Hw5f8KSPhyqyy
 48ovKZeYdCNveUSCxopfHzkKYMFhjcNPLxJoqcFCuQZSjRRmJXDrk6Rqm
 5xMUg261SjusUi6k3erGBjiquNv+KcN88I4J3n1cd89gDr5hLPoAcOtDv A==;
IronPort-SDR: XaDoWSgmj8EitYVkCbWZsEl+oiknFdYL75J9PhrWZF39jKOtWEBqTYhIXQugtKihWU5IQX1bLC
 4n9hEB4ouGi2YfJ5mDNwmdOh+CjEymGaV0P3M6U9OFw+pezbbqMyRF1Uo9hX8kqiY5Os2OxirK
 5wgY4ZF78vva1agWtyhGWvH0q8FaEdwo383L0yNIErVbyq13McXftOfMJwfw/bgmoZO0efsdoz
 UAU1Eu4rpCSShua6sS2vfP9toyl9Of09125dVJyTmpj6/itT+lagnqvY8qLRDrHaoEI86DRob2
 DBU=
X-IronPort-AV: E=Sophos;i="5.64,288,1559491200"; d="scan'208";a="114679898"
Received: from mail-by2nam01lp2058.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.58])
 by ob1.hgst.iphmx.com with ESMTP; 21 Jul 2019 05:23:01 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FIoFU5LDq8PNp0SP1rsx7Pwq2HrYn3b93g6Y12Woko0MbgEFwL1oGmiGmrMYTV7KPqX8AAmXVDATIOB6wPGWNWIuE6Igps9jCvz4+INsT8kx/ejNtuDVrKLREb49eWAtfhiO+/glk7Ka0Nuun+nz9truRlEyZjYWjjynRz5bGz7PJCCGzUIBc6qWg4EVVuQ/6MZXgSSHVVEhA/U26iNhPqaAkLkO4P8XX+UbKEEc/PZWMGGzCBE2T8t21EnJJLJjmXFv1F8shENE8jtP3LR5tRDx61BzuNrxZsuTcIA/+wphFlIW+pD4WtKei+jBXdop3I612n3QF3nYWmyfQBdFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMTSfCHztW+8WYXoo/LISXrkBYVN7WP+xEHSB5ZaCsU=;
 b=RhURQfbQrEOGT3sxN+c0jUDKCpVRrLkv9xjvDSVRq9Ssmc00e+4JYAPGant+apFIaYYs9uU9PWqE9d50HE1jhTpCyrKAiO04bx+qV0olj1e/ZcW5DOYrx4Uf8WA8k5JY7GmZNIZgt4m8Z8YFNJwMp1NIHg7+gBmiUxbdkM0hAbycuaUmLuluGhXG4AHRm3Re6Ox2RuRxO76gYD0OGJL2nYK8L5Y3xfzYTmBCPR9VEJs18dTDix9ir4fMg+mgxP3XBekBIGVtTu0xM8C/RlI5JyK5RQWy2wV/EeCL+WJrKTuaNfXfsMOLUlPTA4OP+HoMKf+hewTWdDQO9jb/wofdxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=wdc.com;dmarc=pass action=none header.from=wdc.com;dkim=pass
 header.d=wdc.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hMTSfCHztW+8WYXoo/LISXrkBYVN7WP+xEHSB5ZaCsU=;
 b=ksKsEYo1t+wX+6Rg8goNzpV2wuA4KBK9r1/vnIFd6YdWD/abd3atB6kI1OL6AYNng3XUtrH/mPVdNdv3ULFsiv2MxMFn1/a7TnMrx0kBLO3sEeN5Z3F56SlZVk/b3sFeuhdYJ6+4SRSpLf0242SIwgyavY9pvwSO9WGyz3nRIfU=
Received: from BYAPR04MB5749.namprd04.prod.outlook.com (20.179.58.26) by
 BYAPR04MB5286.namprd04.prod.outlook.com (20.178.49.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.12; Sat, 20 Jul 2019 21:22:59 +0000
Received: from BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078]) by BYAPR04MB5749.namprd04.prod.outlook.com
 ([fe80::8025:ccea:a0e6:9078%5]) with mapi id 15.20.2094.013; Sat, 20 Jul 2019
 21:22:59 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Sagi Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH 4/4] nvme: don't pass cap to nvme_enable_ctrl
Thread-Topic: [PATCH 4/4] nvme: don't pass cap to nvme_enable_ctrl
Thread-Index: AQHVPmq8GNg0cHCZ0UqKh88e4cUSRQ==
Date: Sat, 20 Jul 2019 21:22:59 +0000
Message-ID: <BYAPR04MB5749D9CF26C64067EB6A0DC286CA0@BYAPR04MB5749.namprd04.prod.outlook.com>
References: <20190719194546.24229-1-sagi@grimberg.me>
 <20190719194546.24229-5-sagi@grimberg.me>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dffe25cd-efc5-485f-3b6e-08d70d58709c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR04MB5286; 
x-ms-traffictypediagnostic: BYAPR04MB5286:
x-microsoft-antispam-prvs: <BYAPR04MB5286C3D516D7194C01FB33C686CA0@BYAPR04MB5286.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0104247462
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(199004)(189003)(66066001)(3846002)(6116002)(446003)(6436002)(26005)(53936002)(476003)(33656002)(102836004)(186003)(478600001)(14454004)(25786009)(256004)(14444005)(486006)(66476007)(305945005)(71190400001)(110136005)(71200400001)(7736002)(2501003)(74316002)(4326008)(99286004)(8676002)(6246003)(86362001)(54906003)(7696005)(5660300002)(55016002)(2906002)(76176011)(9686003)(53546011)(52536014)(229853002)(316002)(66556008)(6506007)(66446008)(8936002)(68736007)(81156014)(81166006)(66946007)(76116006)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB5286;
 H:BYAPR04MB5749.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: glMsZ2bT+icrRGpWrgLeKpe3wIfz2rPUnvdevtff3n7L7h4LwDN+wHVNv+K76qdLt4sKFzkibLuXxeBvXPbygi/1yeuY6nESQT4ueqjGAkZav7z6kKn8CxFq/ZxJMRYOi7UK9Goyn/JGl1Wf8l9GedlsunynfugdgxmMk4WsvzUY1Mh+XA2nfF08ZRLFrMTlNF/ujTeJI3WkriQHvbSlJwMhTHasLmuqFhAYS5BHuShWv+c7PviCw9mSO2oKZUbpMyKurQxEJmkPejZIyhdy4RKz077pqJme/dsoxkn7Z6cvafyK13IMVQQfI4VoQglgteqTptUcCBnWbf8p93oK9Vh4tWE8ODkdhL1W6yndKHzvdalY5g6osKprmeNuuvs/pf8zHFshDDBgcp58gak0LMRX6OkwKay9+SLu8oWU5b0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dffe25cd-efc5-485f-3b6e-08d70d58709c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2019 21:22:59.2585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Chaitanya.Kulkarni@wdc.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB5286
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_142302_050694_E7B7F720 
X-CRM114-Status: GOOD (  16.11  )
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

On 07/19/2019 12:47 PM, Sagi Grimberg wrote:
> All seem to call it with ctrl->cap so no need to pass it
> at all.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c   | 7 ++++---
>   drivers/nvme/host/fc.c     | 2 +-
>   drivers/nvme/host/nvme.h   | 2 +-
>   drivers/nvme/host/pci.c    | 2 +-
>   drivers/nvme/host/rdma.c   | 2 +-
>   drivers/nvme/host/tcp.c    | 2 +-
>   drivers/nvme/target/loop.c | 2 +-
>   7 files changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 60e924b0b510..93b7e362f0ac 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1967,14 +1967,15 @@ int nvme_disable_ctrl(struct nvme_ctrl *ctrl)
>   }
>   EXPORT_SYMBOL_GPL(nvme_disable_ctrl);
>
> -int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
> +int nvme_enable_ctrl(struct nvme_ctrl *ctrl)
>   {
>   	/*
>   	 * Default to a 4K page size, with the intention to update this
>   	 * path in the future to accomodate architectures with differing
>   	 * kernel and IO page sizes.
>   	 */
> -	unsigned dev_page_min = NVME_CAP_MPSMIN(cap) + 12, page_shift = 12;
> +	unsigned dev_page_min = NVME_CAP_MPSMIN(ctrl->cap) + 12;
> +	unsigned page_shift = 12;
>   	int ret;
>
>   	if (page_shift < dev_page_min) {
> @@ -1995,7 +1996,7 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
>   	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
>   	if (ret)
>   		return ret;
> -	return nvme_wait_ready(ctrl, cap, true);
> +	return nvme_wait_ready(ctrl, ctrl->cap, true);
>   }
>   EXPORT_SYMBOL_GPL(nvme_enable_ctrl);
>
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 67d420bd79f6..e5c2a03a6c22 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -2647,7 +2647,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
>   	 * prior connection values
>   	 */
>
> -	ret = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
> +	ret = nvme_enable_ctrl(&ctrl->ctrl);
>   	if (ret)
>   		goto out_disconnect_admin_queue;
>
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index a7f8fccb1f35..740241e84d29 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -427,7 +427,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved);
>   bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
>   		enum nvme_ctrl_state new_state);
>   int nvme_disable_ctrl(struct nvme_ctrl *ctrl);
> -int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
> +int nvme_enable_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
>   		const struct nvme_ctrl_ops *ops, unsigned long quirks);
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index f2e74043dc6b..4b508d5e45cf 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1695,7 +1695,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
>   	lo_hi_writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
>   	lo_hi_writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);
>
> -	result = nvme_enable_ctrl(&dev->ctrl, dev->ctrl.cap);
> +	result = nvme_enable_ctrl(&dev->ctrl);
>   	if (result)
>   		return result;
>
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 8e2094fb5e7e..3fd44e1c279d 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -809,7 +809,7 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
>   	if (error)
>   		goto out_cleanup_queue;
>
> -	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
> +	error = nvme_enable_ctrl(&ctrl->ctrl);
>   	if (error)
>   		goto out_stop_queue;
>
> diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
> index 4a32d5350fc5..77c3d4d06d29 100644
> --- a/drivers/nvme/host/tcp.c
> +++ b/drivers/nvme/host/tcp.c
> @@ -1721,7 +1721,7 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
>   	if (error)
>   		goto out_cleanup_queue;
>
> -	error = nvme_enable_ctrl(ctrl, ctrl->cap);
> +	error = nvme_enable_ctrl(ctrl);
>   	if (error)
>   		goto out_stop_queue;
>
> diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
> index d901a019e3a2..a53a0c0170f5 100644
> --- a/drivers/nvme/target/loop.c
> +++ b/drivers/nvme/target/loop.c
> @@ -369,7 +369,7 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
>
>   	set_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
>
> -	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
> +	error = nvme_enable_ctrl(&ctrl->ctrl);
>   	if (error)
>   		goto out_cleanup_queue;
>
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
