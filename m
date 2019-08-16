Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEA58FD31
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 10:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOYtX4bqOpj0+qn9dP9GO/3wItBedk2UBltfS5TDqes=; b=mflDFr9DnQMzjm
	hvATLIgNqii8nsqW8W7BO3Lz/osHCfHTZEG6fLSUo+zgbk1nopymsJ+2OwI0eMyypwFYvXL7LIlan
	tEKupplWgRL8yN5IjKNBtTruE+O/8jaIDzgFhUY4qJutSAh/SAaUkVUdxjWXWaW+U3sVtijqLjDEX
	goWVK74XvUhp5EchMbf8EB8nurJ2Tmw+O6HixszqSzJwIZcTBxJg5rV8EDitFMsVlFYT2aur8nhIL
	YG+yAlIdMZ70rLxowdn3mYc6Y8Cn3Zno/wpbXlDUGxyhhiD5x8rVcEAfM74jqOJKLNMtIsVo4OTIA
	3CFjwzaZdcgJpWEHQ07w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXHh-0003Rx-Uw; Fri, 16 Aug 2019 08:08:29 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXHY-0003Ra-6I
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 08:08:21 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 16B1368B02; Fri, 16 Aug 2019 10:08:16 +0200 (CEST)
Date: Fri, 16 Aug 2019 10:08:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 03/14] PCI/P2PDMA: Add constants for map type
 results to upstream_bridge_distance()
Message-ID: <20190816080815.GC9249@lst.de>
References: <20190812173048.9186-1-logang@deltatee.com>
 <20190812173048.9186-4-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812173048.9186-4-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_010820_383046_B48D09B9 
X-CRM114-Status: GOOD (  10.78  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christian Koenig <Christian.Koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:30:37AM -0600, Logan Gunthorpe wrote:
> Add constant flags to indicate how two devices will be mapped or if they
> are unsupported. upstream_bridge_distance() will now return the
> mapping type and the distance in a passed-by-reference argument.
> =

> This helps annotate the code better, but the main reason is so we can use
> the information to store the required mapping method in an xarray.
> =

> Link: https://lore.kernel.org/r/20190730163545.4915-4-logang@deltatee.com
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
