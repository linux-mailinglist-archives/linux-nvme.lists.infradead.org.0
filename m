Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316971C127A
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 14:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvB7JVSyaxfmKAdvzgm86zlqoqncP5Y1Z21iIUCGLJc=; b=e6k6nteO6h36/h
	s0aUVkFEfyG1EKBeNveWy0UhnqmImt99WIQQtDDYTkE5fiYfKZLyRGxdUshqaCjxug/7pugLTj0Yg
	k6+hH1ASfpIiULNLMTQlSQQQikROLiE+HYsrz2OYSj0bYafzCTiEXATE7t0+7n+Kll26I5rECPg4M
	bGepr4jpcYyLDtioWI0pDXWWWZ/4WUUIHXP/LXetYMBHQQwFXayCUEht/MIs+E3vUExio46zxHfUT
	+iacrsxbBliVGsSkZo9raZpg54RH4OmUm4QNsNa1npJ95dmvxrPIqDY3U4vPhK1BlmYk4OsbV8cY0
	jnHL92JpjI4eT4lHFgCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVE8-0007zt-BF; Fri, 01 May 2020 12:57:12 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVE3-0007zY-54
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 12:57:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7446F68BFE; Fri,  1 May 2020 14:57:04 +0200 (CEST)
Date: Fri, 1 May 2020 14:57:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 3/3] nvme-pci: reshuffle nvme_queue members
Message-ID: <20200501125704.GC5197@lst.de>
References: <20200427235243.2268765-1-kbusch@kernel.org>
 <20200427235243.2268765-3-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427235243.2268765-3-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_055707_357660_9E70F28F 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 04:52:43PM -0700, Keith Busch wrote:
> All the io path hot members can fit within the first 64-bytes, which is
> a common cacheline. Order the members of this struct so those members
> fit in and align to that window.

Do we even want to share a cacheline for the submission vs completion
path?  I know other places try to keep the deliberately separate.

> +	/* only used for poll queues: */
> +	spinlock_t cq_poll_lock;
> +	dma_addr_t sq_dma_addr;
> +	dma_addr_t cq_dma_addr;
>  	struct completion delete_done;

We probably want a comment before the last three that this is only
used during queue deletion.  Also cq_poll_lock very much is in the
hot path for polled I/O, so I'd rather keep it with other CQ bits.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
