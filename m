Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7084110F2EF
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q42tpe/DnvxEOwN25j6JEGjoPuFdCYant/j0Q1y1aJM=; b=b8M5WZER9lXXG3
	cEdZwmTyNg0exFaFsN+nZyKa0Kx8IsVlfEFVO6Hz4u/rfyzmlXZj8yd8g6d1TtOLbeCJt9+8KjyF8
	nYCdmnY9PnNJatVOeFR/rC1xSvu/bvaFAKnEAMr1BA8tOUZEOrPTwuVE4OoTYZSY/DaIFxlLh8Tl5
	0A0NookHtsoD7WelBqUxLXSY8VVWd/WCCgQ86q28kFx2C1jWJ5ZGCnz278BUEgg22BCFB4niRMiZn
	dKyODWfHxN7JLYDj67SEDG02PAPKFCOiJyLxUyESgu+/7JQby/sCzXML4LKTodhmnxkHr7+XdCZzj
	3bo/TvgiqLCdsEYoHefA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibuSJ-0008Ub-Qy; Mon, 02 Dec 2019 22:46:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibuSE-0008UA-Ny
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:46:08 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4E5DF68BE1; Mon,  2 Dec 2019 23:46:03 +0100 (CET)
Date: Mon, 2 Dec 2019 23:46:03 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 1/2] PCI/MSI: Export __pci_msix_desc_mask_irq
Message-ID: <20191202224603.GA14770@lst.de>
References: <20191202222058.2096-1-kbusch@kernel.org>
 <20191202222058.2096-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202222058.2096-2-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_144606_935043_8EC21AB0 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 ming.lei@redhat.com, helgaas@kernel.org, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 07:20:57AM +0900, Keith Busch wrote:
> Export the fast msix mask for drivers to use when the read-back is
> undesired.

As said last time calling this seems wrong as it breaks the irq_chip
abstraction.  But looking at the disable_irq_nosync semantics I think
that function should do a non-pasted disable disable for MSI(-X)
interrupts.  Can you look into that?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
