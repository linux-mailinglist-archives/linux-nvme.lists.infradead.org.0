Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2E585391
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 21:29:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l36lGuYUhalp9aMkafTEsNYD7wH8OumZQxlvgOL8ulc=; b=kEmhnFyEJ6Hskd
	giSI7IGZYOTg8vxGNtMzR8E58/+8MnDNT/S9DCrZKKqLZ7fvY5IyMI3NxlrLbRo3J+52IvFQGiXIB
	NTUqZXtHVUWsKQ7TgwiG3o1klRfSShcplsFpSj4MxDQIna/h1v0zWekOG7pvs7QnSV1Wc4cYJeSpL
	yTakHhPrvwUz8wLR098eJf8aJqNkJ+Lggc8j3So8LJeQ8QGpXXziudG2nUecOSFKGVLGQtO3UxBlf
	ZAWr/hXyWbI0LBYYCWCUTGoFq/YreBLkU96TQp04iZyqqCjTC6WIbGD4XDcdvkFH5oe+mujLi6SwJ
	pOvU76WZA/RvcYVpPH2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvRd6-0007M0-TN; Wed, 07 Aug 2019 19:29:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvRcf-0007A0-W9
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 19:29:23 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66D2D2086D;
 Wed,  7 Aug 2019 19:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565206161;
 bh=yXgPGJFs+0VUo2NWm5PbQV6rtXGmgZ7WNLD2jaMJULA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dsHOLQIqia0vm7jEQwRvEfaIJiT4oNspPc3C3XhOQkCr/aELbAHdwvZ58J3aP8C6n
 FhNN6PBh/8gfW37xhCWtyvdJfkM02m1cZ4TO7+L840PtPLMickXdOYayXWcHaI2JIp
 6rVgsht/L1OyTZ46I85rFiLdIOS4uF5UPd4w+0PQ=
Date: Wed, 7 Aug 2019 14:29:19 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 00/14] PCI/P2PDMA: Support transactions that hit the
 host bridge
Message-ID: <20190807192919.GY151852@google.com>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190806234439.GW151852@google.com>
 <e31f13f8-5afd-6f38-a206-163e9f77c91a@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e31f13f8-5afd-6f38-a206-163e9f77c91a@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_122922_059923_E3BA20FF 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Jason Gunthorpe <jgg@mellanox.com>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 06:31:07PM -0600, Logan Gunthorpe wrote:
> On 2019-08-06 5:44 p.m., Bjorn Helgaas wrote:

> > I tentatively applied these to pci/p2pdma with minor typographical
> > updates (below), but I'll update the branch if necessary.
> 
> Great, thanks! The typographical changes look good.
> 
> I already have one very minor change queued up for these. Should I just
> send you a small patch against your branch for you to squash?

Yes, an incremental patch against my branch would be nice.

Bjorn

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
