Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2160431A0F
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4FgMTEoqKytgqXnw4dQ3gKyZwWkaXyhN/mEJkjk3sw=; b=CGWEaSo5ECObNY
	cobcNnYilhkKRKL61HC1g7hZr3bhPkaxeWuFy5flLwuc2memvdbHhYCCFJKoWqaxHNasQxDrYhZbE
	g6Lj40Su7Bh7DzqIea3oK3FTVzQmCHsztM8evWDcR3XHdnxUwdFA5tiJLsvBaTIDdDSWhFjijxkI3
	38u2sBl2IH5obCndlG91a1W4m0zNsGFvscpUXVrfBu5IWk8vmWXbulUZCFlPHLT1rTg5I3uSpriKg
	o0oruABoLBpSfMdbWbyC8/0iQkH6HykYZPj7uazM5+rpf2kvf4yOgfOAcnbUblx0aTl6fsMuhkOf5
	yiVSYE+tetJZT6zPWvlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyLn-0007jO-Vn; Sat, 01 Jun 2019 07:22:48 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyLJ-0007Fm-Uh
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:22:35 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so5292781pgp.8
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJkCVRR+gdkDtTsdI9CmKUZ5GHf9wVJuOyj69cbCvbQ=;
 b=ZxSysDWhPItNi36o88zGUd+vPSPaF8i3g5s4DLSlXvSY4SrLbs+GW2Ei3qUre8dMHW
 BZmIg6vzXcF1PnpSiHT7pRTb3toNIEuznX97FU7rsXCnOn3BNViKahW0Ke7n9ckrSW5B
 w+slOOPTs881SGvXuWjtK17o+5BMPNmi/KUqBDgjEb4yC0QdanVXvkF0C0fmOtd6WPaO
 5qMRxCJxraegjqItgJGIWHHpCc8/TMY0nN6RwOyrhdL7thho5COA1rj/YAPrFPC/4pzE
 E9/auHNjKEhe5Z2tY3WmGPsWJjNIlxynJu+ojouD7knRrvUp3t10TSebTufA/I2OLguV
 mMpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJkCVRR+gdkDtTsdI9CmKUZ5GHf9wVJuOyj69cbCvbQ=;
 b=tVrw3lcmpQY/Kn7F2kLEKNmXoM5bZrv83zSZMGCZJH2OTjIIJyoV81QBIPDVpOWRWt
 ymP63eW8o71cwhiKzCVE1QyRphGiHqInLnRJ56/TmNUsT1sao8W3c5qsNTn/eDtzScQh
 e0dcVQGV7qsDOti3z6p3ADqS7zexXJPGN8elTuhU9bSUXm6Zpc2Y84PvwhC8TkhBvOYW
 rzw+4Tu0j8Bpt54HRdXFwQwG1+qBo+1ZP9CsG7Z82STsYYvDtxxeWhDXv2jA2i1zPF7C
 A8wYWVy9WqtosU8oIFNWMcgMaF4w8amxLl6BLSSzf0AYFWoeUsOYEGrMcQlnr+e7v7Gp
 I9xQ==
X-Gm-Message-State: APjAAAW2/2QZyzAPES/LIW+81K1ullDk/gITE6Hf3Lq7ft6c0WRmh7IC
 o+kk71KOeyNLsSrm7Cw0yni/+z82b5g=
X-Google-Smtp-Source: APXvYqxMlbASFWlk322i0p5FtYDBBsNUIgBRSipl3vdVlxClEaE1knYXexEkN/w8dMJ8CG+f2AV4Jw==
X-Received: by 2002:a63:d658:: with SMTP id d24mr13721843pgj.191.1559373737032; 
 Sat, 01 Jun 2019 00:22:17 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm7881200pjb.1.2019.06.01.00.22.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:22:16 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 5/5] nvme-trace: Add tracing for req_comp in target
Date: Sat,  1 Jun 2019 16:21:43 +0900
Message-Id: <20190601072143.21233-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_002218_709925_6CB5BBF5 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

We can have the common tracing code with different event entries.
  - nvme_complete_rq
  - nvmet_req_complete

This patch updates existing TRACE_EVENT to a template to provide a
common tracing interface.

