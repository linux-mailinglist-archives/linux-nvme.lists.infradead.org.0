Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69192D2E72
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:19:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klv6HVACDM8xgZpBsNPyExI9dwWBMjo9GXbqWCYkluY=; b=dos1Ne9+KAjHyW
	0ueKUfkqtFVbWaDfjVlyDPONnoH0dMZAEEY0d7PmZ4ikGpkVLGDgQjRiHWzx+vg+pvwxkdxxSwclg
	6MOAq06TBiX14BTY0JEh5iA7YsZVQczbgVWMxTprjSKrVsHXa7rBT2201LsbL7zfQVqn+EwFTCIIq
	yX8VCxVTbEgQIMahNY2QOdqGLTyfMTOv404m3PQsPjOYq7LhUOEhMXqtdOrof+lL6WW86mwand8hO
	CuorXu7BPkbTwca3xpOY9Uoov/MWqYOz+hWB/WbXWPbmfMfNQQa2gj4QA0Vi7XOjxU2yWGfAMYTWa
	DhjWMpuhNC6GBNxpPIrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIb9W-00081f-Dw; Thu, 10 Oct 2019 16:18:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIb9Q-00081H-Ca
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:18:54 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A33CB68C7B; Thu, 10 Oct 2019 18:18:47 +0200 (CEST)
Date: Thu, 10 Oct 2019 18:18:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 5/5] nvme: Wait for reset state when required
Message-ID: <20191010161847.GA1942@lst.de>
References: <20191010160527.22376-1-kbusch@kernel.org>
 <20191010160527.22376-6-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010160527.22376-6-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_091853_844600_A22729BD 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Edmund Nadolski <edmund.nadolski@intel.com>,
 Judy Brock <judy.brock@samsung.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +int nvme_reset_schedule(struct nvme_ctrl *ctrl)
>  {
>  	if (ctrl->state != NVME_CTRL_RESETTING)
>  		return -EBUSY;
> @@ -133,6 +133,7 @@ static int nvme_reset_schedule(struct nvme_ctrl *ctrl)
>  		return -EBUSY;
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(nvme_reset_schedule);

Oh well, forgot we grow more users later.  The naming of the thing
still puzlles me, though.  Maybe something like nvme_schedule_reset_work
is a little better?  Not that I'm fully happy with that either.

>  static void nvme_reset_done(struct pci_dev *pdev)
>  {
>  	struct nvme_dev *dev = pci_get_drvdata(pdev);
> -	nvme_reset_ctrl_sync(&dev->ctrl);
> +
> +	if (!nvme_reset_schedule(&dev->ctrl))
> +		flush_work(&dev->ctrl.reset_work);

Do we need a comment on the flush?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
