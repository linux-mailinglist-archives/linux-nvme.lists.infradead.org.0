Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C36FB0FA
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 00:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLn5heCn7PlNwVwMmhABQSSWSg4S4aqXErnug/kFwjA=; b=oXJy/ei0Rbnqm3
	mwTZxclHZCCxfuSM0sZVja34zwBSQrq2NrmPrqNg0Ve4ihsJZlhxcYUR4sQWvCASEfodu+kDpcxAZ
	UakTxqFbvXpBM9EjSAWvq7E46GIM9sigqOfePFQJj0/Ae6WMYvnTTUX4quxev094hBVrWwe76n0pJ
	UxbbWciL5YxWBsfNPxcmtAJPIdD+onbLjmPFb5/QNZvFAllW7uCaGyII0fYgfO6Q6C0I8vHOdxJun
	GhL+lXGEzWffptQJKLVhiZIUYAi5ZQnJrA1knK0C69L52r1POfn/K+3S+ZcORewoUsCBv9rk7tTJM
	E8mVsRmCYn0ohSTIl9aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hK9f1-0008Qw-OR; Fri, 26 Apr 2019 22:49:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hK9ex-0008QZ-Cc
 for linux-nvme@lists.infradead.org; Fri, 26 Apr 2019 22:49:36 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 02C3130BCBF6;
 Fri, 26 Apr 2019 22:49:35 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B5126194A0;
 Fri, 26 Apr 2019 22:49:25 +0000 (UTC)
Date: Sat, 27 Apr 2019 06:49:20 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Bart Van Assche <bvanassche@acm.org>
Subject: Re: [PATCH V7 9/9] nvme: hold request queue's refcount in ns's whole
 lifetime
Message-ID: <20190426224919.GE31470@ming.t460p>
References: <20190424110221.17435-1-ming.lei@redhat.com>
 <20190424110221.17435-10-ming.lei@redhat.com>
 <20190424162746.GE23854@lst.de> <20190425010030.GD22636@ming.t460p>
 <20190426151114.GB20438@lst.de>
 <1556298263.161891.152.camel@acm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556298263.161891.152.camel@acm.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 26 Apr 2019 22:49:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_154935_446543_CFD71493 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>,
 "James E . J . Bottomley" <jejb@linux.vnet.ibm.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Dongli Zhang <dongli.zhang@oracle.com>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Bart Van Assche <bart.vanassche@wdc.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 10:04:23AM -0700, Bart Van Assche wrote:
> On Fri, 2019-04-26 at 17:11 +0200, Christoph Hellwig wrote:
> > On Thu, Apr 25, 2019 at 09:00:31AM +0800, Ming Lei wrote:
> > > The issue is driver(NVMe) specific, the race window is just between
> > > between blk_cleanup_queue() and removing the ns from the controller namspace
> > > list in nvme_ns_remove()
> > 
> > And I wouldn't be surprised if others have the same issue.
> > 
> > > 
> > > blk_mq_init_queue() does hold one refcount, and its counter-part is
> > > blk_cleanup_queue().
> > > 
> > > It is simply ugly to ask blk_mq_init_queue() to grab a refcnt for driver,
> > > then who is the counter-part for releasing the extra refcount?
> > 
> > Well, the problem is exactly that blk_cleanup_queue drops the reference.
> > If move the blk_put_queue() call from the end of it to the callers the
> > callers can keep the reference as long as they need them, and we wouldn't
> > need an extra reference.
> 
> Hi Christoph,
> 
> There are more than hundred callers of blk_cleanup_queue() so that change
> would cause a lot of churn. Since blk_get_queue() and blk_put_queue() are
> available, how inserting a pair of calls to these functions where necessary?

The problem is that queue might be used after blk_cleanup_queue() is
returned by some drivers.

Gendisk is removed before cleanup queue, and the other activities on queue
depends on driver itself. There can't be universal way to deal with that.

Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
