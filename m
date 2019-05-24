Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8976129AB8
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 17:14:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8FqH/bun4lCvNtT6Jov9YRPxagLQaHogRp74YtEcYI=; b=IZ2xkiFsSSyvGJ
	OdbCOtlbSwu2/Xqr+WWn6x75bM2WtgAdW2bQbggiLJ4GTvgKeROi1TVkKOTRLpPuTeNcNXZD92DvP
	KaR8RROCzyfcKmKZzU7/n7uDJ8FbU4/x00bL90ZnwJqjPMBeZmiu/VxCQQJAr8W0OgImZO5Scsnjj
	rerQ+d7A9nqtP8W10hekww64QbLD1THwaWfOnb0V+Mgq7fr9DiMAPm5pmoM6XU0tNTKU/lqdcvwbF
	AhEiLVnXs8osqiCwLylkSDi4X85oDPv9Spn71ek0Yt3CFqk/SSJWxDGa5SPdMoo6QlqwBSc66qoXL
	4ni3YKMHlslrxGm6UGkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUBti-0007EZ-Fs; Fri, 24 May 2019 15:14:18 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUBtd-0007E9-Bp
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 15:14:15 +0000
Received: from pps.filterd (m0170397.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4OEshjj025364
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 11:14:10 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=GenApOmOo+6fXoTZaR7Rl/W5N/3LtcFAQyNuvJKSu0A=;
 b=CyVaE7nKgxyaD2c79FetsWo4sK07Boh6ZJHCfSCUd5+2ht6GrjvkI5hV9Jxoc/FDN9Ci
 avcXkKxzPx7aFBXqQs74yiq5pgTM5puyso709nmnotDos/hE21tBbMSpl7sWqWIRrGMN
 bK9viUDQv1ZNuUrU8c2ox38mJGdDI9wSZ/2ns1O4hfDoXKXcvnk9s4iRQ3OiaCeVyAMa
 jKCEzWJLGKd4JQTU+bJC1PHMMEYbLmKSz/PQeDhxOKukTg3/afCb3eWyFYGvP+4OtcDJ
 dTlmcukI0QVj85Ea4dYd0wkUgy3xHFIVKw7Ns1ZZhvKJRmT+w3jxusXe2eBiVFDXra5N 4w== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0b-00154904.pphosted.com with ESMTP id 2sp10run2m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 11:14:09 -0400
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4OEr4M1145120
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 11:14:09 -0400
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
 [143.166.148.206])
 by mx0b-00154901.pphosted.com with ESMTP id 2sphkt9ju6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 24 May 2019 11:14:09 -0400
X-LoopCount0: from 10.166.132.133
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="1299383803"
From: <Mario.Limonciello@dell.com>
To: <kai.heng.feng@canonical.com>, <keith.busch@intel.com>
Subject: RE: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
Thread-Topic: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
Thread-Index: AQHVEXzEFehzjqIUBUKkWH8pQOOqmaZ6F8wAgABJt7A=
Date: Fri, 24 May 2019 15:14:07 +0000
Message-ID: <7df0e71e512c46ccb2f1274768710fbf@AUSX13MPC105.AMER.DELL.COM>
References: <20190523152735.15052-1-keith.busch@intel.com>
 <20190523152735.15052-2-keith.busch@intel.com>
 <966745B5-CA0F-486D-B784-0018302F6DE9@canonical.com>
In-Reply-To: <966745B5-CA0F-486D-B784-0018302F6DE9@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-24_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905240100
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905240100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_081413_571566_D57D784B 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: rafael@kernel.org, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Sent: Friday, May 24, 2019 12:43 AM
> To: Keith Busch
> Cc: Christoph Hellwig; Sagi Grimberg; linux-nvme@lists.infradead.org; Rafael
> Wysocki; Limonciello, Mario
> Subject: Re: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
> 
> 
> [EXTERNAL EMAIL]
> 
> at 23:27, Keith Busch <keith.busch@intel.com> wrote:
> 
> > The nvme pci driver prepares its devices for power loss during suspend
> > by shutting down the controllers. The power setting is deferred to
> > pci driver's power management before the platform removes power. The
> > suspend-to-idle mode, however, does not remove power.
> >
> > NVMe devices that implement host managed power settings can achieve
> > lower power and better transition latencies than using generic PCI power
> > settings. Try to use this feature if the platform is not involved with
> > the suspend. If successful, restore the previous power state on resume.
> >
> > Cc: Mario Limonciello <Mario.Limonciello@dell.com>
> > Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
> > Signed-off-by: Keith Busch <keith.busch@intel.com>
> 
> Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

Thanks, I tested with a Hynix SSD in an XPS 9380 this morning, and see good results.

Tested-by: Mario Limonciello <mario.limonciello@dell.com>

