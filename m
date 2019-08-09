Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B33D877FD
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 12:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rk/BYbwL64uLNGi1QfXtw7nMxbN+kHhFqtx+5olaO8=; b=Ols3RGCpc1tbcZ
	xQQ6V1qM8hSO+cSWX8xToD3ezEPD6uEaU8qXrO+V+4n/60OU4vWziJ6mj+H9JRWtiWAdRuqTkjv8s
	hM7G56+7GqcCHhwxeZvUrlEHIML6iu74mnvJ+o/k5RDAS71ruRKdDH6WgqBHP3XMD/wJ+5fo9YlVy
	pyF6gvBJbzxOTgqxeYsMC2kLHEKB5ik6lK0HgWjsDuu7eiUUOFpIs7T5JEbFNaqz3GD4FgLge6S9f
	M+fHLxBBDuZoHkr1tjeEd7bqmnvwipQqvC70Xbja+aEYzTJMQExc+2QOl71Sy/YdNEYjhoSoMAxU8
	zfbctmAS0b0KohSqlthw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2Yc-0002mE-JL; Fri, 09 Aug 2019 10:55:38 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2Xn-0001F6-AP
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 10:54:51 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so94498794edr.11
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 03:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xt0t0Oq4acEqkJbqLnYVPWJEmHrA4PjKK4iicWzZq3o=;
 b=DZDx2+xmInpW+Kh0ULTjXBkwb9Wip1PO5f/pSyz8d0ghAkjYVaFhef+q9FU60+7G88
 oLt7/GikKceBNuaSuI8+SvfLJh6x9U69RAunqqEx6PNbjCnJZkC3tsotSlN6hH8q8AMK
 ZLmuc0m6StFP5MSAr5nK55X4u8rfTAGI7NNKSKt4JpGwNXLY40Mytuyw2V2Kun0/j/wM
 QTbclnhwnzv7sVW4RGm7Kx6Lf47tvMcMbL5iOshfnGXW7pYDHGG4yMZi6H9v+l7w09ib
 4Cc9JzQwk1jWQMa8GKzHTTQISnxDDjQgBNjN31xTAng8tPE5R64OCn2f5vqU++40TX8E
 WQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xt0t0Oq4acEqkJbqLnYVPWJEmHrA4PjKK4iicWzZq3o=;
 b=UKopMzOj5JoOxIZK8lccYBfCy/F2qQdHylHBhokD7bGeumWUZUGynAwFTdb8M87l8G
 ng9RmAm/dbe+zkBPUBsSWunUxsQwmiTmy6u8D6fyxRHjYP5SmsN0hf5+ItZWKvBndmpj
 7gPPCLBNrqcbKA7r6pHkdUm3oUjS7LGikcqCHmzZ3Wn3mbgJ897tVRnBObyF8HdRd/df
 KHqB8A1Z+1iv53mG/4tUPyOwXsMYnq+mkI3qCiPNSMs5OgdtkChEhAzgdQmFjDUg++xB
 15gyUMVr8uGbVKDLzFl4Xpd5KZY8m/0Q19UgCXGV+sQMobKxJhefUOtA7KJnT4BLUupb
 KCqA==
X-Gm-Message-State: APjAAAXZdwRfvI1aqP0QybIWQOw/wZA2yjY2eFb5wsdLnW9r2olybD2k
 4womyuX6eu2y/F+tXRUY4AQ=
X-Google-Smtp-Source: APXvYqysaecgybcYmpXFxIi26pt+RPUTBMSRXuXUP90BrN0Ud3f7IHyfp5T7mPAKRtdgXyjfWoUa1Q==
X-Received: by 2002:a17:906:60c6:: with SMTP id
 f6mr12826090ejk.272.1565348085616; 
 Fri, 09 Aug 2019 03:54:45 -0700 (PDT)
