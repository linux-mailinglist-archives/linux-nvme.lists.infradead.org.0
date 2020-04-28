Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE01BB73B
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 09:09:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEeaCyOJtmruW+xNJyeJ5iShbz9fq9Sw1xm37MJyItI=; b=C/HoR0o0TUte+z
	bSXdeDGg58KEmHPg6whE5OJMj5sVZxUW+KNfMw9uXNc6bE+AnCaT8kAMjpea/rvW+8sYuhgwjz66F
	XFchtnBpYOn8C7nfkJI46v9ymJs7mhWYRcud+Fr4nl82LRLAGyVyaewDis2C53vhz7JlnYJKq128J
	c5eeWKMoPAHNApekZ8wXftb5YVQ2umMzZ/b0bFhxpMV5Zk4HkQvZJL2MgZpwITF5XquY+N/BaO0L5
	DDDUBTXiK2WKnn3KULCPD5AMGhgu5Sqit9M+Ul4URjqV4sCnjeOSYkuI2G8pkQ84LQsyZstsPF30I
	1uyoLm/oObFxpoZCSrtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKMW-0003cM-T7; Tue, 28 Apr 2020 07:09:00 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKMQ-0003bu-MC
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 07:08:56 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 7117368CEC; Tue, 28 Apr 2020 09:08:48 +0200 (CEST)
Date: Tue, 28 Apr 2020 09:08:48 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: remove volatile cqes
Message-ID: <20200428070848.GD18754@lst.de>
References: <20200427191446.2195863-1-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427191446.2195863-1-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_000854_872909_84F24870 
X-CRM114-Status: GOOD (  14.36  )
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 12:14:46PM -0700, Keith Busch wrote:
> The completion queue entry is not volatile once the phase is confirmed.
> Remove the volaitle keywords and check the phase using the appropriate
> READ_ONCE() accessor, allowing the compiler to optimize the remaining
> completion path.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 8ebcf40f04fe..cf386c84588b 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -166,7 +166,7 @@ struct nvme_queue {
>  	void *sq_cmds;
>  	 /* only used for poll queues: */
>  	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
> -	volatile struct nvme_completion *cqes;
> +	struct nvme_completion *cqes;
>  	dma_addr_t sq_dma_addr;
>  	dma_addr_t cq_dma_addr;
>  	u32 __iomem *q_db;
> @@ -908,8 +908,9 @@ static void nvme_pci_complete_rq(struct request *req)
>  /* We read the CQE phase first to check if the rest of the entry is valid */
>  static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
>  {
> -	return (le16_to_cpu(nvmeq->cqes[nvmeq->cq_head].status) & 1) ==
> -			nvmeq->cq_phase;
> +	return (le16_to_cpu(
> +			READ_ONCE(nvmeq->cqes[nvmeq->cq_head].status)) & 1) ==
> +				nvmeq->cq_phase;

Despite the sound logic this just visually looks horrible.  How about:

static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
{
	struct nvme_completion *hcqe = &nvmeq->cqes[nvmeq->cq_head];

	return (le16_to_cpu(READ_ONCE(hcqe->status)) & 1) == nvmeq->cq_phase;
}

Otherwise looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
