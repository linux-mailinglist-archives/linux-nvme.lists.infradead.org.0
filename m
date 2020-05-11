Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F70C1CD8D9
	for <lists+linux-nvme@lfdr.de>; Mon, 11 May 2020 13:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INKudaqcwqN6VUhtWp0EwrQgm62vpTc4gnXt+Yx/HLs=; b=EABgSzDT0Oy15I
	WzHVF5H0UNZbbjIZS44xAGvQUB1kxYdeEQMkh3VKOkKJRv37Aa4ZNPRmfWB8az1+dqK66rT3SX581
	QeH9HBOob9QvNLmTcuf+HaCnzOZcQBe9r5s/SZ2gNt2TjDCGZkai+m0qc1B/ZhxVd+ziSBZRR0NFT
	qyQSvf5xT32UmbYSiZcoUciJQRG5jobay8tVUgl0MQ4mC/ZrXNf+ue3AySLjMfiJqM4SmCQl6FKVf
	Km0pnF5vqVaG3fULnKaMAtVstWQKDR+8DmqZIiF0g6LlLrsAaUs/R4F3dMmeEFzKehppWRbK4/46v
	ni7yf9ZyljoSC3anm9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6vr-0005zH-93; Mon, 11 May 2020 11:49:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6vm-0005yk-R3
 for linux-nvme@lists.infradead.org; Mon, 11 May 2020 11:49:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A73820735;
 Mon, 11 May 2020 11:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589197750;
 bh=BvRZXmMuapuNp0p+2M6WPeTL8fmI8i3xlnVzt8b0bak=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PgB2qKCP4VjfRypQYBWANSGIb/OU97qoVl3xsOy+pm1fek2orhH9BwpTHne9TN1V9
 aiW0HWCe/ExDoUqtr/3hb/qLBzLiKBodTQzvHiVoFHTYpg5SxnUaCCcbRS7sgv+8CX
 Q0P5THY5SmM02u+T2Wx1RPX/QaiZwn6PDHjxIISQ=
Date: Mon, 11 May 2020 12:49:06 +0100
From: Will Deacon <will@kernel.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: dma read memory barrier for completions
Message-ID: <20200511114905.GC18310@willie-the-truck>
References: <20200508200406.2814437-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508200406.2814437-1-kbusch@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_044910_895296_C073DDC6 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: John Garry <john.garry@huawei.com>, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 08, 2020 at 01:04:06PM -0700, Keith Busch wrote:
> Control dependencies do not guarantee load order across the condition,
> allowing a CPU to predict and speculate memory reads.
> 
> Commit 324b494c2862 inlined verifying a new completion with its
> handling. At least one architecture was observed to access the contents
> out of order, resulting in the driver using stale data for the
> completion.
> 
> Add a dma read barrier before reading the completion queue entry and
> after the condition its contents depend on to ensure the read order is
> determinsitic.
> 
> Reported-by: John Garry <john.garry@huawei.com>
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index e13c370de830..3726dc780d15 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -989,6 +989,11 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq)
>  
>  	while (nvme_cqe_pending(nvmeq)) {
>  		found++;
> +		/*
> +		 * load-load control dependency between phase and the rest of
> +		 * the cqe requires a full read memory barrier
> +		 */
> +		dma_rmb();
>  		nvme_handle_cqe(nvmeq, nvmeq->cq_head);
>  		nvme_update_cq_head(nvmeq);
>  	}

Thanks for doing this:

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
