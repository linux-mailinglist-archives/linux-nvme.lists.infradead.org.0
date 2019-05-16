Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99EF1FDF4
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8jzJ+dM/f89cUdu/4y5HnxactUCt+e+LLhidip+Xvc=; b=F1XFzueKoalzi7
	UEsurppeNuqi4iVi8O6nRXElTY0UXcpuLNUNirc9j7G03/iNLiPaGEyXYjFogVOZGKnxTK8hfJQ57
	kkFd12A6ni/Akojle1mJjhoG/CXo7WQXSjllPZYU5Oany/PxbH6biOvA2UePM7wGRPlqqQAZ2QELB
	QouuvqsLeF497g2OPIcd/WXUlPxX5POBgPxSwmZmdU50YhEmCQmXULclXz84M/gRY95OBRxjH6vRl
	hiUrHDUK4mto1RHgEjXaQ9F+u5ouF6WReGmmd7Sty4OKKrKQp5nrxNufcWstSGusjtp9XZ4Cb3DYe
	kwGAIWWP4iQhw2ntLCKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6qF-0001ac-Ul; Thu, 16 May 2019 03:13:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6qB-0001Zs-Id
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:13:56 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 39F23368E6;
 Thu, 16 May 2019 03:13:55 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 061E660BE5;
 Thu, 16 May 2019 03:13:42 +0000 (UTC)
Date: Thu, 16 May 2019 11:13:35 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 3/6] nvme-pci: Unblock reset_work on IO failure
Message-ID: <20190516031333.GC16342@ming.t460p>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-3-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-3-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Thu, 16 May 2019 03:13:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_201355_637373_BD010E62 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 10:36:22AM -0600, Keith Busch wrote:
> The reset_work waits in the connecting state for previously queued IO to
> complete before setting the controller to live. If these requests time
> out, we won't be able to restart the controller because the reset_work
> is already running, and any requeued IOs will block reset_work forever.
> 
> When connecting, shutdown the controller to flush all entered requests
> to a failed completion if a timeout occurs, and ensure the controller
> can't transition to the live state after we've unblocked it. The driver
> will instead unbind from the controller if we can't complete IO during
> initialization.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/pci.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index c72755311ffa..8df176ffcbc1 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1257,7 +1257,6 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  	struct nvme_dev *dev = nvmeq->dev;
>  	struct request *abort_req;
>  	struct nvme_command cmd;
> -	bool shutdown = false;
>  	u32 csts = readl(dev->bar + NVME_REG_CSTS);
>  
>  	/* If PCI error recovery process is happening, we cannot reset or
> @@ -1294,14 +1293,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
>  	 * shutdown, so we return BLK_EH_DONE.
>  	 */
>  	switch (dev->ctrl.state) {
> -	case NVME_CTRL_DELETING:
> -		shutdown = true;
> -		/* fall through */
>  	case NVME_CTRL_CONNECTING:
> +		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
> +		/* fall through */
> +	case NVME_CTRL_DELETING:
>  		dev_warn_ratelimited(dev->ctrl.device,
>  			 "I/O %d QID %d timeout, disable controller\n",
>  			 req->tag, nvmeq->qid);
> -		nvme_dev_disable(dev, shutdown);
> +		nvme_dev_disable(dev, true);
>  		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
>  		return BLK_EH_DONE;
>  	case NVME_CTRL_RESETTING:

Then the controller is dead, and can't work any more together with data
loss. I guess this way is too violent from user view.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
