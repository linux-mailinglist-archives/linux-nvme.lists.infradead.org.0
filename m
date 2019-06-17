Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB58147D73
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 10:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xxvmnDft+vTSbF9RALG8KggUEagTgf0UgIIKhXGOTA=; b=ReXLAx0+HJ612q
	IuCkKUuEET5Nul+m18rPkhv3DnF7YiPCgZkIAA2Wq7u/Bj/SZM6EDPhetgJECT+U0seX8IWXefpGi
	Jo+SMy0y4KVm855dYS9Bej6HvHMG1e5SoNvnIMcaTGYWw7JzWCnDmI+rChqlcPZDv2XZDJCi+LaNI
	tlqA6hj95ZY2TAvcWeSLu1xKOWsxld+ZypW1CZq4gzsKWhGdBMLipGeFmdPg7W4Ma4BPPs1/q/PBP
	TJJLjnmykC2SMkPrO3Luy1YIqgM928/DY5ATChtCFtJ/30IC/zaQCbzNiOa9uikQgI2s9w9SymgWJ
	4qzdVhtlOpLDBTq8KUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnGZ-0002Wu-Lk; Mon, 17 Jun 2019 08:45:27 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnGD-000219-8b
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 08:45:07 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 6715C68AFE; Mon, 17 Jun 2019 10:44:33 +0200 (CEST)
Date: Mon, 17 Jun 2019 10:44:33 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kashyap Desai <kashyap.desai@broadcom.com>
Subject: Re: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
Message-ID: <20190617084433.GA7969@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
 <20190608081400.GA19573@lst.de>
 <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98f6557ae91a7cdfe8069fcf7d788c88@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_014505_478311_CC3D0BAA 
X-CRM114-Status: GOOD (  13.70  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Bart Van Assche <bvanassche@acm.org>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, "PDL,
 MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 01:28:47AM +0530, Kashyap Desai wrote:
> Is there any changes in API  blk_queue_virt_boundary? I could not find
> relevant code which account for this. Can you help ?
> Which git repo shall I use for testing ? That way I can confirm, I didn't
> miss relevant changes.

Latest mainline plus the series (which is about to get resent).
blk_queue_virt_boundary now forced an unlimited max_hw_sectors as that
is how PRP-like schemes work, to work around a block driver merging
bug.  But we also need to communicate that limit to the DMA layer so
that we don't set a smaller iommu segment size limitation.

> >From your above explanation, it means (after this patch) max segment size
> of the MR controller will be set to 4K.
> Earlier it is possible to receive single SGE of 64K datalength (Since max
> seg size was 64K), but now the same buffer will reach the driver having 16
> SGEs (Each SGE will contain 4K length).

No, there is no more limit for the size of the segment at all,
as for PRPs each PRP is sort of a segment from the hardware perspective.
We just require the segments to not have gaps, as PRPs don't allow for
that.

That being said I think these patches are wrong for the case of megaraid
or mpt having both NVMe and SAS/ATA devices behind a single controller.
Is that a valid configuration?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
