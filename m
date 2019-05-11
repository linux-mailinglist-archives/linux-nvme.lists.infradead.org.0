Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CAB1A630
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 03:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DHx1JHRNcO1qG1Dh/aojztTiTlm2a5fEduy9ljUURZ8=; b=VEGVAYXwmcLg1cakBCRZdSk0P
	IpAHDvB7QYiZx1ejsIxGDg5mom0QX+7ltu4sVh40+Ha88gplcJ1olXYRCu1MylKZ+t9zroRHRvlhp
	tKCyl9lF80fSHa6w2kEvULIW2o7KnQyvjsbbbVnjN2Ht8R1WwFwX/ZENo7rLFSCPFDvluxrrzXIu0
	8SfCt7s2l42wjpU4uaag9k0rFL6pYsDTaXTzWcTJ5QNwvg6/U1SEibXUICAb1LUDFIZdhCI81pZwF
	CBytQyGQgQtQFuRzDRpo7L117S+ZKB0oHKb1H80LA7Q7+bY+wc+JunK18E/8cFnQDHm4OKlClQUVY
	KbLmjtiAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPGtF-0005Kw-Di; Sat, 11 May 2019 01:33:29 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPGtA-0005Jy-S8
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 01:33:26 +0000
Received: from localhost.localdomain (unknown [131.107.160.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id B0EE92074A30;
 Fri, 10 May 2019 18:33:20 -0700 (PDT)
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190510212937.11661-1-keith.busch@intel.com>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <61585196-0e16-87f7-3c58-3d11425758d8@linux.microsoft.com>
Date: Fri, 10 May 2019 18:33:20 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510212937.11661-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_183324_960480_C2555C99 
X-CRM114-Status: GOOD (  29.52  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/10/19 2:29 PM, Keith Busch wrote:
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

In general I prefer fewer knobs; but for a new setting it seems
advisable not to presume that one value is appropriate for everyone (as
long as they can't set an invalid value or otherwise hose things).


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
> +{
> +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_power);
> +
> +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
> +{
> +	struct nvme_command c;
> +	union nvme_result res;
> +	int ret;
> +
> +	if (!result)
> +		return -EINVAL;

As this is only called from one place, is this check really needed?


> +
> +	memset(&c, 0, sizeof(c));
> +	c.features.opcode = nvme_admin_get_features;
> +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
> +
> +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
> +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
> +	if (ret >= 0)
> +		*result = le32_to_cpu(res.u32);
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
> +	ret = nvme_get_power(&dev->ctrl, &dev->last_ps);

Should we validate (range check) the value reported by the device?


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
