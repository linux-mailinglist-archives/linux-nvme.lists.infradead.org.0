Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83373B57AB
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Sep 2019 23:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2EYXtnsqGqRL6IUFrCfIf0sOurw/hI/UGxy83Mv9Jw=; b=DIooDZNW/dLDfN
	o8NqRHzNQ3yawFO12b4uN+Vh3O0czbI21s56aMlnek3YTYxlE/NoAhlwMn4mc99Kh1fvhmSafpE4F
	/uCuqiFKE7bOgfENeEGRqc5f+xqNnQ5cAO3R5NwWEE5XOFKo7/ApqX0YeMt100MXf5KGiLe57WG4a
	kHOjiSire3GLVoPlehi5CDj37GWasmV3mg7NUpePTyJtblGcaylnroLost78QejbFfbQnZhaQVSIW
	cWp7z0Xrg8H3UglEbUk0I1Nw2iLxKcSgLVDWgQrTQxGqekqt2T5C4X4YvNuapLcAyYFe7E8Qv/Yxq
	3fja/8tiFfhEmrpIgfPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAL8n-0007F1-9e; Tue, 17 Sep 2019 21:36:05 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAL8d-0007EI-L8
 for linux-nvme@lists.infradead.org; Tue, 17 Sep 2019 21:35:57 +0000
Received: from 79.184.255.25.ipv4.supernova.orange.pl (79.184.255.25) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id 087d2a68ac549b78; Tue, 17 Sep 2019 23:35:48 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: Save PCI state before putting drive into
 deepest state
Date: Tue, 17 Sep 2019 23:35:47 +0200
Message-ID: <10773060.Xg13aEV830@kreacher>
In-Reply-To: <20190917212414.GB39848@C02WT3WMHTD6.wdl.wdc.com>
References: <1568245353-13787-1-git-send-email-mario.limonciello@dell.com>
 <20190917212414.GB39848@C02WT3WMHTD6.wdl.wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_143555_857523_41B2BFC0 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <mario.limonciello@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tuesday, September 17, 2019 11:24:14 PM CEST Keith Busch wrote:
> On Wed, Sep 11, 2019 at 06:42:33PM -0500, Mario Limonciello wrote:
> > The action of saving the PCI state will cause numerous PCI configuration
> > space reads which depending upon the vendor implementation may cause
> > the drive to exit the deepest NVMe state.
> > 
> > In these cases ASPM will typically resolve the PCIe link state and APST
> > may resolve the NVMe power state.  However it has also been observed
> > that this register access after quiesced will cause PC10 failure
> > on some device combinations.
> > 
> > To resolve this, move the PCI state saving to before SetFeatures has been
> > called.  This has been proven to resolve the issue across a 5000 sample
> > test on previously failing disk/system combinations.
> >
> > Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
> > ---
> >  drivers/nvme/host/pci.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 732d5b6..9b3fed4 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -2894,6 +2894,13 @@ static int nvme_suspend(struct device *dev)
> >  	if (ret < 0)
> >  		goto unfreeze;
> >  
> > +	/*
> > +	 * A saved state prevents pci pm from generically controlling the
> > +	 * device's power. If we're using protocol specific settings, we don't
> > +	 * want pci interfering.
> > +	 */
> > +	pci_save_state(pdev);
> > +
> >  	ret = nvme_set_power_state(ctrl, ctrl->npss);
> >  	if (ret < 0)
> >  		goto unfreeze;
> > @@ -2908,12 +2915,6 @@ static int nvme_suspend(struct device *dev)
> >  		ret = 0;
> >  		goto unfreeze;
> >  	}
> > -	/*
> > -	 * A saved state prevents pci pm from generically controlling the
> > -	 * device's power. If we're using protocol specific settings, we don't
> > -	 * want pci interfering.
> > -	 */
> > -	pci_save_state(pdev);
> >  unfreeze:
> >  	nvme_unfreeze(ctrl);
> >  	return ret;
> 
> In the event that something else fails after the point you've saved
> the state, we need to fallback to the behavior for when the driver
> doesn't save the state, right?

Depending on whether or not an error is going to be returned.

When returning an error, it is not necessary to worry about the saved state,
because that will cause the entire system-wide suspend to be aborted.

Otherwise it is sufficient to clear the state_saved flag of the PCI device
before returning 0 to make the PCI layer take over.




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
