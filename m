Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07735E27EC
	for <lists+linux-nvme@lfdr.de>; Thu, 24 Oct 2019 04:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxl2ewMRNsYTkWy3lS5P7RRbRNZKu3oMmHTw4auPQWQ=; b=eyt6F1Zun5z8vr
	3g2h6a7H3OYq2Z2S1JVgmzuPTEVVe+fdc3hgyfpmG53Wi+g5C13683Wj6XHs2+ye4ttddcNkyNsxF
	7NFNRzwrg7TsBW1AGYWmXK8zkfgbRCJHwmeiZXBIrRWASb3k3AUacruRx3S3+2yXBJ1UHs/t9gXK7
	eDJtFS4PDY+ozaGIX4I+CANb5J7ScHtcovs3JWwyL6/ck8or6fMbTg6QEhxH8C+t1i0wl4yr59Tm7
	iFG9usQ5Pj/Ccru/W5Q6IobBXfZagFaBX00to9hdcSANCVxcYtHhM0A9Y5iHzFYcLO2vOoW7xRlSP
	/nxWzEnPNGmdoZakH5ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSQD-0005U6-LW; Thu, 24 Oct 2019 02:00:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSQ7-0005Oo-DW
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 02:00:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76A8820679;
 Thu, 24 Oct 2019 02:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571882410;
 bh=WRbCG+vLblzqbNvv9P+lejFpC5FUP5TfxEn7rt7Bm/w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ya9n0A6V63CCNyeVtRUJAhdKJkeuoiYZajOyFtfzbPb9KaF0NMExfP2/l6ArP3nNK
 DqTe7bdZRYzwC5eUDkQpdcdU7ZM1JL8JWV0zgy+GAKhCh0dQRjG3p9cA7nUMCRlSv1
 Qdsl78nXWvdbutsNKtYbKdfb2xOE7kzpXljxf5PI=
Date: Thu, 24 Oct 2019 11:00:03 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Message-ID: <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
References: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_190011_484080_13383D81 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: MRuijter@onestopsystems.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 01:17:15PM -0700, Chaitanya Kulkarni wrote:
> @@ -45,17 +46,27 @@ int nvmet_file_ns_enable(struct nvmet_ns *ns)
>  
>  	ret = vfs_getattr(&ns->file->f_path,
>  			&stat, STATX_SIZE, AT_STATX_FORCE_SYNC);
> -	if (ret)
> -		goto err;
> -
> -	ns->size = stat.size;
> -	/*
> -	 * i_blkbits can be greater than the universally accepted upper bound,
> -	 * so make sure we export a sane namespace lba_shift.
> -	 */
> -	ns->blksize_shift = min_t(u8,
> -			file_inode(ns->file)->i_blkbits, 12);
> +	if (ret) {
> +		pr_err("failed to stat device file %s\n",
> +			ns->device_path);


Why remove the 'goto err' from this condition? The code that proceeds
may be using an uninitialized 'stat' without it.


> +	}
>  
> +	if (stat.size == 0 && ns->use_vfs) {
> +		bdev = blkdev_get_by_path(ns->device_path,
> +					  FMODE_READ | FMODE_WRITE, NULL);
> +		if (IS_ERR(bdev))
> +			goto err;
> +		ns->size = i_size_read(bdev->bd_inode);
> +		ns->blksize_shift = blksize_bits(bdev_logical_block_size(bdev));
> +	} else {
> +		/*
> +		 * i_blkbits can be greater than the universally accepted upper
> +		 * bound, so make sure we export a sane namespace lba_shift.
> +		 */
> +		ns->size = stat.size;
> +		ns->blksize_shift = min_t(u8,
> +				file_inode(ns->file)->i_blkbits, 12);
> +	}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
