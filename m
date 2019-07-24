Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46256723C2
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 03:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIRLl1UfLGl5np89ZVbheHG5jsidWX9nVFQyyeScXko=; b=ewmuCvFpgnh2lQ
	yqNsKVg5Bwixi00nXMN2gItzAPNAfoVq1GFM8/GrQgPEE1kw7JzHTAZHkppgYsdrcc119KHk1GvYs
	vvCBvggJNGdBFd3ZZqbsMyi6ILqWKtYnqmKqO2dj8x3CEzTBHcfH7XCWcL6Fs/1PklAFFTHqVX3GN
	53esPyJZvpuP5zE0px2O0CwFOEKOAg5uMQZFf9XcNAlC4bt/yBsl37LbrWaxMkJ6O2xQRWyzsCTNj
	0iUtW/cTXv38GAOttRGFFZ1Uns8cvyAvq+t6cON+jAjDwbJF89OXOE29ovXAxNZk33RlciQ9iS7m/
	jiWkCAtIYv83/tELSEoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq6BV-00070M-Iq; Wed, 24 Jul 2019 01:35:13 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq6BG-0006xm-87
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 01:34:59 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 32AF2308C21E;
 Wed, 24 Jul 2019 01:34:55 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 335431001DD7;
 Wed, 24 Jul 2019 01:34:42 +0000 (UTC)
Date: Wed, 24 Jul 2019 09:34:34 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
Message-ID: <20190724013432.GB22421@ming.t460p>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-3-ming.lei@redhat.com>
 <c2722892-9cbf-0747-58a8-91a99b72bc53@acm.org>
 <20190723010616.GC30776@ming.t460p>
 <d4d3ded9-0012-68c1-7511-f5ac3aa7b1fb@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4d3ded9-0012-68c1-7511-f5ac3aa7b1fb@acm.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 24 Jul 2019 01:34:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_183458_314807_2A7FF62A 
X-CRM114-Status: GOOD (  19.27  )
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

On Tue, Jul 23, 2019 at 01:54:52PM -0700, Bart Van Assche wrote:
> On 7/22/19 6:06 PM, Ming Lei wrote:
> > On Mon, Jul 22, 2019 at 08:25:07AM -0700, Bart Van Assche wrote:
> > > On 7/21/19 10:39 PM, Ming Lei wrote:
> > > > blk-mq may schedule to call queue's complete function on remote CPU via
> > > > IPI, but doesn't provide any way to synchronize the request's complete
> > > > fn.
> > > > 
> > > > In some driver's EH(such as NVMe), hardware queue's resource may be freed &
> > > > re-allocated. If the completed request's complete fn is run finally after the
> > > > hardware queue's resource is released, kernel crash will be triggered.
> > > > 
> > > > Prepare for fixing this kind of issue by introducing
> > > > blk_mq_tagset_wait_completed_request().
> > > 
> > > An explanation is missing of why the block layer is modified to fix this
> > > instead of the NVMe driver.
> > 
> > The above commit log has explained that there isn't sync mechanism in
> > blk-mq wrt. request completion, and there might be similar issue in other
> > future drivers.
> 
> That is not sufficient as a motivation to modify the block layer because
> there is already a way to wait until request completions have finished,
> namely the request queue freeze mechanism. Have you considered to use that
> mechanism instead of introducing blk_mq_tagset_wait_completed_request()?

The introduced interface is used in EH, during which the aborted
requests will stay at blk-mq sw/scheduler queue, so queue freeze will
cause deadlock. We simply can't use it.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
