Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 302781BF91
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6W1ASHOgjVaXxqPF2om5cqSIsQS86F1R1o7TMBSZoiY=; b=q+Jr6ZyfUuIBqY4ld4m6uMXFeZ
	WWr1DfqrvooH3DHWeIv+zksGxCVU1YQwjW5U4sUJKfo1HmDYtRjEDXvEdLRo/talcxBjALVBhFIuk
	I0IqqBwMCBgAWx1O7Pa5y+NNdEgGsq0JImiG5u1GvYJXyr1tAWdTa/YvPIuwR5M3BWaXSnI1+lzCT
	FhrPT6DwPPIHEQBoI7vURvDlQVK/IIj+68zHW/9LAUvGV+o32tkublX/+gF2BPkejqharNMsTpQcE
	gQAXoaz02WB9BuitX7ovJKlTRJGtZyrmmdb8ik5o0Vep08byV1Hhryq0xgxNe2uSHNg1yPElZkfus
	W1i94WYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJfw-0007lw-CT; Mon, 13 May 2019 22:44:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfY-0007MU-30
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:43:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so7975110pfg.6
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gI0JLIBmGaekIcUtYG/+TIHNEeo1MI5rEqlJLqFKYvY=;
 b=e7PZupKQbKWTxPZ+HNZmhkA+36P3UynwZCi4Xo6cnkcqlOpDdKRDT1jNeAeyqP4dEY
 AUWVf87/nsl3NOS2SToVz7JArysQ/IXkEE3ToFdVcSyxud9CmbGZP7pfCqjuXIZqRZHB
 Ejl58thZiNCj4XxFFoPCvQ+S3Dg7TZhSVEyaD+T4bfKfpyarFq9ng1PVbDpe+5kwCI/r
 u/zqRgHXnUTt3egRo+CWrsRpI77X/cztu5654nGJ/PJ7Gk1gT5+j/QrPB5gWkvWTOT+x
 dYy/HzNLEFLtyTLQzZ7PASJaFUhbDV4nnEGMDkpWZqH8HYZQAWERpJ0wOdNZ8bZaoTEj
 3NBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gI0JLIBmGaekIcUtYG/+TIHNEeo1MI5rEqlJLqFKYvY=;
 b=CK4Flob2PWe9LLzR8xFoi6/wVTBiy5Xl2iYVI8xbYoZJVY45F67KGjeEDbkhEsUp+X
 9Q03tmnwNQGIOq5trQCBSIbymq6zqJi2IaR66zC76i9xx2xl8R/9HkXroIvTBbYOQcdQ
 dtr5qpib56/R3DvVCEt4Et38XCV2fGPs13jutAFmwbNXUWYzoigE8Y8G1178MvQuBMtv
 /9n6iIqbzXHPVqa2JxtU38q1CiU25VhQ+6/xWWTrkCbaMakYvzZOKqiHkFsi45TbEJcL
 TCzJ3IBlY9XCRa8QrCUqcNir7cZS3gNGoVYVVmKkc9yL200rwY7jzogg7DOCDFPE/TU7
 2kBA==
X-Gm-Message-State: APjAAAXkccZHxoJVi0i+uHHWcgIJvdZvmUhdj6FPNf8iSTQpJO1RZf+x
 j7wtKGGdzhi92LUjx0wCNvkNfH2c
X-Google-Smtp-Source: APXvYqwc53EVsDXQhBKQvyp0zApi914+8z+SQFVUvT60SLe5y+l7L5lVD7b+N8qENrdj4s+wzqUuZA==
X-Received: by 2002:aa7:82cd:: with SMTP id f13mr36158818pfn.203.1557787419073; 
 Mon, 13 May 2019 15:43:39 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:38 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/7] nvme-fcloop: Add support for nvmet discovery_event op
Date: Mon, 13 May 2019 15:43:10 -0700
Message-Id: <20190513224314.24169-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154340_535077_572E85ED 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Update fcloop to support the discovery_event operation and
invoke a nvme rescan. In a real fc adapter, this would generate an
RSCN, which the host would receive and convert into a nvme rescan
on the remote port specified in the rscn payload.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fcloop.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 381b5a90c48b..6ddcd090ec07 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -231,6 +231,11 @@ struct fcloop_lsreq {
 	int				status;
 };
 
+struct fcloop_rscn {
+	struct fcloop_tport		*tport;
+	struct work_struct		work;
+};
+
 enum {
 	INI_IO_START		= 0,
 	INI_IO_ACTIVE		= 1,
@@ -348,6 +353,37 @@ fcloop_xmt_ls_rsp(struct nvmet_fc_target_port *tport,
 	return 0;
 }
 
+/*
+ * Simulate reception of RSCN and converting it to a initiator transport
+ * call to rescan a remote port.
+ */
+static void
+fcloop_tgt_rscn_work(struct work_struct *work)
+{
+	struct fcloop_rscn *tgt_rscn =
+		container_of(work, struct fcloop_rscn, work);
+	struct fcloop_tport *tport = tgt_rscn->tport;
+
+	if (tport->remoteport)
+		nvme_fc_rescan_remoteport(tport->remoteport);
+	kfree(tgt_rscn);
+}
+
+void
+fcloop_tgt_discovery_evt(struct nvmet_fc_target_port *tgtport)
+{
+	struct fcloop_rscn *tgt_rscn;
+
+	tgt_rscn = kzalloc(sizeof(*tgt_rscn), GFP_KERNEL);
+	if (!tgt_rscn)
+		return;
+
+	tgt_rscn->tport = tgtport->private;
+	INIT_WORK(&tgt_rscn->work, fcloop_tgt_rscn_work);
+
+	schedule_work(&tgt_rscn->work);
+}
+
 static void
 fcloop_tfcp_req_free(struct kref *ref)
 {
@@ -839,6 +875,7 @@ static struct nvmet_fc_target_template tgttemplate = {
 	.fcp_op			= fcloop_fcp_op,
 	.fcp_abort		= fcloop_tgt_fcp_abort,
 	.fcp_req_release	= fcloop_fcp_req_release,
+	.discovery_event	= fcloop_tgt_discovery_evt,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
 	.max_dif_sgl_segments	= FCLOOP_SGL_SEGS,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
