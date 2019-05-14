Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A71E43E
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ui/rbZfSAL0qbqXZz6oC0o26Z4VNFYtk/UUvobz7XoE=; b=JX+NLI/qNPFaKUKiPn5hPseitI
	/ok1tFgfjNepMyfSiQQvrkWHnlGXPlqxTfWoud4i/6m/PNn2Lx2lfniV9VzQg4ZrBlBen/rm/JU0K
	syVaLPowoyvfGdN7BSKpljjHd5VKRNy9SjwDAD6yWI56brprrwkQE6IJrnLfVsRxj7jxLK/7GO+el
	SG2hJVxz+cxSg7NKOKGiXSU2Jq10+bjcNPdqYrkxxHtEYI6Uv/dPROLLz7x0cNEbl3dx9Dn+CNef0
	vtcyDXabRQUKUHvEIpqrFweFcaPNqC7Xih7vt/BPkqNRTqaAdqsvE6wChxFjNV0lffv/IvmIN6WjH
	QSIwyp0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfRq-000060-5U; Tue, 14 May 2019 21:58:58 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRF-0007up-P7
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id v80so203992pfa.3
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b3zMU30GPEIXhEsEx4XN+VsWxMytN5hGuZkMwbt3vjo=;
 b=DnD4FZ5JxY7+XogdKw5wf7mB/5OlcxCUzGyT21ah+VrdOU/q8gvpwM5tD/+Q6X6n+4
 nQo6Ns/L5W8yDIWt1b/Adi4BZHM4Nffgwg2RHW9/pu7DFKSItN1W2rPOjZtbzHYJk6Pi
 B93z6/zEwGo6FJLVNdxH6Bc6xIr0Kgk00IL5cWIPKueeX/59Zvc8zsGv8JGjHm7gbwZ9
 w3ta0qDQ6q1U41ZkIEsNffE8KLN2S7xlU2FbArIghVpXyQ2KZ7mYLwb1Zwut3QE+ldBu
 TF4kRIUBE/ZGEh+Wc54RYPVhB8Q2gAh67QPZhHZO+YQoRz34ykFgs/FhSVUPmSNxRm3b
 FpJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b3zMU30GPEIXhEsEx4XN+VsWxMytN5hGuZkMwbt3vjo=;
 b=mJhoRPWgqViKwrEpz9jYObti0gJYtjpKm3ShNgm9PfqTdxGazwxNw8agg1ymgTIe2t
 EfZLKVUEPd1Ob5r9Mbi8ZGqjB1IG+y2fnlgpOvpvFdZ8KZlsXhP6WzkGiv7nCgsL1YS4
 OI0qSP1HzukC/vbwOt8u5kaALQeVhqw+gnu0KCxqAm776hozOQ7pb1mOitDw7iR8xLdL
 WeEAX/tuWe0L6GZWqhzCDJH9MZuF3RhVPuxwRSkc/FY1cwIINrmcHZczSYZAwgBzbIEr
 knoQI5kPSA2P1DtZVBwpYC/E6RF7pSdCqrPvHMMdgGUoxUDpb11MAKQEfddXav8VUG2A
 47Qw==
X-Gm-Message-State: APjAAAWjvvo/9pNmhF7ACpb5/QYKeJ9shzc7zfJuUsOmG0RzOB7JkGT1
 JyW0caxVkBB5S1yPnU8EyTTy0ZNd
X-Google-Smtp-Source: APXvYqzd3R+OZmjZAzeO7XBxySp/zZ7hn2dm5flCjxBPe7moVn2TdPjDW93npKFVOn6VTKWxXW9wvg==
X-Received: by 2002:aa7:8d81:: with SMTP id i1mr14968570pfr.244.1557871101183; 
 Tue, 14 May 2019 14:58:21 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:20 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 5/7] lpfc: add nvmet discovery_event op support
Date: Tue, 14 May 2019 14:58:06 -0700
Message-Id: <20190514215808.10572-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145822_080149_9B294196 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: James Smart <jsmart2021@gmail.com>,
 Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds support for the nvmet discovery op. When the callback
routine is called, the driver will call the routine to generate an RSCN
to the port on the other end of the link.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 drivers/scsi/lpfc/lpfc_nvmet.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/scsi/lpfc/lpfc_nvmet.c b/drivers/scsi/lpfc/lpfc_nvmet.c
index 361e2b103648..1eb02a0b8db6 100644
--- a/drivers/scsi/lpfc/lpfc_nvmet.c
+++ b/drivers/scsi/lpfc/lpfc_nvmet.c
@@ -1141,6 +1141,22 @@ lpfc_nvmet_defer_rcv(struct nvmet_fc_target_port *tgtport,
 	spin_unlock_irqrestore(&ctxp->ctxlock, iflag);
 }
 
+static void
+lpfc_nvmet_discovery_event(struct nvmet_fc_target_port *tgtport)
+{
+	struct lpfc_nvmet_tgtport *tgtp;
+	struct lpfc_hba *phba;
+	uint32_t rc;
+
+	tgtp = tgtport->private;
+	phba = tgtp->phba;
+
+	rc = lpfc_issue_els_rscn(phba->pport, 0);
+	lpfc_printf_log(phba, KERN_ERR, LOG_NVME,
+			"6420 NVMET subsystem change: Notification %s\n",
+			(rc) ? "Failed" : "Sent");
+}
+
 static struct nvmet_fc_target_template lpfc_tgttemplate = {
 	.targetport_delete = lpfc_nvmet_targetport_delete,
 	.xmt_ls_rsp     = lpfc_nvmet_xmt_ls_rsp,
@@ -1148,6 +1164,7 @@ static struct nvmet_fc_target_template lpfc_tgttemplate = {
 	.fcp_abort      = lpfc_nvmet_xmt_fcp_abort,
 	.fcp_req_release = lpfc_nvmet_xmt_fcp_release,
 	.defer_rcv	= lpfc_nvmet_defer_rcv,
+	.discovery_event = lpfc_nvmet_discovery_event,
 
 	.max_hw_queues  = 1,
 	.max_sgl_segments = LPFC_NVMET_DEFAULT_SEGS,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