Received: from continental.suse.de ([177.96.42.43])
 by smtp.gmail.com with ESMTPSA id x55sm22289167edm.11.2019.08.09.03.54.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 09 Aug 2019 03:54:45 -0700 (PDT)
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCHv2 3/4] block: Change at_head argument of blk_execute_rq_nowait
 to bool
Date: Fri,  9 Aug 2019 07:54:32 -0300
Message-Id: <20190809105433.8946-4-marcos.souza.org@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809105433.8946-1-marcos.souza.org@gmail.com>
References: <20190809105433.8946-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_035447_824801_1AC037FD 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
 "open list:SCSI SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 Keith Busch <kbusch@kernel.org>, Ming Lei <ming.lei@redhat.com>, hch@lst.de,
 Marcos Paulo de Souza <marcos.souza.org@gmail.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
---
 block/blk-exec.c             |  2 +-
 drivers/nvme/host/core.c     | 12 ++++++------
 drivers/nvme/host/lightnvm.c |  2 +-
 drivers/nvme/host/nvme.h     |  2 +-
 drivers/nvme/host/pci.c      |  2 +-
 drivers/scsi/scsi_error.c    |  2 +-
 drivers/scsi/st.c            |  2 +-
 include/linux/blkdev.h       |  2 +-
 8 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/block/blk-exec.c b/block/blk-exec.c
index 7862f8be39d1..c8b88f469988 100644
--- a/block/blk-exec.c
+++ b/block/blk-exec.c
@@ -45,7 +45,7 @@ static void blk_end_sync_rq(struct request *rq, blk_status_t error)
  *    This function will invoke @done directly if the queue is dead.
  */
 void blk_execute_rq_nowait(struct gendisk *bd_disk, struct request *rq,
-			int at_head, rq_end_io_fn *done)
+			bool at_head, rq_end_io_fn *done)
 {
 	WARN_ON(irqs_disabled());
 	WARN_ON(!blk_rq_is_passthrough(rq));
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4a2ed03223b1..38c1a5db9e56 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -748,7 +748,7 @@ static void nvme_end_sync_rq(struct request *rq, blk_status_t error)
 }

 static void nvme_execute_rq_polled(struct request_queue *q,
-		struct gendisk *bd_disk, struct request *rq, int at_head)
+		struct gendisk *bd_disk, struct request *rq, bool at_head)
 {
 	DECLARE_COMPLETION_ONSTACK(wait);

@@ -770,7 +770,7 @@ static void nvme_execute_rq_polled(struct request_queue *q,
  */
 int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		union nvme_result *result, void *buffer, unsigned bufflen,
-		unsigned timeout, int qid, int at_head,
+		unsigned timeout, int qid, bool at_head,
 		blk_mq_req_flags_t flags, bool poll)
 {
 	struct request *req;
@@ -808,7 +808,7 @@ int nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		void *buffer, unsigned bufflen)
 {
 	return __nvme_submit_sync_cmd(q, cmd, NULL, buffer, bufflen, 0,
-			NVME_QID_ANY, 0, 0, false);
+			NVME_QID_ANY, false, 0, false);
 }
 EXPORT_SYMBOL_GPL(nvme_submit_sync_cmd);

@@ -941,7 +941,7 @@ static int nvme_keep_alive(struct nvme_ctrl *ctrl)
 	rq->timeout = ctrl->kato * HZ;
 	rq->end_io_data = ctrl;

-	blk_execute_rq_nowait(NULL, rq, 0, nvme_keep_alive_end_io);
+	blk_execute_rq_nowait(NULL, rq, false, nvme_keep_alive_end_io);

 	return 0;
 }
@@ -1127,7 +1127,7 @@ static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
 	c.features.dword11 = cpu_to_le32(dword11);

 	ret = __nvme_submit_sync_cmd(dev->admin_q, &c, &res,
-			buffer, buflen, 0, NVME_QID_ANY, 0, 0, false);
+			buffer, buflen, 0, NVME_QID_ANY, false, 0, false);
 	if (ret >= 0 && result)
 		*result = le32_to_cpu(res.u32);
 	return ret;
