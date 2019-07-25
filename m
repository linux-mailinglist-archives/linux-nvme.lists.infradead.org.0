Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD32746BD
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 08:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2BGzhdiXDs9O9sjSHxJf4gViXx7J6kXnQ3t1Je0ynE=; b=mecy68l7a8d90F
	YwFpZLeZrP2dOb4VG92Miw/fGoVY2a3W1A3yegBztY7oHc3NGMGeKtHOuJf0VHxJLeRDOI2AHQf+M
	rL6H6UKsqemaAt1mt21othJYWI5YxkH1lIPFhtpQe87shR/c+3jWGGM+IjBpyLo3MpTLDdCcsM3wF
	niGD23nkGahmery1T76cxAGAdtWry4YKXI/F4s9jOb6nJxZnPHd9Bgd0h8lQoZaaorxh3b4NFIUFU
	X6chdDCbWWSgMNRDsr0ncwdX5oAe6zibqGvc7nCH9iUwuPZ2serO8BqNBDb4Yk3opM7GrDt9YMwsl
	bkBVOBXcDzOKC++RaD/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWpo-0004A9-9o; Thu, 25 Jul 2019 06:02:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWpW-00049S-QX
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 06:02:20 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id C05BD68C65; Thu, 25 Jul 2019 08:02:13 +0200 (CEST)
Date: Thu, 25 Jul 2019 08:02:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 07/14] PCI/P2PDMA: Add the provider's pci_dev to the
 dev_pgmap struct
Message-ID: <20190725060212.GA24875@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-8-logang@deltatee.com> <20190724063229.GA1804@lst.de>
 <818e465d-3e57-b425-2431-e330a43fe7bd@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <818e465d-3e57-b425-2431-e330a43fe7bd@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_230219_010428_D2B8818E 
X-CRM114-Status: UNSURE (   6.59  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christian Koenig <Christian.Koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 09:50:03AM -0600, Logan Gunthorpe wrote:
> OK, I was going to do that, but you just removed the p2p specific page
> map. ;)

Only because it was empty at that time..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
