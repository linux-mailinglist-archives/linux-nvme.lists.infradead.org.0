Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FDE70E7E
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 03:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hL87dyqN6sgNlKhdXKqM98Qmm+mS/NyXtrwYMce/4M=; b=WMtkKiPdrj7pPU
	3HiDjMP28rO9Q1A4edKIpHY+vjYeGoZK4yFqGCh60BBuAUHD9xRRAoQxqfx5eLC9ywBm5T0GevsO7
	MlQo3jsh1Wcpb+VGAbqRf/NlRErdFtr0to0trOvXVeRviAXiqxJhuzhyi4K2kRCUiBiofW4dZAVJl
	LwuH0CYZDaX4Fl6Z3drz1Rc52yyoXtogdEeiDhET9bxK7Oeyt8LZrn4j9z6eU8A2zAFhiZAd+Y80L
	8VeU47dSAnJElB7pQ1HqrSM50DeChvkdjTzBecWv+DNy2QVp2Jl3C5sKIgFk99wqeh+3qr90Hrq+h
	eF+Flz8IL+afxRb7JOPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpjIm-0000E3-Hb; Tue, 23 Jul 2019 01:09:12 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpjIZ-0000Di-Ad
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 01:09:00 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 03426C057F2E;
 Tue, 23 Jul 2019 01:08:59 +0000 (UTC)
Received: from ming.t460p (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CAC35C220;
 Tue, 23 Jul 2019 01:08:52 +0000 (UTC)
Date: Tue, 23 Jul 2019 09:08:46 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
Message-ID: <20190723010845.GD30776@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
 <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 23 Jul 2019 01:08:59 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_180859_389820_9AA30498 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 08:27:32AM -0700, Bart Van Assche wrote:
> On 7/21/19 10:39 PM, Ming Lei wrote:
> > Before aborting in-flight requests, all IO queues have been shutdown.
> > However, request's completion fn may not be done yet because it may
> > be scheduled to run via IPI.
> > 
> > So don't abort one request if it is marked as completed, otherwise
> > we may abort one normal completed request.
> > 
> > Cc: Max Gurtovoy <maxg@mellanox.com>
> > Cc: Sagi Grimberg <sagi@grimberg.me>
> > Cc: Keith Busch <keith.busch@intel.com>
> > Cc: Christoph Hellwig <hch@lst.de>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >   drivers/nvme/host/core.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> > index cc09b81fc7f4..cb8007cce4d1 100644
> > --- a/drivers/nvme/host/core.c
> > +++ b/drivers/nvme/host/core.c
> > @@ -285,6 +285,10 @@ EXPORT_SYMBOL_GPL(nvme_complete_rq);
> >   bool nvme_cancel_request(struct request *req, void *data, bool reserved)
> >   {
> > +	/* don't abort one completed request */
> > +	if (blk_mq_request_completed(req))
> > +		return;
> > +
> >   	dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
> >   				"Cancelling I/O %d", req->tag);
> 
> Something I probably already asked before: what prevents that
> nvme_cancel_request() is executed concurrently with the completion handler
> of the same request?

The commit log did mention the point:

	Before aborting in-flight requests, all IO queues have been shutdown.

which implies that no concurrent normal completion.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
