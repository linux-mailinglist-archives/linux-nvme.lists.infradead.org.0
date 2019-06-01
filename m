Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF7331A0D
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:22:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BY+2R9r3oSAmmplPLKVr4SHjo5233UpUXMS1MenC8Ko=; b=i+idEakJMnRRiI
	LgReXbbhjwpatmNNnzsvw9/H0McsTLzAAlviud0CkSCnVpQsVlhflGr6HGas1qsJtP+fMhEHmeuBn
	lRXsDKXce/c2MoFvU/3mBWFhjrJpeCtUXAVgrKo37eWkncvyVDRCmCS/W5wqdjyUUDnT8FjiREI4Z
	1+3oy9VgvktRLMoanB6H9bM+W1AczQfUnKO8TNsOxvoe/YE3Y2FRCM2hVKnvKXYMes5t7uzXCVG1/
	8F2aCOKcIo7KDVW466jAIBriLdfkD3h6h+plMB/+uDqf5uIKMPQ2N2j9wOt3dizVMa/wTgtSnEWuL
	hss3icp+CTbdwY55SWLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyLX-0007Nz-FA; Sat, 01 Jun 2019 07:22:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyLC-00074q-RK
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:22:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id z3so5292653pgp.8
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/NB+3zhZdcudvWdZw15I3BdWHsUXDamEIxXum9MfVyk=;
 b=njktud3fjxZiMTlb7xHcaGurQ3XvBsgoVL+Yur7AN9g4JOqPr+HZFeQaOjWQ20os7l
 nThxZm3RnGtYYot3mEufDwZM4RmC4LxQw6GYp/8yZ+MXfFKs27m0D9w+bejEOHLzwBPE
 veZc686oduPF4zvdGoElVu2GDn9QJwBNm2HFiBJq5YXgPjBQ2KzMmttBIBjU9/+fQB3E
 SQgm87I8AItNQivoxTx7BDMjuQlBftK6QP7HrQAWkgpbdDq8r+uxEcEugzosMHZrGxu4
 nzypq6jJjPuNIFdGD15Y+H5YLln7NUggUReJ1cc7LvvJ9VHJIcjwpviggQ3OCyCBRmo8
 Vodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/NB+3zhZdcudvWdZw15I3BdWHsUXDamEIxXum9MfVyk=;
 b=esRqsdfniFj+BObk358gjMVpp0PGWF6aJc/XfMe+Nozfiw4bGmz5Mmek2ssz17DW8M
 YLchs8vEl4QrBGw7vOrVwjML22jtYVaFIbehDjQ7WNsfgoPrMcp1E9Roo+HSCYEL/Cv7
 hKhllVggUXS4psjYHpxvrlW83ZK2fYndodF7JKZWp/DqmwVnx25wY6KXq1y3xBjCN8NK
 3Q4vvaNFiUQhRYjsla5aYsPfKFY+0VB5WEahAFKYBPKh5bPAPY6JSRlFALZO05K4CKv8
 PKuJEPgwlkGxpyA4kCjKCDESpsOF/lx1UZtfPnph1NQ7rMXQN4WchkJHP//3+WaS8FPr
 Ct9w==
X-Gm-Message-State: APjAAAVX6K1zh77MyhiGyDI47mf3jtKeYbOYt7pIH5mFFb1xrJc9yk+8
 zaPPPcwrkpDcW03Tjk8r4nRAJCih8no=
X-Google-Smtp-Source: APXvYqwgisOT3cdDVO95a1us88s1ryuDWv1ovHOjt0xkaj7bnW03rk9KAXSx3ViYxZUx8oAG9cYRVg==
X-Received: by 2002:a63:24c1:: with SMTP id
 k184mr11524027pgk.120.1559373729706; 
 Sat, 01 Jun 2019 00:22:09 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm7881200pjb.1.2019.06.01.00.22.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:22:08 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 3/5] nvme: Introduce nvme_is_fabrics to check fabrics cmd
Date: Sat,  1 Jun 2019 16:21:41 +0900
Message-Id: <20190601072143.21233-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_002211_208678_6D393B5D 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
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
