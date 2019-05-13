Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BD51BF94
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s95z4CJyF7+X6X5s6T9bBTFu76Tsp3NFKbXQ28vUDxQ=; b=feAiiz12PXFXD8tDpD1rCKeoEO
	zWfE5EvjMSLhQ41xlCKO+SiOc+STTbRVea8nnatZ7m4ETWAzDSs5/4r2hXz02UMzbJEpoQZUEC3mu
	8z4p+I4b27GXj9LhWZmGgGKAIHUKCh8xKyEz0d3Kr4KXn45bYaCr2cIh8I2W12WKVW8szNa0ritJ2
	vtXG1EGB68/T8NLfU1C11nhD7nrgOancIAvlioeO/4IRG7HEkdw5iFR8n2UBoNK73ccIsQJx8DD7h
	MoJQf/Ss5OEsvOMwapnPXC4InbIq8VEjyLlfqO+RJvlISUhA8PV/SBIxtqiSSBZpyP5FllNPSsmnR
	Lou6h/Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJgC-00085k-Fq; Mon, 13 May 2019 22:44:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfc-0007UP-S3
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:44:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so7528206pgv.0
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NdN3pqxpegZGbarMn/4OoA1LnQlfhTG+39HsMlXUmb8=;
 b=qYuyQFYu6vazSojXUGp6jbRCUt03yfYyXreLjzEY2bV8uKahcohNMTTJkeAbx6bBZh
 4O2UErcLulqu0+Q2hHSaZX3qKDKoo8QJA4rMGcTtvMGl7JjED/9j0S/l4Hy32aRcmQB1
 FWm+sytNARK+xB2omYqMStaLE2azH5EgjY0PnJDGk2SttQCY9jN2fVstYcTxeGFFaoA9
 /9ucbfyX1CbVNW2Yqh3+KfiaJJTTjF6idBAmwkYHD8jLPBS6StvQu3mx8SFx5UOxUnda
 L4sGE8V80D7kw3JhYC3TLUbZc1KM70VdZSahTQKesRbIx4Dqyo91WXTcAAflUoIUcOur
 IWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NdN3pqxpegZGbarMn/4OoA1LnQlfhTG+39HsMlXUmb8=;
 b=qMZ0nuvF2bnHIsJCdyNprbOGwF+i44STv/51Rk3WUK5xVEuE7bjm27JaGMePQsEc+V
 5gRrIw4CO5nFS7svKdLNG20xZZ3MP91K79xY/woaHK1kNghd7b9qbVmGaICgLNAba6Ok
 RYFRocsvvjADH5skmr3e4u/alAfjWp7AS/m14vxqCMBqSVNy1PJNnmadKcanP27M5uY6
 MXXE0h664ZkFBygtHC0dvlFagXPum5iB6k6w4XetaJ+mQqjJ4IKHITaFl2zryw4zNKkc
 YFb1CXaPKtkqsmcCMjrWrnpUpciRda8MCyuJFj0SAK2W4gA8+oP0/tviF6EB8oBoLf2w
 DOkw==
X-Gm-Message-State: APjAAAWk3kmPZOEQgxE+vGka+vUIZvYTH+vUI8YmiCR4PCn3pr2NgPCT
 tklT5gY35xfJtCJ9ySoJ2ncNP6cC
X-Google-Smtp-Source: APXvYqwZBaTQi7Bsu5J739zUFx0FvIOcysNOMt6W2TdId8mZbeY57ejnM4rZ1hJv+I+Xyjw9AMLQcg==
X-Received: by 2002:a65:6559:: with SMTP id a25mr10677776pgw.33.1557787424058; 
 Mon, 13 May 2019 15:43:44 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:43 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 5/7] lpfc: add nvmet discovery_event op support
Date: Mon, 13 May 2019 15:43:12 -0700
Message-Id: <20190513224314.24169-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154345_488823_EC79B17C 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
