Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6DF1BF92
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GL3eeAmDWcz4y2r904vbEL5beQJhWrFmin+ELjv6yyM=; b=iiZdq8B51ExS9FZ1/Jq1sL6RZN
	6SRxROrXS1UlvyFNT2zXmkLxplnga29H0DGN/2gXp/oRX7LzaNYFevOMUUDMxq6VnFeIfRvdaZHjY
	lSjtG3+HTCyYA80RWux7Pkm1QeRsuRQ1JhZCBgfOcx8JdJ25EhmDWfRf8Z0hm++YaTfLboF6MX328
	uCSXLMpKzpiEFdty53B1IW/prO601XyvAaASb5g19mDAXLFka4us/TfUKrgGuyfYUZSPzvR1Zouwi
	Zie0HH2gGdUeVL/7eLLG/xOLkzti2qKt9t1rYN+T1kEl7imTrMPjYXNnVssIxBoJQXMrspIVOinAq
	LecE+uaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJg5-0007um-LJ; Mon, 13 May 2019 22:44:13 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfa-0007Qh-VY
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:43:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id c6so7960631pfa.10
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ya9PXt3pocsz4Hw/QkSKnuy2H0mltXr7J3nzvkcJtH8=;
 b=KqWPaVXd1YSb6oWufGnpi2KpN37NkVOb0vwLV6becC5U+/SyodAGTMrskNKGbB2iyb
 RehUpSiYS9c55fD+TXI7y8o6k21SpymHejZm+BJs5yNCQN5sFXY2zA+DbH2hfZrAr0Gj
 b/2/26AdXmGon+mugndAzvMA8oKes28sMoPuqiWtNZ36G7QafpFRAmw296HvZIBmKkMB
 J0pWgeoIZziixQtVUjPWinVk+09ViNE0MDOmjFmw0HC/6+7Z6/ySv6i9QGb8QP0y8/F5
 5XCkEMai789Qx1uTsq+TmKILHWIroKWEDFLsxXmj3QdzYRZYTaUxJC0isnqSM4kv+sMq
 X1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ya9PXt3pocsz4Hw/QkSKnuy2H0mltXr7J3nzvkcJtH8=;
 b=UuGUgB45wML+KIGJHZ6AEJ9BaPcDTg99xPLEY1o4WKrH0rUmnpM+feZHsbb4W3NtiS
 Y5tsVWRZJgQ5ENwgnpVeSI3U3/7HO3ncnlUtoKDPVuldcTjWLgrPsb2c1DFP/RHnG9c+
 epXtYb9cWscnXa/Nyzf4WFWColhTe0Br+KeDY714LCjQ9g3kwo76MwOWwMUDvceWzE3A
 yMp2LKxOboAXF99Y0NZwosxluaQYhmUed1BGJH7kipnpJ7NzGWckAz0bYim5FMKGriXA
 gQnxKuf2/OvEjlSm7nR8httsJ6SKjcKo6mL8xBK27JU/4Lp71M0YjsLqVpDtlyw/0mbl
 gfUw==
X-Gm-Message-State: APjAAAWJ9WSSYbNBvyQe2oOWO3zOTByRLytwavw1uJZ0TRwz/YdhNRVY
 eWgCRZr5jVs26W6owZNyflJ9SMr8
X-Google-Smtp-Source: APXvYqyGaVD6gleFsD1OShrInnF8WtmuruAmwFR6mdWoqJkK/gDq9s1WNn4wwEVRtWsYANO09sVy0A==
X-Received: by 2002:a62:425b:: with SMTP id p88mr3336552pfa.26.1557787421604; 
 Mon, 13 May 2019 15:43:41 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:41 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/7] lpfc: Add support to generate RSCN events for nport
