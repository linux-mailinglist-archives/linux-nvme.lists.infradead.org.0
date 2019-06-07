Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857AE3925F
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUG0nacsYSO4fCdCCsjwQ16iY+RYr8ddRSEIEy7S+eM=; b=SG1yAvfUpu9bC9
	4vOoBjqpQEeiod9ep580igitkix186q54Tvbr9pvOYPTayYRPI8CNQp/RnvD2k4R+EQXbWmjHsC5h
	aexknJ4Nyc8xzcom1juJr9cHUrkeK81koc1UXdEO2maT8d7lcK09+2pM81L4UiFscbcH7UCYVGkto
	EY0W6feSNmoikzdLPoFle9D8ujo3vlEi8DKgm9ggTqGYlHXIrAc6CfRZlZaukfQt/l24ZToWFrrdv
	lodLnjqDL5/UcnXytXVX+zR9H2rBjCwW0mND7L1zM2Z3z54EVzfZdibl0rPa5NHRV+h0Qe5ps+VRL
	3JlpJgSwanqTqhm1USmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZHwr-0006cq-Lg; Fri, 07 Jun 2019 16:42:37 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZHwm-0006bv-PB
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:42:34 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0A6D568AFE; Fri,  7 Jun 2019 18:42:03 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:42:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Message-ID: <20190607164202.GA7307@lst.de>
References: <20190606212854.122478-1-bvanassche@acm.org>
 <20190606212854.122478-3-bvanassche@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606212854.122478-3-bvanassche@acm.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094232_973962_E6D6F189 
X-CRM114-Status: UNSURE (   8.81  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 02:28:54PM -0700, Bart Van Assche wrote:
> +	phys_bs = bs;
> +	io_opt = bs;
> +	if (id->nsfeat & (1 << 4)) {
> +		/* NPWG = Namespace Preferred Write Granularity */
> +		phys_bs *= 1 + le16_to_cpu(id->npwg);
> +		/* NOWS = Namespace Optimal Write Size */
> +		io_opt *= 1 + le16_to_cpu(id->nows);
> +	}
>  	blk_queue_logical_block_size(disk->queue, bs);
> -	blk_queue_physical_block_size(disk->queue, bs);
> -	blk_queue_io_min(disk->queue, bs);
> +	blk_queue_physical_block_size(disk->queue, phys_bs);

Unfortunatly it is not that simple.  Filesystems expect the physical
block size to be an atomic writable unit.  So this value will have
to be limited by AWUPF/NAWUPF values.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
