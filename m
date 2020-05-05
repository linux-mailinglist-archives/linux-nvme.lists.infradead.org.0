Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A713B1C4E1F
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 08:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsx4k3kVIDeALYD4zGL4wh0WnZUa4U3I4rYBmq0cADs=; b=DzFAslcxAEJ+yn
	QApPjl9PRNeaizhPwg5qw2g30Srl2OG4/+vbQaIbKMQJ8vEMwkIVgJW9yLX26+nypaurq5L0pNY78
	LxzfF09dgSRULZW2t7BmYsOTLE75csAQZ2KGEI2zWZanVPfcG7xV3Yhp1kQi9yo0DuG7rKX9VciFO
	CjJ9f+V33T7Dcs++P6z0uTzHmPppVB26BPMFUZL3wsc5mS1b3aZJ89v1nngGjH4EZRxSCm2NYAeO6
	nO9bEFXez8neuvsTrewBUQbdZxyO6rMOJ4AOVY45rWzWuoGgruiB+P/UHREbuI+E6kUoCMjbfRC3L
	Bx9nOCaxsw41wFrEdrAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVqoL-0005PV-7Z; Tue, 05 May 2020 06:12:09 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVqoG-0005Ov-8h
 for linux-nvme@lists.infradead.org; Tue, 05 May 2020 06:12:05 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6125568BEB; Tue,  5 May 2020 08:12:01 +0200 (CEST)
Date: Tue, 5 May 2020 08:12:01 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 09/16] nvme-rdma: add metadata/T10-PI support
Message-ID: <20200505061201.GB3995@lst.de>
References: <20200504155755.221125-1-maxg@mellanox.com>
 <20200504155755.221125-10-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504155755.221125-10-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_231204_454419_13D5ADF3 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: axboe@kernel.dk, jsmart2021@gmail.com, sagi@grimberg.me,
 martin.petersen@oracle.com, shlomin@mellanox.com, israelr@mellanox.com,
 vladimirk@mellanox.com, linux-nvme@lists.infradead.org, idanb@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 06:57:48PM +0300, Max Gurtovoy wrote:
> For capable HCAs (e.g. ConnectX-5/ConnectX-6) this will allow end-to-end
> protection information passthrough and validation for NVMe over RDMA
> transport. Metadata offload support was implemented over the new RDMA
> signature verbs API and it is enabled for capable controllers.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> ---
>  drivers/nvme/host/rdma.c | 272 +++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 262 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> index 4086874..05dbed3 100644
> --- a/drivers/nvme/host/rdma.c
> +++ b/drivers/nvme/host/rdma.c
> @@ -34,6 +34,11 @@
>  
>  #define NVME_RDMA_MAX_INLINE_SEGMENTS	4
>  
> +#define NVME_RDMA_DATA_SGL_SIZE \
> +	(sizeof(struct scatterlist) * NVME_INLINE_SG_CNT)
> +#define NVME_RDMA_METADATA_SGL_SIZE \
> +	(sizeof(struct scatterlist) * NVME_INLINE_METADATA_SG_CNT)

It might make sense to lift this to common code as well and clean up the
other transports, but we don't really need to do that in this series.

Otherwise this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
