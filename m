Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A291AAE4
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 08:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dd/JoCfYev2oDOCd1QHs1dApuvte+zcaqHPw+xqlQMc=; b=fX0ZRFXgTlHgGY
	gniqTqDdpVOWwgLkmjBYjQQBIT5w9pCyHyUSBght1ohuoEyr3BTdassv2RM4gAKTLUMO2eOtqP4wM
	Y3xpnDD/HkvsYw7hehBmpN1wqfqA0OIn2T++ZPoYYeTFqIm+tbJKGMDLEITq8DlJ3S2S3gyXjWpJg
	xgsu+n27Dh6Qa70lL8zi2b87kgSUbRCB77Ubz3W1qVZRJsFFmvQ3lhtR7JU56p4USfffpsHEx/GT8
	f45GciL73VH8M6amh0YJqCMRSfZm3zdigwtb1pVKADOZxR34rE/snHFAvuFREudB/fTWhaV0fpbut
	xLB85edxO6i+ur8t4Q3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPhdG-0000sp-D1; Sun, 12 May 2019 06:06:46 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPhdA-0000sI-QJ
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 06:06:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557641211; x=1589177211;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=j0tkehWAR/AoetIWiYu/eGJp206HzR8rswg/u8etHIY=;
 b=aApb3CxiAlvTV5oJiyVYrppf4dMtKaUkGB3f770Z1ZhRHHm6Sa48s6vc
 52IGCZEYyz7oXbz3Iv2MpdWyyVzrPllgvVsry+h0dPYalm0VFARxgS76s
 TXSTRIEjLI8KXvf2pgiwpXmUA/fZfEHPUf+IvW3uuPC3IGF6ThWUVXWJQ
 VSUup2WtzVrsYR0x4JYBNRLevYBDAF8FOClNoMwCz3LrYbrHU3F0h0RkE
 6DhBxug7rFJQa9otCc2SkHC7rf+vDAyw23G0MYK/GlSrvg6UmrL6wxE93
 4D/WGC9YQMu99lef2SOFJBZ8aA3JZ23l0UpqBzOiYWBrQ+JYtmBdmIxSQ w==;
X-IronPort-AV: E=Sophos;i="5.60,460,1549900800"; d="scan'208";a="207429331"
Received: from mail-by2nam03lp2053.outbound.protection.outlook.com (HELO
 NAM03-BY2-obe.outbound.protection.outlook.com) ([104.47.42.53])
 by ob1.hgst.iphmx.com with ESMTP; 12 May 2019 14:06:48 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector1-wdc-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DeFjsn6XMXK02jccX2t+OjweNYCun/ni3GzF2185W8g=;
 b=hPIWKUiuMWjAVXHURzz+1sN1EYcXY82CsASH3rK8PlPk9jDWG4rOi/pmsNz8Kwog92dGFU5Ra8YRkT9EXxpRaFItHYU8jBX/GFpA1ObwLi3OM/0vXBbdU69ugolpPNuxM33t2DurR7+3WYgkK7C1jz5sQfwdmVeoANPjeDPyqsA=
Received: from SN6PR04MB4527.namprd04.prod.outlook.com (52.135.120.25) by
 SN6PR04MB4190.namprd04.prod.outlook.com (52.135.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Sun, 12 May 2019 06:06:36 +0000
Received: from SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974]) by SN6PR04MB4527.namprd04.prod.outlook.com
 ([fe80::c4f:1604:178c:d974%5]) with mapi id 15.20.1878.024; Sun, 12 May 2019
 06:06:35 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>, Sagi
 Grimberg <sagi@grimberg.me>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Topic: [PATCH] nvme/pci: Use host managed power state for suspend
