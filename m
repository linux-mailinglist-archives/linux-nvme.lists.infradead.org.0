Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38B6B58B
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Apr 2019 09:39:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Nvp3NVSiQ1rSV1a2CeHiJ+aNJXzIuJJMOqrIzqCO+JM=; b=pl1
	+xHRfVeFc4NnENN813e9Sx/fsdUz3J6wS7QCHfdcDt0zJiTY8IXC/HzHsyRAYvobgBbCLImYcdRrw
	x+Wst4HeZthh5WMA/4YjX17fNfMTH3qi9BrPEIc9x3Xle95Ps7Z+PB4DnEttJNAfcTB85jCkD6KgO
	Rm0Z/e1zNoM4DT5z6fcW0zVmpb8s/FdTnIX5ewRFZ4Lf2NfxGw96UE+h2/ap6A3BCPeHkZUP+Ssih
	NfIgp5EJ9mJpWV+S4QEcFsiH6hq/68+diX0er95wjZYS+tH7pv558bum5Y8Xb3UvL+vcH1JHNUi1g
	a20SCnkY2k7IbJBFnKtAjP1d0sxNY3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKePe-0006xF-Qo; Sun, 28 Apr 2019 07:39:50 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKePY-0006wT-H8
 for linux-nvme@lists.infradead.org; Sun, 28 Apr 2019 07:39:46 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 55C55C049E20;
 Sun, 28 Apr 2019 07:39:43 +0000 (UTC)
Received: from localhost (ovpn-8-32.pek2.redhat.com [10.72.8.32])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 353B317D08;
 Sun, 28 Apr 2019 07:39:39 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V4 0/3] scsi: core: avoid big pre-allocation for sg list
Date: Sun, 28 Apr 2019 15:39:29 +0800
Message-Id: <20190428073932.9898-1-ming.lei@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Sun, 28 Apr 2019 07:39:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_003944_592048_3E48AD01 
X-CRM114-Status: GOOD (  11.21  )
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, "Ewan D . Milne" <emilne@redhat.com>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

Since supporting to blk-mq, big pre-allocation for sg list is introduced,
this way is very unfriendly wrt. memory consumption.

There were Red Hat internal reports that some scsi_debug based tests
can't be run any more because of too big pre-allocation.

Also lpfc users commplained that 1GB+ ram is pre-allocatd for single
HBA.

sg_alloc_table_chained() is improved to support variant size of 1st
pre-allocated SGL in the 1st patch as suggested by Christoph.

The other two patches try to address this issue by allocating sg list runtime,
meantime pre-allocating one or two inline sg entries for small IO. This
ways follows NVMe's approach wrt. sg list allocation.

V4:
	- add parameter to sg_alloc_table_chained()/sg_free_table_chained()
	directly, and update current callers

V3:
	- improve sg_alloc_table_chained() to accept variant size of
	the 1st pre-allocated SGL
	- applies the improved sg API to address the big pre-allocation
	issue

V2:
	- move inline sg table initializetion into one helper
	- introduce new helper for getting inline sg
	- comment log fix


Ming Lei (3):
  lib/sg_pool.c: improve APIs for allocating sg pool
  scsi: core: avoid to pre-allocate big chunk for protection meta data
  scsi: core: avoid to pre-allocate big chunk for sg list

 drivers/nvme/host/fc.c            |  7 ++++---
 drivers/nvme/host/rdma.c          |  7 ++++---
 drivers/nvme/target/loop.c        |  4 ++--
 drivers/scsi/scsi_lib.c           | 31 ++++++++++++++++++++++---------
 include/linux/scatterlist.h       | 11 +++++++----
 lib/scatterlist.c                 | 36 +++++++++++++++++++++++-------------
 lib/sg_pool.c                     | 37 +++++++++++++++++++++++++++----------
 net/sunrpc/xprtrdma/svc_rdma_rw.c |  5 +++--
 8 files changed, 92 insertions(+), 46 deletions(-)

Cc: Christoph Hellwig <hch@lst.de>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Ewan D. Milne <emilne@redhat.com>
Cc: Hannes Reinecke <hare@suse.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Chuck Lever <chuck.lever@oracle.com>
Cc: netdev@vger.kernel.org
Cc: linux-nvme@lists.infradead.org

-- 
2.9.5


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
