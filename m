Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D631DD22E
	for <lists+linux-nvme@lfdr.de>; Thu, 21 May 2020 17:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX6BmOH+wEKi+MzlYEJZULvUTd7Iys7Ta7fqkGxzp+c=; b=XmcQ4HY1AysEd3
	n76gGolk2rMQNguMDR3dvsPIFDVEBX2daWMES0NMy94M8Wg5Gmt1nRReUxY0YPCv2RDPxlxlsHDzh
	+BDgK/AoKyo5ol/SITGRWVhfmaRFvobJn+vOv27zPWTuCNgSrXPm+ecdIdw8rkVCh06FTPPT3oKJm
	Eszbg4O2eobZJnM2oEa409l6su1z5+7wOzxWf1zUYeosuC1TQXVKyZCjL4YScUmJc0mVzKuj7bQZr
	z5opatdL8y/X/x8chDTAHBFVcCN9OiSx/MmiJCsAYJpI7dILSW0pziiBS/PCl5ldAuMsrT0bjNCuC
	6IXuPqKBxPA6Z1hlfXJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnLc-00017c-Pr; Thu, 21 May 2020 15:43:04 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnLX-00017C-QW
 for linux-nvme@lists.infradead.org; Thu, 21 May 2020 15:43:01 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 77DF468C4E; Thu, 21 May 2020 17:42:56 +0200 (CEST)
Date: Thu, 21 May 2020 17:42:56 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: set dma alignment to qword
Message-ID: <20200521154256.GB19160@lst.de>
References: <20200521022253.3268324-1-kbusch@kernel.org>
 <77425d7c-e8b8-b012-b1b3-c083b0b3af3c@grimberg.me>
 <20200521152820.GA3269657@dhcp-10-100-145-180.wdl.wdc.com>
 <20200521152929.GA18535@lst.de>
 <20200521154151.GB3269657@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521154151.GB3269657@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_084300_004336_644C4560 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 08:41:51AM -0700, Keith Busch wrote:
> On Thu, May 21, 2020 at 05:29:29PM +0200, Christoph Hellwig wrote:
> > On Thu, May 21, 2020 at 08:28:20AM -0700, Keith Busch wrote:
> > > On Wed, May 20, 2020 at 11:05:51PM -0700, Sagi Grimberg wrote:
> > > > 
> > > > > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > > > > index 805d289e6cd9..ba860efd250d 100644
> > > > > --- a/drivers/nvme/host/core.c
> > > > > +++ b/drivers/nvme/host/core.c
> > > > > @@ -2283,6 +2283,7 @@ static void nvme_set_queue_limits(struct nvme_ctrl *ctrl,
> > > > >   		blk_queue_max_segments(q, min_t(u32, max_segments, USHRT_MAX));
> > > > >   	}
> > > > >   	blk_queue_virt_boundary(q, ctrl->page_size - 1);
> > > > > +	blk_queue_dma_alignment(q, 7);
> > > > 
> > > > Shouldn't be an issue for rdma/tcp, think that it should also be OK for
> > > > FC as well but not sure.
> > > 
> > > Okay, just to be safe, I'll make this a nvme_ctrl_ops callback.
> > 
> > No callbacks please, especially without users.  If FC needs an override
> > we should just add a field to struct nvme_ctrl.
> 
> Well, pci would be a user. But if you're okay with having the driver
> default to this alignment, would you consider taking this original patch,
> or do you want confirmation from FC developers on whether or not this
> is safe?

Lets wait for feedback from the FC folks.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
