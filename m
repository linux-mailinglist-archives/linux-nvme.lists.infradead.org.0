Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D8214437D
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Jan 2020 18:42:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntLOFx24/5vNg48+gn7Rnxo9bE4k4rCJ74lgoL9kVHU=; b=hxZDbKx5F7ZsyA
	PtGsXGqgvblUsZzx6PwCakbijIOGphKlVSMmE+Fz5EJfR6bDwnXYEV+pq3iviVbshu4pLjvTOoEb/
	fqH0MqrR/zgnXC2ttixzi5t95MMOAiw7uGtx8wtpfWXXujJ5Qvw5vHAwqmDpEYVO57vLvT2XLHCUy
	rWysAU49sAVb1aE0JBRVMvQMLsh9y5DYHDvycwfmDM0nboBVSedoFn3L4iaCtKOCby0H1P9j6gxyx
	2mCsvlWpbrFwM60nF1HsNHAnNMClBtUsSIUpzXkF6PCpbn6YQk9VtdORnlyRx8bkRoaAfYKw2eskf
	eVOfJGbJqDOvkG3SX+8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxYC-0004Gm-Ci; Tue, 21 Jan 2020 17:42:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxY2-0004G9-PX
 for linux-nvme@lists.infradead.org; Tue, 21 Jan 2020 17:42:48 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CA3921569;
 Tue, 21 Jan 2020 17:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579628561;
 bh=nC0+vL5a2IyCGTrDLxV7enS7oXtMO7Wk03zg/rYJiEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qqt4pD+SvCyqdEKdboLVWqfvt9fKWvSJ/xfgBJ5HvUEmIZGION9UK5p0LjHYs9DeS
 gIixOKWXu/55b/bZSMJnlemQ5IZuvUwy0apmvSatmVxM150a3PDzuI5ySlroAv0L9X
 dFsRWPcNtHJ3/jo7aBeuPCZhk7/yMOwrpbpkLhHQ=
Date: Wed, 22 Jan 2020 02:42:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
Message-ID: <20200121174235.GA4954@redsun51.ssa.fujisawa.hgst.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
 <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
 <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
 <20200116232619.GA29624@redsun51.ssa.fujisawa.hgst.com>
 <12dc944f-d28c-3946-3dcd-28c45c1d2892@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12dc944f-d28c-3946-3dcd-28c45c1d2892@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_094242_850311_C4346A18 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 10:32:22AM -0700, Nadolski, Edmund wrote:
> The tagset pointer gets invalidated when the driver calls the following:
> 
> nvme_reset_work()
>    +-> nvme_setup_io_queues()  <<< cmd fails, no io queues created
>    +-> nvme_kill_queues()
>    +-> nvme_remove_namespaces()
>    |   +-> nvme_ns_remove()  <<< for each ctrl->namespaces
>    |       +-> del_gendisk()
>    |       +-> blk_cleanup_queue()
>    |       |   +-> blk_mq_exit_queue()  <<< invalidates the tags
>    |       |       +-> blk_mq_del_queue_tag_set()
>    |       |       +-> blk_mq_exit_hw_queues()
>    |       |           +-> blk_mq_exit_hctx()
>    |       |               +-> set->ops->exit_hctx(...) <<< driver callback
>    |       +-> nvme_put_ns()
>    +-> nvme_free_tagset()
>    |   +-> blk_mq_free_tagset()
>    +-> nvme_start_ctrl()  <<< allow operation w/o namespaces
> 
> So the nvmeq->tags is already dead and stale by the time we get to
> nvme_free_tagset.

No, nvmeq->tags is not stale until we call nvme_free_tagset(). The
exit_hctx() callback is invoked per-namespace, but the nvmeq is shared
among all of them. You can't modify the shared resource until all users
have exited.

If you really wanted to do this in exit_hctx(), you'd have to introduce
reference counting on 'struct nvme_queue'.

> The exit_hctx callback seems like the architected place to
> clear it (also noting that we init it in nmve_init_hctx).
> 
> If we don't clear the stale nvmeq->tags from the exit_hctx callback, then we
> will never re-init with a valid one if/when the device does recover (i.e.,
> in a future call into nvme_init_hctx).
> 
> Seems we should not need to worry about crashing in the presence of multiple
> namespaces, as this is the sequence that removes them all (notwithstanding
> some existing race window bug).

If you remove just 1 of many namespaces, if that namespace's exit_hctx()
clears the shared nvmeq's tagset, kernel panic will happen for all the
other operational namespaces.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
