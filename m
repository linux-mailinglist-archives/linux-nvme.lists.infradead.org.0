Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8603D1680E0
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Feb 2020 15:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4YhQbEU6kWg0ZSLuZRh27Jc7YS+fnMTCQ6TfVaoh24=; b=pEF9kJwSDj0U9P
	mtmP3roXU0/36bpLSS0fZ2Qh1TxRW0P3WPn/bIyZsEzIXJ0lXX3jO8Zv2S3t5Af8yrum1Hx9LAG2b
	uNSn/uxrLiWoe7Z9uL3WJ4Fdc5xp7vacbZ7F/AhjIUi9GY3BFnovHB3azfVCYewOR1TBW7lJ5Unso
	2zdO9y+e+D6ri33fbjbLF/GyU2ZGwsDOiqBDcUYaa5+JLHSzO0NDNaRhu9Osxkt9cl2b/rkc8DeiS
	Kph3jZ4x2hdbFxlXIiIcxfbt0+w3HeROuR4XrCNw7H8jvIgqAMN9WXUZNoCo5XCgRl0ARVPPV1Uas
	5+FdiI5f1Vj4pHgxdLCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59hT-0003Zd-KV; Fri, 21 Feb 2020 14:54:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59hN-0003Z0-Uj
 for linux-nvme@lists.infradead.org; Fri, 21 Feb 2020 14:54:39 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FE35206DB;
 Fri, 21 Feb 2020 14:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582296877;
 bh=G4uoI6dvX3xr+aBRpwhQPxpuOp02TZ5SCzvj3XzCwZ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S0ZPFoKEsKBEwzyW1yri/0CS2t8tN6h7EZSAQy7RFM2kbaMeF7S/IT83/3OHSXvmk
 d1w51tCR6xvOb4bYU1nfJFvIItt65sXdriyQKwptPV4Ut5RAzmSFU840PPTX7e9xD/
 E6IdwtgBspNF2e5awD6kI6hUGJTrDGTvEhItwjhk=
Date: Fri, 21 Feb 2020 23:54:32 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH] nvme-multipath: Fix memory leak with ana_log_buf
Message-ID: <20200221145432.GA15144@redsun51.ssa.fujisawa.hgst.com>
References: <20200220202953.26139-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200220202953.26139-1-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_065438_013221_FAE25FF4 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 01:29:53PM -0700, Logan Gunthorpe wrote:
> kmemleak reports a memory leak with the ana_log_buf allocated by
> nvme_mpath_init():
> 
> unreferenced object 0xffff888120e94000 (size 8208):
>   comm "nvme", pid 6884, jiffies 4295020435 (age 78786.312s)
>     hex dump (first 32 bytes):
>       00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
>       01 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  ................
>     backtrace:
>       [<00000000e2360188>] kmalloc_order+0x97/0xc0
>       [<0000000079b18dd4>] kmalloc_order_trace+0x24/0x100
>       [<00000000f50c0406>] __kmalloc+0x24c/0x2d0
>       [<00000000f31a10b9>] nvme_mpath_init+0x23c/0x2b0
>       [<000000005802589e>] nvme_init_identify+0x75f/0x1600
>       [<0000000058ef911b>] nvme_loop_configure_admin_queue+0x26d/0x280
>       [<00000000673774b9>] nvme_loop_create_ctrl+0x2a7/0x710
>       [<00000000f1c7a233>] nvmf_dev_write+0xc66/0x10b9
>       [<000000004199f8d0>] __vfs_write+0x50/0xa0
>       [<0000000065466fef>] vfs_write+0xf3/0x280
>       [<00000000b0db9a8b>] ksys_write+0xc6/0x160
>       [<0000000082156b91>] __x64_sys_write+0x43/0x50
>       [<00000000c34fbb6d>] do_syscall_64+0x77/0x2f0
>       [<00000000bbc574c9>] entry_SYSCALL_64_after_hwframe+0x49/0xbe
> 
> nvme_mpath_init() is called by nvme_init_identify() which is called in
> multiple places (nvme_reset_work(), nvme_passthru_end(), etc). This
> means nvme_mpath_init() may be called multiple times before
> nvme_mpath_uninit() (which is only called on nvme_free_ctrl()).
> 
> When nvme_mpath_init() is called multiple times, it overwrites the
> ana_log_buf pointer with a new allocation, thus leaking the previous
> allocation.
> 
> To fix this, free ana_log_buf before allocating a new one.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>

Thanks, applied to 5.6-rc3 with the reviews and the fixes tag.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