Date: Mon, 13 May 2019 15:43:11 -0700
Message-Id: <20190513224314.24169-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154343_639460_04BA315D 
X-CRM114-Status: GOOD (  22.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This patch adds general RSCN support:
- The ability to transmit an RSCN to the port on the other end of
  the link (regular port if pt2pt, or fabric controller if fabric).
- And general recognition of an RSCN ELS when an ELS is received.

Signed-off-by: Dick Kennedy <dick.kennedy@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/scsi/lpfc/lpfc.h         |   1 +
 drivers/scsi/lpfc/lpfc_crtn.h    |   2 +
 drivers/scsi/lpfc/lpfc_els.c     | 122 +++++++++++++++++++++++++++++++++++++++
 drivers/scsi/lpfc/lpfc_hbadisc.c |  35 +++++++++++
 drivers/scsi/lpfc/lpfc_hw.h      |   2 +
 drivers/scsi/lpfc/lpfc_sli.c     |   1 +
 6 files changed, 163 insertions(+)

diff --git a/drivers/scsi/lpfc/lpfc.h b/drivers/scsi/lpfc/lpfc.h
index 41d849f283f6..9246e0212a86 100644
--- a/drivers/scsi/lpfc/lpfc.h
+++ b/drivers/scsi/lpfc/lpfc.h
@@ -274,6 +274,7 @@ struct lpfc_stats {
 	uint32_t elsXmitADISC;
 	uint32_t elsXmitLOGO;
 	uint32_t elsXmitSCR;
+	uint32_t elsXmitRSCN;
 	uint32_t elsXmitRNID;
 	uint32_t elsXmitFARP;
 	uint32_t elsXmitFARPR;
diff --git a/drivers/scsi/lpfc/lpfc_crtn.h b/drivers/scsi/lpfc/lpfc_crtn.h
index e0b14d791b8c..4b8eb9107b85 100644
--- a/drivers/scsi/lpfc/lpfc_crtn.h
+++ b/drivers/scsi/lpfc/lpfc_crtn.h
@@ -141,6 +141,7 @@ int lpfc_issue_els_adisc(struct lpfc_vport *, struct lpfc_nodelist *, uint8_t);
 int lpfc_issue_els_logo(struct lpfc_vport *, struct lpfc_nodelist *, uint8_t);
 int lpfc_issue_els_npiv_logo(struct lpfc_vport *, struct lpfc_nodelist *);
 int lpfc_issue_els_scr(struct lpfc_vport *, uint32_t, uint8_t);
+int lpfc_issue_els_rscn(struct lpfc_vport *vport, uint8_t retry);
 int lpfc_issue_fabric_reglogin(struct lpfc_vport *);
 int lpfc_els_free_iocb(struct lpfc_hba *, struct lpfc_iocbq *);
 int lpfc_ct_free_iocb(struct lpfc_hba *, struct lpfc_iocbq *);
@@ -355,6 +356,7 @@ void lpfc_mbox_timeout_handler(struct lpfc_hba *);
 struct lpfc_nodelist *lpfc_findnode_did(struct lpfc_vport *, uint32_t);
 struct lpfc_nodelist *lpfc_findnode_wwpn(struct lpfc_vport *,
 					 struct lpfc_name *);
+struct lpfc_nodelist *lpfc_findnode_mapped(struct lpfc_vport *vport);
 
 int lpfc_sli_issue_mbox_wait(struct lpfc_hba *, LPFC_MBOXQ_t *, uint32_t);
 
diff --git a/drivers/scsi/lpfc/lpfc_els.c b/drivers/scsi/lpfc/lpfc_els.c
index fc077cb87900..c9a40e05edcc 100644
--- a/drivers/scsi/lpfc/lpfc_els.c
+++ b/drivers/scsi/lpfc/lpfc_els.c
@@ -30,6 +30,8 @@
 #include <scsi/scsi_device.h>
 #include <scsi/scsi_host.h>
 #include <scsi/scsi_transport_fc.h>
+#include <uapi/scsi/fc/fc_fs.h>
+#include <uapi/scsi/fc/fc_els.h>
 
 #include "lpfc_hw4.h"
 #include "lpfc_hw.h"
@@ -3082,6 +3084,116 @@ lpfc_issue_els_scr(struct lpfc_vport *vport, uint32_t nportid, uint8_t retry)
 }
 
 /**
+ * lpfc_issue_els_rscn - Issue an RSCN to the Fabric Controller (Fabric)
+ *   or the other nport (pt2pt).
+ * @vport: pointer to a host virtual N_Port data structure.
+ * @retry: number of retries to the command IOCB.
+ *
+ * This routine issues a RSCN to the Fabric Controller (DID 0xFFFFFD)
+ *  when connected to a fabric, or to the remote port when connected
+ *  in point-to-point mode. When sent to the Fabric Controller, it will
+ *  replay the RSCN to registered recipients.
+ *
+ * Note that, in lpfc_prep_els_iocb() routine, the reference count of ndlp
+ * will be incremented by 1 for holding the ndlp and the reference to ndlp
+ * will be stored into the context1 field of the IOCB for the completion
+ * callback function to the RSCN ELS command.
+ *
+ * Return code
+ *   0 - Successfully issued RSCN command
+ *   1 - Failed to issue RSCN command
+ **/
+int
+lpfc_issue_els_rscn(struct lpfc_vport *vport, uint8_t retry)
+{
+	struct lpfc_hba *phba = vport->phba;
+	struct lpfc_iocbq *elsiocb;
+	struct lpfc_nodelist *ndlp;
+	struct {
+		struct fc_els_rscn rscn;
+		struct fc_els_rscn_page portid;
+	} *event;
+	uint32_t nportid;
+	uint16_t cmdsize = sizeof(*event);
+
+	/* Not supported for private loop */
+	if (phba->fc_topology == LPFC_TOPOLOGY_LOOP &&
+	    !(vport->fc_flag & FC_PUBLIC_LOOP))
+		return 1;
+
+	if (vport->fc_flag & FC_PT2PT) {
+		/* find any mapped nport - that would be the other nport */
+		ndlp = lpfc_findnode_mapped(vport);
+		if (!ndlp)
+			return 1;
+	} else {
+		nportid = FC_FID_FCTRL;
+		/* find the fabric controller node */
+		ndlp = lpfc_findnode_did(vport, nportid);
+		if (!ndlp) {
+			/* if one didn't exist, make one */
+			ndlp = lpfc_nlp_init(vport, nportid);
+			if (!ndlp)
+				return 1;
+			lpfc_enqueue_node(vport, ndlp);
+		} else if (!NLP_CHK_NODE_ACT(ndlp)) {
+			ndlp = lpfc_enable_node(vport, ndlp,
+						NLP_STE_UNUSED_NODE);
+			if (!ndlp)
+				return 1;
+		}
+	}
+
+	elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp,
+				     ndlp->nlp_DID, ELS_CMD_RSCN_XMT);
+
+	if (!elsiocb) {
+		/* This will trigger the release of the node just
+		 * allocated
+		 */
+		lpfc_nlp_put(ndlp);
+		return 1;
+	}
+
+	event = ((struct lpfc_dmabuf *)elsiocb->context2)->virt;
+
+	event->rscn.rscn_cmd = ELS_RSCN;
+	event->rscn.rscn_page_len = sizeof(struct fc_els_rscn_page);
+	event->rscn.rscn_plen = cpu_to_be16(cmdsize);
+
+	nportid = vport->fc_myDID;
+	/* appears that page flags must be 0 for fabric to broadcast RSCN */
+	event->portid.rscn_page_flags = 0;
+	event->portid.rscn_fid[0] = (nportid & 0x00FF0000) >> 16;
+	event->portid.rscn_fid[1] = (nportid & 0x0000FF00) >> 8;
+	event->portid.rscn_fid[2] = nportid & 0x000000FF;
+
+	lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
+			      "Issue RSCN:       did:x%x",
+			      ndlp->nlp_DID, 0, 0);
+
+	phba->fc_stat.elsXmitRSCN++;
+	elsiocb->iocb_cmpl = lpfc_cmpl_els_cmd;
+	if (lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0) ==
+	    IOCB_ERROR) {
+		/* The additional lpfc_nlp_put will cause the following
+		 * lpfc_els_free_iocb routine to trigger the rlease of
+		 * the node.
+		 */
+		lpfc_nlp_put(ndlp);
+		lpfc_els_free_iocb(phba, elsiocb);
+		return 1;
+	}
+	/* This will cause the callback-function lpfc_cmpl_els_cmd to
+	 * trigger the release of node.
+	 */
+	if (!(vport->fc_flag & FC_PT2PT))
+		lpfc_nlp_put(ndlp);
+
+	return 0;
+}
+
+/**
  * lpfc_issue_els_farpr - Issue a farp to an node on a vport
  * @vport: pointer to a host virtual N_Port data structure.
  * @nportid: N_Port identifier to the remote node.
@@ -6321,6 +6433,16 @@ lpfc_els_rcv_rscn(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
 		fc_host_post_event(shost, fc_get_event_number(),
 			FCH_EVT_RSCN, lp[i]);
 
+	/* Check if RSCN is coming from a direct-connected remote NPort */
+	if (vport->fc_flag & FC_PT2PT) {
+		/* If so, just ACC it, no other action needed for now */
+		lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
+				 "2024 pt2pt RSCN %08x Data: x%x x%x\n",
+				 *lp, vport->fc_flag, payload_len);
+		lpfc_els_rsp_acc(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);
+		return 0;
+	}
+
 	/* If we are about to begin discovery, just ACC the RSCN.
 	 * Discovery processing will satisfy it.
 	 */
