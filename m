Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FE81B738
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 15:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHMQ/vRD9tQgAfYceZUiO9MQLgudzg51UChs+hpvaFI=; b=I53+PUpCtyjwLy
	iIKM5dRVPTVpFVgotUPHo7wXMLyxLjU03Xez28SrQ8lW+Z+fVaB8kkMGXftrOjfDGGlZ0SDyhlpNJ
	z9fH3ntCcl+VWzMplQAxG8PYoJu60U5xJ1E//2qbtV+YSFv1eN38FndY4AW+9QZ2sMImoI3W0teLI
	tVEhY2JPzzYALsdUNK0sI63evpEL4fXR8xeSgSHlXFPeazwLdg3b4LhE3/VuLA62EZDJOpCBjhgwW
	yCz+jsavSSKSACb8+aXF5uLBHavxDriyo5todA5FpGn7LnxlMh54N5WfV4UHJw81it/prPy95DYRc
	ReotsJpJHDaojHJWAbKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBD3-0008M5-0X; Mon, 13 May 2019 13:41:41 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBCx-0008HV-B4
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 13:41:36 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:41:33 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 13 May 2019 06:41:33 -0700
Date: Mon, 13 May 2019 07:36:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513133611.GA15318@localhost.localdomain>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <20190511072258.GB14764@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190511072258.GB14764@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_064135_432057_440EEF7B 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-pm <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Mario Limonciello <Mario.Limonciello@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 12:22:58AM -0700, Christoph Hellwig wrote:
> A couple nitpicks, mostly leftover from the previous iteration
> (I didn't see replies to those comments from you, despite seeing
> a reply to my mail, assuming it didn't get lost):

I thought you just meant the freeze/unfreeze sequence. I removed that
part entirely, but yes, I can move all of this from the core. I will
just need to export 'nvme_set_features'
 
> > +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps)
> > +{
> > +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
> > +}
> > +EXPORT_SYMBOL_GPL(nvme_set_power);
> > +
> > +int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
> > +{
> > +	struct nvme_command c;
> > +	union nvme_result res;
> > +	int ret;
> > +
> > +	if (!result)
> > +		return -EINVAL;
> > +
> > +	memset(&c, 0, sizeof(c));
> > +	c.features.opcode = nvme_admin_get_features;
> > +	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
> > +
> > +	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
> > +			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
> > +	if (ret >= 0)
> > +		*result = le32_to_cpu(res.u32);
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(nvme_get_power);
> 
> At this point I'd rather see those in the PCIe driver.  While the
> power state feature is generic in the spec I don't see it actually
> being used anytime anywhere else any time soon.
> 
> But maybe we can add a nvme_get_features helper ala nvme_set_features
> in the core to avoid a little boilerplate code for the future?

Sounds good.
 
> > +	ret = nvme_set_power(&dev->ctrl, dev->ctrl.npss);
> > +	if (ret < 0)
> > +		return ret;
> 
> I can't find any wording in the spec that guarantees the highest
> numerical power state is the deepest.  But maybe I'm just missing
> something as such an ordering would be really helpful?

I actually only noticed APST made this assumption, and I had to search
the spec to see where it calls this out. It is in section 8.4:

  Power states are contiguously numbered starting with zero such that
  each subsequent power state consumes less than or equal to the maximum
  power consumed in the previous state.

> >  static int nvme_suspend(struct device *dev)
> >  {
> >  	struct pci_dev *pdev = to_pci_dev(dev);
> >  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> >  
> > +	/*
> > +	 * Try to use nvme if the device supports host managed power settings
> > +	 * and platform firmware is not involved.
> > +	 */
> 
> This just comments that what, but I think we need a why here as the
> what is fairly obvious..

Sounds good.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
