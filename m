Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3431E164894
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 16:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eSZQO/sxVKI/L/vgLi6Pd6WPm9thMIxgU4UwXhXFYf8=; b=Hqf+4a0rZ5a0uf
	q8CzDbm2SpRVTLjA2o/R55wZDU9+iLIbLDiKYD3d4QKe9B70PlU8luKl47L6JwOT84GkQkchcc9CD
	OFq+8j3yfFTmUGnVTYfh3urkyGE4h4Er3l1BpKYT0TbTDdWaFpi+TMVUXV/EBeVZG5SJt6U3fi3DJ
	pZ4DYgBO3gGoY2IP1X3EAgi7yIPv6VNnZ8KsPPMNxRopt7rjAuxb4BXAOk3JHRbliYjimdrTsOz9H
	ea4LI6ZNIyeSPmPg71nSkLmAXt0KznGx91DgwvaZDuoqHd5fRieb1LB858roO5Y3Rnj8HG5c0EycS
	zUYMm+kGb3QIHRNrLufg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RHW-0001M2-AE; Wed, 19 Feb 2020 15:28:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j4RHN-0001LX-Tp; Wed, 19 Feb 2020 15:28:49 +0000
Date: Wed, 19 Feb 2020 07:28:49 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Victor Gladkov <Victor.Gladkov@kioxia.com>
Subject: Re: [PATCH v3] nvme-fabrics: reject I/O to offline device
Message-ID: <20200219152849.GB13942@infradead.org>
References: <2d77d20698b14aa6ae261a71d239c50b@kioxia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d77d20698b14aa6ae261a71d239c50b@kioxia.com>
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Mike Snitzer <snitzer@redhat.com>,
 James Smart <james.smart@broadcom.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@infradead.org>, Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 03:49:48PM +0000, Victor Gladkov wrote:
> Commands get stuck while Host NVMe controller (TCP or RDMA) is in reconnect state. NVMe controller enters into reconnect state when it loses connection with the target. It tries to reconnect every 10 seconds (default) until successful reconnection or until reconnect time-out is reached. The default reconnect time out is 10 minutes.

Please break your lines after 73 character.  As-is your commit log
is pretty much unreadabe.

> 
> 1. Add a new session parameter called "fast_fail_tmo". The timeout is measured in seconds from the controller reconnect, any command beyond that timeout is rejected. 

The SCSI transport classes use fast_io_fail_tmo for this sort of
functionality.  Can't we follow that naming (and also make sure the
semantics match as good as possible).

> index 6ec0350..c00efb2 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -321,6 +321,37 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>  }
>  EXPORT_SYMBOL_GPL(nvme_cancel_request);
> 
> +static void nvme_failfast_work(struct work_struct *work)
> +{
> +	struct nvme_ctrl *ctrl = container_of(to_delayed_work(work),
> +			struct nvme_ctrl, failfast_work);
> +
> +	spin_lock_irq(&ctrl->lock);
> +	if (ctrl->state == NVME_CTRL_CONNECTING) {
> +		set_bit(NVME_CTRL_FAILFAST_EXPIRED, &ctrl->flags);
> +		dev_info(ctrl->device, "failfast expired set for controller %s\n", ctrl->opts->subsysnqn);

Please break up the line.

But looking at the use of NVME_CTRL_FAILFAST_EXPIRED, it almost seems
like this is another controller state?

> +static void nvme_start_failfast_work(struct nvme_ctrl *ctrl)
> +{
> +	if (unlikely(ctrl->opts->fail_fast_tmo == 0))
> +		return;
> +
> +	schedule_delayed_work(&ctrl->failfast_work, ctrl->opts->fail_fast_tmo * HZ);

Another overly long line.

> @@ -334,9 +365,10 @@ bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
>  	switch (new_state) {
>  	case NVME_CTRL_LIVE:
>  		switch (old_state) {
> +		case NVME_CTRL_CONNECTING:
> +			nvme_stop_failfast_work(ctrl);

We really should not call functionality in the state machine
verifier.  Try to move this out.  It probably should go with the
nvme_kick_requeue_lists call.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
