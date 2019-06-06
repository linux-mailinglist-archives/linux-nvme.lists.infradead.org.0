Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B1D36C7E
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 08:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfVJCQPJfuAhWlFGX86E16VHFHhuTxzGOXzUmfc+CUo=; b=Ednu0mNOpQNoUi
	O/p+fMN8jKfasb4ujke1zX0giJCs6PPrqhWrAvrlfokfQob3xFqYyNDi/piNpLjCogwcZtsWsCTRD
	5LxPSCmYBk/5CjWGESCLeKi4wyAqWRbWSrpIBX+MPUkMfAI6ZCB+ufyOfUXG845WiL0td+xGeM8+B
	6QUD4l5b892YnHMBS6Xcep7tVEnbsTw/fh9xto4G+y1766evyUcwUWyfNmgdL37q2d9I2VGYjKlwe
	1J3nhdZ7GrhDkB3gmnXe/NSZkUHOEWCTIM5milB59/W9ysf5TAiexzEW87rG+/+YyGmd3xsdh59fd
	MzYFoOwpmC0AnK7nlYlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYmA5-0007Sj-Gy; Thu, 06 Jun 2019 06:46:09 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYmA0-0007SR-EX
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 06:46:05 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0A2EE68B05; Thu,  6 Jun 2019 08:45:38 +0200 (CEST)
Date: Thu, 6 Jun 2019 08:45:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
Message-ID: <20190606064537.GE27033@lst.de>
References: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_234604_637981_1F618693 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, james.r.harris@intel.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
> Suggested-by: Sagi Grimberg <sagi@grimberg.me>
> Tested-by: Jim Harris <james.r.harris@intel.com>

Shouldn't this also have a reported-by?

> -static void nvme_rdma_free_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
> -		size_t capsule_size, enum dma_data_direction dir)
> +static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
> +		struct nvme_rdma_qe *qe, size_t capsule_size,
> +		enum dma_data_direction dir)
>  {
>  	ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
>  	kfree(qe->data);
>  }
>  
> -static int nvme_rdma_alloc_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
> -		size_t capsule_size, enum dma_data_direction dir)
> +static int nvme_rdma_alloc_mapped_qe(struct ib_device *ibdev,
> +		struct nvme_rdma_qe *qe, size_t capsule_size,
> +		enum dma_data_direction dir)

I agree with Sagi that we probably should drop the renames.

Can you write out the explanation somewhere why the AEN SQE doesn't
need this treatment?  Especially as that would actually allow moving
the DMA mapping into nvme_rdma_post_send and clean things up a bit.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
