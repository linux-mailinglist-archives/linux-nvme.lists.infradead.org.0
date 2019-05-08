Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09031806B
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5yW7srgnFXNxJko72uS4blVBE1dW3sfHGRA+Ur1AQQ=; b=KmmhSWWxT6UG+6
	QFjgETLAzJTfrU7dy4tEtxO9tdP3Mt7xPBUERaxCcmB3xxyr2Y2GAGsoCXUTB4KOmzQaSgRLWhaQM
	FYWPubVTZmREv/GTWP6JjboiCDCMKh+h7UNxhAaJuHmEF5FHDogM/iYxu7L7S2+niOYraCCJBnjDM
	P8wc77+P0J0QkoNE5wWGWsg0M3WUTyUoH/u2xkdgtZ9L7A/ocACpDQ7wH8NAxIBWtATGDSloGYBXp
	zFkioxQYjG7Dijcv0dS3n6wSGSw2tXaEEjo14C2F8dTSOLfjMi6F+KJO8H27GFlo5aWHO1kZrWvLc
	kdr08GLh8xUfZPzpAXIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOS8g-0004KJ-EX; Wed, 08 May 2019 19:22:02 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOS8b-0004Jw-Rh
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:21:59 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 12:21:57 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2019 12:21:57 -0700
Date: Wed, 8 May 2019 13:16:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190508191624.GA8365@localhost.localdomain>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508185955.11406-1-kai.heng.feng@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_122157_943338_20870690 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: axboe@fb.com, sagi@grimberg.me,
 Mario Limonciello <mario.limonciello@dell.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 02:59:55AM +0800, Kai-Heng Feng wrote:
> +static int nvme_do_resume_from_idle(struct pci_dev *pdev)
> +{
> +	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +	int result;
> +
> +	pdev->dev_flags &= ~PCI_DEV_FLAGS_NO_D3;
> +	ndev->ctrl.suspend_to_idle = false;
> +
> +	result = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
> +	if (result < 0)
> +		goto out;
> +
> +	result = nvme_pci_configure_admin_queue(ndev);
> +	if (result)
> +		goto out;
> +
> +	result = nvme_alloc_admin_tags(ndev);
> +	if (result)
> +		goto out;
> +
> +	ndev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
> +	ndev->ctrl.max_segments = NVME_MAX_SEGS;
> +	mutex_unlock(&ndev->shutdown_lock);

This lock was never locked.

But I think these special suspend/resume routines are too similar to the
existing ones, they should just incorporate this feature if we need to
do this.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
