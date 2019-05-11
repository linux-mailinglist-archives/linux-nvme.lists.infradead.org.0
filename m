Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E16D1A710
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 09:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCMnnv1WJpgOBFfD0bUrBJelASPrKbnfw6o46m1nAjc=; b=uAec61956BomSo
	yOcoaIS7uiRJeIiWMMFoQA5kOc3eQGzxlPk/77NjN4JBMHrpnmx8/NcFPh96nFvln1hKMRC2w4zkN
	dkoCN5Gp6aiVxxRAiKcIFhEUQgL+U6ijvHt8PirXIj0+gsJndmBCVOVdGjDF2P5bA3SNibPsLp/oi
	CqzA1udRVsuNfUP0K3tfu7x3cUie6ps56nXdePHy5hV5ypOHt5dKMeVd31o0arAx/b8VIjTCUsUUf
	UT2PJUSr/ra0Mgj3CJqEOquI2JlaXhRK3n4otyMvXtBGPRMS23q8G+Tsv1f0xP/2KvL5Nb3wjHFWe
	fPAvrR7MOzdljkKAwoIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPMLu-0002n4-7z; Sat, 11 May 2019 07:23:26 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPMLo-0002mf-CB
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 07:23:21 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 2FA1068AFE; Sat, 11 May 2019 09:22:59 +0200 (CEST)
Date: Sat, 11 May 2019 09:22:58 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190511072258.GB14764@lst.de>
References: <20190510212937.11661-1-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510212937.11661-1-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_002320_576943_902A5199 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
 linux-nvme@lists.infradead.org, Mario Limonciello <Mario.Limonciello@dell.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A couple nitpicks, mostly leftover from the previous iteration
(I didn't see replies to those comments from you, despite seeing
a reply to my mail, assuming it didn't get lost):

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

At this point I'd rather see those in the PCIe driver.  While the
power state feature is generic in the spec I don't see it actually
being used anytime anywhere else any time soon.

But maybe we can add a nvme_get_features helper ala nvme_set_features
in the core to avoid a little boilerplate code for the future?

> +	ret = nvme_set_power(&dev->ctrl, dev->ctrl.npss);
> +	if (ret < 0)
> +		return ret;

I can't find any wording in the spec that guarantees the highest
numerical power state is the deepest.  But maybe I'm just missing
something as such an ordering would be really helpful?

>  static int nvme_suspend(struct device *dev)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
>  
> +	/*
> +	 * Try to use nvme if the device supports host managed power settings
> +	 * and platform firmware is not involved.
> +	 */

This just comments that what, but I think we need a why here as the
what is fairly obvious..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
