Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B117F209A6
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKDd9VRJ1vzSg3TXlPTqQRVTjjUiSL7YQywAoIns3BM=; b=STRJA+NugSEW7n
	etJh3veXoe3G7B9bwxb+xmjEoe+zCTJvDsgyJR/4bpxR9pvRTGp2xRUDWzkx4apXu5OeOhRTTKlgQ
	spdl86CeZF2Dz338JPXlbaQkJu1s0xdKB7WkFaNkyUvbhQN2t12F47ZqywhRVWZxsvltyS+6Mgcr5
	YILQkSwWvFr0cOlosn72kbhFzeAZVmtcbhulwCQ75jQGXHXkgPvGM0yi/MwpxTbCTM7bkcr46M7u7
	tWxMXJrOrgbam/3a/857CLZCgpJf+rGTG7P1drUICll71LnJB/IkCoL+Pj9o0XnImuJL8OrMfFt3R
	gpXinNigytKIDomW459Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHO7-0001Er-17; Thu, 16 May 2019 14:29:39 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHNx-00017U-G9
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:29:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:29:28 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 16 May 2019 07:29:27 -0700
Date: Thu, 16 May 2019 08:24:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190516142411.GC23333@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <20190516062528.GA29930@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516062528.GA29930@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_072929_978439_36BD2580 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Rafael Wysocki <rafael@kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 11:25:28PM -0700, Christoph Hellwig wrote:
> >  
> >  #ifdef CONFIG_PM_SLEEP
> > +static int nvme_deep_state(struct nvme_dev *dev)
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> > +	struct nvme_ctrl *ctrl = &dev->ctrl;
> > +	int ret = -EBUSY;;
> > +
> > +	nvme_start_freeze(ctrl);
> > +	nvme_wait_freeze(ctrl);
> > +	nvme_sync_queues(ctrl);
> > +
> > +	if (ctrl->state != NVME_CTRL_LIVE &&
> > +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
> > +		goto unfreeze;
> > +
> > +	if (dev->host_mem_descs) {
> > +		ret = nvme_set_host_mem(dev, 0);
> > +		if (ret < 0)
> > +			goto unfreeze;
> > +	}
> 
> I've still not heard an explanation of anyone why we need to disable
> the HMB here. Even if there are states where we have to disable it
> we need to restrict it to just those system power states where we have
> to, as reclaiming and recreating the HMB is very costly for the device.

We're not really reclaiming the HMB here. We're just telling the
controller to stop using it for a moment, and we return it back to the
device in the same condition it left it via NVME_HOST_MEM_RETURN. That
should minimize bringup latency.

But also I don't think we should have to do this, or would at least like
to see something more authoritative explaining which device or platform
power states require disabling HMB.

> > +	if (ret) {
> > +		/*
> > +		 * Clearing npss forces a controller reset on resume. The
> > +		 * correct value will be resdicovered then.
> > +		 */
> > +		ctrl->npss = 0;
> > +		nvme_dev_disable(dev, true);
> 
> Can't we just reuse the nvme_dev_disable call in the caller?

We could, but it looks less pleasent for the caller since needs to handle
three return possibilities: success, disable, and abort suspend.


> > +	if (dev->host_mem_descs) {
> > +		ret = nvme_setup_host_mem(dev);
> > +		if (ret)
> > +			goto reset;
> > +	}
> 
> This call could/should set the Memory Return bit in the Set Features
> call to enable the HMB.

Yep.
 
> >  static int nvme_suspend(struct device *dev)
> >  {
> >  	struct pci_dev *pdev = to_pci_dev(dev);
> >  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> >  
> > +	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
> > +		return nvme_deep_state(ndev);
> 
> And this still needs a comment why we try to just meddle with the
> power state and queues instead of turning the device off only if
> not suspended via firmware.

Sure thing.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
