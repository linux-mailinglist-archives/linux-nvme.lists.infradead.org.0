Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E157226F
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 00:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlP8VM53b0j/sCb6pNcdt3Z+TewHZuH4LmNrIjF3tMI=; b=IDAbpyg/FduEgy
	JRJzzL7/6+asBIR5iZ+aI9rWdoe3ehsDfCy0GL4iE1MuSHMp17cQUohk4FFQGYUEVUlla25N8ZMWV
	onRyYeTBki7OU7C80oFFqn/wd6LF6ukndqZHNImEW0rizHYYPPQg1NWa8YSbaIRaWlzzOCyaUQ9VI
	idUS1eBDVE1hoZaViHpXOZatjDAFyqKkxvc0dne5gwgNsOmE0+96fNi5kJmoMWgxnKRKahP1OUKlo
	BvE2DURC3BF2F/0zVqh6OakY3oBPeJ6ZM5DFbOka2o8ilz+awrVBkDYwDe2D8XexVq3Z33ocifEL3
	AoLSsf1T4caHyI0NuOQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq3N6-0007bJ-HY; Tue, 23 Jul 2019 22:35:01 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq3Mo-0007as-CU
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 22:34:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 15:34:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="188933763"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 23 Jul 2019 15:34:41 -0700
Date: Tue, 23 Jul 2019 16:31:45 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
Message-ID: <20190723223144.GE4002@localhost.localdomain>
References: <20190719194256.23618-1-sagi@grimberg.me>
 <20190723204643.GC4002@localhost.localdomain>
 <6e5af7f5-be2a-6cf8-81fc-84ed831cbacd@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e5af7f5-be2a-6cf8-81fc-84ed831cbacd@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_153442_441113_053FF05A 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "lizhongfs@gmail.com" <lizhongfs@gmail.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 03:21:49PM -0700, Sagi Grimberg wrote:
> 
> > I still think we'd prefer not adding that async domain dependency and
> > relying on timeout to unstuck a hot-removal. So how about we schedule
> > the reset work in probe and have the async part just flush the reset
> > and scan work?
> > 
> > ---
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index db160cee42ad..0c2c4b0c6655 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -2695,7 +2695,7 @@ static void nvme_async_probe(void *data, async_cookie_t cookie)
> >   {
> >   	struct nvme_dev *dev = data;
> > -	nvme_reset_ctrl_sync(&dev->ctrl);
> > +	flush_work(&dev->ctrl.reset_work);
> >   	flush_work(&dev->ctrl.scan_work);
> >   	nvme_put_ctrl(&dev->ctrl);
> >   }
> > @@ -2761,6 +2761,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> >   	dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));
> > +	nvme_reset_ctrl(&dev->ctrl);
> >   	nvme_get_ctrl(&dev->ctrl);
> 
> I think you need to get the ref first and then fire the work right?

That ref order doesn't actually matter here. We can't call nvme_remove
during the synchronous part of probe, and the extra ref is just for the
async_schedule callback.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
