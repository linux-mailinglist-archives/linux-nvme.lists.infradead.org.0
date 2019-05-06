Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E583415492
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9i+yH2Cfk5w9AlJrNxoRhCmB2PTpRTRRbgeKMfWAXvM=; b=YF9oyrqs4L55FXhpBgIMgD5URP
	EJoV6nqJjevN7wh22xmxBn1d4Pkk8g/uol/M6Ka5TioLIujKck/OcjZMdnf2f5NFLI6X/YSSDpVIb
	0xAs0KlnGJDIrsPIrNueyTWD8nkHxj9ze72ADLwjffuOQtcaE84ZOL21JtlO9ke48hd3gMZkv9jhN
	z2kVFVOyMreYIArz1+axnE7ktGnwQHAwCJc1ynC1OBrqucJEuQhH5dUiyd2RPs1jWXzpOvjRoqD40
	zv7pl0EMOjc7sfgm4VB0bjMHOXdQ92eQ7T0FbJZzQw6ZycRFI1FTKD5Zjm01E9P4vJhfBjtEGwqOf
	8qvYykzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNjZy-0006IH-Bu; Mon, 06 May 2019 19:47:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjZq-0006Fb-GS
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:47:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id y3so6893778plp.0
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 12:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LxI7s+V++JAUvOzarfFiJnaM3JwJCysE+CC40eBNLc8=;
 b=L9mo2ZtWo9HJQzhMbAinAsW5jcS/H0KKNKhPc0urqJX0iDh++fQKAe+p3E3RrjasGD
 NMX6hOHzgIHHAY+VHBp1i9vkCX2lErQcANrD3b0zv/idC+C/HyHoNz1Z5hKxTIhmS9oZ
 lJHQQFJSyhtLoEYH1f1AMb7ob9esBDfdLlea3WiuDQpqI2JaZapL9iflDTdQEFQgukqP
 fTaY2iwRsE1gcxAmQMWTyH195kXpc3wxEQSQAztWsn1LfYiQahE7014a3EL+5Zz0VRA1
 LVAzUG/O9dIBbLsYJVXy4f6qSGZTADa6tLYtPpvk34gWkd0vthF8ed4AnAHPsh40+uym
 hGZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LxI7s+V++JAUvOzarfFiJnaM3JwJCysE+CC40eBNLc8=;
 b=qqmLsnQIokiOJpq+OLEdqJABC8XN3drFcp277DBwEco+5RG6pnG6RT3nv1gVjFpFMM
 Q4tMrli2Y0zBHiPb6RNK4Co5Vm7ZXbLK6x3Z+wSuOvrJJWtjsi+dgfNvLbBpKx48lZag
 LhGTS8IrYXanvr4w6gNdtZ8HLD0hHFje+Xr0FMWl7FbXoLSnJhtd7kXkh3Ltcr4dPGCz
 t+DMrFKzCsrdNPDcYxv4LpX5/dMcyOaGIR72gIFqLl8LvMehKFcahz3bk2G2ZXdSZe9H
 YnhaKE0JmUXVavKa/VP2BBGXVhaRH3LR3C9iSW5vNWCZLhm7nYEWK8usgDCNiJWlK6V4
 0FuQ==
X-Gm-Message-State: APjAAAVWUKXu4/lf7DusoSnRtXutRhTQNXBU+Io2Mq+IpFF0IhuWbMNd
 hP+uwhTqU1MdKC4t/7vTB2ZjlhfAdqY=
X-Google-Smtp-Source: APXvYqxKhiA/82Zd0Q1yPS8uj+9OiWdh8KY/tfTN0E/or2v+Rfm27fZAuF9P5Rhsat1ZQfbPYH4VJw==
X-Received: by 2002:a17:902:2a:: with SMTP id 39mr34546594pla.64.1557172025573; 
 Mon, 06 May 2019 12:47:05 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b18sm7140073pfp.32.2019.05.06.12.47.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 12:47:04 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme: Introduce nvme_is_fabrics to check fabrics cmd
Date: Tue,  7 May 2019 04:46:43 +0900
Message-Id: <20190506194644.11109-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_124706_549946_A28EA5B5 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch introduce a nvme_is_fabrics() inline function to check
whether or not the given command structure is for fabrics.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/fabrics.c       | 2 +-
 drivers/nvme/target/core.c        | 2 +-
 drivers/nvme/target/fabrics-cmd.c | 2 +-
 drivers/nvme/target/fc.c          | 2 +-
 include/linux/nvme.h              | 7 ++++++-
 5 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 592d1e61ef7e..931995f2dbc3 100644
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
index c40720cb59ac..ab5e9392b42d 100644
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
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
