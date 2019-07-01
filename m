Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099C127786
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 09:55:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZWvvpYI7fipt08GM5fLnawwj9fvkmbp71De+r8WvV4=; b=b8WDzjHdqSHp7t
	5tu8xuf6dAnYHwJ1yGp2MwPBLAlgjNT/Uc/ugtN1f56od44Fh/L9bkBMl5lltnYttviuHkbuAjc9O
	BukO+3jdvkOO0K6nO1Vit3iFBl98ekjlKW295HWdRpgTO1iYhD2wb65BkkCAtmWOoNnLvgO7zLics
	sOcsZPVEYkA/bDMyyYobleH7+UfwNn0zMyvy3uC/ia4srgUOldab2h7gHEQRGBgoXA9orX/0881X6
	7bztWCDyHHGptVbrdrGUesqBNIcp16nGMJDmuVSdGV0xzlY5D8c2jg75wxSvGadiceAJl6yGUhmZy
	MjWPLK9ac73m/1zYzmKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiZs-0007tJ-T7; Thu, 23 May 2019 07:55:52 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiZn-0007su-7A
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 07:55:49 +0000
Received: from localhost (r10.asicdesigners.com [10.192.194.10])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x4N7tP0D004115;
 Thu, 23 May 2019 00:55:25 -0700
Date: Thu, 23 May 2019 00:55:25 -0700
From: Nirranjan Kirubaharan <nirranjan@chelsio.com>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
Message-ID: <20190523075524.GA15479@chelsio.com>
References: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
 <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf05c7f8-7a97-5e67-3476-b92c698a23a9@mellanox.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_005547_273424_7E0EDD76 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bharat@chelsio.com, sagi@grimberg.me, linux-nvme@lists.infradead.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thursday, May 05/23/19, 2019 at 10:21:46 +0300, Max Gurtovoy wrote:
> 
> On 5/23/2019 7:51 AM, Nirranjan Kirubaharan wrote:
> >Return error -ENOMEM when nvmf target allocates lesser
> >io queues than the number of io queues requested by nvmf
> >initiator.
> 
> why can't we live with lesser queues ?

In nvme_rdma_alloc_io_queues() ctrl->io_queues[] are already filled
assuming all the requested no of queues will be allocated by the target.

> 
> I can demand 64K queues and the target might return 4 and it's fine
> for functionality.
> 
> where is the NULL that you see ?

In nvme_rdma_init_request() accessing unallocated queue_idx of
ctrl->io_queues[] causes NULL deref.

[  703.192172] RIP: 0010:nvme_rdma_init_request+0x31/0x140 [nvme_rdma]
[  703.192173] Code: 55 31 ed 53 48 8b 47 60 48 89 f3 48 8d 48 08 48 39 cf 0f 84 fb 00 00 00 48 03 28 48 05 f8 02 00 00 be c0 0d 00 00 48 8b 55 20 <4c> 8b 22 48 89 83 28 01 00 00 ba 40 00 00 00 48 8b 3d a9 7b 42 f4
[  703.192174] RSP: 0018:ffff9c36835bfc38 EFLAGS: 00010282
[  703.192192] RAX: ffff8eb49c8b92f8 RBX: ffff8eb5a6e50000 RCX: ffff8eb49c8b9008
[  703.192192] RDX: 0000000000000000 RSI: 0000000000000dc0 RDI: ffff8eb49c8b9008
[  703.192193] RBP: ffff8eb5ad3c50e0 R08: 00000000119b9400 R09: ffff8eb5831d9520
[  703.192194] R10: ffffc83e119b9400 R11: ffffc83e119b9800 R12: ffff8eb49c8b9008
[  703.192194] R13: ffff8eb5831d9480 R14: 0000000000000000 R15: ffff8eb5a6e50000
[  703.192195] FS:  00007fd6613bb780(0000) GS:ffff8eb5afbc0000(0000) knlGS:0000000000000000
[  703.192196] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  703.192197] CR2: 0000000000000000 CR3: 00000004646a4005 CR4: 00000000003606e0
[  703.192197] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  703.192198] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  703.192199] Call Trace:
[  703.192206]  blk_mq_alloc_rqs+0x1f0/0x290
[  703.192207]  __blk_mq_alloc_rq_map+0x46/0x80
[  703.192209]  blk_mq_map_swqueue+0x1dd/0x2e0
[  703.192210]  blk_mq_init_allocated_queue+0x3c8/0x430
[  703.192211]  blk_mq_init_queue+0x35/0x60
[  703.192213]  ? nvme_rdma_alloc_tagset+0x1bb/0x330 [nvme_rdma]
[  703.192214]  nvme_rdma_setup_ctrl+0x420/0x7b0 [nvme_rdma]
[  703.192215]  nvme_rdma_create_ctrl+0x29a/0x3d8 [nvme_rdma]
[  703.192218]  nvmf_dev_write+0xa18/0xbff [nvme_fabrics]
[  703.192222]  vfs_write+0xad/0x1b0
[  703.192224]  ksys_write+0x5a/0xd0
[  703.192228]  do_syscall_64+0x5b/0x180
[  703.192231]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[  703.192232] RIP: 0033:0x7fd660cddc60
[  703.192233] Code: 73 01 c3 48 8b 0d 30 62 2d 00 f7 d8 64 89 01 48 83 c8 ff c3 66 0f 1f 44 00 00 83 3d 3d c3 2d 00 00 75 10 b8 01 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 31 c3 48 83 ec 08 e8 ee cb 01 00 48 89 04 24
[  703.192234] RSP: 002b:00007ffe8f58d928 EFLAGS: 00000246 ORIG_RAX: 0000000000000001
[  703.192235] RAX: ffffffffffffffda RBX: 0000000000000003 RCX: 00007fd660cddc60
[  703.192236] RDX: 000000000000004d RSI: 00007ffe8f58e9a0 RDI: 0000000000000003
[  703.192236] RBP: 00007ffe8f58e9a0 R08: 00007ffe8f58e9ed R09: 00007fd660c3b0fd
[  703.192237] R10: 00000000ffffffff R11: 0000000000000246 R12: 000000000000004d
[  703.192237] R13: 000000000151a500 R14: 000000000151a600 R15: 00007ffe8f58e9e0

> 
> 
> >
> >Signed-off-by: Nirranjan Kirubaharan <nirranjan@chelsio.com>
> >Reviewed-by: Potnuri Bharat Teja <bharat@chelsio.com>
> >---
> >  drivers/nvme/host/rdma.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
> >index f383146e7d0f..187007d136cc 100644
> >--- a/drivers/nvme/host/rdma.c
> >+++ b/drivers/nvme/host/rdma.c
> >@@ -641,7 +641,7 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
> >  {
> >  	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
> >  	struct ib_device *ibdev = ctrl->device->dev;
> >-	unsigned int nr_io_queues;
> >+	unsigned int nr_io_queues, nr_req_queues;
> >  	int i, ret;
> >  	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
> >@@ -670,9 +670,16 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
> >  		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
> >  	}
> >+	nr_req_queues = nr_io_queues;
> >  	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
> >  	if (ret)
> >  		return ret;
> >+	if (nr_io_queues < nr_req_queues) {
> >+		dev_err(ctrl->ctrl.device,
> >+			"alloc queues %u < req no of queues %u",
> >+			nr_io_queues, nr_req_queues);
> >+		return -ENOMEM;
> >+	}
> >  	ctrl->ctrl.queue_count = nr_io_queues + 1;
> >  	if (ctrl->ctrl.queue_count < 2)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
