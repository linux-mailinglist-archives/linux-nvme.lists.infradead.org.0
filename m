Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BB74C4EA
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 03:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ix657hGWrm45g5tJeyRdxhSBS6mJnWDfvSo424X+4rg=; b=JmWBAYCErhlf/k
	y+j3xEVzxhtrHNbV582yHxbLs1XxO8JdGh6rpCNItykkxA5QQ5PMebX43fXK03mggjtpuj5ItENcz
	4c9Z5iwC+qrx5/zFBQNPxPFtV7A0f+AJ/mSH6SNM7mF/KPnT5vk8+hA9yXS5iwYEquwNM9aFoPj0m
	7WRjRw3bs+3MVF4dIAn8sLpC0OOnRH0ZmQ6u5vL1eehrtjrBPxdjVP9EQd92FJPEpbCxjbFo/0oP9
	mI6jax2rscLawRuFhU+kLAUws0z7HSwR0J4pmSxiwuzDk4PbBooUh4NWtRDtXhpKhFWASHZQ9divS
	c/ACSMHKoPNmepIeIaDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlmO-0007ZH-GU; Thu, 20 Jun 2019 01:22:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdlmH-0007Yt-CJ
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 01:22:15 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 55AA330872FD;
 Thu, 20 Jun 2019 01:22:12 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AEA3960477;
 Thu, 20 Jun 2019 01:22:06 +0000 (UTC)
Date: Thu, 20 Jun 2019 09:22:01 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme: Do not remove namespaces during reset
Message-ID: <20190620012200.GA31179@ming.t460p>
References: <20190618101025.78840-1-hare@suse.de>
 <20190618101025.78840-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618101025.78840-2-hare@suse.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Thu, 20 Jun 2019 01:22:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_182213_443674_DA755D15 
X-CRM114-Status: GOOD (  24.35  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Hannes,

Could you explain a bit what the user visible issue is addressed by this
patch?

On Tue, Jun 18, 2019 at 12:10:24PM +0200, Hannes Reinecke wrote:
> When a controller is resetting or reconnecting there is no way
> how we could establish the validity of any given namespace.
> So do not call nvme_ns_remove() during resetting or reconnecting
> and rely on the call to nvme_scan_queue() after reset to fixup
> things.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/core.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index ba2079d217da..e872591e5fe7 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3358,6 +3358,17 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  
>  static void nvme_ns_remove(struct nvme_ns *ns)
>  {
> +	/*
> +	 * We cannot make any assumptions about namespaces during
> +	 * reset; in particular we shouldn't attempt to remove them
> +	 * as I/O might still be queued to them.
> +	 * So ignore this call during reset and rely on the
> +	 * rescan after reset to clean up things again.
> +	 */
> +	if (ns->ctrl->state == NVME_CTRL_RESETTING ||
> +	    ns->ctrl->state == NVME_CTRL_CONNECTING)
> +		return;
> +
>  	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
>  		return;

nvme_ns_remove() may be called from nvme_remove_invalid_namespaces()
and nvme_remove_namespaces(), in which the 'ns' to be removed is
retrieved & deleted from ctrl->namespaces.

That means if the 'ns' needs to be removed by the two mentioned
functions from scan work context again after reset is done, the removal
may never be done because the 'ns' can't be found in ctrl->namespaces.

If you want to avoid the use-after-free issue[1], I'd suggest to use
the queue refcount.

https://lore.kernel.org/linux-block/20190424110221.17435-10-ming.lei@redhat.com/

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