diff --git a/drivers/scsi/lpfc/lpfc_hbadisc.c b/drivers/scsi/lpfc/lpfc_hbadisc.c
index aa4961a2caf8..9b016666601f 100644
--- a/drivers/scsi/lpfc/lpfc_hbadisc.c
+++ b/drivers/scsi/lpfc/lpfc_hbadisc.c
@@ -5261,6 +5261,41 @@ lpfc_findnode_did(struct lpfc_vport *vport, uint32_t did)
 }
 
 struct lpfc_nodelist *
+lpfc_findnode_mapped(struct lpfc_vport *vport)
+{
+	struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
+	struct lpfc_nodelist *ndlp;
+	uint32_t data1;
+	unsigned long iflags;
+
+	spin_lock_irqsave(shost->host_lock, iflags);
+
+	list_for_each_entry(ndlp, &vport->fc_nodes, nlp_listp) {
+		if (ndlp->nlp_state == NLP_STE_UNMAPPED_NODE ||
+		    ndlp->nlp_state == NLP_STE_MAPPED_NODE) {
+			data1 = (((uint32_t)ndlp->nlp_state << 24) |
+				 ((uint32_t)ndlp->nlp_xri << 16) |
+				 ((uint32_t)ndlp->nlp_type << 8) |
+				 ((uint32_t)ndlp->nlp_rpi & 0xff));
+			spin_unlock_irqrestore(shost->host_lock, iflags);
+			lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE,
+					 "2025 FIND node DID "
+					 "Data: x%p x%x x%x x%x %p\n",
+					 ndlp, ndlp->nlp_DID,
+					 ndlp->nlp_flag, data1,
+					 ndlp->active_rrqs_xri_bitmap);
+			return ndlp;
+		}
+	}
+	spin_unlock_irqrestore(shost->host_lock, iflags);
+
+	/* FIND node did <did> NOT FOUND */
+	lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE,
+			 "2026 FIND mapped did NOT FOUND.\n");
+	return NULL;
+}
+
+struct lpfc_nodelist *
 lpfc_setup_disc_node(struct lpfc_vport *vport, uint32_t did)
 {
 	struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
diff --git a/drivers/scsi/lpfc/lpfc_hw.h b/drivers/scsi/lpfc/lpfc_hw.h
index ec1227018913..5e5b3318042e 100644
--- a/drivers/scsi/lpfc/lpfc_hw.h
+++ b/drivers/scsi/lpfc/lpfc_hw.h
@@ -599,6 +599,7 @@ struct fc_vft_header {
 #define ELS_CMD_RPL       0x57000000
 #define ELS_CMD_FAN       0x60000000
 #define ELS_CMD_RSCN      0x61040000
+#define ELS_CMD_RSCN_XMT  0x61040008
 #define ELS_CMD_SCR       0x62000000
 #define ELS_CMD_RNID      0x78000000
 #define ELS_CMD_LIRR      0x7A000000
@@ -639,6 +640,7 @@ struct fc_vft_header {
 #define ELS_CMD_RPL       0x57
 #define ELS_CMD_FAN       0x60
 #define ELS_CMD_RSCN      0x0461
+#define ELS_CMD_RSCN_XMT  0x08000461
 #define ELS_CMD_SCR       0x62
 #define ELS_CMD_RNID      0x78
 #define ELS_CMD_LIRR      0x7A
diff --git a/drivers/scsi/lpfc/lpfc_sli.c b/drivers/scsi/lpfc/lpfc_sli.c
index 57b4a463b589..cbe7a0f36f4b 100644
--- a/drivers/scsi/lpfc/lpfc_sli.c
+++ b/drivers/scsi/lpfc/lpfc_sli.c
@@ -9373,6 +9373,7 @@ lpfc_sli4_iocb2wqe(struct lpfc_hba *phba, struct lpfc_iocbq *iocbq,
 		if (if_type >= LPFC_SLI_INTF_IF_TYPE_2) {
 			if (pcmd && (*pcmd == ELS_CMD_FLOGI ||
 				*pcmd == ELS_CMD_SCR ||
+				*pcmd == ELS_CMD_RSCN_XMT ||
 				*pcmd == ELS_CMD_FDISC ||
 				*pcmd == ELS_CMD_LOGO ||
 				*pcmd == ELS_CMD_PLOGI)) {
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
