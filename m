Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD51A36B9C
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 07:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jqLY9pAzxLJg/wuqgrivVdtSEdS/7Gmaz2D5eWLMqVQ=; b=Y2U4gN3dwovNki
	G+sCKZYen2x2cEMU2oSCPMsThPCMZjjXJ6eQSLOjNAN7LRQclbWKT88J4UtWabawkFN/pjc+vyhnp
	QYQ9NDZn8wRRKsKoGtmapDgJfVEDRAuf4J3G4HxVpQ3kQ+sjhwEZ2yxjHFX6jsmbSC2HZIN0OoDXO
	4VgvPZFsBBC3jlAeRYC/7dA3HzDd6OYXQG4JiHHiby6cLrX0lFqfeg+4HAJ0gmJ1OuQkni1OE6i9r
	+uRkeunH8wpYBUDTBzX2E85PadE0AIB35PcGbE3sFCoSMWN+WVkxAPCwQMHJNnUjAVnTlN+yCWrM/
	uDRH0eKkhRguCrERripw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkz1-00078p-9p; Thu, 06 Jun 2019 05:30:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkyw-00078R-Vb
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 05:30:36 +0000
Received: by mail-pf1-x441.google.com with SMTP id q10so756838pff.9
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 22:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=htKMftZ9OCRWYk3pLnVFiOKa+7dsQef4syuVpkGvGvc=;
 b=hacZC6e0lviC/c8EoqyzrpBE+pWQCjq9syHk4GBBy5qXH8hJtRpX0tDzj7FF6XtBv+
 BQj62aNEMZ4Q5FSnnVCxlMWhUxSEh9MsrP0PxZRDf/tUnKQWytAw1RffkKllosRjizoB
 zAvXVoowenkaRQG4/temPsiqCobPAG2kXApGRPQktrRr82M9e3erQp6U0zM/63zT0iYW
 BnQwc7xrphTzn/y29+T70Z26n9eFiC4ioTN5z8+B0/+11yQKWYC8gxbw0taygYpKFrdj
 OGhmrq5uBu9DrMH5q/o5sewV53CwnhBFk1WQssTZv5D1wcxvWcyjL1bUGseNKBjN20Q4
 hplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=htKMftZ9OCRWYk3pLnVFiOKa+7dsQef4syuVpkGvGvc=;
 b=DmjnASqgVWUUUBrA9T+EWReKCdmKh8Tgxu9VeosOfXEH5icUsrrdgcFxxtYCjVe3Of
 9hzaYamIDl8W4AtXP0ZHhKGmDOAG5YVm0ew+HivCk2ykbiOLA4JUOcqlJNWnIsqMCBJO
 8forHvl6RF2YgQPamFpYx8Vc2vVFc0dwdjU8d9x3hAiyNbNhGs17UJfsOeEsYYQDh/uS
 Ba34cfafFCTFrhM8t7etsHFaFDbl4+yRDwTyNDAELv6/WyRXraMuhgIjUKIh9hrR4q4d
 dFhfqqi4cT4ad/U7EOswg/1Eb0/bjcusrmtGQ+lswzOQiuttndNn5iMAa+E782Fejzks
 szjA==
X-Gm-Message-State: APjAAAUWJ7Gljp2LCRitPRmrhDKQ4iVOxNc5VtTygH06gyjLSGO1q32k
 QtsRINQS4r01pGQxy2w7P4KOznQCB5M=
X-Google-Smtp-Source: APXvYqyX3WGogcdp/OAE3sEIF/3dNOcjuzNpCzJFSKSuRdUAfH8ZdHwy2N3tV+jrfCLHvjVhjHWz+w==
X-Received: by 2002:a17:90a:e397:: with SMTP id
 b23mr27404589pjz.117.1559799033475; 
 Wed, 05 Jun 2019 22:30:33 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id u5sm538316pgp.19.2019.06.05.22.30.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 22:30:32 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: introduce nvme_is_fabrics to check fabrics cmd
Date: Thu,  6 Jun 2019 14:30:14 +0900
Message-Id: <20190606053014.27240-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_223035_044274_411E6F25 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch introduces a nvme_is_fabrics() inline function to check
whether or not the given command structure is for fabrics.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/fabrics.c       | 2 +-
 drivers/nvme/target/core.c        | 2 +-
 drivers/nvme/target/fabrics-cmd.c | 2 +-
 drivers/nvme/target/fc.c          | 2 +-
 include/linux/nvme.h              | 7 ++++++-
 5 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 5838f7cd53ac..1994d5b42f94 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -578,7 +578,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 	switch (ctrl->state) {
 	case NVME_CTRL_NEW:
 	case NVME_CTRL_CONNECTING:
-		if (req->cmd->common.opcode == nvme_fabrics_command &&
+		if (nvme_is_fabrics(req->cmd) &&
 		    req->cmd->fabrics.fctype == nvme_fabrics_type_connect)
 			return true;
 		break;
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 7734a6acff85..da2ea97042af 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -871,7 +871,7 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 		status = nvmet_parse_connect_cmd(req);
 	else if (likely(req->sq->qid != 0))
 		status = nvmet_parse_io_cmd(req);
-	else if (req->cmd->common.opcode == nvme_fabrics_command)
+	else if (nvme_is_fabrics(req->cmd))
 		status = nvmet_parse_fabrics_cmd(req);
 	else if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
 		status = nvmet_parse_discovery_cmd(req);
diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
index 3b9f79aba98f..d16b55ffe79f 100644
--- a/drivers/nvme/target/fabrics-cmd.c
+++ b/drivers/nvme/target/fabrics-cmd.c
@@ -268,7 +268,7 @@ u16 nvmet_parse_connect_cmd(struct nvmet_req *req)
 {
 	struct nvme_command *cmd = req->cmd;
 
-	if (cmd->common.opcode != nvme_fabrics_command) {
+	if (!nvme_is_fabrics(cmd)) {
 		pr_err("invalid command 0x%x on unconnected queue.\n",
 			cmd->fabrics.opcode);
 		req->error_loc = offsetof(struct nvme_common_command, opcode);
diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index 508661af0f50..a59c5a013a5c 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -1806,7 +1806,7 @@ nvmet_fc_prep_fcp_rsp(struct nvmet_fc_tgtport *tgtport,
 	 */
 	rspcnt = atomic_inc_return(&fod->queue->zrspcnt);
 	if (!(rspcnt % fod->queue->ersp_ratio) ||
-	    sqe->opcode == nvme_fabrics_command ||
+	    nvme_is_fabrics((struct nvme_command *) sqe) ||
 	    xfr_length != fod->req.transfer_len ||
 	    (le16_to_cpu(cqe->status) & 0xFFFE) || cqewd[0] || cqewd[1] ||
 	    (sqe->flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND)) ||
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 8028adacaff3..7080923e78d1 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -1165,6 +1165,11 @@ struct nvme_command {
 	};
 };
 
+static inline bool nvme_is_fabrics(struct nvme_command *cmd)
+{
+	return cmd->common.opcode == nvme_fabrics_command;
+}
+
 struct nvme_error_slot {
 	__le64		error_count;
 	__le16		sqid;
@@ -1186,7 +1191,7 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
 	 *
 	 * Why can't we simply have a Fabrics In and Fabrics out command?
 	 */
-	if (unlikely(cmd->common.opcode == nvme_fabrics_command))
+	if (unlikely(nvme_is_fabrics(cmd)))
 		return cmd->fabrics.fctype & 1;
 	return cmd->common.opcode & 1;
 }
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
