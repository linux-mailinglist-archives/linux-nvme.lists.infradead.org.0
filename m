Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12169151E7
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QrM3HM3wJ2MXPUQr/CbTh8G+FEU3QrVExC3Ajr6lIuk=; b=RYiSe6caf+12ly
	6FkKnepHWqRr3kDT0wTTv89RLZUUoY5AgJeI36QDayX5qCBst75aU4LouCtDqIxwUi1uxPinvowsy
	lZJ1oCA4oi0N7m7T+8hJoeUZ0xjGqjvtArhY4+rgl65Qp0TvyKDNGIcCkQI52CWu1OB0vBSkRUnD3
	IcBlxi32ikYLAbgUNK0jtrG8iXSSJG4kHVIComgllvC6Ijr79lHdNjzltVP/Wnm0e37PjhWyB9CIb
	tE1XW4sQatQO9SNkEPyWiqi5O5y8NiRaNCf9g721ezJ5GH5J9HLc6Is3IX5I3ukmx/TakCaOYqgJK
	SiE9DwCA9T0VTQT4blRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgnf-00089C-73; Mon, 06 May 2019 16:49:11 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgnX-00087v-VG
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:49:05 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 09:49:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="230002448"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 06 May 2019 09:49:01 -0700
Date: Mon, 6 May 2019 10:43:25 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
Message-ID: <20190506164325.GB2219@localhost.localdomain>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
 <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
 <20190506125752.GA5288@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506125752.GA5288@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_094904_215409_8500A6CE 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Sagi Grimberg <sagi@grimberg.me>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Liang,
 Cunming" <cunming.liang@intel.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Maxim Levitsky <mlevitsk@redhat.com>, "Busch, Keith" <keith.busch@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, "Liu,
 Changpeng" <changpeng.liu@intel.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 John Ferlan <jferlan@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 06, 2019 at 05:57:52AM -0700, Christoph Hellwig wrote:
> > However, similar to the (1), when the driver will support the devices with
> > hardware based passthrough, it will have to dedicate a bunch of queues to the
> > guest, configure them with the appropriate PASID, and then let the guest useA
> > these queues directly.
> 
> We will not let you abuse the nvme queues for anything else.  We had
> that discussion with the mellanox offload and it not only unsafe but
> also adds way to much crap to the core nvme code for corner cases.
> 
> Or to put it into another way:  unless your paravirt interface requires
> zero specific changes to the core nvme code it is not acceptable at all.

I agree we shouldn't specialize generic queues for this, but I think
it is worth revisiting driver support for assignable hardware resources
iff the specification defines it.

Until then, you can always steer processes to different queues by
assigning them to different CPUs.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
