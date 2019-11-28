Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2961610CE2A
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 18:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inEKn4+z/rMa61lEwtABOOiUvm12bUCHTJqZDdcJdd8=; b=RjTvNYPc9eBW2d
	vucKMsDacqi055U4fRXlnwhD9+e7oMBuAv2W+mRIkfhJvN55sKFsLjkBVgZKMcshvHUBlXPMpL8ux
	cbpElgtEuEpRieX0cBBcFPoAQhnoh9cxC+9vIP63KzZO2apR+A8mqRpO6/XnyWTFfSiak4JLhjKXs
	3Di89f/XPHNITDHZVfgP1vZcSkPCuOqK7DM2LG/vWkgeJRWpGSLKlOHGrEG40dFJO8XqTTvjftcJ7
	OKjzgfi9oIStI3uuZb7WB1STVMTSxJE6tDacaDJkQTRF+ay6ldVFQAYqD4op+T1amlH7RWmTya1S/
	6hVCaHm7T3/lo25xVbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaO4T-0001di-1I; Thu, 28 Nov 2019 17:59:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaO4N-0001d8-Bz
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 17:59:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9DBD20656;
 Thu, 28 Nov 2019 17:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574963950;
 bh=5KQJHyogY7J9qErpwnfD9e98zQexFaAp9tyoFcW7Rk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dlGsourjFCo4APy7pih03qAYTMlFvRcoBkrd5IfLkRgBaAZeqx31NV1ggbE9Pd3bl
 /TwMGKlXTXLcJmfVeZ/8TGUyvhTIWNDPtW9ik/1+CnwtPWvTWiEUmoKk2Erj7IiWPU
 vxJH9FMd/GpwPSDKsuLYnGQX+MIyHiy2rP7FVNjk=
Date: Fri, 29 Nov 2019 02:59:04 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191128175904.GA3011@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191128075047.GC20659@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128075047.GC20659@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_095911_432779_48DC4098 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: bigeasy@linutronix.de, helgaas@kernel.org, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 08:50:47AM +0100, Christoph Hellwig wrote:
> +	if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
> +		__pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 1);
> +	else
> +		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMS);

Oh, we know which branch this would take before we register the callback,
so smaller specialized functions don't need if/else checks. I even want
to remove the shadow doorbell checks for normal devices by giving each
different submission/completion callbacks too. They are individually
unmeasurable, but maybe they'll add up! :D

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
