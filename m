Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D72877F7
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 12:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/9MP1e5MEjzizKiAGOYeBI2tZEl+qkpMmP6c0Tkj1s=; b=WjW+zUHw15I8pJ
	edbM+iHgOW3eIDKJ+H0NmIM0971M4eZyzMwF2NLkczuGyQ7RbMVzgzXpiNGcFwYtmsZq19uiJ5Bym
	S+RJ9w1tYy2qCQK8KbVInqV4+YwUc1jrvnseA4UtUeZU8GVfD0MEvmxc3l8CzY5LpkFnmK3Ml4F1y
	Er+TznEKl6BWnDQ12HmnHfetKI7JA5yNlS8BHxHTiRSGVhj5A1VoZpCxDYJu+NrMYT1+vh2YItfkV
	83AZFxmJAOTTWRzDWHgA5jQ806i1QJGg8x45fY5J8KcY1R6Qd03IAdscmHo/Pv18cmZrJOwUORTIb
	Hs4h2MOYPgkvRgJmaKnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2Y0-00015D-SX; Fri, 09 Aug 2019 10:55:01 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2XM-0000u4-JX
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 10:54:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id w13so94621265eds.4
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 03:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H5XurvOQOZFexbnR2zKf7+V0lcVL5rSNl6BESH2rPC4=;
 b=RG9D6uR5HZ9BwPKJjVcEuc+a8EUfQ6FBuoTwmiWzc/IzCRO69axkaOfboC24l1EkcP
 jk7cVId8ks4maLCIPEM9n5MVpDVvQFM87JhEMsurO8W9rAT5tQ/So/7dTdDKOnIK2Ahy
 pQNH/KebM37B0WthWx7zhFdICiG4I9BuUabQ3xm9gUmlUFw7ds+q+QoaEs0BraT9SgC6
 U8yWc9UVmdFBkV1ORrod3ZaN55MJUq29lglY29qABdTfyOfJWRjH1mKnew6s5064VrD0
 Bt77tDp8eaH0BW4l7ulZSYCJlJTIESBQqPp3qVfscce8FP+n+SFabveyOaK8eGCHuQlV
 ea2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H5XurvOQOZFexbnR2zKf7+V0lcVL5rSNl6BESH2rPC4=;
 b=EZV53ouMhiUMytZJralkYq+IyDYATCBn/IW+aoJzovXScXXVeHwS4hTWRbKmZdl5FF
 x1odQvYMisnJyowwgG6wEjaWRxPs9o9/7SuPhReGDwO9KobqUrjH9I0t74WO6wDspXVN
 rz4PtzYXvvMoGKkEaDnXncXeDLmHRT5sj03pkqZGIxm/bSKCZ1OH+0UIDpOE5mHGLz0j
 yJSu9OqIJcm0biMiTKGQpSJHImqAiuv65HTw+Doy9I2/guYMHQWgX468lnLBFGg1ode1
 A3cs7mt0J7pYnRb8yMQlzTP/dVUY3vPQOFP4tGqdnMx6HKE9BDc6mxqDape/SAbd1yHv
 uTRA==
X-Gm-Message-State: APjAAAUB1FYu7vtex0G8vZ1USaGoSvs8eMF/gE91lYMYr+t7GwEnR2FZ
 P35Q6Eg8jRrEgfoPf7+nU34=
X-Google-Smtp-Source: APXvYqxQKYXqWN1Vw4R02O4soPR5PrQ/ub8cDL/Q2LdQnDCeOWommtd7ZkCAIGOMu95I4sF16LaZCg==
X-Received: by 2002:a50:9918:: with SMTP id k24mr20823245edb.173.1565348057349; 
 Fri, 09 Aug 2019 03:54:17 -0700 (PDT)
Received: from continental.suse.de ([177.96.42.43])
 by smtp.gmail.com with ESMTPSA id x55sm22289167edm.11.2019.08.09.03.54.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 03:54:16 -0700 (PDT)
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 1/4] block: Remove request_queue argument from
 blk_execute_rq_nowait
