Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2CE19813
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 07:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2R+qdkMit68Kg73Xhsf8i761JXyDl9vRijdWI2nLk80=; b=ckVHtGoAsQhqgC
	dw/BAMSB1nfymfb03pDqzbiHrGGc3/iuMlscQN1CBwXb1pxx7UEEm4Z5e1/qJeXUBWoKONDPpqcNz
	FNj6BYSCRhiXekQfngm/sJ3DPC2lJyKbuNzgYP54MGKiRNgbB2vWTtoDFtaSkbwl0G060pFJC99Ez
	JGxhS4WQhdSz4SEmf0LhBlatYJHlhQRBGfvKQsi4L+SNhU1HjgeuH/l8RIIiBUGs65jWpK3sitw0D
	MbMY3LIiD7Em7+ZLORF33g8sr983jDRnlmNBNb34mY72myFyQ3ca+PAeNv1nN28pQfTk5GKhEWiV1
	jYiBkmcdHs4T9yIzljqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOy7r-0008Lf-Jm; Fri, 10 May 2019 05:31:19 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOy7m-0008Kq-8X
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 05:31:16 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 6DF3B68AFE; Fri, 10 May 2019 07:30:52 +0200 (CEST)
Date: Fri, 10 May 2019 07:30:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190510053052.GB3654@lst.de>
References: <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509192807.GB9675@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_223114_460230_FD363AD4 
X-CRM114-Status: GOOD (  14.65  )
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 rafael@kernel.org, linux-pm@vger.kernel.org, Mario.Limonciello@dell.com,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, axboe@fb.com,
 kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

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

I think we should have this in the PCIe driver, givn that while in
theory power states are generic in practice they are only applicable
to PCIe.  To be revisited if history proves me wrong.

Also I don't see any reason why we'd need to do the freeze game on
resume.  Even on suspend it looks a little odd to me, as in theory
the PM core should have already put the system into a quiescent state.
But maybe we actually need it there, in which case a comment would
be helpful.

> +	if (!pm_suspend_via_firmware())

pm_suspend_via_firmware is a weird name and has absolutely zero
documentation.  So I think we really need a big fat comment with the
wisdom from this thread here.

> +		return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);

I think we need to skip this code path is NPSS is zero, as that
indicates that the device doesn't actually do power states and fall
back to the full teardown.

Also I can't find anything except for this odd sentences in the spec:

  "Hosts that do not dynamically manage power should set the power
  state to the lowest numbered state that satisfies the PCI Express
  slot power limit control value.

that requires the power states to be ordered in any particular way.
So we probably have to read through the table at probing time and find
the lowest power state there.

Rafael also brought up the issue of not entering D3, and the somewhat
non-intuitive to me solution for it, so I'm not commenting on that
except for asking on a comment on that save_state call.

> +     if (!pm_suspend_via_firmware())
> +             return nvme_set_power(&ndev->ctrl, 0);

Don't we need to save the previous power state here and restore that?
For example if someone set a specific state through nvme-cli?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
