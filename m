Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8B118043E
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 18:02:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+eVtLiKdHAfysGzpSw5uTdWGX8/Z24KS8KcFYZLlhM=; b=FYY92+HooNKNc9
	nmDcqnkNwL8RJaqCGbgtCQSyPl7F+IQ8lvyjN9f2jGLu2JYTcdi6QsG5vq1UhNIVMI1N2JgyVa+9S
	VwcB60AZauixhVLgPjmbiMo9gEb9VUjr6pKsYtuVjTAmoDPI4vpON8LNf7kq3k0nOJylxroRFG4BM
	2IEarWRyXgGWSRzJl6H8R/8rNpmMTQc7Ryr/FW7cTLp/NlESpPwIdEf/jV4Hax7JvrcDAtrtmuivo
	EsPKAadDwe/z/Lqd+Q/oSXW8FkM2sTuZtZTT4xvQ+DZwAYp15fLMiECXMvcxUI2CYPONDUpVdp3Hz
	hmnJNlvg/HsU9pRcWYVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiH3-0004h9-Pa; Tue, 10 Mar 2020 17:02:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiGy-0004gM-VS
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 17:02:30 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5F84168BE1; Tue, 10 Mar 2020 18:02:26 +0100 (CET)
Date: Tue, 10 Mar 2020 18:02:26 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv2 3/3] nvme-pci: Simplify nvme_poll_irqdisable
Message-ID: <20200310170226.GC7114@lst.de>
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-4-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304181246.481835-4-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100229_301749_BAF78DC3 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: bijan.mottahedeh@oracle.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 10:12:46AM -0800, Keith Busch wrote:
> The timeout handler can use the existing nvme_poll() if it needs to
> check a polled queue, allowing nvme_poll_irqdisable() to handle only
> irq driven queues for the remaining callers.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 38 ++++++++++++++++----------------------
>  1 file changed, 16 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 02f22c63adcf..227e2aed7e08 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1020,35 +1020,20 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
>  }
>  
>  /*
> - * Poll for completions any queue, including those not dedicated to polling.
> + * Poll for completions for any interrupt driven queue
>   * Can be called from any context.
>   */
> -static int nvme_poll_irqdisable(struct nvme_queue *nvmeq)
> +static void nvme_poll_irqdisable(struct nvme_queue *nvmeq)
>  {
>  	struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
>  
> +	disable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
> +	nvme_process_cq(nvmeq);
> +	enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));

This could use a:

	WARN_ON_ONCE(test_bit(NVMEQ_POLLED, &nvmeq->flags));

>  }
>  
> -static int nvme_poll(struct blk_mq_hw_ctx *hctx)
> +static int __nvme_poll(struct nvme_queue *nvmeq)

Do we really need the magic __nvme_poll?  struct request has a
pointer to the blk_mq_hw_ctx, so we could just pass that.

> +	if (!test_bit(NVMEQ_POLLED, &nvmeq->flags))
> +		nvme_poll_irqdisable(nvmeq);
> +	else
> +		__nvme_poll(nvmeq);
> +

Any reason for the odd inversion and not simply:

	if (test_bit(NVMEQ_POLLED, &nvmeq->flags))
		nvme_poll(req->mq_hctx);
	else
		nvme_poll_irqdisable(nvmeq);

?

Otherwise looks good.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