Date: Fri,  9 Aug 2019 07:54:30 -0300
Message-Id: <20190809105433.8946-2-marcos.souza.org@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809105433.8946-1-marcos.souza.org@gmail.com>
References: <20190809105433.8946-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_035420_669498_D9241C67 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marcos.souza.org[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@kernel.dk, Omar Sandoval <osandov@fb.com>,
 Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Damien Le Moal <damien.lemoal@wdc.com>,
 "open list:NVM EXPRESS DRIVER" <linux-nvme@lists.infradead.org>,
 =?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
 linux-block@vger.kernel.org,
 "open list:SCSI TARGET SUBSYSTEM" <target-devel@vger.kernel.org>,
 Doug Gilbert <dgilbert@interlog.com>, Keith Busch <kbusch@kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 "open list:SCSI SUBSYSTEM" <linux-scsi@vger.kernel.org>, hch@lst.de,
 Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Commit a1ce35fa4985 ("block: remove dead elevator code") removed code
that was using the request_queue argument. This got simplified by
calling blk_mq_sched_insert_request which already gets the request_queue
from the request being inserted in the scheduler queue for execution.

Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
---
 block/blk-exec.c                   | 8 +++-----
 drivers/block/sx8.c                | 4 ++--
 drivers/nvme/host/core.c           | 4 ++--
 drivers/nvme/host/lightnvm.c       | 2 +-
 drivers/nvme/host/pci.c            | 7 +++----
 drivers/scsi/scsi_error.c          | 2 +-
 drivers/scsi/sg.c                  | 3 +--
 drivers/scsi/st.c                  | 2 +-
 drivers/target/target_core_pscsi.c | 5 ++---
 include/linux/blkdev.h             | 4 ++--
 10 files changed, 18 insertions(+), 23 deletions(-)

diff --git a/block/blk-exec.c b/block/blk-exec.c
index 1db44ca0f4a6..80890b0b9c67 100644
--- a/block/blk-exec.c
+++ b/block/blk-exec.c
@@ -32,7 +32,6 @@ static void blk_end_sync_rq(struct request *rq, blk_status_t error)

 /**
  * blk_execute_rq_nowait - insert a request into queue for execution
- * @q:		queue to insert the request in
  * @bd_disk:	matching gendisk
  * @rq:		request to insert
  * @at_head:    insert request at head or tail of queue
@@ -45,9 +44,8 @@ static void blk_end_sync_rq(struct request *rq, blk_status_t error)
  * Note:
  *    This function will invoke @done directly if the queue is dead.
  */
-void blk_execute_rq_nowait(struct request_queue *q, struct gendisk *bd_disk,
-			   struct request *rq, int at_head,
-			   rq_end_io_fn *done)
+void blk_execute_rq_nowait(struct gendisk *bd_disk, struct request *rq,
+			int at_head, rq_end_io_fn *done)
 {
 	WARN_ON(irqs_disabled());
 	WARN_ON(!blk_rq_is_passthrough(rq));
@@ -81,7 +79,7 @@ void blk_execute_rq(struct request_queue *q, struct gendisk *bd_disk,
 	unsigned long hang_check;

 	rq->end_io_data = &wait;
-	blk_execute_rq_nowait(q, bd_disk, rq, at_head, blk_end_sync_rq);
+	blk_execute_rq_nowait(bd_disk, rq, at_head, blk_end_sync_rq);

 	/* Prevent hang_check timer from firing at us during very long I/O */
 	hang_check = sysctl_hung_task_timeout_secs;
diff --git a/drivers/block/sx8.c b/drivers/block/sx8.c
index 4478eb7efee0..2cdf2771f8e8 100644
--- a/drivers/block/sx8.c
+++ b/drivers/block/sx8.c
@@ -539,7 +539,7 @@ static int carm_array_info (struct carm_host *host, unsigned int array_idx)
 	spin_unlock_irq(&host->lock);

 	DPRINTK("blk_execute_rq_nowait, tag == %u\n", rq->tag);
-	blk_execute_rq_nowait(host->oob_q, NULL, rq, true, NULL);
+	blk_execute_rq_nowait(NULL, rq, true, NULL);

 	return 0;

@@ -578,7 +578,7 @@ static int carm_send_special (struct carm_host *host, carm_sspc_t func)
 	crq->msg_bucket = (u32) rc;

 	DPRINTK("blk_execute_rq_nowait, tag == %u\n", rq->tag);
-	blk_execute_rq_nowait(host->oob_q, NULL, rq, true, NULL);
+	blk_execute_rq_nowait(NULL, rq, true, NULL);

 	return 0;
 }
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5ca937..6682fdcece0f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -756,7 +756,7 @@ static void nvme_execute_rq_polled(struct request_queue *q,

 	rq->cmd_flags |= REQ_HIPRI;
 	rq->end_io_data = &wait;
-	blk_execute_rq_nowait(q, bd_disk, rq, at_head, nvme_end_sync_rq);
+	blk_execute_rq_nowait(bd_disk, rq, at_head, nvme_end_sync_rq);

 	while (!completion_done(&wait)) {
 		blk_poll(q, request_to_qc_t(rq->mq_hctx, rq), true);
@@ -941,7 +941,7 @@ static int nvme_keep_alive(struct nvme_ctrl *ctrl)
 	rq->timeout = ctrl->kato * HZ;
 	rq->end_io_data = ctrl;

-	blk_execute_rq_nowait(rq->q, NULL, rq, 0, nvme_keep_alive_end_io);
+	blk_execute_rq_nowait(NULL, rq, 0, nvme_keep_alive_end_io);

 	return 0;
 }
diff --git a/drivers/nvme/host/lightnvm.c b/drivers/nvme/host/lightnvm.c
index ba009d4c9dfa..5d0e330e86d0 100644
--- a/drivers/nvme/host/lightnvm.c
+++ b/drivers/nvme/host/lightnvm.c
@@ -685,7 +685,7 @@ static int nvme_nvm_submit_io(struct nvm_dev *dev, struct nvm_rq *rqd)

 	rq->end_io_data = rqd;

-	blk_execute_rq_nowait(q, NULL, rq, 0, nvme_nvm_end_io);
+	blk_execute_rq_nowait(NULL, rq, 0, nvme_nvm_end_io);

 	return 0;
 }
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index db160cee42ad..d8f83696b4ba 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1332,7 +1332,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)

 	abort_req->timeout = ADMIN_TIMEOUT;
 	abort_req->end_io_data = NULL;
-	blk_execute_rq_nowait(abort_req->q, NULL, abort_req, 0, abort_endio);
+	blk_execute_rq_nowait(NULL, abort_req, 0, abort_endio);

 	/*
 	 * The aborted req will be completed on receiving the abort req.
@@ -2205,9 +2205,8 @@ static int nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
 	req->end_io_data = nvmeq;

 	init_completion(&nvmeq->delete_done);
-	blk_execute_rq_nowait(q, NULL, req, false,
-			opcode == nvme_admin_delete_cq ?
-				nvme_del_cq_end : nvme_del_queue_end);
+	blk_execute_rq_nowait(NULL, req, false,
+			      opcode == nvme_admin_delete_cq ? nvme_del_cq_end : nvme_del_queue_end);
 	return 0;
 }

diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 1c470e31ae81..49cda23c7fb8 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -1988,7 +1988,7 @@ static void scsi_eh_lock_door(struct scsi_device *sdev)
 	req->timeout = 10 * HZ;
 	rq->retries = 5;

-	blk_execute_rq_nowait(req->q, NULL, req, 1, eh_lock_door_done);
+	blk_execute_rq_nowait(NULL, req, 1, eh_lock_door_done);
 }

 /**
diff --git a/drivers/scsi/sg.c b/drivers/scsi/sg.c
index cce757506383..81ece3ed0474 100644
--- a/drivers/scsi/sg.c
+++ b/drivers/scsi/sg.c
@@ -835,8 +835,7 @@ sg_common_write(Sg_fd * sfp, Sg_request * srp,

 	srp->rq->timeout = timeout;
 	kref_get(&sfp->f_ref); /* sg_rq_end_io() does kref_put(). */
-	blk_execute_rq_nowait(sdp->device->request_queue, sdp->disk,
-			      srp->rq, at_head, sg_rq_end_io);
+	blk_execute_rq_nowait(sdp->disk, srp->rq, at_head, sg_rq_end_io);
 	return 0;
 }

diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
index e3266a64a477..3b828f260294 100644
--- a/drivers/scsi/st.c
+++ b/drivers/scsi/st.c
@@ -583,7 +583,7 @@ static int st_scsi_execute(struct st_request *SRpnt, const unsigned char *cmd,
 	rq->retries = retries;
 	req->end_io_data = SRpnt;

-	blk_execute_rq_nowait(req->q, NULL, req, 1, st_scsi_execute_end);
+	blk_execute_rq_nowait(NULL, req, 1, st_scsi_execute_end);
 	return 0;
 }

diff --git a/drivers/target/target_core_pscsi.c b/drivers/target/target_core_pscsi.c
index c9d92b3e777d..021212569d1b 100644
--- a/drivers/target/target_core_pscsi.c
+++ b/drivers/target/target_core_pscsi.c
@@ -1000,9 +1000,8 @@ pscsi_execute_cmd(struct se_cmd *cmd)
 		req->timeout = PS_TIMEOUT_OTHER;
 	scsi_req(req)->retries = PS_RETRY;

-	blk_execute_rq_nowait(pdv->pdv_sd->request_queue, NULL, req,
-			(cmd->sam_task_attr == TCM_HEAD_TAG),
-			pscsi_req_done);
+	blk_execute_rq_nowait(NULL, req, (cmd->sam_task_attr == TCM_HEAD_TAG),
+			      pscsi_req_done);

 	return 0;

diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 1ef375dafb1c..8e8f088c75a5 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -867,8 +867,8 @@ extern int blk_rq_map_user_iov(struct request_queue *, struct request *,
 			       gfp_t);
 extern void blk_execute_rq(struct request_queue *, struct gendisk *,
 			  struct request *, int);
-extern void blk_execute_rq_nowait(struct request_queue *, struct gendisk *,
-				  struct request *, int, rq_end_io_fn *);
+extern void blk_execute_rq_nowait(struct gendisk *, struct request *, int,
+				rq_end_io_fn *);

 /* Helper to convert REQ_OP_XXX to its string format XXX */
 extern const char *blk_op_str(unsigned int op);
--
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