Thread-Index: AQHVB3hB+EEPM7nkIkW5pPdT52wd/g==
Date: Sun, 12 May 2019 06:06:35 +0000
Message-ID: <SN6PR04MB452735778FD952AA838E78C9860E0@SN6PR04MB4527.namprd04.prod.outlook.com>
References: <20190510212937.11661-1-keith.busch@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chaitanya.Kulkarni@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 587dfb2d-37c0-4005-5f64-08d6d69ffd69
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4190; 
x-ms-traffictypediagnostic: SN6PR04MB4190:
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4190C73AD5A115D132C50669860E0@SN6PR04MB4190.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(376002)(396003)(366004)(136003)(51914003)(189003)(199004)(316002)(4326008)(229853002)(7696005)(86362001)(76176011)(71200400001)(15650500001)(6246003)(71190400001)(3846002)(6116002)(68736007)(53936002)(99286004)(54906003)(5660300002)(9686003)(110136005)(256004)(6506007)(81166006)(81156014)(8936002)(53546011)(486006)(2501003)(66446008)(33656002)(14444005)(476003)(66476007)(8676002)(66556008)(64756008)(446003)(7736002)(14454004)(186003)(91956017)(74316002)(25786009)(6436002)(102836004)(26005)(72206003)(52536014)(478600001)(2906002)(66066001)(55016002)(73956011)(305945005)(66946007)(76116006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4190;
 H:SN6PR04MB4527.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FuF410Vpig++fcj9rG6VUvHxcdv0cXYQ1IojvCpXnDlkcTdnfNmiW/Y778AmdAri0A6PWo2f5IlbnXYXUMBND0nPk5uKADKWoY0HkyltcGefMjf0HjmsGwE4yZCK0VYg3Os3BOBf2AkQ4D/iqyOHG75TXVyiA28HtrhepA2vspLsuzWcuP5U0QMwuuENWEzzFEEwI9nofvk7sdE8R27tSdQ46bDD4qI1AsvHL/+hNp+3OktlqIxhLRRk34euizyBbqGZGLxpxcbPHWpjpQIe9Z8ujKvXvz9qnK+KW0IMqVAVpwKaAG8DE6o9h1x6fmGXSXOvN7UPryDGBrJ4odTyi8JaHWgVCsFZ4Y65hLJglFbEifmIv6Ot7pPCK8hckh/TPEt+fV9qcEeEraorKw30B9ZJGQXn8b9i8DsbuoVdHGo=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 587dfb2d-37c0-4005-5f64-08d6d69ffd69
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 06:06:35.6397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4190
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_230641_004296_DD19DB99 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kai Heng Feng <kai.heng.feng@canonical.com>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 lkml <linux-kernel@vger.kernel.org>, Rafael Wysocki <rafael@kernel.org>,
 linux-pm <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

Thanks for the patch, few comments below mostly nitpicks.

On 5/10/19 2:35 PM, Keith Busch wrote:
> The nvme pci driver prepares its devices for power loss during suspend
> by shutting down the controllers, and the power setting is deferred to
> pci driver's power management before the platform removes power. The
> suspend-to-idle mode, however, does not remove power.
> 
> NVMe devices that implement host managed power settings can achieve
> lower power and better transition latencies than using generic PCI
> power settings. Try to use this feature if the platform is not involved
> with the suspend. If successful, restore the previous power state on
> resume.
> 
> Cc: Mario Limonciello <Mario.Limonciello@dell.com>
> Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
> Disclaimer: I've tested only on emulation faking support for the feature.
> 
> General question: different devices potentially have divergent values
> for power consumption and transition latencies. Would it be useful to
> allow a user tunable setting to select the desired target power state
> instead of assuming the lowest one?
> 
>   drivers/nvme/host/core.c | 27 ++++++++++++++++++++++++
>   drivers/nvme/host/nvme.h |  2 ++
>   drivers/nvme/host/pci.c  | 53 ++++++++++++++++++++++++++++++++++++++++++++++++
>   3 files changed, 82 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a6644a2c3ef7..eb3640fd8838 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1132,6 +1132,33 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>   	return ret;
>   }
>   
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps)
dev->ctrl.npss is u8 can we use same data type here ?
If this is due to last_ps we use as a result and then call set_power may 
be we can change the type of last_ps ?
OR
can we please use unsigned int to avoid possible warnings ?
> +{
> +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_power);
> +
> +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
> +{
> +	struct nvme_command c;
May be use struct nvme_command c {} so we can get rid of the memset() call.
> +	union nvme_result res;
> +	int ret;
> +
> +	if (!result)
> +		return -EINVAL;
> +
> +	memset(&c, 0, sizeof(c));
> +	c.features.opcode = nvme_admin_get_features;
> +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
> +
> +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
> +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
> +	if (ret >= 0)
> +		*result = le32_to_cpu(res.u32);
May be add a check for result here in above if before deref pointer :-
	if (ret >= 0 && result)

> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(nvme_get_power);
> +
>   int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>   {
>   	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 5ee75b5ff83f..eaa571ac06d2 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -459,6 +459,8 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>   		unsigned timeout, int qid, int at_head,
>   		blk_mq_req_flags_t flags, bool poll);
>   int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps);
> +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result);
>   void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
>   int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
>   int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 3e4fb891a95a..0d5d91e5b293 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -18,6 +18,7 @@
>   #include <linux/mutex.h>
>   #include <linux/once.h>
>   #include <linux/pci.h>
> +#include <linux/suspend.h>
>   #include <linux/t10-pi.h>
>   #include <linux/types.h>
>   #include <linux/io-64-nonatomic-lo-hi.h>
> @@ -116,6 +117,7 @@ struct nvme_dev {
>   	u32 cmbsz;
>   	u32 cmbloc;
>   	struct nvme_ctrl ctrl;
> +	u32 last_ps;
>   
>   	mempool_t *iod_mempool;
>   
> @@ -2828,11 +2830,59 @@ static void nvme_remove(struct pci_dev *pdev)
>   }
>   
>   #ifdef CONFIG_PM_SLEEP
> +static int nvme_deep_state(struct nvme_dev *dev)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +	int ret;
> +
> +	/*
> +	 * Save the current power state in case a user tool set a power policy
> +	 * for this device. We'll restore that state on resume.
> +	 */
> +	dev->last_ps = 0;
Should we only overwrite dev->last_ps value after nvme_get_power() is 
successful and use temp variable to fetch the current power value in the 
following call ?
> +	ret = nvme_get_power(&dev->ctrl, &dev->last_ps);
> +
> +	/*
> +	 * Return the error to halt suspend if the driver either couldn't
> +	 * submit a command or didn't see a response.
> +	 */
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = nvme_set_power(&dev->ctrl, dev->ctrl.npss);
> +	if (ret < 0)
> +		return ret;

