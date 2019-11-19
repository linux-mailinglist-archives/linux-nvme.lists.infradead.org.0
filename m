Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3DB10115B
	for <lists+linux-nvme@lfdr.de>; Tue, 19 Nov 2019 03:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ugt6l5dU3YNV7ezFePd28J/YmutNMUMG4sMVJcDjOeE=; b=T3fEy1nOYaMu6O
	wGFHvhOgYb6qAO8ms0QzrPbSh48jB2irxxYBB4cq7I8/leWBkUNQ6a2xGCvinB98/eFlTiKWT5qY1
	50BNByZERBTxsNvAkyHWY6kEzBZkHurFvEQZD8N5kQQIgBqlrAc8XW4JIO1qYsaUs1hh+2kKudTv1
	0yDilTnB//Cx1nM3QkRIVq2iB8NHSap+7IuYu1yaNJHgNLSZGAT9pr09S8fIsshUz1utev12gwGG2
	6L5w55bH/r7g6ClYTxjXReVYDF1pc1Pp824n2xd1UILGwC/YzqivtfoMWNvRIeFwUbnbvrFx4n1TE
	sq3rybhU7dpRQamnnyvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWtKY-0004iX-Om; Tue, 19 Nov 2019 02:33:26 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWtKT-0004ha-Hb
 for linux-nvme@lists.infradead.org; Tue, 19 Nov 2019 02:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574130798;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0MkXorS37MAT9qquxxYHBHfZi9PjbohKS55KZ5S0L6Y=;
 b=WQUakmSrUbtSfEM8i4TiAN05QtdHxq7KEdhje3KQpvtACaH7ZniAOmBdfM14xWOUxKxQH3
 ZELkw3dMVCitdTALuUsyYVkhvMVl9Qwuowi+iogR2mLyCiAxtMxLUCHfI4T3GGpkNIw1k3
 36jyW7O9jpOlHDS8Anzu+DLbFIlNWkc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-WSpetWe3N8mJo7dOYsxl0Q-1; Mon, 18 Nov 2019 21:33:15 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A48271005502;
 Tue, 19 Nov 2019 02:33:13 +0000 (UTC)
Received: from ming.t460p (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 837BB46469;
 Tue, 19 Nov 2019 02:33:06 +0000 (UTC)
Date: Tue, 19 Nov 2019 10:33:01 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH RFC 0/3] blk-mq/nvme: use blk_mq_alloc_request() for
 NVMe's connect request
Message-ID: <20191119023301.GC391@ming.t460p>
References: <20191115104238.15107-1-ming.lei@redhat.com>
 <8f4402a0-967d-f12d-2f1a-949e1dda017c@grimberg.me>
 <20191116071754.GB18194@ming.t460p>
 <016afdbc-9c63-4193-e64b-aad91ba5fcc1@grimberg.me>
MIME-Version: 1.0
In-Reply-To: <016afdbc-9c63-4193-e64b-aad91ba5fcc1@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: WSpetWe3N8mJo7dOYsxl0Q-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_183321_656028_0169FE5B 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@kernel.dk>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 04:05:56PM -0800, Sagi Grimberg wrote:
> 
> > Hi Sagi,
> > 
> > On Fri, Nov 15, 2019 at 02:38:44PM -0800, Sagi Grimberg wrote:
> > > 
> > > > Hi,
> > > 
> > > Hey Ming,
> > > 
> > > > Use blk_mq_alloc_request() for allocating NVMe loop, fc, rdma and tcp's
> > > > connect request, and selecting transport queue runtime for connect
> > > > request.
> > > > 
> > > > Then kill blk_mq_alloc_request_hctx().
> > > 
> > > Is it really so wrong to have an API to allocate a tag that belongs to
> > > a specific queue? Why must the tags allocation always correlate to the
> > > running cpu? Its true that NVMe is the only consumer of this at the
> > > moment, but does this mean that the interface should be removed because
> > > it has one (or rather four) consumer(s)?
> > 
> > Now blk-mq takes a static queue mapping between CPU and hw queues, given
> > CPU hotplug may happen any time, so the specified hw queue may become
> > inactive any time.
> > 
> > Queue mapping from CPU to hw queue is one core model of blk-mq which
> > relies a lot on the fact that hw queue active or not depends on
> > request's submission CPU. And we always can retrieve one active hw
> > queue if there is at least one online CPU.
> > 
> > IO request is always mapped to the proper hw queue via the submission
> > CPU and queue type.
> > 
> > So blk_mq_alloc_request_hctx() is really weird from the above blk-mq's
> > model.
> > 
> > Actually the 4 consumer is just one single type of usage for submitting
> > connect command, seems no one explain this special usage before. And the
> > driver can handle well enough without this interface just like this
> > patch, can't it?
> 
> Does removing the cpumask_and with cpu_online_mask fix your test?

It can be workaround this way, or return NULL if the hctx becomes
inactive.

But there is big problem to dispatch such request to inactive hctx, as
I explained.

> 
> this check is wrong to begin with because it can not be true right after
> the check.
> 
> This is a much simpler fix that does not create this churn local to
> every driver. Also, I don't like the assumptions about tag reservations
> that the drivers is taking locally (that the connect will have tag 0
> for example). All this makes this look like a hack.

The patch I posted can be applied to non-reserved tag too, and the connect
request can figured by rq->private_rq_data simply.

Also, we can provide blk_mq_rq_is_reserved() helper if you think 'rq->tag == 0'
is like a hack.

> 
> There is also the question of what happens when we want to make connects
> parallel, which is not the case at the moment...

There are several solutions for this:

1) schedule the connection on selected CPUs, so that all hw queues can be
covered

2) use single tag_set for connect command only.


Thanks, 
Ming


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
