Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 335EB10A1B7
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 17:06:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkXVtIXvPcsjgOhJdwQAk8mGlgFm4eXoRAZKRNAg2Yc=; b=grUw7azInvssBl
	XnGim5qvIpxiYsvHbgUjDYrDv3b1QdW28fYWNAERF/qNgzswp9999pEno6gP72nV+nacgXV+2fuf4
	jjxHVeTf4cwr26ZAWD8t872VM+3hJ/6PhETQR5zJQzhHl1T0VmvQEPEvoPggTbAP6+71bK0dBiTRF
	Ru2WcDqb58S5RFvwdsYMk4B0lz79FEBp1gzer6l4SKOVjWbv0RH8LDIeCWWvvPkZx/3RitbewB8ss
	LX0lC/TMbmKsDhH5gMB/wJrBrwNy8AvBIDXU99ihadqNd8q69AmTOcCtdtTyB9FBr7kaZlNHqWQ/0
	YBRep/t7Y+wq8H5mRTHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdLj-0003TQ-Ko; Tue, 26 Nov 2019 16:05:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdLf-0003Sf-3w
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 16:05:56 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 318E82071E;
 Tue, 26 Nov 2019 16:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574784353;
 bh=B7xnvXOa92BwBxjpFV+X9M2ewk2oriqIb18JEy/bGxs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pJ1JFkTn6UqyCfSvU3YbkF3xASiFmw3NztZbpw3CAYKmKPGiUveGytES/tjx+ewQp
 3G7MmPYeeXzrXjFioUPWdMYiDXdV+Rb9GS8k6Cl8onpzmL+1YaHdu2SZM6wf/J7tcq
 LTXG2ru8XmYPosxPxsOtPDMu212JP6Frq1UdPwtI=
Date: Wed, 27 Nov 2019 01:05:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme: Add support for ACRE Command Interrupted status
Message-ID: <20191126160546.GA2906@redsun51.ssa.fujisawa.hgst.com>
References: <20191126133650.72196-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126133650.72196-1-hare@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_080555_180055_E3E3745D 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jen Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, John Meneghini <johnm@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

[cc'ing linux-block, Jens]

On Tue, Nov 26, 2019 at 02:36:50PM +0100, Hannes Reinecke wrote:
> This patch fixes a bug in nvme_complete_rq logic introduced by
> Enhanced Command Retry code. According to TP-4033 the controller
> only sets CDR when the Command Interrupted status is returned.
> The current code interprets Command Interrupted status as a
> BLK_STS_IOERR, which results in a controller reset if
> REQ_NVME_MPATH is set.

I see that Command Interrupted status requires ACRE enabled, but I don't
see the TP saying that the CQE CRD fields are used only with that status
code. I'm pretty sure I've seen it used for Namespace Not Ready status
as well. That would also fail MPATH for the same reason as this new
status...

> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 108f60b46804..752a40daf2b3 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -201,6 +201,8 @@ static blk_status_t nvme_error_status(u16 status)
>  	switch (status & 0x7ff) {
>  	case NVME_SC_SUCCESS:
>  		return BLK_STS_OK;
> +	case NVME_SC_COMMAND_INTERRUPTED:
> +		return BLK_STS_RESOURCE;
>  	case NVME_SC_CAP_EXCEEDED:
>  		return BLK_STS_NOSPC;
>  	case NVME_SC_LBA_RANGE:
> diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
> index d688b96d1d63..3a0d84528325 100644
> --- a/include/linux/blk_types.h
> +++ b/include/linux/blk_types.h
> @@ -84,6 +84,7 @@ static inline bool blk_path_error(blk_status_t error)
>  	case BLK_STS_NEXUS:
>  	case BLK_STS_MEDIUM:
>  	case BLK_STS_PROTECTION:
> +	case BLK_STS_RESOURCE:
>  		return false;
>  	}

I agree we need to make this status a non-path error, but we at least
need an Ack from Jens or have this patch go through linux-block if we're
changing BLK_STS_RESOURCE to mean a non-path error.

> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index f61d6906e59d..6b21f3888cad 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -1292,6 +1292,8 @@ enum {
>  
>  	NVME_SC_NS_WRITE_PROTECTED	= 0x20,
>  
> +	NVME_SC_COMMAND_INTERRUPTED	= 0x21,

This command status was actually already defined in commit
48c9e85b23464, though with a slightly different name.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
