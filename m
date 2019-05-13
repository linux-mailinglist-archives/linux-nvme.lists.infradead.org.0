Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2451BF96
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=neT/2DP/I6blT3vxVpTXRAGt2YgtYl5TaWpRoHXoxZo=; b=WBbM1uh2CM85x4ZMcmZcbF04kG
	CTmgdP6oq/1jX+CVM/yLOvJD/m4G/6SI/J0xt+05BcgwC2adCa9lCJw8Y+CPvI3DRzCBtxL8ftbrP
	NwgzHCMzJQWf3j/kb6v+RlHcS9l+0oUvTww6WbiqiTzBt1Tazj5mPpjfjx8ra5w+b+S70yIOo++5K
	fCncPPJ6dfZPT7iKv6PMWHyUQGguOXdVMtZkwWRkH+5p7fctM3AYIE7vkWJQl/yuE8S/FlgjYP8A5
	HcQNA6m9EDTXXAO3ajyjrhAsRneEaZM9WWICCIB8zcfCS+JCI8HXt87RTAZQeXLztzxWSRBA8pA08
	yPod97qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJgK-0008DT-I9; Mon, 13 May 2019 22:44:28 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJff-0007Xl-PD
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:44:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id z26so7975286pfg.6
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D/m9DZTRgUi7oAc6H1Sr6aJerbWtZhzv32PxzUXPPLM=;
 b=maO7oc2QAxR3euNETu9B9KMByhUFwbQCiMXwbyxFvGiPs4JDJTIWr3UYqGe22jjXMx
 6qXygWfsQ4eLTMm3DB0hNXy8nr1JYOPBUHjSGDCAkSKy7x+G1yyALxYebUwBT6Jwa3xC
 e3+5oB1fE8ao91aTos9Hs6pyK15xRhzNtADY1a1Gl9ruIaybqscVNEi+SdC876d7sPxL
 /d/4muxQJudBXhBDYn8WLcqf01sjrJqHJdw+syi58jYJB8qHmUVgwwkaT/QandNrqxoz
 7Fe0qPDlgB4zZtc+2VzUWSG36FjZpgC451yflnJ2BAYcW3sbzrXTJ2cmUHQ1jX3jJSjQ
 JIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D/m9DZTRgUi7oAc6H1Sr6aJerbWtZhzv32PxzUXPPLM=;
 b=MWijlCacJvzrdFpJE38lGIuJgGszJMe1CF14ECWZiJHxkfjGTjZHE8bD5GQxGKaRO9
 xaPi5+im3Jdnnir2Rx29LXLB2S9mAfpdAAH/2wz9EE7wnGvks3OtYvSwprtU4vSOzf2z
 dC/LPOxrVDJn7atZbGVh4BGcErH8Js+t83bAl+Db8agjUhmZYxVYKjl4I/qui1T+x1h3
 oDnRV43+Vx1sX3x9v05CuF0gvGfyH2xyDrfSBj/Nb4pusJNJsZDY0atL3lgKuQi/O/Mo
 oUdHX+tVzBRPFYtNrPewSXB/VKkP1up3HUCO8coQ2SivykeNwRaN+JJJN0wMoaxeBwG/
 VfeQ==
X-Gm-Message-State: APjAAAV5rbBJ+HFo601jVvkklkxHAJuUD8HchCMUGzgfDm4SKHbRh7DO
 kUZfyOUuH1HwTtxgSuqZAOIptSYW
X-Google-Smtp-Source: APXvYqxWK0pS9gomkDeQ/qv98Don1L1MJkbvTejWPt2pUsugE9d8pL1u0mDvQGTaFqmMfyDzGhPCNw==
X-Received: by 2002:a63:42:: with SMTP id 63mr34646792pga.337.1557787426466;
 Mon, 13 May 2019 15:43:46 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:46 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 6/7] lpfc: Add support for translating an RSCN rcv into a
 discovery rescan
Date: Mon, 13 May 2019 15:43:13 -0700
Message-Id: <20190513224314.24169-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154348_519325_4877A899 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This patch updates RSCN receive processing to check for the remote
port being an NVME port, and if so, invoke the nvme_fc callback to
rescan the remote port.  The rescan will generate a discovery udev
event.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/scsi/lpfc/lpfc_crtn.h |  2 ++
 drivers/scsi/lpfc/lpfc_els.c  |  5 +++++
 drivers/scsi/lpfc/lpfc_nvme.c | 44 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/drivers/scsi/lpfc/lpfc_crtn.h b/drivers/scsi/lpfc/lpfc_crtn.h
