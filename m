Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D42914DD83
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 16:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8RmlsQlt3VszO2FVTjZTtJP8XOboIWvJ0aY5Hapcaa0=; b=KhkvoQ10oPde6V
	LcNA2lpAJjujFaAWJLKnpNqd8pIQuoo1mdXV4qjSyGHUUSclrJ8V0oz2uob3rDTmgTxyYz7nrGmeV
	IUyrSZMFGysPjDCWgnDCjWR4jr1Q4OpKoWn/0x/KihhYZ0RlTAx8BAoNhZYP+UZiSGAoC2xa/Nj/l
	04OBEvyA+LfruCi7QXVPhrTgQyi7YsxFb2Irv5CpQ2pi1OJ2mdFPCaACStYdiHSXmFeF1ZreG3Yh3
	L/pu5n+vkaFNXCtzMyhXTU1ZwQ39tU0THsWEIWKcSJJ/N0HnAw3yStucaKo6lREZfrdev1YPqQdgr
	PgwU/GHJV7ugMqSqwkyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBNN-0006zM-9A; Thu, 30 Jan 2020 15:05:01 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ixBND-0006yN-V3; Thu, 30 Jan 2020 15:04:51 +0000
Date: Thu, 30 Jan 2020 07:04:51 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] nvme: fix uninitialized-variable warning
Message-ID: <20200130150451.GA25427@infradead.org>
References: <20200107214215.935781-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107214215.935781-1-arnd@arndb.de>
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Marta Rybczynska <mrybczyn@kalray.eu>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Hannes Reinecke <hare@suse.de>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 10:42:08PM +0100, Arnd Bergmann wrote:
> Fixes: mmtom ("init/Kconfig: enable -O3 for all arches")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/nvme/host/core.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 667f18f465be..6f0991e8c5cc 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -825,14 +825,15 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>  	int ret;
>  
>  	req = nvme_alloc_request(q, cmd, flags, qid);
> -	if (IS_ERR(req))
> -		return PTR_ERR(req);
> +	ret = PTR_ERR_OR_ZERO(req);
> +	if (ret < 0)
> +		return ret;

This one is just gross.  I think we'll need to find some other fix
that doesn't obsfucate the code as much.

>  
>  	req->timeout = timeout ? timeout : ADMIN_TIMEOUT;
>  
>  	if (buffer && bufflen) {
>  		ret = blk_rq_map_kern(q, req, buffer, bufflen, GFP_KERNEL);
> -		if (ret)
> +		if (ret < 0)

OTOH if this shuts up a compiler warning I'd be perfectly fine with it.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
