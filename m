Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31694F06D
	for <lists+linux-nvme@lfdr.de>; Fri, 21 Jun 2019 23:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dkZKrW13TAPQfV1KRtCpp78n7hKY7344McOVilYVHv8=; b=Fw5
	3tpS98ycuxh5sICWybEhP369cNcuHZG5iQ9A9yJqI/3+KfLHmKrxcG7saNBLMpUPWZfCM0TSsUtOj
	5ym0Ho9EHudXWlxKOVLViI3hxup9DVEw0ftNjOf03aPbm7cMGc7tO8Lg4y/YuQRc4RKNbk+ThHTn+
	WEaLUKPq5qudV5WUruwTBpLYAn4r5jYz3OiVVcpZ1Y0nypr5hVVPA8QlmGZzqPi2nyC/LXPrYtV1v
	Bw1dcUruAhJ2eWchtS5aZqFUups+X4C5nE4adyA+IoK0mYqXPAxrjCXsXRPW5jsDuTAoefyQMNqfL
	ezjmCtR+1ht7n4zfn4LLDIrnUqun2dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQwv-0000ot-NL; Fri, 21 Jun 2019 21:19:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQwq-0000oV-U4
 for linux-nvme@lists.infradead.org; Fri, 21 Jun 2019 21:19:54 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C58A93082A28;
 Fri, 21 Jun 2019 21:19:47 +0000 (UTC)
Received: from emilne.bos.redhat.com (unknown [10.18.25.205])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5916919C4F;
 Fri, 21 Jun 2019 21:19:45 +0000 (UTC)
From: "Ewan D. Milne" <emilne@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-fc: clean up error messages
Date: Fri, 21 Jun 2019 17:19:44 -0400
Message-Id: <20190621211944.28604-1-emilne@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Fri, 21 Jun 2019 21:19:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_141952_990045_775FAA57 
X-CRM114-Status: GOOD (  10.94  )
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
Cc: james.smart@broadcom.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Some of the error messages are inconsistent, and one of them is wrong
(i.e. "queue_size 128 > ctrl maxcmd 32, reducing to queue_size").
Make them more clear and distinguishable for log analysis.

Signed-off-by: Ewan D. Milne <emilne@redhat.com>
---
 drivers/nvme/host/fc.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 9b497d785ed7..5da2bef0b193 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1259,7 +1259,7 @@ nvme_fc_connect_admin_queue(struct nvme_fc_ctrl *ctrl,
 	if (fcret) {
 		ret = -EBADF;
 		dev_err(ctrl->dev,
-			"q %d connect failed: %s\n",
+			"queue %d connect admin queue failed: %s\n",
 			queue->qnum, validation_errors[fcret]);
 	} else {
 		ctrl->association_id =
@@ -1358,7 +1358,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 	if (fcret) {
 		ret = -EBADF;
 		dev_err(ctrl->dev,
-			"q %d connect failed: %s\n",
+			"queue %d connect failed: %s\n",
 			queue->qnum, validation_errors[fcret]);
 	} else {
 		queue->connection_id =
@@ -1371,7 +1371,7 @@ nvme_fc_connect_queue(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 out_no_memory:
 	if (ret)
 		dev_err(ctrl->dev,
-			"queue %d connect command failed (%d).\n",
+			"queue %d connect failed (%d).\n",
 			queue->qnum, ret);
 	return ret;
 }
@@ -2678,16 +2678,18 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 		/* warn if maxcmd is lower than queue_size */
 		dev_warn(ctrl->ctrl.device,
 			"queue_size %zu > ctrl maxcmd %u, reducing "
-			"to queue_size\n",
-			opts->queue_size, ctrl->ctrl.maxcmd);
+			"queue_size to %u\n",
+			opts->queue_size, ctrl->ctrl.maxcmd, ctrl->ctrl.maxcmd);
 		opts->queue_size = ctrl->ctrl.maxcmd;
 	}
 
 	if (opts->queue_size > ctrl->ctrl.sqsize + 1) {
 		/* warn if sqsize is lower than queue_size */
 		dev_warn(ctrl->ctrl.device,
-			"queue_size %zu > ctrl sqsize %u, clamping down\n",
-			opts->queue_size, ctrl->ctrl.sqsize + 1);
+			"queue_size %zu > ctrl sqsize %u, reducing "
+			"queue_size to %u\n",
+			opts->queue_size, ctrl->ctrl.sqsize + 1,
+			ctrl->ctrl.sqsize + 1);
 		opts->queue_size = ctrl->ctrl.sqsize + 1;
 	}
 
-- 
2.18.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
