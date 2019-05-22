Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A7326BA0
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 21:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skLA7x+iTr/ykj2luPqQ6T1tz8rH9nslApBV0aQslwo=; b=LaItAv1X3H71H+
	ipXTb20+ZVwm0y7M4atPXUspCIiCyUKx70Y2yb468tqTz9rH4Zluj1aStFzP/O+la0mNSiA6ECwA0
	NlbGpFz3hFk2KQSW62xcAg6JcloF35zA2BQBn76bgvJRBYxRxlIxa0JXEwK1TMeO5mMWDgeEwyHgy
	AFYK8dmxVo93Zt2PEvXwMfbj00on6GE9i0QbG1JK8mQW+k9K1+TIac0w1Uk8col4g3J96tpSP89lf
	YNKjwSbIbT5MFkrzVp1cZXkDdCL7vjMGCAY77rbgmMFm9VmE8B74tTorClmt87SzRVq3LtjYa6JTa
	1FLWeLB4xRuOvc7E3Kyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWuV-0004UY-2t; Wed, 22 May 2019 19:28:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWuJ-0004OD-HY
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 19:28:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A442A20879;
 Wed, 22 May 2019 19:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558553291;
 bh=jZ+X0Yw18m7pNOc9/c4Mc844Bw9q2y3onV4lI9dQdoc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=O2del14ycAXhxXEYHneXxcVm/v9z+0UFrnsFy7peOfWn5cKOAsLVIO8bxLexrcAmS
 M/t//5dIX0p+ukUcMQGJ47J0zslGOMPSFi6Xk3UJR4S35ClEpVkUeKuS8C1kyGVBlv
 cTnKcUkFgx460uwI8UznsEQ4ZZC53+A4egn/35d4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 063/244] nvme-rdma: fix a NULL deref when an
 admin connect times out
Date: Wed, 22 May 2019 15:23:29 -0400
Message-Id: <20190522192630.24917-63-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522192630.24917-1-sashal@kernel.org>
References: <20190522192630.24917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_122811_589789_23C00F52 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 1007709d7d06fab09bf2d007657575958676282b ]

If we timeout the admin startup sequence we might not yet have
an I/O tagset allocated which causes the teardown sequence to crash.
Make nvme_tcp_teardown_io_queues safe by not iterating inflight tags
if the tagset wasn't allocated.

Fixes: 4c174e636674 ("nvme-rdma: fix timeout handler")
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/rdma.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 0939a4e178fb9..e4f167e35353f 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -880,8 +880,9 @@ static void nvme_rdma_teardown_admin_queue(struct nvme_rdma_ctrl *ctrl,
 {
 	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 	nvme_rdma_stop_queue(&ctrl->queues[0]);
-	blk_mq_tagset_busy_iter(&ctrl->admin_tag_set, nvme_cancel_request,
-			&ctrl->ctrl);
+	if (ctrl->ctrl.admin_tagset)
+		blk_mq_tagset_busy_iter(ctrl->ctrl.admin_tagset,
+			nvme_cancel_request, &ctrl->ctrl);
 	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
 	nvme_rdma_destroy_admin_queue(ctrl, remove);
 }
@@ -892,8 +893,9 @@ static void nvme_rdma_teardown_io_queues(struct nvme_rdma_ctrl *ctrl,
 	if (ctrl->ctrl.queue_count > 1) {
 		nvme_stop_queues(&ctrl->ctrl);
 		nvme_rdma_stop_io_queues(ctrl);
-		blk_mq_tagset_busy_iter(&ctrl->tag_set, nvme_cancel_request,
-				&ctrl->ctrl);
+		if (ctrl->ctrl.tagset)
+			blk_mq_tagset_busy_iter(ctrl->ctrl.tagset,
+				nvme_cancel_request, &ctrl->ctrl);
 		if (remove)
 			nvme_start_queues(&ctrl->ctrl);
 		nvme_rdma_destroy_io_queues(ctrl, remove);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
