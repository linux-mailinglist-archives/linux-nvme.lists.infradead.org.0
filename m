Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7B21DD1DC
	for <lists+linux-nvme@lfdr.de>; Thu, 21 May 2020 17:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lOpnvpHXJprAtQUrJwXKu+k+/r2f67UgdMw1EMCxFI=; b=YKEoiwSI7DMRb1
	hR/VxvIDyTKBGrNZRBES17/abNq/+OlfTDysCOe30IY916d8cqyZNfYI8i79zVh43MbPWEd10jRXT
	XMK1w+19aaaIExPNDBXF0AISaFwjm88s/kI7Y63Z3zDb220XZcKPg5O0RQZ8dssJGbRBID1xcDyXQ
	AMruml4cUHrmsgu+OpGIHuwrgJhoFDnIPL0MXHaOG59hWNBKvKT8rVLVIFqTkHDX8dsyL18o96qkK
	mmIGyz5D7w6tHucIF6CVQ5Nmw3v8lJkWbI3JuZPHAhFQyYmHjiFs4WcXna/DLmQAp3V1MLcl6kpiX
	UsirgNINtegf7pHZz8qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbn7Y-0008De-AF; Thu, 21 May 2020 15:28:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbn7P-0008C1-1h
 for linux-nvme@lists.infradead.org; Thu, 21 May 2020 15:28:27 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75342204EA;
 Thu, 21 May 2020 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590074902;
 bh=QkNaLn9N6eEKMHzCvjRAIL9JTNTz02qcPGT+9wJO5tI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dh30THNIPUPxeyU7I0YRQQCTBhZaNYKJlPm7ERVOCmikdSQrWw/mAGhVmCbsa3h5o
 RploTHpc2POOeYAKA1UD22+drl80pxi05lU/+AXzKUHMAEb7H6ff92PsuWmJCV+Mfb
 QGf/zPwCEYeb1IpTIIvyZv4CkXV1+ib99seaiUCg=
Date: Thu, 21 May 2020 08:28:20 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: set dma alignment to qword
Message-ID: <20200521152820.GA3269657@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200521022253.3268324-1-kbusch@kernel.org>
 <77425d7c-e8b8-b012-b1b3-c083b0b3af3c@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77425d7c-e8b8-b012-b1b3-c083b0b3af3c@grimberg.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_082823_112387_BF308BEB 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:05:51PM -0700, Sagi Grimberg wrote:
> 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index 805d289e6cd9..ba860efd250d 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -2283,6 +2283,7 @@ static void nvme_set_queue_limits(struct nvme_ctrl *ctrl,
> >   		blk_queue_max_segments(q, min_t(u32, max_segments, USHRT_MAX));
> >   	}
> >   	blk_queue_virt_boundary(q, ctrl->page_size - 1);
> > +	blk_queue_dma_alignment(q, 7);
> 
> Shouldn't be an issue for rdma/tcp, think that it should also be OK for
> FC as well but not sure.

Okay, just to be safe, I'll make this a nvme_ctrl_ops callback.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
