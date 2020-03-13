Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C01845A6
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Mar 2020 12:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSA/j/rnnVu3geC7C4Qmecp7NHqIkOlzBU7XP/rcpQI=; b=NS5Xq/Mkg9bDHG
	f4KXZiSAtBCAd6tL3PzkXxCTUpkRiVsdWEMFis8JvzoJ1pnPf2t0Ns97uwUMU06BJ0n4+7PfyIZVn
	lKMcmmM8wwSkY2mSfnGTP8cgaOC9OJEGA4j3flT59RTj1cjRU29lTTgEeI06NbIvAijle3v5jtZJ0
	FDH1xvwyDwU6yodnckfJ9b0yg4bno8h6rkrx3yW5AoEakVKnb2NZp6VvKohJXkGyJAueFGLDB7rbS
	ulNFZOJ7OZMUPQQFhizgau/VOaUeh8Ot3/gx3bLY/qe7JwUOR3NJ84oiL4uOqakmqUZ1VuCnjphvR
	SWP2UaZzu8mFZtHDJxyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCiCx-0006MB-6l; Fri, 13 Mar 2020 11:10:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCiCs-0006LC-Ev
 for linux-nvme@lists.infradead.org; Fri, 13 Mar 2020 11:10:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9937A68C4E; Fri, 13 Mar 2020 12:10:20 +0100 (CET)
Date: Fri, 13 Mar 2020 12:10:20 +0100
From: Christoph Hellwig <hch@lst.de>
To: Balbir Singh <sblbir@amazon.com>
Subject: Re: [PATCH v3 2/5] virtio_blk.c: Convert to use
 set_capacity_revalidate_and_notify
Message-ID: <20200313111020.GB8264@lst.de>
References: <20200313053009.19866-1-sblbir@amazon.com>
 <20200313053009.19866-3-sblbir@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313053009.19866-3-sblbir@amazon.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_041022_658880_C9544F97 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, Chaitanya.Kulkarni@wdc.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 05:30:06AM +0000, Balbir Singh wrote:
> block/genhd provides set_capacity_revalidate_and_notify() for sending RESIZE
> notifications via uevents.
> 
> Signed-off-by: Balbir Singh <sblbir@amazon.com>
> ---
>  drivers/block/virtio_blk.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
> index 0736248999b0..f9b1e70f1b31 100644
> --- a/drivers/block/virtio_blk.c
> +++ b/drivers/block/virtio_blk.c
> @@ -388,18 +388,15 @@ static void virtblk_update_capacity(struct virtio_blk *vblk, bool resize)
>  		   cap_str_10,
>  		   cap_str_2);
>  
> -	set_capacity(vblk->disk, capacity);
> +	set_capacity_revalidate_and_notify(vblk->disk, capacity, true);

Shouldn't the last argument be set to the resize argument passed to this
function?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
