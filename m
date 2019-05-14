Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51231E440
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:59:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gHAwQJ/OCQimsqiORQRe0C+Vr14sPgrkYOBGI8K9Trw=; b=Rqk9Id5zIKUBNFwQoj/HOTV+gx
	HcnGxBf2WNgATGWms/1oAIjtYhqZnLyXxzmaDmwLAubqzIhNDPPdSTSkDKUZ0ep63pcBAeXr96Da2
	y/t3MtL/3/9Wwkp10PmqskClRYOA1k7vm0c3c85fg0+5GjGlwkxZCqPMEAPiY+2laEWkGNg76JOgE
	XGW2ObzrOVBduiXpWmfl4BSAKCZTKnRfjHo/h8VqpaoYW965xiq4xYJSP5ROQK1f6nObpHwmnfhQ4
	RNXtJLkRmmoqDhE2Gs2TBMxBsJNMUUzQQa48T3iOBL1twE5Ladr/rot/s7jM1gLH1QKCNGod+jEHe
	HEwNNcsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfS5-0000O4-FC; Tue, 14 May 2019 21:59:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRG-0007wO-T1
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id g3so202588pfi.4
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5BkBJo5sOhZKu6MsKySCWIVvNqSl39cxYbfVt+42XVM=;
 b=hMoXlFisApWIXbHSQ7uFtPv7yXZTPQ2MnzEuv/LU0b+yyV32/uHrEuF5Lom79yod47
 fTF/5jKunmhISJyc7aV6az2M9jJsVHbyUfUFnVTaY/JWBH7CJcjx6mp4rp5UBfnCtQrS
 ox1bD9cuN9qLvJNg77TYJ1L/UsCbuiFfWB/KPVUjXKHrVSwugBCcPOhkKpl0NQJTzyYI
 XkYQ+FLa9Fz23NpRZ7m13xQMRfzuB4zRX6KyoX4D6W8LzPRmFeGD7RsUunucJL3ec5oB
 2cS/YJRqfTf+8CnB9JTgUchst3igfaAtqpa9nx73dIRkJ/25MPijm5C033O4ihNajvYG
 vJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5BkBJo5sOhZKu6MsKySCWIVvNqSl39cxYbfVt+42XVM=;
 b=HpmA05x8tMhS3yzqRENx8e2p/V74AS+gFAxkol4WiCYPERCuJpWAX5Fi9QegZFJJLv
 H/MWXmI9eSJp+sX6MjeioKe1bpbfm4QZasuQLPc/h/e76/3H1Yt+9RRjvykFO9ofVydz
 jEtwWmKn3cRoxf0F1DhebQoM7OUYiIyvlV9vUcPVF2BhFYeHGONqIy2Gpt5lbQAptCxR
 VMSMxkjDtFlJKeokLpkchKYozs83dm5ARg1dyX0GsqV8zvC5vM64XAMJU+eqEZzREsnk
 8F2YuXGR7npBNY4gCR0uiIiWGeAgbw9KXRPowCZniORlHdldP7ovIjmgMueDENicYq6b
 nWSQ==
X-Gm-Message-State: APjAAAWvmedRX2v68R0BWbxA1trRWs4yUDN1JCOueZzwR+kMLWwB5N/O
 XLIMN4GV1jXGblZGuRPIpYPCh9ns
X-Google-Smtp-Source: APXvYqym4+1CRgEj7vg5C95YkxeJ7NWYnTR7Knza7X/UG7N512mBL6Iv+poUZAy9Slin93S+F1Oolg==
X-Received: by 2002:a62:125c:: with SMTP id a89mr43148848pfj.93.1557871102060; 
 Tue, 14 May 2019 14:58:22 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:21 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 6/7] lpfc: Add support for translating an RSCN rcv into a
 discovery rescan
Date: Tue, 14 May 2019 14:58:07 -0700
Message-Id: <20190514215808.10572-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145823_339442_9A2BEBC7 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This patch updates RSCN receive processing to check for the remote
port being an NVME port, and if so, invoke the nvme_fc callback to
rescan the remote port.  The rescan will generate a discovery udev
event.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>

---
v2: correct rport role to check for nvme discovery not just nvme target
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
index 1aa00d2c3f74..e6c945e29557 100644
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
+	if (remoteport->port_role & FC_PORT_ROLE_NVME_DISCOVERY &&
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
