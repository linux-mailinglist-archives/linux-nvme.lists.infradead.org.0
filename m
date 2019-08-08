Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0888685B9C
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 09:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0yLZb+qZKknFZEd1DeA94dptMSevDGYdi+/09vpkpQ=; b=d6F5TxolDaWC2y
	ZgUgB2H4/YfEX5OVS9j+Vh0lckqynqcweV8V3e2TeqaYd9GI4DxHPMuko/VM83l5WDxYyPMCkRh45
	QSy5SEvbyGSjFeAJHw6WwL14Hrd5LIugdKhJme8JGDpR2QV3dPCkWgUZkyow8cdQxHv9eGLwhF0g2
	Tuh/+H+5xX6sc0YO+M9NUywfYfoELOWyRt4u1ongTLMNhnbQ+Gyf9ErGWEItIe44dP2gk2Pnuz8DB
	J8o7SAqZuRIJhqNbv7J0BpdF+XkMzMGrlA1RY+PWD6LtiCDOn+P0fFzXc9CloZfU8HleYw2ENIohy
	zGtpG2gfbxDz9YhMouuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvctP-0002qo-KF; Thu, 08 Aug 2019 07:31:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvctE-0002qU-MB
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 07:31:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CC7D768B02; Thu,  8 Aug 2019 09:31:09 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:31:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 03/14] PCI/P2PDMA: Add constants for not-supported
 result upstream_bridge_distance()
Message-ID: <20190808073109.GC29852@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-4-logang@deltatee.com> <20190807055455.GA6627@lst.de>
 <4b0c012a-c3a1-a1c0-b098-8b350963aed1@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b0c012a-c3a1-a1c0-b098-8b350963aed1@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_003112_875992_1356D10E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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

On Wed, Aug 07, 2019 at 09:58:06AM -0600, Logan Gunthorpe wrote:
> We only calculate it at the same time as we calculate the distance. This
> is necessary because, to calculate the type, we have to walk the tree
> and check the ACS bits. If we separated it, we'd have to walk the tree
> twice in a very similar way just to determine both the distance and the
> mapping type.

Calculating it together makes perfect sense.  What I find odd is the
overloading of a single return value.  Why not return the map type as
the return value, and the distance as a by reference argument to keep
them properly separated?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
