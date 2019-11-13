Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E87FFB457
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 16:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGEL/L/cN1CaD7/p+1D9OFM94MUOtDGDK+HaMo/bYOQ=; b=FwlBN2exw92g6N
	TW/gy+J/2UEDgtJq7dz3HPS8Is4U1Ol//IBCmmrmazEezTHIIkm8PZkTQzLOHeETiJyq/lmk5XU2c
	kIVdKG+7nU8uVXFfRr8RWiDADCJ+MnHOSWaMi5U64A2SlhAP9ABePSFjhSw741J57wer28WUfvKAB
	dsbVh1GJRbUVA87hGMyaVps0wY1Iqh1Mb80k/FcWwjmoUS4mKHk2aP4QxmhlybFfChhczoxj8YfQq
	ZNB/xkTUwXG6ea5NEtOgt6EDWuHhgsLWrk+ktTMo4mrrKsfUTPEEYB0u1Wm6SioqIZ/XRSdyQ9P9E
	uq1BXKFzQxAl4c9lZU1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUuxv-0005Mv-Je; Wed, 13 Nov 2019 15:53:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUuxG-0004qd-5S
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 15:53:15 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 761B023359;
 Wed, 13 Nov 2019 15:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573660393;
 bh=DVOcZ8/fBUcKlOgdKPG0LwFf9qtbTkFL+LE15yEqGA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KKG/N20xeai5ZzoU97savgt5q7f2m4zHGRKThLBdO87UkKt/alAmUpXGgqViZa5oE
 C4QOIm/CUm50zqZcIM6o+x7wDR06+fksmCTsa7sx9mQnn5mIDIK6ztAEPWoNEmXzol
 TCCyUihDuJLcdDACK9n072SGPj75wmLCwDKR9jiU=
Date: Thu, 14 Nov 2019 00:53:06 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V2 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191113155306.GA26795@redsun51.ssa.fujisawa.hgst.com>
References: <20191113134248.26022-1-ming.lei@redhat.com>
 <20191113134248.26022-3-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113134248.26022-3-ming.lei@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_075314_248728_40036EEB 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Long Li <longli@microsoft.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 09:42:48PM +0800, Ming Lei wrote:
> +static void nvme_check_cq(struct nvme_queue *nvmeq)
> +{
> +	if (test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags) &&
> +			nvme_cqe_pending(nvmeq)) {
> +		unsigned long flags;
> +
> +		if (spin_trylock_irqsave(&nvmeq->cq_lock, flags)) {

What's with the irqsave? This isn't called from an irq disabled context.

Not saying I'm on board with this approach, though. Checking the cq
during submission was cheap when submission and completion sides shared
the same lock, but this quite different than what we previously had.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
