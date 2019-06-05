Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC680363C8
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0nWdGRBDt4QmRVdo8MlwzAIDK6A+UAu8ZAZVMCPeir4=; b=jvpLNdYNcnWwZl
	mtLANmsj42RhE2pBPJ7efdKa1ze1c8Q/huGFT5IdMouu6MQ+sllhFCjkv3FnBfXRIEJAGDMsMfPER
	m+9wqfY4lYHbuhO2IkkwuAel2iW7f6KejLJbgVdLoEdDF1La2PntRGCAOpltCX+bup69anm1nkgUR
	KyOqI7/CXsVdO9ZYIcGQP5wUIsqMzbvHght5Ot6nEpK5TfXK0VjCewBGJLg3Oa5LD6xaMq91l4Td4
	qPaihBMwrdAzIQO2rMt5eAs5eUSFcqVVcSceVpmOdIkKaisE/j87UOrPlUkxjP1LesaV9B81tPPcE
	TL5aWppUycQlVB7sIQzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHB-0005DX-Rn; Wed, 05 Jun 2019 19:08:45 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbH4-0005Cx-Qz; Wed, 05 Jun 2019 19:08:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: properly communicate queue limits to the DMA layer
Date: Wed,  5 Jun 2019 21:08:23 +0200
Message-Id: <20190605190836.32354-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

we've always had a bit of a problem communicating the block layer
queue limits to the DMA layer, which needs to respect them when
an IOMMU that could merge segments is used.  Unfortunately most
drivers don't get this right.  Oddly enough we've been mostly
getting away with it, although lately dma-debug has been catching
a few of those issues.

The segment merging fix for devices with PRP-like structures seems
to have escalated this a bit.  The first patch fixes the actual
report from Sebastian, while the rest fix every drivers that appears
to have the problem based on a code audit looking for drivers using
blk_queue_max_segment_size, blk_queue_segment_boundary or
blk_queue_virt_boundary and calling dma_map_sg eventually.  Note
that for SCSI drivers I've taken the blk_queue_virt_boundary setting
to the SCSI core, similar to how we did it for the other two settings
a while ago.  This also deals with the fact that the DMA layer
settings are on a per-device granularity, so the per-device settings
in a few SCSI drivers can't actually work in an IOMMU environment.

It would be nice to eventually pass these limits as arguments to
dma_map_sg, but that is a far too big series for the 5.2 merge
window.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