> +
> +	if (!ret) {
> +		/*
> +		 * A saved state prevents pci pm from generically controlling
> +		 * the device's power. We're using protocol specific settings
> +		 * so we don't want pci interfering.
> +		 */
> +		pci_save_state(pdev);
> +	} else {
> +		/*
> +		 * The drive failed the low power request. Fallback to device
> +		 * shutdown and clear npss to force a controller reset on
> +		 * resume. The value will be rediscovered during reset.
> +		 */
> +		dev->ctrl.npss = 0;
> +		nvme_dev_disable(dev, true);
> +	}
> +	return 0;
> +}
> +
>   static int nvme_suspend(struct device *dev)
>   {
>   	struct pci_dev *pdev = to_pci_dev(dev);
>   	struct nvme_dev *ndev = pci_get_drvdata(pdev);
>   
> +	/*
> +	 * Try to use nvme if the device supports host managed power settings
> +	 * and platform firmware is not involved.
> +	 */
> +	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
> +		return nvme_deep_state(ndev);
>   	nvme_dev_disable(ndev, true);
>   	return 0;
>   }
> @@ -2842,6 +2892,9 @@ static int nvme_resume(struct device *dev)
>   	struct pci_dev *pdev = to_pci_dev(dev);
>   	struct nvme_dev *ndev = pci_get_drvdata(pdev);
>   
> +	if (!pm_resume_via_firmware() && ndev->ctrl.npss)
> +		if (nvme_set_power(&ndev->ctrl, ndev->last_ps) == 0)
> +			return 0;
>   	nvme_reset_ctrl(&ndev->ctrl);
>   	return 0;
>   }
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
