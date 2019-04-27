Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28878B25A
	for <lists+linux-nvme@lfdr.de>; Sat, 27 Apr 2019 03:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0iezKpaWz3MPWdDmXj4XrKzuWc2dlGvDniYXeCTNflA=; b=plLHC9l8ETQo2D
	pZdpH1u/q5kkbl0NlQhxqlposvizh4AZOMvOkDTnw3lrCNq65SI7w3odydNOBdkOwLDParx19H8Pt
	WtHILsARi8bM6QpyU/t4No/h2OR2+FHpOtEfuxb0s/ecWumgbnx7qN46/yDfT/UIAj3d6lDbL7xrY
	x/nlAJ2hLRXI3NmAmBmV9sZPSf3Eq0708UsI3XSgG1G1tPo+jn4w71EuTd18w+QO59hhGBCuigPLA
	NJ1OX3Ku0QjEiIqJrUFrwtuM8mbX1daYcwxD6w5+1uUdMduD9lGDXD2PfOb40MbqhPMtx1hflEuvi
	qO4ULzkB14U7Iu2j7+3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKCKd-000095-M5; Sat, 27 Apr 2019 01:40:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKCKN-0008Kw-Rd
 for linux-nvme@lists.infradead.org; Sat, 27 Apr 2019 01:40:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B3F9C214C6;
 Sat, 27 Apr 2019 01:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556329231;
 bh=p+aXHuwqfHDP4jNwEfxEX6x821K7Z+8P5fw+XIIOcLs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HWD1Zu/L/VSbUiizXxgSjHOhHOY/nd4g5dbIEmiy9FqnrnoVnJbslGZpdBhLSDg8E
 A/nILIY9s0NFlCSbF2RAXMP6JBbqwWDBcQerg/PCArJ/cSzORuYG7DTfFdkmU+CsAj
 RLxn7D4/2eyeDLPhb76FZVz5N38KUalOebPIKa4Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 69/79] nvme-fc: correct csn initialization and
 increments on error
Date: Fri, 26 Apr 2019 21:38:28 -0400
Message-Id: <20190427013838.6596-69-sashal@kernel.org>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190427013838.6596-1-sashal@kernel.org>
References: <20190427013838.6596-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_184032_355607_14510945 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, James Smart <jsmart2021@gmail.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: James Smart <jsmart2021@gmail.com>

[ Upstream commit 67f471b6ed3b09033c4ac77ea03f92afdb1989fe ]

This patch fixes a long-standing bug that initialized the FC-NVME
cmnd iu CSN value to 1. Early FC-NVME specs had the connection starting
with CSN=1. By the time the spec reached approval, the language had
changed to state a connection should start with CSN=0.  This patch
corrects the initialization value for FC-NVME connections.

Additionally, in reviewing the transport, the CSN value is assigned to
the new IU early in the start routine. It's possible that a later dma
map request may fail, causing the command to never be sent to the
controller.  Change the location of the assignment so that it is
immediately prior to calling the lldd. Add a comment block to explain
the impacts if the lldd were to additionally fail sending the command.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Ewan D. Milne <emilne@redhat.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/fc.c | 20 +++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index c37d5bbd72ab..8625b73d94bf 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1857,7 +1857,7 @@ nvme_fc_init_queue(struct nvme_fc_ctrl *ctrl, int idx)
 	memset(queue, 0, sizeof(*queue));
 	queue->ctrl = ctrl;
 	queue->qnum = idx;
-	atomic_set(&queue->csn, 1);
+	atomic_set(&queue->csn, 0);
 	queue->dev = ctrl->dev;
 
 	if (idx > 0)
@@ -1899,7 +1899,7 @@ nvme_fc_free_queue(struct nvme_fc_queue *queue)
 	 */
 
 	queue->connection_id = 0;
-	atomic_set(&queue->csn, 1);
+	atomic_set(&queue->csn, 0);
 }
 
 static void
@@ -2195,7 +2195,6 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 {
 	struct nvme_fc_cmd_iu *cmdiu = &op->cmd_iu;
 	struct nvme_command *sqe = &cmdiu->sqe;
-	u32 csn;
 	int ret, opstate;
 
 	/*
@@ -2210,8 +2209,6 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 
 	/* format the FC-NVME CMD IU and fcp_req */
 	cmdiu->connection_id = cpu_to_be64(queue->connection_id);
-	csn = atomic_inc_return(&queue->csn);
-	cmdiu->csn = cpu_to_be32(csn);
 	cmdiu->data_len = cpu_to_be32(data_len);
 	switch (io_dir) {
 	case NVMEFC_FCP_WRITE:
@@ -2269,11 +2266,24 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 	if (!(op->flags & FCOP_FLAGS_AEN))
 		blk_mq_start_request(op->rq);
 
+	cmdiu->csn = cpu_to_be32(atomic_inc_return(&queue->csn));
 	ret = ctrl->lport->ops->fcp_io(&ctrl->lport->localport,
 					&ctrl->rport->remoteport,
 					queue->lldd_handle, &op->fcp_req);
 
 	if (ret) {
+		/*
+		 * If the lld fails to send the command is there an issue with
+		 * the csn value?  If the command that fails is the Connect,
+		 * no - as the connection won't be live.  If it is a command
+		 * post-connect, it's possible a gap in csn may be created.
+		 * Does this matter?  As Linux initiators don't send fused
+		 * commands, no.  The gap would exist, but as there's nothing
+		 * that depends on csn order to be delivered on the target
+		 * side, it shouldn't hurt.  It would be difficult for a
+		 * target to even detect the csn gap as it has no idea when the
+		 * cmd with the csn was supposed to arrive.
+		 */
 		opstate = atomic_xchg(&op->state, FCPOP_STATE_COMPLETE);
 		__nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
 
-- 
2.19.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