index 4b8eb9107b85..866374801140 100644
--- a/drivers/scsi/lpfc/lpfc_crtn.h
+++ b/drivers/scsi/lpfc/lpfc_crtn.h
@@ -557,6 +557,8 @@ void lpfc_ras_stop_fwlog(struct lpfc_hba *phba);
 int lpfc_check_fwlog_support(struct lpfc_hba *phba);
 
 /* NVME interfaces. */
+void lpfc_nvme_rescan_port(struct lpfc_vport *vport,
+			   struct lpfc_nodelist *ndlp);
 void lpfc_nvme_unregister_port(struct lpfc_vport *vport,
 			struct lpfc_nodelist *ndlp);
 int lpfc_nvme_register_port(struct lpfc_vport *vport,
diff --git a/drivers/scsi/lpfc/lpfc_els.c b/drivers/scsi/lpfc/lpfc_els.c
index c9a40e05edcc..c8b305c1aafb 100644
--- a/drivers/scsi/lpfc/lpfc_els.c
+++ b/drivers/scsi/lpfc/lpfc_els.c
@@ -6329,6 +6329,8 @@ lpfc_rscn_recovery_check(struct lpfc_vport *vport)
 			continue;
 		}
 
+		if (ndlp->nlp_fc4_type & NLP_FC4_NVME)
+			lpfc_nvme_rescan_port(vport, ndlp);
 
 		lpfc_disc_state_machine(vport, ndlp, NULL,
 					NLP_EVT_DEVICE_RECOVERY);
@@ -6440,6 +6442,9 @@ lpfc_els_rcv_rscn(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
 				 "2024 pt2pt RSCN %08x Data: x%x x%x\n",
 				 *lp, vport->fc_flag, payload_len);
 		lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);
+
+		if (ndlp->nlp_fc4_type & NLP_FC4_NVME)
+			lpfc_nvme_rescan_port(vport, ndlp);
 		return 0;
 	}
 
diff --git a/drivers/scsi/lpfc/lpfc_nvme.c b/drivers/scsi/lpfc/lpfc_nvme.c
index 1aa00d2c3f74..6f179de44fc7 100644
--- a/drivers/scsi/lpfc/lpfc_nvme.c
+++ b/drivers/scsi/lpfc/lpfc_nvme.c
@@ -2399,6 +2399,50 @@ lpfc_nvme_register_port(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
 #endif
 }
 
+/**
+ * lpfc_nvme_rescan_port - Check to see if we should rescan this remoteport
+ *
+ * If the ndlp represents an NVME Target, that we are logged into,
+ * ping the NVME FC Transport layer to initiate a device rescan
+ * on this remote NPort.
+ */
+void
+lpfc_nvme_rescan_port(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
+{
+#if (IS_ENABLED(CONFIG_NVME_FC))
+	struct lpfc_nvme_rport *rport;
+	struct nvme_fc_remote_port *remoteport;
+
+	rport = ndlp->nrport;
+
+	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
+			 "6170 Rescan NPort DID x%06x type x%x "
+			 "state x%x rport %p\n",
+			 ndlp->nlp_DID, ndlp->nlp_type, ndlp->nlp_state, rport);
+	if (!rport)
+		goto input_err;
+	remoteport = rport->remoteport;
+	if (!remoteport)
+		goto input_err;
+
+	/* Only rescan if we are an NVME target in the MAPPED state */
+	if (remoteport->port_role & FC_PORT_ROLE_NVME_TARGET &&
+	    ndlp->nlp_state == NLP_STE_MAPPED_NODE) {
+		nvme_fc_rescan_remoteport(remoteport);
+
+		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
+				 "6172 NVME rescanned DID x%06x "
+				 "port_state x%x\n",
+				 ndlp->nlp_DID, remoteport->port_state);
+	}
+	return;
+input_err:
+	lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
+			 "6169 State error: lport %p, rport%p FCID x%06x\n",
+			 vport->localport, ndlp->rport, ndlp->nlp_DID);
+#endif
+}
+
 /* lpfc_nvme_unregister_port - unbind the DID and port_role from this rport.
  *
  * There is no notion of Devloss or rport recovery from the current
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
