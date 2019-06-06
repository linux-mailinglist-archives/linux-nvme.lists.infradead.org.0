Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFE936C37
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ7/KWwJF/FujxyTgCNBBOOj3ZlUZiy9YUDtTEPd7Mo=; b=U04VMWi1p5VE9l
	X5zsqeyl862ubUpxzFkVr9IgVlYtW8D+p2IpjjCWpH13zI2z9NJnDjbZoS+KGaIGhpKHe/SRpd6/4
	tRUCwxV6PhKF2vR1jYEx1aSVriD0fUgiSRNeWXKFfEr9oG/LeZtSlMz7m2PMSpjO4t6zpNaKUO/0R
	YwWbZCdf+nlFruvxnCGNSo70/lzSnU/zAUV+7ufHW079u9J3ntsqg4AC79mHQJ2YvomLmdPMB3c7d
	qs6UHmPR0yiYjiItXE1gdJd6NTUFu9IzdpVqD9m04d7cIweYwkOoCuvyngwEM0KKRKxb92Ui89Uqf
	XxVIwY1Cktd2JczTW/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYlpr-0008QK-VQ; Thu, 06 Jun 2019 06:25:15 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYlpm-0008Mk-HB
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:25:12 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4448768B05; Thu,  6 Jun 2019 08:24:41 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:24:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
Message-ID: <20190606062441.GB26745@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605202235.GC3273@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_232510_722407_382F7B69 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 MPT-FusionLinux.pdl@broadcom.com, Christoph Hellwig <hch@lst.de>,
 megaraidlinux.pdl@broadcom.com, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 05:22:35PM -0300, Jason Gunthorpe wrote:
> On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> > This ensures all proper DMA layer handling is taken care of by the
> > SCSI midlayer.
> 
> Maybe not entirely related to this series, but it looks like the SCSI
> layer is changing the device global dma_set_max_seg_size() - at least
> in RDMA the dma device is being shared between many users, so we
> really don't want SCSI to make this value smaller.
> 
> Can we do something about this?

We could do something about it as outlined in my mail - pass the
dma_params explicitly to the dma_map_sg call.  But that isn't really
suitable for a short term fix and will take a little more time.

Until we've sorted that out the device paramter needs to be set to
the smallest value supported.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
