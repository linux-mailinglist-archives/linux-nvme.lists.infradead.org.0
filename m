Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6E631AB9
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 11:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDRzfFN/PqBUs3jg808XUmYrSMUwfJTh9esx8/LViPI=; b=GoqoCKDuXYFE2J
	CiCnKrDRzmp8a+le5cEYx8dZaRnx4ebnL4fURpG0ttaCqYZQ9KkYynurMDl/3qPEX0uNT3ntI37g+
	Q9Yz/Gaeb67yz8IcAU+VH11aUbBjr2Rxe1MGFkh3joeGIX+PvTO/nglxbwFiiytz/iay3KZtNCNrj
	AvdUJTNQUA4CAg+N3fgHcG5W31OE/P8p+PnO9VxQmDnsLy7tOi7SczP8OQo9bBpeZ3mf6tpel3el8
	3ZRdfq5AyEyy9REXu22cyt2xzyI2M3SHrHz7A94C6dTpzQCTXO09fiiDwqVTNOkg2mR+MSldlsBTz
	kjd2L0BGa6XGubHbHVVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWzzN-0005PM-G4; Sat, 01 Jun 2019 09:07:45 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWzzI-0005P1-Ou
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 09:07:42 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3CEC368AFE; Sat,  1 Jun 2019 11:07:15 +0200 (CEST)
Date: Sat, 1 Jun 2019 11:07:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 1/3] nvme-pci: reset timeout when processing is paused
Message-ID: <20190601090714.GG6453@lst.de>
References: <20190524202036.17265-1-keith.busch@intel.com>
 <20190524202036.17265-2-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524202036.17265-2-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_020740_961043_56C3FDB3 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 02:20:34PM -0600, Keith Busch wrote:
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index f562154551ce..101e20522374 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1263,7 +1263,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  	 * the recovery mechanism will surely fail.
>  	 */
>  	mb();
> -	if (pci_channel_offline(to_pci_dev(dev->dev)))
> +	if (pci_channel_offline(to_pci_dev(dev->dev)) || (csts & NVME_CSTS_PP))

I think we at least need a ratelimited printk when this happens so
people know they don't get timeouts because of CSTS.PP.

And maybe we need a timeout how long we allow the timeouts to extended
due to CSTS.PP, otherwise a buggy device that never clears it would
hold I/O hostage forever.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
