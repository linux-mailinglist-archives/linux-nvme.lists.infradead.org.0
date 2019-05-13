Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A31B94D
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 16:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giuSHphWcR/ptGi/thEVGtcEI1f4cSFqqAfBdUrzi3E=; b=YrffRWmYFuDU1c
	i30ftuNd4QV/7/3ZQp0ED6xQQ/hEV+D83ZFWKJ5R2c2SZ4rOKLHpdQ5OQLqk6V5eKqviTdWOpHcgl
	Gmz6yIrodQXUKMFxvwI3BnsiP0gJYsOQpjoKhMtsxoCoEo7AxbGmORkXSMuDDl8tJlQkJlgkLA7+U
	Mk1XHdZIoHnJjB1D3b5Ok9UbKMxaOEvqd4vI5cKpJ7U2W/BUJBsAaZot5Y/+0F6UOOVIE+7Ljn8tK
	rAXRk0K6MBDzbvOv5mHjRTdRwRKOJYfbsjy+qH5YbmYRLxvDi9GVbX+Xi/oONIlRjPNFU+5tw78G3
	P0MEiNuTDkoJz8jdyiYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCOU-0006Ok-AP; Mon, 13 May 2019 14:57:34 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCOO-0006Nz-Vb
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 14:57:30 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4F4D368AFE; Mon, 13 May 2019 16:57:08 +0200 (CEST)
Date: Mon, 13 May 2019 16:57:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190513145708.GA25897@lst.de>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143754.GE15318@localhost.localdomain>
 <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7ab8274ef1ce46fcae54a50abc76ae4a@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075729_161853_66F34D3B 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 02:54:49PM +0000, Mario.Limonciello@dell.com wrote:
> The Intel DMA controller suspend callbacks in drivers/dma/idma64.c look to me to
> turn off the controller.

How is that relevant?  That thing is neither a NVMe controller, nor
even an PCIe device..

> And NVME spec made it sound to me that while in a low power state it shouldn't
> be available if the memory isn't available.
> 
> NVME spec in 8.9:
> 
> "Host software should request that the controller release the
> assigned ranges prior to a shutdown event, a Runtime D3 event, or any other event
> that requires host software to reclaim the assigned ranges."

The last part of the quoted text is the key - if the assigned range
is reclaimed, that is the memory is going to be used for something else,
we need to release the ranges.  But we do not release the ranges,
as we want to keep the memory in use so that we can quickly use it
again.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
