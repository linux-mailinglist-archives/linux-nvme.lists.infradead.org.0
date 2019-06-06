Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C193837644
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 16:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2qmc4RjoBdZJZ5d4lvWVtCyJD5ozr/L8vTlgmOdFCQ=; b=SnwYjw3MQglGgD
	DHBcnABNukiHRNuvZOHRSoFknIedLN64ydp5OW1PysOZClf8KaSTFtswtnLxRsXAMpqZZiIiv+RSd
	3l2w3f+i5BjY4IoRkjxL+TQH8Fzl4OH3GC5JvOk3C10SoPd6XrAOfbYc8tm0S97LN7/s6wlFDBUvK
	R6mS0DGx++zjL24qrdlLBxCXeUC+GLE03t/EpPv45TlLo1optKdkrWLWd3P+oweq2he/V1AnLW0Ox
	W3fu2cTuD68Q1Q6bEPVuqmazvgUX+EssAyaFL2hcPWwkLKXwx1dMBwdCHSlMvn9OJmGUntaY7SNfF
	K0Dm9eZ9NSjYprNuO23A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYtFf-00029E-KZ; Thu, 06 Jun 2019 14:20:23 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYtFa-00028s-Hr
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 14:20:20 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id BE3A968B20; Thu,  6 Jun 2019 16:19:50 +0200 (CEST)
Date: Thu, 6 Jun 2019 16:19:50 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
Message-ID: <20190606141950.GB15112@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de> <20190605202235.GC3273@ziepe.ca>
 <20190606062441.GB26745@lst.de> <20190606125935.GA17373@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606125935.GA17373@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_072018_743700_82B2F9E5 
X-CRM114-Status: GOOD (  10.26  )
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

On Thu, Jun 06, 2019 at 09:59:35AM -0300, Jason Gunthorpe wrote:
> > Until we've sorted that out the device paramter needs to be set to
> > the smallest value supported.
> 
> smallest? largest? We've been setting it to the largest value the
> device can handle (ie 2G)

Well, in general we need the smallest value supported by any ULP,
because if any ULP can't support a larger segment size, we must not
allow the IOMMU to merge it to that size.  That being said I can't
really see why any RDMA ULP should limit the size given how the MRs
work.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
