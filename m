Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC81B2B99F
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 19:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oY4Xk/odn98i6H2Z7QuZaTmG2sY4aeOUDlAr9z5HVZk=; b=SFxm0CKm5+XwiO
	Rnwnxm1lATrJyAcEZSsZp6AovViDLA0rWdNHv4Aq4X9X+jYUXMF8MJAxj40oG4j70kbbjebf+WPga
	I7tZkPcJw23s5PZrcrFNwHDkRrOJie7f9LLfos9UWr+rg7jmHLEpd459U+wylVd0pRBukxLmBvsi8
	/GhaohriCopWS5tpy+JyLG25ZH0Lsb4JciIFfbAhq+64CrVsYQFAMRDA2dxc9lJStNt+Byf3XMAeU
	AZETjR9sq1fp4DrEk29Qn82tgDph+xdQ+wqD8nyC5PLXpWwBUty0XESbsWdeoLh6rkNbmnrqPDwCI
	Dn+IkX41HaBRrnjvtbSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJpp-0004S4-Kd; Mon, 27 May 2019 17:54:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJpH-0003qp-44
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 17:54:42 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so9435746pgv.10
 for <linux-nvme@lists.infradead.org>; Mon, 27 May 2019 10:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BwTUuXxH9VQdFyTNpR2EFWyPYUacdmTIk+EuRBn+Bvc=;
 b=dLeMslA2RppyxUIuSvYYW7q9bPepqzquSAC84w4+u2H/4zY/NoR92nudKz7qs2qyP4
 DuOIvZOmxrVfWR4bS46cgahm2G+XPp4fseuLZwDGK/ze+TgSgEral3GWcbMdoNlkpvih
 14y6YoAPWeNL46YzS1Yn/hbYllOZuZvP1a8CF4Vt+kfcAepwZu2/5hGAF49DodybDwgo
 af+Z+X+1lWjyThFk1ZWLyKtr0TRCHGTclpPX4BBilG9AEtcGEjQXGQGPf4xKlBqo2Qf9
 PSHmoALWdMKCTkzZMPR6ArlEyHoTPlPHYyPvh8hRsGwKxQOBoBV/qD5R7+IV4m7EDQRJ
 P67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BwTUuXxH9VQdFyTNpR2EFWyPYUacdmTIk+EuRBn+Bvc=;
 b=eP7fEgj+ZT8cGYfxcFvNJu8r9GbPi+pNWOSe2fFkqAn4mdd8Ag9xk+Oqpvap20pK5d
 zN0YK2gImDzvjlExk9YDaKsQWHA2j48F687uXCHkJ7QZUI2j/aw2XYLneaZhjYMKvgft
 o9V921XyOD+twAKjhwCZCqTHaJgqKctw8ka3qF9QiSt7uxLSmA+V/toqScnHAgdy020e
 AprlyQ45qqxeYDJrW+W7dI6MTlxVGQwnEjtaeBos8okWdxWT0kI/SsHyll37FH7yJV2c
 V2L6aaTxDWLuMtk2q396L50r7NIOPE2b4olyXoBOOAKmTE7P/90P1h+s7mKnSWkZ+PB3
 ZY7A==
X-Gm-Message-State: APjAAAVxDbg84MCXNmDurHYwpp7l8BVrelBTUscJw8nl5jl4Tmp2nrOj
 NFwVd9yrQNFskVpHXN3U1HVt8hKZ52M=
X-Google-Smtp-Source: APXvYqw1oa9Us2DoQf3RJdZj2SnhsrBi/Joa81dzUVpZCaGL0BmtVzpXc33ya7HJvSBhmd9qjphNBw==
X-Received: by 2002:a62:7d10:: with SMTP id
 y16mr137033866pfc.116.1558979661891; 
 Mon, 27 May 2019 10:54:21 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm12608936pfa.142.2019.05.27.10.54.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 10:54:21 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 5/5] nvme-trace: Add tracing for req_comp in target
Date: Tue, 28 May 2019 02:53:46 +0900
Message-Id: <20190527175346.29972-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105423_684632_B16F6669 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Christoph Hellwig <hch@lst.de>
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
index 9af674ee0c3a..bd239434de09 100644
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
+			__entry->status = cqe->status >> 1;
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
