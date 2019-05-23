Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A028228CD6
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 00:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2fzwE8ONMYycXkStbGFgHEtXdG+IMyaaBAHg0iobGA=; b=czYIS7c+qoKUrO
	MGv2bqfjAqSCPHEVx5U/ozgHHdmf4XKmXeXCgmkMrANJUXgjdmekX5YptUTMkje3TlD7lTXqnTZST
	FElqmhYB3Yx3ELR6nosi6f96Z8xCWny2ODTHz3RYCRtqndivwKZ+zoWl8UsnrpufgnfpjZ9cOE610
	P4Fi6gEk26Jqvis9J4VXmatjvAvDyAFrn9vDgey+Bv/w0tUyFhREWQkwuheepf/oIou4NPaOBRGsg
	XzHPi5OVJQRi7xkmxKI9rQo0sXohajIZr4I5WpaWrYXpNAG3LpGKDTwNDMkpLfeRgQXZRZC/dXG6p
	+KtmKiJsoXyxEqDRoJaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvoy-0001y4-9q; Thu, 23 May 2019 22:04:20 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvot-0001xb-5Q
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 22:04:16 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 15:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,504,1549958400"; d="scan'208";a="175556260"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 23 May 2019 15:04:13 -0700
Date: Thu, 23 May 2019 15:59:13 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
Message-ID: <20190523215912.GB15192@localhost.localdomain>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
 <20190522192656.GB5486@localhost.localdomain>
 <20190522200918.GC5486@localhost.localdomain>
 <3f191e74-09ed-4356-d467-0ae222018e70@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f191e74-09ed-4356-d467-0ae222018e70@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_150415_251385_DD0E5F60 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:57:22PM -0600, Heitke, Kenneth wrote:
> On 5/22/2019 2:09 PM, Keith Busch wrote:
> > @@ -2782,12 +2783,13 @@ static void nvme_reset_prepare(struct pci_dev *pdev)
> >   {
> >   	struct nvme_dev *dev = pci_get_drvdata(pdev);
> >   	nvme_dev_disable(dev, false);
> > +	nvme_sync_queues(&dev->ctrl);
> >   }
> >   static void nvme_reset_done(struct pci_dev *pdev)
> >   {
> >   	struct nvme_dev *dev = pci_get_drvdata(pdev);
> > -	nvme_reset_ctrl_sync(&dev->ctrl);
> > +	nvme_reset_ctrl(&dev->ctrl);
> >   }
> >   static void nvme_shutdown(struct pci_dev *pdev)
> > --
> > 
> 
> For my specific case, is the sync_queues and reset_ctrl change needed as
> well?

I shouldn't have included the sync_queue part.

Definitely need the nvme_reset_ctrl change as blk_cfg_access is still
set here so need to reset asynchronously to unblock new timeouts.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
