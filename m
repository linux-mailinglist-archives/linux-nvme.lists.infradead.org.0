Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EA163CB1
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jul 2019 22:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVaJfW7mI0bbVE1BykODKn4Qcw5S+ocIzInZllEMelg=; b=BsQHWEN/nIMED8
	3BrQad3SpxUPGc73wn6LES6MdcbAy1ssMnuFPsFTh50dnoPXZOKL8sitQWIVCx8wgzBZpBmk0zpDV
	JjgOjwNDPMuVo1FbvuAgbVNXFIfiw82MtjkXYMEhpMTP2WZbZlv2+I5BbpysEeGiP7RoLtidvHvDv
	xVz8g66lrQ8NaLu2ZgBA0YAiKjoUa8U0RjU6Njh3DdVbFKjLNegcb+Qt88pA1kMqRTjUkAJ1MUOEa
	92KSKyP1+krBql1rGsesBN4CySf8iBm6+GDyJk15wL31/IRccaz9oqhnEcoe+cuNB5YzAYg6wzAZx
	czHdUwA71JhQDt8BLYxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkwcy-00046w-Jm; Tue, 09 Jul 2019 20:22:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkwcp-00045q-Fx
 for linux-nvme@lists.infradead.org; Tue, 09 Jul 2019 20:22:09 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6A588227A81; Tue,  9 Jul 2019 22:22:01 +0200 (CEST)
Date: Tue, 9 Jul 2019 22:22:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc] nvme-tcp: support simple polling
Message-ID: <20190709202201.GB8405@lst.de>
References: <20190703210804.23137-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703210804.23137-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_132207_676880_A7F341BD 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 02:08:04PM -0700, Sagi Grimberg wrote:
> Simple polling support via socket busy_poll interface.
> Although we do not shutdown interrupts but simply hammer
> the socket poll, we can sometimes find completions faster
> than the normal interrupt driven RX path.
> 
> We add per queue nr_cqe counter that resets every time
> RX path is invoked such that .poll callback can return it
> to stay consistent with the semantics.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> There is quite a bit more to do in this direction such as
> asking the net device to allocate polling rings and steer our
> polling queues to them, but that would require some infrastructure
> work in the networking stack.
> 
> With this alone, even while still absorbing the net device interrupts
> I'm seeing around 10%-20% latency improvement while sacrificing lots
> of cpu cycles for it.

Looks good enough to me, especially now that we need to explicitly opt
into polling queues.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