We can have it as a common code because most of the fields need to be
printed out for both host and target system.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/core.c |  3 +++
 drivers/nvme/trace.c       |  1 +
 drivers/nvme/trace.h       | 51 ++++++++++++++++++++++++++++++--------
 3 files changed, 45 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index a94c7f9b02ae..722737f5486f 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -690,6 +690,9 @@ static void __nvmet_req_complete(struct nvmet_req *req, u16 status)
 
 	if (unlikely(status))
 		nvmet_set_error(req, status);
+
+	trace_nvmet_req_complete(req);
+
 	if (req->ns)
 		nvmet_put_namespace(req->ns);
 	req->ops->queue_response(req);
diff --git a/drivers/nvme/trace.c b/drivers/nvme/trace.c
index 8fe2dcee6a42..8071b60ec71d 100644
--- a/drivers/nvme/trace.c
+++ b/drivers/nvme/trace.c
@@ -222,3 +222,4 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_async_event);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvmet_req_init);
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvmet_req_complete);
diff --git a/drivers/nvme/trace.h b/drivers/nvme/trace.h
index 9af674ee0c3a..aa0807a47356 100644
--- a/drivers/nvme/trace.h
+++ b/drivers/nvme/trace.h
@@ -193,10 +193,11 @@ DEFINE_EVENT(nvme__cmd_begin, nvmet_req_init,
 	TP_ARGS(req, cmd, NVME_TRACE_TARGET)
 );
 
-TRACE_EVENT(nvme_complete_rq,
-	    TP_PROTO(struct request *req),
+DECLARE_EVENT_CLASS(nvme__cmd_end,
+	    TP_PROTO(void *req, ...),
 	    TP_ARGS(req),
 	    TP_STRUCT__entry(
+		__field(enum nvme_trace_type, type)
 		__array(char, disk, DISK_NAME_LEN)
 		__field(int, ctrl_id)
 		__field(int, qid)
@@ -207,20 +208,50 @@ TRACE_EVENT(nvme_complete_rq,
 		__field(u16, status)
 	    ),
 	    TP_fast_assign(
-		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
-		__entry->qid = nvme_req_qid(req);
-		__entry->cid = req->tag;
-		__entry->result = le64_to_cpu(nvme_req(req)->result.u64);
-		__entry->retries = nvme_req(req)->retries;
-		__entry->flags = nvme_req(req)->flags;
-		__entry->status = nvme_req(req)->status;
-		__assign_disk_name(__entry->disk, req->rq_disk);
+		set_trace_type(__entry->type, req);
+		if (__entry->type != NVME_TRACE_TARGET) {
+			struct request *req = (struct request *) req;
+
+			__entry->ctrl_id = nvme_req(req)->ctrl->instance;
+			__entry->qid = nvme_req_qid(req);
+			__entry->cid = req->tag;
+			__entry->result =
+					le64_to_cpu(nvme_req(req)->result.u64);
+			__entry->retries = nvme_req(req)->retries;
+			__entry->flags = nvme_req(req)->flags;
+			__entry->status = nvme_req(req)->status;
+			__assign_disk_name(__entry->disk, req->rq_disk);
+		} else {
+			struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
+			struct nvmet_cq *cq = ((struct nvmet_req *) req)->cq;
+			struct nvme_completion *cqe =
+					((struct nvmet_req *) req)->cqe;
+			struct nvmet_ns *ns = ((struct nvmet_req *) req)->ns;
+
+			__entry->ctrl_id = ctrl ? ctrl->cntlid : 0;
+			__entry->qid = cq->qid;
+			__entry->cid = cqe->command_id;
+			__entry->result = cqe->result.u64;
+			__entry->flags = 0;
+			__entry->status = le16_to_cpu(cqe->status) >> 1;
+			__assign_disk_name(__entry->disk, ns ?
+						ns->bdev->bd_disk : NULL);
+		}
 	    ),
 	    TP_printk("nvme%d: %sqid=%d, cmdid=%u, res=%llu, retries=%u, flags=0x%x, status=%u",
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
 		      __entry->qid, __entry->cid, __entry->result,
 		      __entry->retries, __entry->flags, __entry->status)
+);
+
+DEFINE_EVENT(nvme__cmd_end, nvme_complete_rq,
+	TP_PROTO(void *req, ...),
+	TP_ARGS(req, NVME_TRACE_HOST)
+);
 
+DEFINE_EVENT(nvme__cmd_end, nvmet_req_complete,
+	TP_PROTO(void *req, ...),
+	TP_ARGS(req, NVME_TRACE_TARGET)
 );
 
 #define aer_name(aer) { aer, #aer }
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
