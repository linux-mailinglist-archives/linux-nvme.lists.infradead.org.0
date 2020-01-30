Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C214E0C7
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Jan 2020 19:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aoiniYu7SJ2zIlc/F/c5TYQ5YBEw+vkvhz+WwIH5Kg=; b=LeLH0MwMQ4tBbt
	hu9Ei5DdnGcgZsFRA7igHDdUorkB99bl1Qq/4turmmzfKc5lLjGqLV0XcG3VEVpabzEj4MAs/u/SD
	oNUsKByrYYIGxdQQevklUruEwNmpH5f4Zb/yjD7tOLJqM0aCr5LK7SpXKNyKNmRy+DD/FtCmWpxdj
	51hgFf0BEQeC/eM0ZWb4ot+kroCwGaw5sIHx3GssjYp8heCNSz5lCxFZ2QKEQ8xt3otcGDfa0bUBA
	ppFg+x9XJqDR0znDCT+BUOsnltWrxtR7sZaLmvCUK9Vm2dJZayvYEmDpnLlqLFgJs1VW/cs2ttOsq
	QqlVGBOZ2t8+k+K6xOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixEWx-00047G-GV; Thu, 30 Jan 2020 18:27:07 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1ixEWs-00046I-FQ; Thu, 30 Jan 2020 18:27:02 +0000
Date: Thu, 30 Jan 2020 10:27:02 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH v2 1/1] nvme: clear io tags when freeing tagset
Message-ID: <20200130182702.GA7002@infradead.org>
References: <20200123201947.4482-1-edmund.nadolski@intel.com>
 <20200123201947.4482-2-edmund.nadolski@intel.com>
 <20200130145335.GA8412@infradead.org>
 <20200130174732.GA7915@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130174732.GA7915@redsun51.ssa.fujisawa.hgst.com>
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
Cc: Christoph Hellwig <hch@infradead.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jan 31, 2020 at 02:47:32AM +0900, Keith Busch wrote:
> On Thu, Jan 30, 2020 at 06:53:35AM -0800, Christoph Hellwig wrote:
> > +static inline struct blk_mq_tags *nvme_queue_tagset(struct nvme_queue *nvmeq)
> > +{
> > +	if (!nvmeq->qid)
> > +		return nvmeq->dev->admin_tagset.tags[0];
> > +	return nvmeq->dev->tagset.tags[nvmeq->qid - 1];
> > +}
> 
> It's been this way for so long, I thought we cached the address of the
> tags in the nvmeq using it to avoid this more complex lookip, so I told
> Ed not do the above. But the original commit doing this was to remove
> relying on a specific hctx to reach the tags, so it's nothing to do with
> any observed performance change ... And this makes struct nvme_queue
> smaller too, so all the better.

Also I just noticed in rdma, tcp and loop we actually already have this
helper and no tags pointer.  And it might have been my code originally.
I'll post a formal patch soon.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
