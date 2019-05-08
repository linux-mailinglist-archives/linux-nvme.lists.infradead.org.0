Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C141318050
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xtBtuOLD9RiiZEOjXJwGm8qHtG7pVvD8CkMh/kwQNnE=; b=BSyUY1hXAN+oBf
	rpzRr6oo4YhJFE2x6WsU3CultZAi+zU0h7R8IfcMfrSIEjj4IRGE1UmOnQVJKu4m1jXoI5nXFGpiM
	M8/sgRaAMLvu7FrPJSnML6xXpLzsgj8qR2woLch5TiPf/xHE4uDRNmrjlfHySvyJnH475WsJLhV5E
	/0P/ki70reO1PaCc8Vwxj1g/3t543Om0YvfLYa5Ycy26vM+e+qtmqoc+HhXUhWOS+Y8Ye7JqEPgcJ
	rllFr4HLghrNQxztiUhQd+RjBG7urS4kCcMLGPKNdBU83h+5aa9a9FDzFwOh9is0mYD2m+6X5pJRe
	4OciWDS1o0ubQ8tf2SGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOS2X-0002ec-Ti; Wed, 08 May 2019 19:15:41 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOS2R-0002e9-27
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:15:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557342935; x=1588878935;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=xg4463s9bHQKU8Q3pkJ3v11SND30ozruqYY9o/PZKbY=;
 b=moXoyZOeZoYl6++CkT/qUXmLLq1OuWzodR5ocZUXnquoV1/kRFSEV1sC
 vPBizpWVOt9mWhNysIR3DuCivMjG9B9FRvJmmHhugoGuMhwDdC2VN9BRi
 0nkx97p+EXLdTCfvh3DvRU0ch9iSAUSfW3hdmIBPR9efQMvOch6aV/WAl
 mei3+pSqUxtZhdi9iGyTsuYIRtFsNnDKwLsg6pLLMLf5BzWeiIDYgqBeV
 +N0OOu6Io7wyguw5qCLuP9KnQk+Eg4wLwG8+tYFFbB2u7Cv/Uau10FH/0
 cjZC3N0qoLBIkNKuCzMYcZLRGDB2CZstNcj3cmNRzbhfnWXFitrpsH7Sb g==;