> 
> > ---
> > v2 -> v3:
> >
> >   Removed the HMB handling. We've determined this is not be
> >   necessary in a s2i state.
> >
> >   Splitting PM ops (Rafael)
> >
> >   Incorporated improvements from Christoph
> >
> >  drivers/nvme/host/pci.c | 96
> +++++++++++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 93 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 599065ed6a32..47da55abb56b 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -18,6 +18,7 @@
> >  #include <linux/mutex.h>
> >  #include <linux/once.h>
> >  #include <linux/pci.h>
> > +#include <linux/suspend.h>
> >  #include <linux/t10-pi.h>
> >  #include <linux/types.h>
> >  #include <linux/io-64-nonatomic-lo-hi.h>
> > @@ -116,6 +117,7 @@ struct nvme_dev {
> >  	u32 cmbsz;
> >  	u32 cmbloc;
> >  	struct nvme_ctrl ctrl;
> > +	u32 last_ps;
> >
> >  	mempool_t *iod_mempool;
> >
> > @@ -2829,16 +2831,94 @@ static void nvme_remove(struct pci_dev *pdev)
> >  }
> >
> >  #ifdef CONFIG_PM_SLEEP
> > +static int nvme_get_power_state(struct nvme_ctrl *ctrl, u32 *ps)
> > +{
> > +	return nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0,
> ps);
> > +}
> > +
> > +static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
> > +{
> > +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0,
> NULL);
> > +}
> > +
> > +static int nvme_resume(struct device *dev)
> > +{
> > +	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> > +	struct nvme_ctrl *ctrl = &ndev->ctrl;
> > +
> > +	if (pm_resume_via_firmware() || !ctrl->npss ||
> > +	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> > +		nvme_reset_ctrl(ctrl);
> > +	return 0;
> > +}
> > +
> >  static int nvme_suspend(struct device *dev)
> >  {
> >  	struct pci_dev *pdev = to_pci_dev(dev);
> >  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> > +	struct nvme_ctrl *ctrl = &ndev->ctrl;
> > +	int ret = -EBUSY;
> > +
> > +	/*
> > +	 * The platform does not remove power for a kernel managed suspend so
> > +	 * use host managed nvme power settings for lowest idle power if
> > +	 * possible. This should have quicker resume latency than a full device
> > +	 * shutdown.  But if the firmware is involved after the suspend or the
> > +	 * device does not support any non-default power states, shut down the
> > +	 * device fully.
> > +	 */
> > +	if (pm_suspend_via_firmware() || !ctrl->npss) {
> > +		nvme_dev_disable(ndev, true);
> > +		return 0;
> > +	}
> > +
> > +	nvme_start_freeze(ctrl);
> > +	nvme_wait_freeze(ctrl);
> > +	nvme_sync_queues(ctrl);
> > +
> > +	if (ctrl->state != NVME_CTRL_LIVE &&
> > +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
> > +		goto unfreeze;
> > +
> > +	ndev->last_ps = 0;
> > +	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> > +	if (ret < 0)
> > +		goto unfreeze;
> > +
> > +	ret = nvme_set_power_state(ctrl, ctrl->npss);
> > +	if (ret < 0)
> > +		goto unfreeze;
> > +
> > +	if (ret) {
> > +		/*
> > +		 * Clearing npss forces a controller reset on resume. The
> > +		 * correct value will be resdicovered then.
> > +		 */
> > +		nvme_dev_disable(ndev, true);
> > +		ctrl->npss = 0;
> > +		ret = 0;
> > +		goto unfreeze;
> > +	}
> > +	/*
> > +	 * A saved state prevents pci pm from generically controlling the
> > +	 * device's power. If we're using protocol specific settings, we don't
> > +	 * want pci interfering.
> > +	 */
> > +	pci_save_state(pdev);
> > +unfreeze:
> > +	nvme_unfreeze(ctrl);
> > +	return ret;
> > +}
> > +
> > +static int nvme_simple_suspend(struct device *dev)
> > +{
> > +	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> >
> >  	nvme_dev_disable(ndev, true);
> >  	return 0;
> >  }
> >
> > -static int nvme_resume(struct device *dev)
> > +static int nvme_simple_resume(struct device *dev)
> >  {
> >  	struct pci_dev *pdev = to_pci_dev(dev);
> >  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> > @@ -2846,9 +2926,19 @@ static int nvme_resume(struct device *dev)
> >  	nvme_reset_ctrl(&ndev->ctrl);
> >  	return 0;
> >  }
> > -#endif
> >
> > -static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend,
> nvme_resume);
> > +const struct dev_pm_ops nvme_dev_pm_ops = {
> > +	.suspend	= nvme_suspend,
> > +	.resume		= nvme_resume,
> > +	.freeze		= nvme_simple_suspend,
> > +	.thaw		= nvme_simple_resume,
> > +	.poweroff	= nvme_simple_suspend,
> > +	.restore	= nvme_simple_resume,
> > +};
> > +
> > +#else
> > +#define nvme_dev_pm_ops		NULL
> > +#endif
> >
> >  static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
> >  						pci_channel_state_t state)
> > --
> > 2.14.4
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
