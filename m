Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E434919A83B
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 11:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4E7nh8yk3RhRe1R5rFOPJeS3r29lSILM8CexBRI8a8=; b=pP1OuK6qTSAxOk
	R4Ar5Xu5ilsgjlMD2qBhS/dqzNAJcDDGkgRsgIdFA5El+XZNuFq850LmOzChkIXcUvHWYy5vlyZ7z
	GY4twPlUko3ABd9fgjKv07wzomqV1HkijtdtDAjsfwuWkZjROb6tqZOWYRwKjwChkV5SDszNLabec
	A2P9NMgqGBaiMMEXiVRcnXXnGNraRjVY0p4Ij8YtCgg/o5fQ1J2zzFE9+Ic3wVgbuggDRDEI5rKll
	rv1VBVL6OyX+cDOQmvR8GMLRhBCGLw34XriZLcsgvQA1b98scedvn4nnSucSfpcDpIe/PGOIhXkHR
	8RQ0mE/4j1P5Lw9wyPbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZJk-0001No-Ra; Wed, 01 Apr 2020 09:05:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZJh-0001NL-3b
 for linux-nvme@lists.infradead.org; Wed, 01 Apr 2020 09:05:46 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4A0DC68AFE; Wed,  1 Apr 2020 11:05:43 +0200 (CEST)
Date: Wed, 1 Apr 2020 11:05:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2] nvme: inherit stable pages constraint in the mpath
 stack device
Message-ID: <20200401090542.GB31980@lst.de>
References: <20200401060625.10293-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401060625.10293-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_020545_294803_FE8D0BE0 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:06:25PM -0700, Sagi Grimberg wrote:
> @@ -1907,6 +1907,13 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
>  	if (ns->head->disk) {
>  		nvme_update_disk_info(ns->head->disk, ns, id);
>  		blk_queue_stack_limits(ns->head->disk->queue, ns->queue);
> +		if (bdi_cap_stable_pages_required(ns->queue->backing_dev_info)) {
> +			struct backing_dev_info *info =
> +				ns->head->disk->queue->backing_dev_info;
> +
> +                        info->capabilities |= BDI_CAP_STABLE_WRITES;
> +		}

I think this needs to go into blk_queue_stack_limits instead, otherwise
we have the same problem with other stacking drivers.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
