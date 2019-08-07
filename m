Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704A68440B
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 07:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aRjzZyo6Errle8GPusr/B8J8WLX53rIXaQFLcTaVW5k=; b=nva2mKKfgUNUL+
	cPn41M5wQAw8ofWl5jemIgET1bm/fc1dJYt/2/98kOCeTDFMBTlgM23fl8fZGKhFlfXMnW2PN+w9z
	hlCS9XvuJKIXN8GziVP655ufkDtiGWBSSX8jMJAsJATG27qgGWG0glbyBvnVQzqVe69TCMz6wuaur
	ZlXMC0xmOQP/IjUK1Q247nGvlp9dL5+4WCluvAfln6rYAKGS9a9ooh7cAIm3XFyEzTwrdKMYzekH7
	4ElKTSIezAa8YSL9imTuNl9LBpMc9iEKtgTamW2xQ4cfe4WWZnIweWTm38hTedZ4L1csT0BUz3Ttx
	tfzKsUR15jzBSNQUPOpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvEuk-0006dc-Vm; Wed, 07 Aug 2019 05:55:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvEud-0005gB-JF
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 05:55:05 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D3B3168B05; Wed,  7 Aug 2019 07:54:55 +0200 (CEST)
Date: Wed, 7 Aug 2019 07:54:55 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 03/14] PCI/P2PDMA: Add constants for not-supported
 result upstream_bridge_distance()
Message-ID: <20190807055455.GA6627@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-4-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730163545.4915-4-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_225503_794831_05DF12ED 
X-CRM114-Status: GOOD (  12.25  )
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

On Tue, Jul 30, 2019 at 10:35:34AM -0600, Logan Gunthorpe wrote:
> Add constant flags to indicate two devices are not supported or whether
> the data path goes through the host bridge instead of using the negative
> values -1 and -2.
> =

> This helps annotate the code better, but the main reason is so we
> can use the information to store the required mapping method in an
> xarray.
> =

> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Is there really no way to keep the distance separate from the type of
the connection as I requested?  I think that would avoid a lot of
confusion down the road.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