X-IronPort-AV: E=Sophos;i="5.60,447,1549900800"; d="scan'208";a="109044063"
Received: from mail-co1nam05lp2056.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.56])
 by ob1.hgst.iphmx.com with ESMTP; 09 May 2019 03:15:32 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cZ5Ig3Lh/STFq+hsiTH/whuwBsKWnEbA57Rc6OV3rlg=;
 b=ZvleBewS34LZBQRyVrkSCFbSaE0Rz6GlT8y/yIhMPc4n/NKQb+4bw7nRq/kfCqUP+VytKyCs7BUP9if8q3cAUzsAJniekfeUPJoHNlb99TkbYu1sJDFyLPt9oKmrQspZGENSlbdKZo63zQnBe7A1IBpi0CA2UQZa3Vnn+coXA0Q=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4031.namprd04.prod.outlook.com (52.135.82.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Wed, 8 May 2019 19:15:29 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 19:15:29 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, "keith.busch@intel.com"
 <keith.busch@intel.com>, "axboe@fb.com" <axboe@fb.com>, "hch@lst.de"
 <hch@lst.de>, "sagi@grimberg.me" <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Topic: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Index: AQHVBdBXtVKbO4BKO0CgVRCYMBsfQw==
Date: Wed, 8 May 2019 19:15:29 +0000
Message-ID: <SN6PR04MB45275A4CACABF6CBF6077C3486320@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.45.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bba5a97-710e-4a98-e08b-08d6d3e988be
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4031; 
x-ms-traffictypediagnostic: SN6PR04MB4031:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4031F73E0E3097C1854C34EB86320@SN6PR04MB4031.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(366004)(39860400002)(346002)(136003)(396003)(199004)(189003)(51444003)(73956011)(86362001)(66946007)(478600001)(8676002)(66446008)(81166006)(66476007)(8936002)(14454004)(966005)(305945005)(72206003)(53936002)(76116006)(2906002)(74316002)(5660300002)(4326008)(3846002)(66556008)(64756008)(52536014)(6116002)(81156014)(25786009)(7736002)(71190400001)(71200400001)(15650500001)(53546011)(102836004)(26005)(66066001)(54906003)(316002)(110136005)(6436002)(9686003)(6306002)(486006)(91956017)(68736007)(55016002)(2201001)(6246003)(186003)(2501003)(99286004)(33656002)(256004)(76176011)(6506007)(14444005)(476003)(446003)(7696005)(229853002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4031;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /YsIu7Qfpr6YddnHpv3IUWVzPSK+lC12W4h2C4wV8zaYTxY4dy2+I1O5y22tgubJJ9LyBQ3NzqvvVcL+my5BmheadyZ12fCREW2sXc+Cjbjov8/sQN1jor1eNuCbG35kSKznMgE6H1UeiosOqG/x0hNMWTGgPyQExOgIsN5Srih1KLQgG9x2B05Kp3QZlpr443oaxAY26/siM9Nx4jjX03VOiNv8Dyv7dGD2lRgnfUcQx6kvPYCDbr8FuJ7K/dW5qVofUs48isFuVMNOAU7V6QvTiZ2eXbNuBicMlzP8EsmBiZ8uPbxanpmZQwEBMbrXUUj3FBkFQOxMGIJzx1CmlwxCMK6Jq1Ojeyg3eTlUbvGbTLXIeCtLo1c9Ur5lEo0RwZme8rCPkIp18l3JELcqpZg/624aKl2o/clIIJ8kqf0=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bba5a97-710e-4a98-e08b-08d6d3e988be
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 19:15:29.3054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4031
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_121535_182609_3E36E137 
X-CRM114-Status: GOOD (  26.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Mario Limonciello <mario.limonciello@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Did you get a chance to run this patch through checkpatch.pl ?

On 05/08/2019 12:00 PM, Kai-Heng Feng wrote:
> Several NVMes consume lots of power during Suspend-to-Idle.
>
> According to the NVMe vendors, APST should be used and there are two
> things that should be prevented:
> - Controller shutdown (CC.SHN)
> - PCI D3
>
> I think that's because the Windows Modern Standby design document [1]
> states below as a requirement:
> "
> Akin to AHCI PCIe SSDs, NVMe SSDs need to provide the host with a
> non-operational power state that is comparable to DEVSLP (<5mW draw,
> <100ms exit latency) in order to allow the host to perform appropriate
> transitions into Modern Standby. Should the NVMe SSD not expose such a
> non-operational power state, autonomous power state transitions (APST)
> is the only other option to enter Modern Standby successfully.
> "
>
> D3 wasn't mentioned at all, though for some vendors D3 still put the
> device into a low power state, others disable APST after trasition to
> D3.
>
> So instead of disabling NVMe controller in suspend callback we do the
> following instead:
> - Make sure all IRQs are quiesced
> - Stop all queues
> - Prevent the device entering D3
> - Use memory barrier to make sure DMA operations are flushed on HMB devices
>
> This patch has been verified on several different NVMes:
> - Intel
> - Hynix
> - LiteOn
> - Micron
> - WDC
> - Samsung
> - Tohiba
>
> With the new suspend routine, the laptop I tested use roughly 0.8W
> under Suspend-to-Idle, and resume time is faster than the original
> D3 scheme.
>
> The only one exception so far is Toshiba XG5, which works with the old
> suspend routine, so introduce a new quirk for XG5.
> We are working with Toshiba to root cause the issue on XG5.
>
> [1] https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/part-selection#ssd-storage
>
> Tested-by: Lucien Kao <Lucien_kao@compal.com>
> Tested-by: Mice Lin <mice_lin@wistron.com>
> Tested-by: Jason Tan <LiangChuan.Tan@wdc.com>
> Tested-by: Cody Liu (codyliu) <codyliu@micron.com>
> Tested-by: Theodore Ts'o <tytso@mit.edu>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
> ---
>   drivers/nvme/host/core.c |   8 +++
>   drivers/nvme/host/nvme.h |   8 +++
>   drivers/nvme/host/pci.c  | 102 +++++++++++++++++++++++++++++++++++++--
>   3 files changed, 115 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a6644a2c3ef7..929db749da98 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3903,6 +3903,14 @@ static inline void _nvme_check_size(void)
>   	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
>   }
>
> +void nvme_enter_deepest(struct nvme_ctrl *ctrl)
> +{
> +	int ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ctrl->npss,
> +				    NULL, 0, NULL);
> +	if (ret)
> +		dev_warn(ctrl->device, "failed to set deepest non-operational state (%d)\n", ret);
> +}
> +EXPORT_SYMBOL_GPL(nvme_enter_deepest);
>
>   static int __init nvme_core_init(void)
>   {
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 5ee75b5ff83f..ea40a83314ae 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -92,6 +92,11 @@ enum nvme_quirks {
>   	 * Broken Write Zeroes.
>   	 */
>   	NVME_QUIRK_DISABLE_WRITE_ZEROES		= (1 << 9),
> +
> +	/*
> +	 * Use D3 on S2I regardless of NPSS.
> +	 */
> +	NVME_QUIRK_USE_D3_ON_S2I		= (1 << 10),
>   };
>
>   /*
> @@ -229,6 +234,7 @@ struct nvme_ctrl {
>   	/* Power saving configuration */
>   	u64 ps_max_latency_us;
>   	bool apst_enabled;
> +	bool suspend_to_idle;
>
>   	/* PCIe only: */
>   	u32 hmpre;
> @@ -467,6 +473,8 @@ int nvme_delete_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
>   		void *log, size_t size, u64 offset);
>
> +void nvme_enter_deepest(struct nvme_ctrl *ctrl);
> +
>   extern const struct attribute_group *nvme_ns_id_attr_groups[];
>   extern const struct block_device_operations nvme_ns_head_ops;
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 3e4fb891a95a..dea42b41f9a8 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -23,6 +23,7 @@
>   #include <linux/io-64-nonatomic-lo-hi.h>
>   #include <linux/sed-opal.h>
>   #include <linux/pci-p2pdma.h>
> +#include <linux/suspend.h>
>
>   #include "trace.h"
>   #include "nvme.h"
> @@ -2828,12 +2829,98 @@ static void nvme_remove(struct pci_dev *pdev)
>   }
>
>   #ifdef CONFIG_PM_SLEEP
> +static void nvme_do_suspend_to_idle(struct pci_dev *pdev)
> +{
> +	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +
> +	pdev->dev_flags |= PCI_DEV_FLAGS_NO_D3;
> +	ndev->ctrl.suspend_to_idle = true;
> +
> +	nvme_start_freeze(&ndev->ctrl);
> +	nvme_wait_freeze_timeout(&ndev->ctrl, NVME_IO_TIMEOUT);
> +	nvme_stop_queues(&ndev->ctrl);
> +
> +	nvme_enter_deepest(&ndev->ctrl);
> +
> +	if (ndev->ctrl.queue_count > 0) {
> +		nvme_disable_io_queues(ndev);
> +		nvme_poll_irqdisable(&ndev->queues[0], -1);
> +	}
> +
> +	nvme_suspend_io_queues(ndev);
> +	nvme_suspend_queue(&ndev->queues[0]);
> +	pci_free_irq_vectors(pdev);
> +
> +	blk_mq_tagset_busy_iter(&ndev->tagset, nvme_cancel_request, &ndev->ctrl);
> +	blk_mq_tagset_busy_iter(&ndev->admin_tagset, nvme_cancel_request, &ndev->ctrl);
> +
> +	/* Make sure all HMB DMA operations are done */
> +	mb();
> +}
> +
> +static int nvme_do_resume_from_idle(struct pci_dev *pdev)
> +{
> +	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +	int result;
> +
> +	pdev->dev_flags &= ~PCI_DEV_FLAGS_NO_D3;
> +	ndev->ctrl.suspend_to_idle = false;
> +
> +	result = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
> +	if (result < 0)
> +		goto out;
> +
> +	result = nvme_pci_configure_admin_queue(ndev);
> +	if (result)
> +		goto out;
> +
> +	result = nvme_alloc_admin_tags(ndev);
> +	if (result)
> +		goto out;
> +
> +	ndev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
> +	ndev->ctrl.max_segments = NVME_MAX_SEGS;
> +	mutex_unlock(&ndev->shutdown_lock);
> +
> +	result = nvme_init_identify(&ndev->ctrl);
> +	if (result)
> +		goto out;
> +
> +	result = nvme_setup_io_queues(ndev);
> +	if (result)
> +		goto out;
> +
> +	if (ndev->online_queues < 2) {
> +		dev_warn(ndev->ctrl.device, "IO queues not created\n");
> +		nvme_kill_queues(&ndev->ctrl);
> +		nvme_remove_namespaces(&ndev->ctrl);
> +	} else {
> +		nvme_start_queues(&ndev->ctrl);
> +		nvme_wait_freeze(&ndev->ctrl);
> +		nvme_dev_add(ndev);
> +		nvme_unfreeze(&ndev->ctrl);
> +	}
> +
> +	nvme_start_ctrl(&ndev->ctrl);
> +
> +	return 0;
> +
> + out:
> +	nvme_remove_dead_ctrl(ndev, result);
> +	return result;
> +}
> +
>   static int nvme_suspend(struct device *dev)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev);
>   	struct nvme_dev *ndev = pci_get_drvdata(pdev);
>
> -	nvme_dev_disable(ndev, true);
> +	if (IS_ENABLED(CONFIG_ACPI) && pm_suspend_via_s2idle() &&
> +	    ndev->ctrl.npss && !(ndev->ctrl.quirks & NVME_QUIRK_USE_D3_ON_S2I))
> +		nvme_do_suspend_to_idle(pdev);
> +	else
> +		nvme_dev_disable(ndev, true);
> +
>   	return 0;
>   }
>
> @@ -2841,9 +2928,16 @@ static int nvme_resume(struct device *dev)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev);
>   	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +	int result = 0;
>
> -	nvme_reset_ctrl(&ndev->ctrl);
> -	return 0;
> +	if (ndev->ctrl.suspend_to_idle) {
> +		result = nvme_do_resume_from_idle(pdev);
> +		if (result)
> +			dev_warn(dev, "failed to resume from idle state (%d)\n", result);
> +	} else
> +		nvme_reset_ctrl(&ndev->ctrl);
> +
> +	return result;
>   }
>   #endif
>
> @@ -2921,6 +3015,8 @@ static const struct pci_device_id nvme_id_table[] = {
>   	{ PCI_VDEVICE(INTEL, 0x5845),	/* Qemu emulated controller */
>   		.driver_data = NVME_QUIRK_IDENTIFY_CNS |
>   				NVME_QUIRK_DISABLE_WRITE_ZEROES, },
> +	{ PCI_DEVICE(0x1179, 0x0116),	/* Toshiba XG5 */
> +		.driver_data = NVME_QUIRK_USE_D3_ON_S2I, },
>   	{ PCI_DEVICE(0x1bb1, 0x0100),   /* Seagate Nytro Flash Storage */
>   		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
>   	{ PCI_DEVICE(0x1c58, 0x0003),	/* HGST adapter */
>


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
