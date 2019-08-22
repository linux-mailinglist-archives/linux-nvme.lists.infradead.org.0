Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3811988DB
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 03:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olIWYpFZWKW6uI57t/yHmxz5LNyE341+kfdKNZg1lB8=; b=OrXJOvwu4FW9Om
	KSP2VL70D83+HZsQrbvGOpRESPHb8SvVfBOM/lov+JUdgUsh0xqDFjCam0yLJH+1q2pbgS2jgtXPe
	v6noCzuxMDUFFqJt7U7wEP5seZ56bLVES2n+u3aEbis7Q2q85QeOQGe5PTaPIU/Z3lXl1c8E3THMD
	WU5Swb/MZD1BW69dt0HcwNPaeDWzei8XBG6hDFqztUCPd5ux3TFBAeCCilmATC4C1mdMTabpJ3wu4
	keXcg6YVTuz3ZcGglSp9hyKUG3nOphuQoGmKD31HV3Cr9hdDIMggUmC8i9lvDapZn4YMiqJU2zFfL
	ophtB8GUB6BVZVtSm7/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0bYn-00030C-Ly; Thu, 22 Aug 2019 01:06:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0bYi-0002zm-8P
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 01:06:37 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B663168BFE; Thu, 22 Aug 2019 03:06:32 +0200 (CEST)
Date: Thu, 22 Aug 2019 03:06:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190822010632.GA11242@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
 <a975f0ee-ee78-4551-5419-0be3c24b3451@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a975f0ee-ee78-4551-5419-0be3c24b3451@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_180636_448227_C7837ACA 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:04:02PM -0700, Sagi Grimberg wrote:
> Well we can call nvme_revalidate_disk and then call something like:

Or rather a variant of nvme_revalidate_disk that preserves the nvme
status values.

> void check_disk_size(struct gendisk *disk)
> {
>         /*
>          * Hidden disks don't have associated bdev so there's no point in
>          * revalidating it.
>          */
>         if (!(disk->flags & GENHD_FL_HIDDEN)) {
>                 struct block_device *bdev = bdget_disk(disk, 0);
>
>                 if (!bdev)
>                         return ret;
>
>                 mutex_lock(&bdev->bd_mutex);
>                 check_disk_size_change(disk, bdev, ret == 0);
>                 bdev->bd_invalidated = 0;
>                 mutex_unlock(&bdev->bd_mutex);
>                 bdput(bdev);
>         }
> }
> EXPORT_SYMBOL(check_disk_size);

No need for the GENHD_FL_HIDDEN check as the caller knows,
and EXPORT_SYMBOL_GPL please.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