@@ -1871,7 +1871,7 @@ int nvme_sec_submit(void *data, u16 spsp, u8 secp, void *buffer, size_t len,
 	cmd.common.cdw11 = cpu_to_le32(len);

 	return __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, NULL, buffer, len,
-				      ADMIN_TIMEOUT, NVME_QID_ANY, 1, 0, false);
+				      ADMIN_TIMEOUT, NVME_QID_ANY, true, 0, false);
 }
 EXPORT_SYMBOL_GPL(nvme_sec_submit);
 #endif /* CONFIG_BLK_SED_OPAL */
diff --git a/drivers/nvme/host/lightnvm.c b/drivers/nvme/host/lightnvm.c
index 9c82a5044b75..c09989376c3b 100644
--- a/drivers/nvme/host/lightnvm.c
+++ b/drivers/nvme/host/lightnvm.c
@@ -685,7 +685,7 @@ static int nvme_nvm_submit_io(struct nvm_dev *dev, struct nvm_rq *rqd)

 	rq->end_io_data = rqd;

-	blk_execute_rq_nowait(NULL, rq, 0, nvme_nvm_end_io);
+	blk_execute_rq_nowait(NULL, rq, false, nvme_nvm_end_io);

 	return 0;
 }
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 26b563f9985b..f43d0189cba3 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -464,7 +464,7 @@ int nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		void *buf, unsigned bufflen);
 int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		union nvme_result *result, void *buffer, unsigned bufflen,
-		unsigned timeout, int qid, int at_head,
+		unsigned timeout, int qid, bool at_head,
 		blk_mq_req_flags_t flags, bool poll);
 int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
 		      unsigned int dword11, void *buffer, size_t buflen,
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index d8f83696b4ba..20cbadc7469d 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1332,7 +1332,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)

 	abort_req->timeout = ADMIN_TIMEOUT;
 	abort_req->end_io_data = NULL;
-	blk_execute_rq_nowait(NULL, abort_req, 0, abort_endio);
+	blk_execute_rq_nowait(NULL, abort_req, false, abort_endio);

 	/*
 	 * The aborted req will be completed on receiving the abort req.
diff --git a/drivers/scsi/scsi_error.c b/drivers/scsi/scsi_error.c
index 49cda23c7fb8..48b1cbb72e32 100644
--- a/drivers/scsi/scsi_error.c
+++ b/drivers/scsi/scsi_error.c
@@ -1988,7 +1988,7 @@ static void scsi_eh_lock_door(struct scsi_device *sdev)
 	req->timeout = 10 * HZ;
 	rq->retries = 5;

-	blk_execute_rq_nowait(NULL, req, 1, eh_lock_door_done);
+	blk_execute_rq_nowait(NULL, req, false, eh_lock_door_done);
 }

 /**
diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
index 3b828f260294..1d81125f8d35 100644
--- a/drivers/scsi/st.c
+++ b/drivers/scsi/st.c
@@ -583,7 +583,7 @@ static int st_scsi_execute(struct st_request *SRpnt, const unsigned char *cmd,
 	rq->retries = retries;
 	req->end_io_data = SRpnt;

-	blk_execute_rq_nowait(NULL, req, 1, st_scsi_execute_end);
+	blk_execute_rq_nowait(NULL, req, true, st_scsi_execute_end);
 	return 0;
 }

diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index c9d9ca686290..19ed996f0074 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -866,7 +866,7 @@ extern int blk_rq_map_user_iov(struct request_queue *, struct request *,
 			       struct rq_map_data *, const struct iov_iter *,
 			       gfp_t);
 extern void blk_execute_rq(struct gendisk *, struct request *, int);
-extern void blk_execute_rq_nowait(struct gendisk *, struct request *, int,
+extern void blk_execute_rq_nowait(struct gendisk *, struct request *, bool,
 				rq_end_io_fn *);

 /* Helper to convert REQ_OP_XXX to its string format XXX */
--
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
