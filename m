Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E606A12D85
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLBh+GWj3DIj0A2061wIhIHQ/R6n6rMMPUfJsdd5mIQ=; b=jJb1czzAqVWu4l
	Ujfc8tHfWDEpeaTxEI2D/I5DvEfUGFip2BDkD96j1ZZl7T9mRzD/bNJNpIeeYH9HYo+hxupCiD0+N
	SQ/aR53m7Rk9Ju5peeB9T6WfeYKsCDaZo5vOCzDcaGZHrhs0cJwwJGZVjJ6A2fFB+VgZ+LmEz64hs
	PaOMlSU3uxMAa+OIbjaYnJQsUiUnB5W7i3yZOpS8YwOKL7K66TtmxXqE5x5rXTtNlY0dLMFZSdjuM
	aSh39ZFFdVshILpSqcGZBLKsJVPxzOabMt0hAd9MHGI2go6ioi8hdOPAjdedVLJaENeD9HNsa1aPY
	+PEfMG07pZG9ZO0QoM7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXJL-0003bU-5d; Fri, 03 May 2019 12:29:07 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hMXJG-0003b5-O2; Fri, 03 May 2019 12:29:02 +0000
Date: Fri, 3 May 2019 05:29:02 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 06/10] nvme/core: add mdev interfaces
Message-ID: <20190503122902.GA5081@infradead.org>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190502114801.23116-7-mlevitsk@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502114801.23116-7-mlevitsk@redhat.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: Fam Zheng <fam@euphon.net>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Liang Cunming <cunming.liang@intel.com>,
 Jens Axboe <axboe@fb.com>, Alex Williamson <alex.williamson@redhat.com>,
 John Ferlan <jferlan@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 Jens Axboe <axboe@kernel.dk>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 02:47:57PM +0300, Maxim Levitsky wrote:
> If the mdev device driver also sets the
> NVME_F_MDEV_DMA_SUPPORTED, the mdev core will
> dma map all the guest memory into the nvme device,
> so that nvme device driver can use dma addresses as passed
> from the mdev core driver

We really need a proper block layer interface for that so that
uring or the nvme target can use pre-mapping as well.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
