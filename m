Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7682D2BD6
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 15:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgj6BjrJDZOLlhCoSNoIvvW0E2ECqhBEsynYxZjgXz8=; b=SHYs/dG6O15s1j
	hbdW+HWIXbh5HqJQynQGhFgbWRDxeIQH14D2sWOOClcQejS8MCRv/2UezHGn3ON11e6gXJ/IjVG+1
	OL1lB3NJokYa5sOs9Wm+ISAEOSFUdv8XTYd+Ovw+QPbBjUIJ3+0gDriheg91P6WdDcPoqKd3ivMhY
	6gJKjaN/xaID+g0sJyPDvi4K4gO5cYRUZC+IpwK/x2p2KLZMLbqHhDLjRoid10dxbe3sYUH9Nu/PC
	Z+10MjQq7b++C6nuOgeaglP2WK+nlXCEG4mm6AEH0yc6zewlM1b/aSASkbKsAt7lgIGQ1V6ioG0oI
	jKzvHywlvu95aIHf8fJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYvg-00028g-FX; Thu, 10 Oct 2019 13:56:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYvZ-00028J-NH
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 13:56:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7525F68C65; Thu, 10 Oct 2019 15:56:22 +0200 (CEST)
Date: Thu, 10 Oct 2019 15:56:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 6/8] nvme: move common call to nvme_cleanup_cmd to core
 layer
Message-ID: <20191010135622.GE31487@lst.de>
References: <1570714100-15520-1-git-send-email-maxg@mellanox.com>
 <1570714100-15520-7-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570714100-15520-7-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_065625_909765_F4CFAE0B 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: sagi@grimberg.me, israelr@mellanox.com, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 04:28:18PM +0300, Max Gurtovoy wrote:
> nvme_cleanup_cmd should be called for each call to nvme_setup_cmd
> (symmetrical functions). Move the call for nvme_cleanup_cmd to the common
> core layer and call it during nvme_complete_rq for the good flow. For
> error flow, each transport will call nvme_cleanup_cmd independently. Also
> take care of a special case of path failure, where we call
> nvme_complete_rq without doing nvme_setup_cmd.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> ---
>  drivers/nvme/host/core.c   |  4 ++++
>  drivers/nvme/host/fc.c     |  3 +--
>  drivers/nvme/host/pci.c    |  1 -
>  drivers/nvme/host/rdma.c   | 12 +++++-------
>  drivers/nvme/target/loop.c |  1 -
>  5 files changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 2203309..46acdba 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -268,6 +268,10 @@ void nvme_complete_rq(struct request *req)
>  
>  	trace_nvme_complete_rq(req);
>  
> +	/* In case of NVME_SC_HOST_PATH_ERROR we don't call nvme_setup_cmd */
> +	if (likely(nvme_req(req)->status != NVME_SC_HOST_PATH_ERROR))
> +		nvme_cleanup_cmd(req);

Hmm.  I don't really like that special case.  Especially given that
nvme_cleanup_cmd checks for RQF_SPECIAL_PAYLOAD and thus is a no-op if
nvme_setup_cmd wasn't called.  So I'd rather remove this check.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
