Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 519FD158878
	for <lists+linux-nvme@lfdr.de>; Tue, 11 Feb 2020 04:00:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KZiubkx+0HiYIFfhNgR8088afCY1Owf4ZVt7hPjjnTY=; b=t1DkUVJoaOg7Ok
	BSTqIxsyA0n19Z5KYcApaZID8b1of/pHD0lj+UG+GB/cBa3nDwH8SUwEgUe8BqsdqkV6ny8b+RQTX
	icy5MBMeFFa4ooJVWNIKojFsgOkRcQICHqMNcU1jsjY2PCBLEzeqt3esGlT86Tn6tfu71gkgBONU8
	e8CwGqCl2Q4EpzNzXG/ZjGg2WNbmfR3XEEvf3GV90FJbLs8gjH3UilE6cicAXo0L9auZfiPL25ByR
	eBFzEIe0WuD2pZ4Vma7iQpBA9rJYxD5oKRR9vohuVVBuA/NRtiNW0p/+Kf1thWuhr+Z9D4yWzo6cZ
	eZj0ZoL7Qjurm2isaHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ln7-0002KA-VZ; Tue, 11 Feb 2020 03:00:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ln4-0002Ji-3b
 for linux-nvme@lists.infradead.org; Tue, 11 Feb 2020 03:00:47 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 366232080C;
 Tue, 11 Feb 2020 03:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581390044;
 bh=4zMUHs57CTHoyJ1F0K+Lq85X5KbnxiptUwYeauzmw4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=za1z/7A6dYca5RMrcu8K7B+/w9uohmeptcWDzXZ55TGHmkDdk5WK0GPPTUvxnWfdg
 s4e7ia7UHvt6kw5rrIWkJ+t2yCOMvc09XsqMNFgndEXsbbBjn3M+o0HF6cqR9FkHH6
 Nq9n+Ot0fFc3TnMp8IuAZwZIvfIx7SC0Vly3QHNc=
Date: Tue, 11 Feb 2020 12:00:37 +0900
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 1/2] nvme: move keep alive processing to nvme-wq
Message-ID: <20200211030037.GA20916@redsun51.ssa.fujisawa.hgst.com>
References: <20200206191342.10190-1-jsmart2021@gmail.com>
 <20200206191342.10190-2-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206191342.10190-2-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_190046_173633_9D632B20 
X-CRM114-Status: GOOD (  10.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Nigel Kirkland <nigel.kirkland@broadcom.com>, maxg@mellanox.com,
 mark.wunderlich@intel.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 11:13:41AM -0800, James Smart wrote:
> Delayed keep alive work is queued on system workqueue and may be cancelled
> via nvme_stop_keep_alive from nvme-reset-wq, nvme-fc-wq or nvme-wq.
> 
> Check_flush_dependency detects mismatched attributes between the work-queue
> context used to cancel the keep alive work and system-wq. Specifically
> system-wq does not have the WQ_MEM_RECLAIM flag, whereas the contexts used
> to cancel keep alive work have WQ_MEM_RECLAIM flag.
> 
> Example warning:
> 
>   workqueue: WQ_MEM_RECLAIM nvme-reset-wq:nvme_fc_reset_ctrl_work [nvme_fc]
> 	is flushing !WQ_MEM_RECLAIM events:nvme_keep_alive_work [nvme_core]
> 
> To avoid the flags mismatch, move keep alive work to nvme-wq.
> 
> Signed-off-by: Nigel Kirkland <nigel.kirkland@broadcom.com>
> Signed-off-by: James Smart <jsmart2021@gmail.com>

Hi James,

I'd like to include this in the next 5.6-rc pull, but just want to
clarify attribution: the author should be the first sign-off, so
should I amend the author to Nigel or move his sign-off below yours?

Thanks,
Keith

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
