Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 278D514725
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 11:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozNk5dCAn8blqYgrJjHnW7YmttqyWDo7SG3AwDDpMrY=; b=Ym6Lx4pO1nPeWl
	dK5iAO5zK8n30a3+b0O2HmuujZvStgLCyUJ+XsaCe9zkLUc4eKcdKskL+E/Ja62kahaXf6vXe524l
	MYrOMbz2MBan5ayXEIarGCg6I9FIQq9a7HB7Vs6W53gF6uM2bfJgNij9jTQNoyjxilzBIXi57muyg
	XAozXXyRbFR/B46aC/TDyf8xdfzyEpNClwEgNKXYvy7xJb0qfhRKo7Bc28T2+iVcnolfaPz+RxKY1
	I5FnzOLrL4m6K7cQ0pYUaPzAqe6q9kjW6D+DSmYYTbInQBgi238k+OJuTwkN0wWi6bNRY+Om+t+Jj
	PlPU+l0h5B1BbLUi6vmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZXw-0004z2-Q7; Mon, 06 May 2019 09:04:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZXm-0004sy-AC
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 09:04:22 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7DD605945B;
 Mon,  6 May 2019 09:04:17 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.20])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D03F55F9D4;
 Mon,  6 May 2019 09:04:04 +0000 (UTC)
Message-ID: <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
From: Maxim Levitsky <mlevitsk@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Date: Mon, 06 May 2019 12:04:06 +0300
In-Reply-To: <20190503121838.GA21041@lst.de>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 06 May 2019 09:04:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_020419_734886_BD0EFD03 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, John Ferlan <jferlan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-05-03 at 14:18 +0200, Christoph Hellwig wrote:
> I simply don't get the point of this series.
> 
> MDEV is an interface for exposing parts of a device to a userspace
> program / VM.  But that this series appears to do is to expose a
> purely software defined nvme controller to userspace.  Which in
> principle is a good idea, but we have a much better framework for that,
> which is called vhost.

Let me explain the reasons for choosing the IO interfaces as I did:

1. Frontend interface (the interface that faces the guest/userspace/etc):

VFIO/mdev is just way to expose a (partially) software defined PCIe device to a
guest.

Vhost on the other hand is an interface that is hardcoded and optimized for
virtio. It can be extended to be pci generic, but why to do so if we already
have VFIO.

So the biggest advantage of using VFIO _currently_ is that I don't add any new
API/ABI to the kernel, and neither the userspace (qemu) needs to learn to use a
new API. 

It also worth noting that VFIO supports nesting out of box, so I don't need to
worry about it (vhost has to deal with that on the protocol level using its
IOTLB facility).

On top of that, it is expected that newer hardware will support the PASID based
device subdivision, which will allow us to _directly_ pass through the
submission queues of the device and _force_ us to use the NVME protocol for the
frontend.

2. Backend interface (the connection to the real nvme device):

Currently the backend interface _doesn't have_ to allocate a dedicated queue and
bypass the block layer. It can use the block submit_bio/blk_poll as I
demonstrate in the last patch in the series. Its 2x slower though.

However, similar to the (1), when the driver will support the devices with
hardware based passthrough, it will have to dedicate a bunch of queues to the
guest, configure them with the appropriate PASID, and then let the guest use
these queues directly.


Best regards,
	Maxim Levitsky


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
