Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A418B0A
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 15:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Soxb/hBNqrXPjDgAoGvAgsDqsGQrbfdBPnH+w3NWLEA=; b=H3/bY37Pwb5UW+
	OqzxBjpkHbZv12zLpKZcguqyI47t/PYIB3r4kFQH5VK9FG37Yop6N1yewZDCxX2CU/lIwaZQmS/BJ
	2xPmkjT7lbLW8XSQj/GS8ndRzMaTHs1HIimwTDkvCO/0B16hZqKS4aZpj0m331Z/84uYz+BudiSfh
	YOzB1MXY/I3BytkNN4FM8+/5jYtjipO8HNqT7aJ/+KOyzRu3bRGlO3d1Rj63NsQjuTngSolrX0k+v
	b+56hr0CAb2pQT6Qg9tWMkEYJNtN0WBVeRG4ZiuqfJ6cJo+Y0fJfDCWDX4x2IU+6iigz4ULEua7Nw
	oLiLfzlZpcMd7ZWhLDiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOjVe-0000sp-KL; Thu, 09 May 2019 13:54:54 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOjVZ-0000s1-Pu
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 13:54:51 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 06:54:48 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 09 May 2019 06:54:49 -0700
Date: Thu, 9 May 2019 07:49:17 -0600
From: Keith Busch <kbusch@kernel.org>
To: Stefan Hajnoczi <stefanha@gmail.com>
Subject: Re: [PATCH v2 00/10] RFC: NVME MDEV
Message-ID: <20190509134917.GC8365@localhost.localdomain>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
 <20190503121838.GA21041@lst.de>
 <e8f6981863bdbba89adcba1c430083e68546ac1a.camel@redhat.com>
 <20190509091255.GB15331@stefanha-x1.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509091255.GB15331@stefanha-x1.localdomain>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_065449_886672_DE890674 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Fam Zheng <fam@euphon.net>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Wolfram Sang <wsa@the-dreams.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kirti Wankhede <kwankhede@nvidia.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Maxim Levitsky <mlevitsk@redhat.com>, "Liang,
 Cunming" <cunming.liang@intel.com>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 "Liu, Changpeng" <changpeng.liu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Amnon Ilan <ailan@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 02:12:55AM -0700, Stefan Hajnoczi wrote:
> On Mon, May 06, 2019 at 12:04:06PM +0300, Maxim Levitsky wrote:
> > On top of that, it is expected that newer hardware will support the PASID based
> > device subdivision, which will allow us to _directly_ pass through the
> > submission queues of the device and _force_ us to use the NVME protocol for the
> > frontend.
> 
> I don't understand the PASID argument.  The data path will be 100%
> passthrough and this driver won't be necessary.

We still need a non-passthrough component to handle slow path,
non-doorbell controller registers and admin queue. That doesn't
necessarily need to be a kernel driver, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
