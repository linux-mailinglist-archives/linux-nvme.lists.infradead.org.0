Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C7424F33
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 14:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdRZlEw1EvW86JKxXrTJCeKBK/iSmINmxT3valqxj0Y=; b=niRgeJ17wCbM6L
	KsiAEq/g9ZlLqKBnT2MYv0wIIbK9P46aBo/MjY3hhSXK0SO6JHvS0n3S1dX3eBw455upwgkx3Dg4K
	K8hAc8UmynXvdaof4NXkCx8+8rGzdfDki3RXM+TCG6Zi2OY/FcKPYfaUBGqPyQuCd6UstJxDj10Gm
	jXpQZXw523g+D16UfDltMy9NHEMkm+qPUlF2ulc2oEWcN91SANpzp3jr0fNICTTU5NDC/1ZfjoZ6t
	xm9JoWgs5kwulyXf/03kABJfFyomBjt0kt+csARXvnsuf/1ZHZdoZdW4R9OUpxHs1wtmgeBb0I4Vo
	4kXJckhymPVKOh+KV1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4D2-0004Ph-Vd; Tue, 21 May 2019 12:49:36 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4Cy-0004PK-LD
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 12:49:34 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8B94E307D855;
 Tue, 21 May 2019 12:49:26 +0000 (UTC)
Received: from ming.t460p (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 566CF610A0;
 Tue, 21 May 2019 12:49:13 +0000 (UTC)
Date: Tue, 21 May 2019 20:49:09 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
Message-ID: <20190521124908.GA655@ming.t460p>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
 <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
 <20190521094535.GA28632@ming.t460p>
 <7a4863ba-ece9-e3fa-8396-21736d54e1fe@mellanox.com>
 <20190521104121.GA31530@ming.t460p>
 <23729cbc-3a3f-fe16-be14-71053253c53b@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23729cbc-3a3f-fe16-be14-71053253c53b@mellanox.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 21 May 2019 12:49:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_054932_738603_CBB25686 
X-CRM114-Status: GOOD (  25.23  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 02:50:22PM +0300, Max Gurtovoy wrote:
> 
> On 5/21/2019 1:41 PM, Ming Lei wrote:
> > On Tue, May 21, 2019 at 01:21:39PM +0300, Max Gurtovoy wrote:
> > > On 5/21/2019 12:45 PM, Ming Lei wrote:
> > > > On Tue, May 21, 2019 at 11:36:26AM +0300, Max Gurtovoy wrote:
> > > > > On 5/9/2019 9:42 PM, Greg Kroah-Hartman wrote:
> > > > > > [ Upstream commit eb3afb75b57c28599af0dfa03a99579d410749e9 ]
> > > > > > 
> > > > > > nvme_cancel_request() is used in error handler, and it is always
> > > > > > reliable to cancel request synchronously, and avoids possible race
> > > > > > in which request may be completed after real hw queue is destroyed.
> > > > > Ming,
> > > > > 
> > > > > If the completion is async in the block layer, can't a "good" request (not a
> > > > > canceled one..) complete after real HW queue is destroyed ?
> > > > In theory, it can't.
> > > > 
> > > > 1) in case of error recovery
> > > > 
> > > > It is driver's responsibility to sync normal completion and handling
> > > > error. NVMe PCI calls nvme_dev_disable() to shutdown controller, and
> > > > there won't be good request any more after nvme_dev_disable() returns.
> > > > I am not very familiar with NVMe RDMA code, but nvme_rdma_stop_io_queues()
> > > > is supposed to do that for avoiding race with normal completion. Otherwise,
> > > > it isn't enough by simply canceling in-flight requests.
> > > Indeed nvme_rdma_stop_io_queues will guaranty that we won't get anything
> > > from the wire/HCA anymore.
> > > 
> > > 
> > > But what happens to IO's that were completed before
> > > "nvme_rdma_stop_io_queues" in async way:
> > > 
> > > 1. nvme_end_request --> blk_mq_complete_request (async)
> > > 
> > > 2. error recovery starts (queues are stopped)
> > > 
> > > 3. block layer calls ops->complete(rq) on rq from step #1
> > > 
> > > if the blk_mq_quiesce_queue + blk_mq_unquiesce_queue don't sync the requests
> > > from #1, i think it might be problematic..
> > You are right, we might have to wait until there isn't any in-flight request
> > which is marked as transient MQ_RQ_COMPLETE before destroying hw queue.
> 
> is there an API in the block layer to guaranty that ?

So far there isn't yet.

And it can be built easily against blk_mq_tagset_busy_iter(), then called
in delay-spin style for checking if there is any request marked as
MQ_RQ_COMPLETE.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
