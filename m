Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3D810C2E6
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 04:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHZBnSq8Yd+B+q/5IY3WVkHI1Y9sW7+v6zFpWO0KYLU=; b=hB1gQDOe+5qBwD
	pLVHezuk5Dq3TM+9J3yZ7wBHdSag9RwaNY9tQiww/tqSYkttnQ6UweMzhjtJI9aroEihJsgw571Fo
	MSQ6t7itHLafAXd0Ly0w2oPg2OHDdrzcyRb0ploz/6EfBffBeUqlTn3I9zorLq09pHwIJkbHndmY2
	2iyIz3P06M3BzA52YSxE+LsEAgonn4w22gTId3tlEXFSUwl//PXSb1QEWV8rVJNtlZpubTODzai9Y
	DFtZeSHsrzVYY9K5IySCu7AUGGmtDdyPxRK/gtmJOkAXQ9yEMtvzZ3xE0SGVXmmhujWWnp0godRhf
	ZG2qF6vK4CM+REmJJ78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAfH-0005uv-U7; Thu, 28 Nov 2019 03:40:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAfC-0005uH-JR
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 03:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574912414;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dYMTEk8iGM/kORC0Xipw72OalGHY4O2VCuXJpAGbhoQ=;
 b=U1FH1Hy3/jB/2eiFI3tZtJWuylKaWMl3wPrIXcPP9qJG9VpJLO8WsCF3W5CWUFivE+0XUF
 /ezeCpAKQndN8MEz9BPDblIUxvyr+rKFhdYF27lRgtPfn2uDtiMTUTMH2muB3sUHtnlhQ4
 +XMRwNypfCjIralow9knBvHQNDQqOVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-UCH2FkgwPJOXHQRRZyXdug-1; Wed, 27 Nov 2019 22:40:10 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 136B2107ACCA;
 Thu, 28 Nov 2019 03:40:09 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3649D19C70;
 Thu, 28 Nov 2019 03:40:00 +0000 (UTC)
Date: Thu, 28 Nov 2019 11:39:56 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 2/4] nvme/pci: Mask legacy and MSI in threaded handler
Message-ID: <20191128033956.GD3277@ming.t460p>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-3-kbusch@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191127175824.1929-3-kbusch@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: UCH2FkgwPJOXHQRRZyXdug-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_194018_784419_134554A5 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 helgaas@kernel.org, Thomas Gleixner <tglx@linutronix.de>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 02:58:22AM +0900, Keith Busch wrote:
> Local interrupts are re-enabled when the nvme irq thread is
> woken. Subsequent MSI or a level triggered legacy interrupts may restart
> the nvme irq check while the thread handler is running. This unnecessarily
> spends CPU cycles and potentially triggers spurious interrupt detection,
> disabling our NVMe irq.
> 
> Use the NVMe interrupt mask/clear registers to disable controller
> interrupts while the nvme bottom half processes completions.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 9d307593b94f..c5b837cba730 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1048,6 +1048,28 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
>  	return IRQ_NONE;
>  }
>  
> +static irqreturn_t nvme_irq_thread_msi(int irq, void *data)
> +{
> +	struct nvme_queue *nvmeq = data;
> +	struct nvme_dev *dev = nvmeq->dev;
> +
> +	nvme_irq(irq, data);
> +	writel(1 << nvmeq->cq_vector, dev->bar + NVME_REG_INTMC);
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t nvme_irq_check_msi(int irq, void *data)
> +{
> +	struct nvme_queue *nvmeq = data;
> +	struct nvme_dev *dev = nvmeq->dev;
> +
> +	if (nvme_cqe_pending(nvmeq)) {
> +		writel(1 << nvmeq->cq_vector, dev->bar + NVME_REG_INTMS);
> +		return IRQ_WAKE_THREAD;
> +	}
> +	return IRQ_NONE;
> +}
> +
>  /*
>   * Poll for completions any queue, including those not dedicated to polling.
>   * Can be called from any context.
> @@ -1502,6 +1524,11 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
>  	int nr = nvmeq->dev->ctrl.instance;
>  
>  	if (use_threaded_interrupts) {
> +		/* MSI and Legacy use the same NVMe IRQ masking */
> +		if (!pdev->msix_enabled)
> +			return pci_request_irq(pdev, nvmeq->cq_vector,
> +				nvme_irq_check_msi, nvme_irq_thread_msi,
> +				nvmeq, "nvme%dq%d", nr, nvmeq->qid);
>  		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
>  				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);

Just wondering why don't do that for misx_enabled, and according to
document of request_threaded_irq(), the handler is supposed to
disable the device's interrupt:

 *      If you want to set up a threaded irq handler for your device
 *      then you need to supply @handler and @thread_fn. @handler is
 *      still called in hard interrupt context and has to check
 *      whether the interrupt originates from the device. If yes it
 *      needs to disable the interrupt on the device and return
 *      IRQ_WAKE_THREAD which will wake up the handler thread and run
 *      @thread_fn. This split handler design is necessary to support
 *      shared interrupts.

However, MSI irq controller is said to be one shot safe, see
923aa4c378f9("PCI/MSI: Set IRQCHIP_ONESHOT_SAFE for PCI-MSI irqchips"),
then the question is that if interrupt mask is needed.


Thanks,
Ming


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
