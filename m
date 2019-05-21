Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15B824BF3
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 11:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8iNa51BJtTLLjvT5c0tdnOnv20iwXo5TkILVItpI4Y=; b=YMJI98f9kQ6aoZ
	HUseq2frVYzOzdFqooPxoAG1BvsOm58wnyV/tOv8+hK0yyXRu6cfI5MwyLQjP1b/vbpY5XBnBYwFe
	6CjynlZhO8RO8fRcbLE4GXNCiC4nTzghhniLQBrgkaZo0rfG7f/xUDWpyyslPj2w1vbD3ENrN8n24
	s98zo80h9c0WLi7mou5pQ9dZANJ4z5EpvomMXonjYqm4pkTVYkoHNlPkPV4ilEsMrb9Wempbwdu8E
	1/y3c1/pVaN3e7VbZQYEIvtMys/Wu/p5+5jqpPK9U7AOJwld+FM9qO3bETHaY01EIheXvFLjf3DrA
	EbvC+uiTpZAPDjS68sug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1LU-0003s6-5R; Tue, 21 May 2019 09:46:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1LN-0003ri-LA
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 09:46:02 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8F6FB307EA8C;
 Tue, 21 May 2019 09:45:57 +0000 (UTC)
Received: from ming.t460p (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 654C0600C6;
 Tue, 21 May 2019 09:45:46 +0000 (UTC)
Date: Tue, 21 May 2019 17:45:42 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 5.0 66/95] nvme: cancel request synchronously
Message-ID: <20190521094535.GA28632@ming.t460p>
References: <20190509181309.180685671@linuxfoundation.org>
 <20190509181314.082604502@linuxfoundation.org>
 <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0cd612d-1bce-50ca-1186-de67054b33c1@mellanox.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 21 May 2019 09:46:01 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_024601_709388_C39A4E21 
X-CRM114-Status: GOOD (  16.00  )
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

On Tue, May 21, 2019 at 11:36:26AM +0300, Max Gurtovoy wrote:
> On 5/9/2019 9:42 PM, Greg Kroah-Hartman wrote:
> > [ Upstream commit eb3afb75b57c28599af0dfa03a99579d410749e9 ]
> > 
> > nvme_cancel_request() is used in error handler, and it is always
> > reliable to cancel request synchronously, and avoids possible race
> > in which request may be completed after real hw queue is destroyed.
> 
> Ming,
> 
> If the completion is async in the block layer, can't a "good" request (not a
> canceled one..) complete after real HW queue is destroyed ?

In theory, it can't.

1) in case of error recovery

It is driver's responsibility to sync normal completion and handling
error. NVMe PCI calls nvme_dev_disable() to shutdown controller, and
there won't be good request any more after nvme_dev_disable() returns.
I am not very familiar with NVMe RDMA code, but nvme_rdma_stop_io_queues()
is supposed to do that for avoiding race with normal completion. Otherwise,
it isn't enough by simply canceling in-flight requests.

2) in case of device removal
blk_cleanup_queue() drains all in-queue requests, so there can't be
such issue.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
