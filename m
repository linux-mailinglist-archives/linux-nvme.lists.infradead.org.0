Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECBD5E54C
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 15:21:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kEE7fEMhVqL8uYJAOpm0naEr5MYQiVjw0ZaXofd1E0=; b=OOPGCfa1SkXeue
	4X72a5pDDfe2iztZtqObq6jFwM6wec5SZeN7hKkvnCTA6gEl9DBxrG0ymQnDTK3HtX2mNc5OtVtos
	9gO/1kR8/50zAA21HH8kGM3iWRI9YW1WhtM723Z9o2PItT9Qe6awuXWvhAFT4U2oxvzQExu3i+/R1
	3+GmWYqZ1CNr3YBCU83F+OEzwhCyy+0/ElZmWfaur1lE2x13csRcN6dzqV80UuRm4QouoEh6k/mm1
	LUqRZfnnRuyytdazm4mgHR78hZupZqcUO2Ngbxi7DnTu45bW/K3QGOR1pt3DLq0IwSCBSWQfI96oI
	yzSqeyzBTbDhI6MtAjew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hifCl-00012s-5w; Wed, 03 Jul 2019 13:21:47 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hifCb-00012N-7K
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 13:21:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 740BC68B05; Wed,  3 Jul 2019 15:21:33 +0200 (CEST)
Date: Wed, 3 Jul 2019 15:21:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 2/2] nvme-multipath: do not select namespaces which are
 about to be removed
Message-ID: <20190703132133.GA8948@lst.de>
References: <20190703131232.58595-1-hare@suse.de>
 <20190703131232.58595-3-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703131232.58595-3-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_062137_410048_F52E653B 
X-CRM114-Status: GOOD (  11.19  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 03:12:32PM +0200, Hannes Reinecke wrote:
> diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
> index c8cc82639327..1f6105a5c596 100644
> --- a/drivers/nvme/host/multipath.c
> +++ b/drivers/nvme/host/multipath.c
> @@ -130,7 +130,8 @@ static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
>  
>  	list_for_each_entry_rcu(ns, &head->list, siblings) {
>  		if (ns->ctrl->state != NVME_CTRL_LIVE ||
> -		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
> +		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
> +		    test_bit(NVME_NS_REMOVING, &ns->flags))
>  			continue;
>  
>  		if (READ_ONCE(head->subsys->iopolicy) == NVME_IOPOLICY_NUMA)
> @@ -180,7 +181,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
>  
>  	if (list_is_singular(&head->list)) {
>  		if (old->ctrl->state != NVME_CTRL_LIVE ||
> -		    test_bit(NVME_NS_ANA_PENDING, &old->flags))
> +		    test_bit(NVME_NS_ANA_PENDING, &old->flags)||
> +		    test_bit(NVME_NS_REMOVING, &old->flags))
>  			return NULL;
>  		return old;
>  	}
> @@ -189,7 +191,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
>  	     ns != old;
>  	     ns = nvme_next_ns(head, ns)) {
>  		if (ns->ctrl->state != NVME_CTRL_LIVE ||
> -		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
> +		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
> +		    test_bit(NVME_NS_REMOVING, &ns->flags))
>  			continue;

I think we clearly need a patch before the two patches in your
series that factors this check into a little helper with a
descriptive name.  Also doesn't nvme_path_is_optimized also need
to have these checks while we are at it?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
