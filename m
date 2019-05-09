Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258C7194C1
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 23:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdqQskVtZDKw2p6kZRqRHaEB+cSI28b2yJs7XR4oKus=; b=dJSkEzjtaKmia5
	aw3AbN23TmnNNarBpweKOkbUXu3JC9VEmqHGAgc+scv9PF3Gb0C0pDCqaNB3StnYMTsvpPE12f770
	bD2kHPhkbaNNW7trimuNSBCJJTMM9wsperggfvohdgma/dWFsvFyT+/GkHLMM3CVUfn5srt0aTeEw
	4N6J9gLlhwcVyPZ7BsQerfjS6J5rNeY9+joD3T6a55lpuOj6LZdwE+fm155ltxxc9U4mI3HmL3bhk
	a49wBmrtCC61jN/+qTc7TVy4CimaghHve11hboQDOm0MskkgufJ1MYfPkxNkXFsnPUh9QhEIooo78
	o9MafHmpxnUu1jxRT+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqjx-0008C1-R7; Thu, 09 May 2019 21:38:09 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqjs-0008B2-Kl
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 21:38:06 +0000
Received: from pps.filterd (m0170398.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x49LZSXV002778
 for <linux-nvme@lists.infradead.org>; Thu, 9 May 2019 17:38:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=5ng9ARN0oDz4cGb6TWH/O58xZPqWYya7FvGZEm/HGDg=;
 b=ZRZg3gZhizm+XWRYWxk3ZwE3Dut+aOtP05YRomxHWQBQVel+fRZblSEEsjNhBMECUHx5
 AWtaRbzQ8siYTtl47RVDiqn/hnU+s/nTxKK0c0l2nVSfPxbhN97wpFHbPXHqwZu4rQeC
 mLAFAG55Rs4SFwT7Cvac91yoSpAGhy4OmEFnxAyt4GpdhwzbOz/UPsahN9UDJwRGFPNu
 QT6isY2oQoOH4Y4bVu2zER28Bq2BO5H+HRV5rO35KLjlyn4E47ph9c2cKNZGqsRJSKrz
 wfpeWaPZUUmlugP0gtywCpQP+XpTTiEamJymVcpZS+NDFzF+GobSoyAp179NT239cvMb fg== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2scanmuqfs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 17:38:01 -0400
Received: from pps.filterd (m0144102.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x49Lbi3v193756
 for <linux-nvme@lists.infradead.org>; Thu, 9 May 2019 17:38:01 -0400
Received: from ausxipps310.us.dell.com (AUSXIPPS310.us.dell.com
 [143.166.148.211])
 by mx0b-00154901.pphosted.com with ESMTP id 2scuga0pm3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 17:38:01 -0400
X-LoopCount0: from 10.166.132.132
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="354717234"
From: <Mario.Limonciello@dell.com>
To: <kbusch@kernel.org>
Subject: RE: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Topic: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Thread-Index: AQHVBdBS/xizqbOjGUOY5SKUREVH6KZh7T4AgAAD4gD//6zksIAAWSuA//+yBvCAAPthgIAACiqAgAAmlACAAAnmAIAAA8eAgAAJFgCAAADiAIAAGKaA///lboAAEvm1AAAGPtNA
Date: Thu, 9 May 2019 21:37:58 +0000
Message-ID: <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
References: <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
In-Reply-To: <20190509192807.GB9675@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905090122
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905090122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_143804_852359_47A84FA0 
X-CRM114-Status: GOOD (  21.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [148.163.137.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 linux-pm@vger.kernel.org, rafael@kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kai.heng.feng@canonical.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> On Thu, May 09, 2019 at 06:57:34PM +0000, Mario.Limonciello@dell.com wrote:
> > No, current Windows versions don't transition to D3 with inbox NVME driver.
> > You're correct, it's explicit state transitions even if APST was enabled
> > (as this patch is currently doing as well).
> 
> The proposed patch does too much, and your resume latency will be worse
> off for doing an unnecessary controller reset.
> 
> The following should be all that's needed if the device is spec
> compliant. The resume part isn't necessary if npss is non-operational, but
> we're not saving that info, and it shouldn't hurt to be explicit anyway.
> 
> I don't have any PS capable devices, so this is just compile tested.
> 
> ---
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 6265d9225ec8..ce8b9bc949b9 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1132,6 +1132,22 @@ static int nvme_set_features(struct nvme_ctrl *dev,
> unsigned fid, unsigned dword
>  	return ret;
>  }
> 
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss)
> +{
> +	int ret;
> +
> +	mutex_lock(&ctrl->scan_lock);
> +	nvme_start_freeze(ctrl);
> +	nvme_wait_freeze(ctrl);
> +	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, npss, NULL, 0,
> +				NULL);
> +	nvme_unfreeze(ctrl);
> +	mutex_unlock(&ctrl->scan_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_power);

I believe without memory barriers at the end disks with HMB this will
still kernel panic (Such as Toshiba BG3).

This still allows D3 which we found at least failed to go into deepest state and blocked
platform s0ix for the following SSDs (maybe others):
Hynix PC601
LiteOn CL1

> +
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>  {
>  	u32 q_count = (*count - 1) | ((*count - 1) << 16);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 527d64545023..f2be6aad9804 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -459,6 +459,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q,
> struct nvme_command *cmd,
>  		unsigned timeout, int qid, int at_head,
>  		blk_mq_req_flags_t flags, bool poll);
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss);
>  void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
>  int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
>  int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index a90cf5d63aac..2c4154cb4e79 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -18,6 +18,7 @@
>  #include <linux/mutex.h>
>  #include <linux/once.h>
>  #include <linux/pci.h>
> +#include <linux/suspend.h>
>  #include <linux/t10-pi.h>
>  #include <linux/types.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> @@ -2851,6 +2852,8 @@ static int nvme_suspend(struct device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> 
> +	if (!pm_suspend_via_firmware())
> +		return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
>  	nvme_dev_disable(ndev, true);
>  	return 0;
>  }
> @@ -2860,6 +2863,8 @@ static int nvme_resume(struct device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> 
> +	if (!pm_suspend_via_firmware())
> +		return nvme_set_power(&ndev->ctrl, 0);
>  	nvme_reset_ctrl(&ndev->ctrl);
>  	return 0;
>  }
> --

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
