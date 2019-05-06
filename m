Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16D614A76
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 14:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8Z5/za2aNcFbzgH6iXbLCjN0E7GtiFUu2x8DxpLG6o=; b=RvwMixHvkwSVdQ
	hZWp1ItQsH9Lxs2CRPaBYsTXRjXwelqakYU3v9q5B71Q1ya6gFRUIhgeN0snEFOcX8C6VXW5aKe0l
	kpZ5dneavibZIFHBaOXDqzZCv9HowVFBKreaMVdIIhYgWB2fzjE8cVBxPmd8Ke2+WVz4YHwC8cr0M
	kIlzz2fHk6osfiyWb1DEKZ9Ekggh+wyGwymrN1O2dLXOSTkziCQoAJ0qziNjCCyGNnJMOfntlyLXT
	Kkx2Ebgu8Pff5brI01V3i8TPSzHZz0gjo1ZMljynt01crp3MM7KPEA4f2qhGMYb9TsoR+5lKUjB3A
	qHPDo9Xz4V+kZB0gwfqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdCG-0002wY-FV; Mon, 06 May 2019 12:58:20 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNdCB-0002vd-1y
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 12:58:16 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7423D67358; Mon,  6 May 2019 14:57:52 +0200 (CEST)
Date: Mon, 6 May 2019 14:57:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Maxim Levitsky <mlevitsk@redhat.com>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
Message-ID: <20190506125752.GA5288@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
 <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055815_252067_6F484B11 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: Fam Zheng <fam@euphon.net>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, John Ferlan <jferlan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 12:04:06PM +0300, Maxim Levitsky wrote:
> 1. Frontend interface (the interface that faces the guest/userspace/etc):
> 
> VFIO/mdev is just way to expose a (partially) software defined PCIe device to a
> guest.
> 
> Vhost on the other hand is an interface that is hardcoded and optimized for
> virtio. It can be extended to be pci generic, but why to do so if we already
> have VFIO.

I wouldn't say vhost is virtio specific.  At least Hanne's vhost-nvme
doesn't get impacted by that a whole lot.

> 2. Backend interface (the connection to the real nvme device):
> 
> Currently the backend interface _doesn't have_ to allocate a dedicated queue and
> bypass the block layer. It can use the block submit_bio/blk_poll as I
> demonstrate in the last patch in the series. Its 2x slower though.
> 
> However, similar to the (1), when the driver will support the devices with
> hardware based passthrough, it will have to dedicate a bunch of queues to the
> guest, configure them with the appropriate PASID, and then let the guest useA
> these queues directly.

We will not let you abuse the nvme queues for anything else.  We had
that discussion with the mellanox offload and it not only unsafe but
also adds way to much crap to the core nvme code for corner cases.

Or to put it into another way:  unless your paravirt interface requires
zero specific changes to the core nvme code it is not acceptable at all.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
