Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 038461FAF9
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 21:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+xpsrj1fEdqdTbyr/8Qkfdnv4C309IRaNLIf0T6Xvw=; b=j6oe/Yhv5yJMJG
	Cb0N2kJQFQYhSwiOdTXLa+uhLI0PkMrxlHkqm54aQULF4QqRRmCCgUXdiSF0herE3l5NB0cJ31iIn
	lKUo6zz103RIHvdeHMauqeMvs9NqJH4tbNYC4diN4wOBvpyzasP8kD+4vdeFXcDRaRMcdjxT2i0XC
	+eLS58Ulrubv+l7jRE9VDv4wEU4Ep9MA4k016D20hoZDaytQiNU+NkItXVztqn6+0kP1vR+RqDK+J
	dUTIqVWrGfzPqvUv9hPAjGLfwl5QK2obQreUXfxBPq3ukUtcSj+5JP88ZEvQZSd6PMqDsh4wg4Ccx
	+QtA7SwVhFieh7ZP0dJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzf4-0004X3-Lo; Wed, 15 May 2019 19:33:58 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzez-0004We-7v
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 19:33:55 +0000
Received: from pps.filterd (m0170394.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4FJP3Lh002367
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:33:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=W2RwSWwXBVxL9A9LuUA1JmNAeIHDva7dQWbTaMsSwjI=;
 b=ufZTiLp6xA7bN+GcyiQ/R7bsjONBr8JbC1Qc1KJhc+jRhV2XnYZnJDYJIofYKV41gpxw
 E84saPjj2gnIyYhIw/3t7/0i7CptuRJph4QdoDz3g+ryfbhLHQaj5y0rOckz6Yhraxe/
 mjWroZ1Sg4O11E5ooN7JvjmvkigjD7vF/saNyhEDyxYE0vLaOJejOg1qDJZS/PEBU+d2
 PZvUqjdFwf0kU/e/agIWJUG0So8eQBdhRRCSvr5Jo1gBX4DdGqXvMVFz4bu/OJ4Y8TgQ
 2pqnWe1VoJcnjJ+cBNTeMHV/LZvFNphgpmhJNXgleEoi3dUb79cAtb629O4OvdLGDm1Y kg== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2sgfrvj52c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:33:48 -0400
Received: from pps.filterd (m0144103.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4FJXXp2166941
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:33:48 -0400
Received: from ausxippc106.us.dell.com (AUSXIPPC106.us.dell.com
 [143.166.85.156])
 by mx0b-00154901.pphosted.com with ESMTP id 2sgpaktm77-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 15:33:47 -0400
X-LoopCount0: from 10.166.132.130
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="398263271"
From: <Mario.Limonciello@dell.com>
To: <keith.busch@intel.com>, <hch@lst.de>, <sagi@grimberg.me>,
 <linux-nvme@lists.infradead.org>
Subject: RE: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Topic: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Thread-Index: AQHVCz0dhbbBUhQLLk2d9tGe3EmpNaZsks7Q
Date: Wed, 15 May 2019 19:33:45 +0000
Message-ID: <f3d7281f020844828161b2387732cc42@AUSX13MPC105.AMER.DELL.COM>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
In-Reply-To: <20190515163625.21776-6-keith.busch@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [143.166.24.60]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-15_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905150119
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905150118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_123353_452169_69EA5538 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kai.heng.feng@canonical.com, rafael@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Keith Busch <keith.busch@intel.com>
> Sent: Wednesday, May 15, 2019 11:36 AM
> To: Christoph Hellwig; Sagi Grimberg; linux-nvme@lists.infradead.org
> Cc: Rafael Wysocki; Keith Busch; Limonciello, Mario; Kai Heng Feng
> Subject: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> The nvme pci driver prepares its devices for power loss during suspend by
> shutting down the controllers. The power setting is deferred to pci driver's
> power management before the platform removes power. The suspend-to-idle
> mode, however, does not remove power.
> 
> NVMe devices that implement host managed power settings can achieve lower
> power and better transition latencies than using generic PCI power settings. Try
> to use this feature if the platform is not involved with the suspend. If successful,
> restore the previous power state on resume.
> 
> Cc: Mario Limonciello <Mario.Limonciello@dell.com>
> Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
> v1 -> v2:
> 
>   Split prep patches for the get features
> 
>   Ensure queued and dispatch IO completes before attempting to set the low
>   power state. This also required a sync to ensure that nothing timed
>   out or reset the controller while we attempted the intermittent queue freeze.
> 
>   Disable HMB if enabled. It is not clear this should be necessary except
>   through empirical reports.

Reviewing this, it looks like this series should have all the same important tenants
from the original functional patch, and looks promising to me.

I'll arrange some more testing on it.

> 
>  drivers/nvme/host/pci.c | 80
> +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c index
> 599065ed6a32..42d5c6369803 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -18,6 +18,7 @@
>  #include <linux/mutex.h>
>  #include <linux/once.h>
>  #include <linux/pci.h>
> +#include <linux/suspend.h>
>  #include <linux/t10-pi.h>
>  #include <linux/types.h>
>  #include <linux/io-64-nonatomic-lo-hi.h> @@ -116,6 +117,7 @@ struct
> nvme_dev {
>  	u32 cmbsz;
>  	u32 cmbloc;
>  	struct nvme_ctrl ctrl;
> +	u32 last_ps;
> 
>  	mempool_t *iod_mempool;
> 
> @@ -2829,11 +2831,87 @@ static void nvme_remove(struct pci_dev *pdev)  }
> 
>  #ifdef CONFIG_PM_SLEEP
> +static int nvme_deep_state(struct nvme_dev *dev) {
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +	struct nvme_ctrl *ctrl = &dev->ctrl;
> +	int ret = -EBUSY;;

Looks like a small typographical error with the double ;;

> +
> +	nvme_start_freeze(ctrl);
> +	nvme_wait_freeze(ctrl);
> +	nvme_sync_queues(ctrl);
> +
> +	if (ctrl->state != NVME_CTRL_LIVE &&
> +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
> +		goto unfreeze;
> +
> +	if (dev->host_mem_descs) {
> +		ret = nvme_set_host_mem(dev, 0);
> +		if (ret < 0)
> +			goto unfreeze;
> +	}
> +
> +	dev->last_ps = 0;
> +	ret = nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0,
> +				&dev->last_ps);
> +	if (ret < 0)
> +		goto unfreeze;
> +
> +	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev-
> >ctrl.npss,
> +				NULL, 0, NULL);
> +	if (ret < 0)
> +		goto unfreeze;
> +
> +	if (ret) {
> +		/*
> +		 * Clearing npss forces a controller reset on resume. The
> +		 * correct value will be resdicovered then.
> +		 */
> +		ctrl->npss = 0;
> +		nvme_dev_disable(dev, true);
> +		ret = 0;
> +		goto unfreeze;
> +	}
> +
> +	/*
> +	 * A saved state prevents pci pm from generically controlling the
> +	 * device's power. We're using protocol specific settings so we don't
> +	 * want pci interfering.
> +	 */
> +	pci_save_state(pdev);
> +unfreeze:
> +	nvme_unfreeze(ctrl);
> +	return ret;
> +}
> +
> +static int nvme_make_operational(struct nvme_dev *dev) {
> +	struct nvme_ctrl *ctrl = &dev->ctrl;
> +	int ret;
> +
> +	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev-
> >last_ps,
> +				NULL, 0, NULL);
> +	if (ret)
> +		goto reset;
> +
> +	if (dev->host_mem_descs) {
> +		ret = nvme_setup_host_mem(dev);
> +		if (ret)
> +			goto reset;
> +	}
> +	return 0;
> +reset:
> +	nvme_reset_ctrl(ctrl);
> +	return 0;
> +}
> +
>  static int nvme_suspend(struct device *dev)  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> 
> +	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
> +		return nvme_deep_state(ndev);
>  	nvme_dev_disable(ndev, true);
>  	return 0;
>  }
> @@ -2843,6 +2921,8 @@ static int nvme_resume(struct device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> 
> +	if (!pm_resume_via_firmware() && ndev->ctrl.npss)
> +		return nvme_make_operational(ndev);
>  	nvme_reset_ctrl(&ndev->ctrl);
>  	return 0;
>  }
> --
> 2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
