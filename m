Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE23A1FE2F
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eu2l/W5llyV/4StmyM0FtzB12pfQp4T98T3YiDuxSgM=; b=BfrB3aHJug6JS5
	RJZCPLlmV4RSjTTLUyrc6axPKHyM3fDz5z9zVJGuEi1rrb47Gk0ZW81zMpARCbFLD92f8T5jd0/W8
	Ed0Z677V/FVnxYkHhjEq+equ+ASgH2j7ji5LXHRGN9KuT7cv7lvkiwYxgxNbrQJiGiwMaSJRfpP7G
	EMV2NZgn+e+qn9dNVzvZMYMAuqPk0/Du++vXA04uXD1ylRnNT+ncnQ65fr/2zD+aUckIjrP5T7rV1
	gpgyY9kkkGeY5Yr5vIG3gkXIdGNpBWRrfTz0Xe7XZyuRc4wTimDF6F+3ZxV7DcgbTeLkt1ky6iRdd
	k1HUlp/s9d+otahbWBew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR79v-0003Dy-1K; Thu, 16 May 2019 03:34:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR79q-0003Dc-Nw
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:34:16 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1EEEDC057F2F;
 Thu, 16 May 2019 03:34:14 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A3A2960126;
 Thu, 16 May 2019 03:34:08 +0000 (UTC)
Date: Thu, 16 May 2019 11:34:00 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCH 4/6] nvme-pci: Sync queues on reset
Message-ID: <20190516033358.GD16342@ming.t460p>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-4-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-4-keith.busch@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 16 May 2019 03:34:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_203414_800603_F0803D4C 
X-CRM114-Status: GOOD (  18.68  )
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

On Wed, May 15, 2019 at 10:36:23AM -0600, Keith Busch wrote:
> A controller with multiple namespaces may have multiple request_queues
> with their own timeout work. If a live controller fails with IO
> outstanding to diffent namespaces, each request queue may attempt to
> disable and reset the controller in different threads. Synchronize each
> queue prior to starting the controller to ensure there no previously
> scheduled timeout work is running.
> 
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>  drivers/nvme/host/core.c | 12 ++++++++++++
>  drivers/nvme/host/nvme.h |  1 +
>  drivers/nvme/host/pci.c  |  1 +
>  3 files changed, 14 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index d7de0642c832..a116ea037f83 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3880,6 +3880,18 @@ void nvme_start_queues(struct nvme_ctrl *ctrl)
>  }
>  EXPORT_SYMBOL_GPL(nvme_start_queues);
>  
> +
> +void nvme_sync_queues(struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_ns *ns;
> +
> +	down_read(&ctrl->namespaces_rwsem);
> +	list_for_each_entry(ns, &ctrl->namespaces, list)
> +		blk_sync_queue(ns->queue);
> +	up_read(&ctrl->namespaces_rwsem);
> +}
> +EXPORT_SYMBOL_GPL(nvme_sync_queues);
> +
>  /*
>   * Check we didn't inadvertently grow the command structure sizes:
>   */
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 5ee75b5ff83f..55553d293a98 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -441,6 +441,7 @@ void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
>  void nvme_stop_queues(struct nvme_ctrl *ctrl);
>  void nvme_start_queues(struct nvme_ctrl *ctrl);
>  void nvme_kill_queues(struct nvme_ctrl *ctrl);
> +void nvme_sync_queues(struct nvme_ctrl *ctrl);
>  void nvme_unfreeze(struct nvme_ctrl *ctrl);
>  void nvme_wait_freeze(struct nvme_ctrl *ctrl);
>  void nvme_wait_freeze_timeout(struct nvme_ctrl *ctrl, long timeout);
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 8df176ffcbc1..599065ed6a32 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2492,6 +2492,7 @@ static void nvme_reset_work(struct work_struct *work)
>  	 */
>  	if (dev->ctrl.ctrl_config & NVME_CC_ENABLE)
>  		nvme_dev_disable(dev, false);
> +	nvme_sync_queues(&dev->ctrl);

Looks fine:

Reviewed-by: Ming Lei <ming.lei@redhat.com>

Thanks, 
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
