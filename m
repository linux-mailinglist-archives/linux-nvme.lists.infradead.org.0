Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A5675635
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg/lJuWdlR6WEAGz1IB78ceLNOyPJIDWweRRCF/FFz0=; b=gXTPMN4aOfwv2L
	o81nopVpwlDADZDmUEs/fR2NPO98rxN6INs2WpKdOGQtumO0X1T0hddo8Nv9+Pe6RE+ecidhBAbFp
	u9VmnOWIT3Q7I+BengtIE7ev+q6H4ADNEuJ+mWh9JBuxRrw7QE5Wey/Y/0kmToTQ6a9xD4meu0rSo
	2kACv5pt4ORMUWAN6QcfkP7484d6oQ1cSPm57V05HkVNCD+R5Ek995wgJqs8xvFZiCTDsWThvaHZH
	8DUx+KctOOH/hpqV7ia31IFb7sjdLNgyvZeZpN6kgA2lcqcK2LPdW14ISavcDvSNFg4Q3FFltEwqv
	SYvlF8z+aSnHehveIooA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhsx-00028e-Al; Thu, 25 Jul 2019 17:50:35 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hqhsl-00028P-Mb; Thu, 25 Jul 2019 17:50:23 +0000
Date: Thu, 25 Jul 2019 10:50:23 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v6 04/16] nvme-core: introduce nvme_get_by_path()
Message-ID: <20190725175023.GA30641@bombadil.infradead.org>
References: <20190725172335.6825-1-logang@deltatee.com>
 <20190725172335.6825-5-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725172335.6825-5-logang@deltatee.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 11:23:23AM -0600, Logan Gunthorpe wrote:
> nvme_get_by_path() is analagous to blkdev_get_by_path() except it
> gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
> 
> The purpose of this function is to support NVMe-OF target passthru.

I can't find anywhere that you use this in this patchset.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
