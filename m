Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8B3199C4B
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2NcOwpUWCnib3FvSuILrsgPQvUROppwG0xkPoPlZHGU=; b=BIhCKXvDhGvHeomkNzz83UjFse
	m0DGiqmqek9fjK+2MaHCcr/8EdCGwRdAex5QynmGNyVaXW+f9bPYVZ5O7C2Vpc/OriatFdQ6BH7cc
	F4Zy89RaBHTaI/Kf19BZlgkqJED+XAyKkhBJ//ZvPrv5bo6INCMV3VcnzONFZ/KNhyUM773/JM5nd
	lSvnDqxKUEXHxb717+W5NMo8E+CzkN5/3V+bxU6USTZ7aDbZuNmAbYFksJWn4zYP150fK7JszQPLf
	uMgfmpWjidfnYShRHccTf9Sxxyqe5lrM2Ctz+57GdTmVU1ZbrQvNrU+4srfedFjlz/FzdpiX0lRDF
	vTmjaCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJKBz-0002PX-Ov; Tue, 31 Mar 2020 16:56:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK6N-0004yP-Ci
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:51:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id h9so26882697wrc.8
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oKlhc4UtIDks/i2NP1VVjzW0yjcWzvCOmfZNbOe5Q4w=;
 b=JJS8uN9hYPLkLZbZKC0QvM6rjv9vNCJmmvxw6rEMFUMyJN31GbehX20y20924gBZEr
 JVCC+aECNuK91JT/Fzw9w4WAgWRZbsQhF7ywgzpAl19TwQmCYsM110nC+nTSlctDP6GI
 dTcTt1/j6pPxehrA++3gcRHz0CoZOdCGCUqmbrv/R37UG2cya2KPoJVBsidOzZCdpfCW
 3Fh3+eB8o9NLaXh+LQg+ybXhCRFSTiYQvVTQuc/GTncVw+cvT7V426FXceFM0HrtTVcf
 sVsOdCK1sDXEaBuzYlim7rhKwYeUagbAknkLETLPgdXo/ckKxTfvUGS89O5W+oxIxKYn
 0pxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oKlhc4UtIDks/i2NP1VVjzW0yjcWzvCOmfZNbOe5Q4w=;
 b=UC4gxdZkMeQFYWTbcJ3bKIK4bR5opfMiu1DH7cQILZkQYbbAoMieQRMiwFK8GGD73m
 a4HPLJDeDngdLrR7TR/v01tkfO4gxtqH8U7TIF/HzOR7ec+HYjDvDFvQNQq5rPx95RTd
 Sc61y2fSo0SBpjxac6+PzH/me2wSbGhur9DId6xomHkmn267omlY6OvHtCrRAu91zVav
 3UGVzTdZVKXNvkWtgosmDhczrdcWKRXNZNop45tM+1LEg0yvZWIZqZvlHCwDG6JnI2MB
 isYtqHaGlU28ZZJi0qIkhbiZpYwqc7Xd+hUC663/L1kIKrDgYYvtUX3QWwq5Car1zmNP
 ocjQ==
X-Gm-Message-State: ANhLgQ1cb1I27OSYFh4nqjfh4kyZn7DTYwpaJLFtZv96ru2Vyi10OQCg
 Ru7zdSAPBiaVbTT/hcyBdi3yxGUn
X-Google-Smtp-Source: ADFU+vt6ydA7w+k0MfNSN9yCmo5kybUw8lcOdkhujdKQOfBJFHV2tYebmRSMvXxNlMvQM5FdEXPCuQ==
X-Received: by 2002:adf:e448:: with SMTP id t8mr22892436wrm.229.1585673457050; 
 Tue, 31 Mar 2020 09:50:57 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r14sm2711582wmg.0.2020.03.31.09.50.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:50:56 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 21/26] lpfc: Refactor Send LS Request support
Date: Tue, 31 Mar 2020 09:50:06 -0700
Message-Id: <20200331165011.15819-22-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_095059_478377_A0228426 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: James Smart <jsmart2021@gmail.com>, Paul Ely <paul.ely@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently, the ability to send an NVME LS request is limited to the nvme
(host) side of the driver.  In preparation of both the nvme and nvmet sides
support Send LS Request, rework the existing send ls_req and ls_req
completion routines such that there is common code that can be used by
both sides.

Signed-off-by: Paul Ely <paul.ely@broadcom.com>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
---
 drivers/scsi/lpfc/lpfc_nvme.c | 289 +++++++++++++++++++++++++-----------------
 drivers/scsi/lpfc/lpfc_nvme.h |  13 ++
 2 files changed, 184 insertions(+), 118 deletions(-)

diff --git a/drivers/scsi/lpfc/lpfc_nvme.c b/drivers/scsi/lpfc/lpfc_nvme.c
index daded70ce7b6..e93636986c6f 100644
--- a/drivers/scsi/lpfc/lpfc_nvme.c
+++ b/drivers/scsi/lpfc/lpfc_nvme.c
@@ -410,43 +410,43 @@ lpfc_nvme_handle_lsreq(struct lpfc_hba *phba,
 	return 1;
 }
 
-static void
-lpfc_nvme_cmpl_gen_req(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
-		       struct lpfc_wcqe_complete *wcqe)
+/**
+ * __lpfc_nvme_ls_req_cmp - Generic completion handler for a NVME
+ *        LS request.
+ * @phba: Pointer to HBA context object
+ * @vport: The local port that issued the LS
+ * @cmdwqe: Pointer to driver command WQE object.
+ * @wcqe: Pointer to driver response CQE object.
+ *
+ * This function is the generic completion handler for NVME LS requests.
+ * The function updates any states and statistics, calls the transport
+ * ls_req done() routine, then tears down the command and buffers used
+ * for the LS request.
+ **/
+void
+__lpfc_nvme_ls_req_cmp(struct lpfc_hba *phba,  struct lpfc_vport *vport,
+			struct lpfc_iocbq *cmdwqe,
+			struct lpfc_wcqe_complete *wcqe)
 {
-	struct lpfc_vport *vport = cmdwqe->vport;
-	struct lpfc_nvme_lport *lport;
-	uint32_t status;
 	struct nvmefc_ls_req *pnvme_lsreq;
 	struct lpfc_dmabuf *buf_ptr;
 	struct lpfc_nodelist *ndlp;
+	uint32_t status;
 
 	pnvme_lsreq = (struct nvmefc_ls_req *)cmdwqe->context2;
+	ndlp = (struct lpfc_nodelist *)cmdwqe->context1;
 	status = bf_get(lpfc_wcqe_c_status, wcqe) & LPFC_IOCB_STATUS_MASK;
 
-	if (vport->localport) {
-		lport = (struct lpfc_nvme_lport *)vport->localport->private;
-		if (lport) {
-			atomic_inc(&lport->fc4NvmeLsCmpls);
-			if (status) {
-				if (bf_get(lpfc_wcqe_c_xb, wcqe))
-					atomic_inc(&lport->cmpl_ls_xb);
-				atomic_inc(&lport->cmpl_ls_err);
-			}
-		}
-	}
-
-	ndlp = (struct lpfc_nodelist *)cmdwqe->context1;
 	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
-			 "6047 nvme cmpl Enter "
-			 "Data %px DID %x Xri: %x status %x reason x%x "
-			 "cmd:x%px lsreg:x%px bmp:x%px ndlp:x%px\n",
+			 "6047 NVMEx LS REQ %px cmpl DID %x Xri: %x "
+			 "status %x reason x%x cmd:x%px lsreg:x%px bmp:x%px "
+			 "ndlp:x%px\n",
 			 pnvme_lsreq, ndlp ? ndlp->nlp_DID : 0,
 			 cmdwqe->sli4_xritag, status,
 			 (wcqe->parameter & 0xffff),
 			 cmdwqe, pnvme_lsreq, cmdwqe->context3, ndlp);
 
-	lpfc_nvmeio_data(phba, "NVME LS  CMPL: xri x%x stat x%x parm x%x\n",
+	lpfc_nvmeio_data(phba, "NVMEx LS CMPL: xri x%x stat x%x parm x%x\n",
 			 cmdwqe->sli4_xritag, status, wcqe->parameter);
 
 	if (cmdwqe->context3) {
@@ -459,7 +459,7 @@ lpfc_nvme_cmpl_gen_req(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
 		pnvme_lsreq->done(pnvme_lsreq, status);
 	else
 		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
-				 "6046 nvme cmpl without done call back? "
+				 "6046 NVMEx cmpl without done call back? "
 				 "Data %px DID %x Xri: %x status %x\n",
 				pnvme_lsreq, ndlp ? ndlp->nlp_DID : 0,
 				cmdwqe->sli4_xritag, status);
@@ -470,6 +470,31 @@ lpfc_nvme_cmpl_gen_req(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
 	lpfc_sli_release_iocbq(phba, cmdwqe);
 }
 
+static void
+lpfc_nvme_ls_req_cmp(struct lpfc_hba *phba, struct lpfc_iocbq *cmdwqe,
+		       struct lpfc_wcqe_complete *wcqe)
+{
+	struct lpfc_vport *vport = cmdwqe->vport;
+	struct lpfc_nvme_lport *lport;
+	uint32_t status;
+
+	status = bf_get(lpfc_wcqe_c_status, wcqe) & LPFC_IOCB_STATUS_MASK;
+
+	if (vport->localport) {
+		lport = (struct lpfc_nvme_lport *)vport->localport->private;
+		if (lport) {
+			atomic_inc(&lport->fc4NvmeLsCmpls);
+			if (status) {
+				if (bf_get(lpfc_wcqe_c_xb, wcqe))
+					atomic_inc(&lport->cmpl_ls_xb);
+				atomic_inc(&lport->cmpl_ls_err);
+			}
+		}
+	}
+
+	__lpfc_nvme_ls_req_cmp(phba, vport, cmdwqe, wcqe);
+}
+
 static int
 lpfc_nvme_gen_req(struct lpfc_vport *vport, struct lpfc_dmabuf *bmp,
 		  struct lpfc_dmabuf *inp,
@@ -571,13 +596,6 @@ lpfc_nvme_gen_req(struct lpfc_vport *vport, struct lpfc_dmabuf *bmp,
 
 
 	/* Issue GEN REQ WQE for NPORT <did> */
-	lpfc_printf_vlog(vport, KERN_INFO, LOG_ELS,
-			 "6050 Issue GEN REQ WQE to NPORT x%x "
-			 "Data: x%x x%x wq:x%px lsreq:x%px bmp:x%px "
-			 "xmit:%d 1st:%d\n",
-			 ndlp->nlp_DID, genwqe->iotag,
-			 vport->port_state,
-			genwqe, pnvme_lsreq, bmp, xmit_len, first_len);
 	genwqe->wqe_cmpl = cmpl;
 	genwqe->iocb_cmpl = NULL;
 	genwqe->drvrTimeout = tmo + LPFC_DRVR_TIMEOUT;
@@ -589,105 +607,108 @@ lpfc_nvme_gen_req(struct lpfc_vport *vport, struct lpfc_dmabuf *bmp,
 
 	rc = lpfc_sli4_issue_wqe(phba, &phba->sli4_hba.hdwq[0], genwqe);
 	if (rc) {
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_ELS,
+		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC | LOG_ELS,
 				 "6045 Issue GEN REQ WQE to NPORT x%x "
-				 "Data: x%x x%x\n",
+				 "Data: x%x x%x  rc x%x\n",
 				 ndlp->nlp_DID, genwqe->iotag,
-				 vport->port_state);
+				 vport->port_state, rc);
 		lpfc_sli_release_iocbq(phba, genwqe);
 		return 1;
 	}
+
+	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC | LOG_ELS,
+			 "6050 Issue GEN REQ WQE to NPORT x%x "
+			 "Data: oxid: x%x state: x%x wq:x%px lsreq:x%px "
+			 "bmp:x%px xmit:%d 1st:%d\n",
+			 ndlp->nlp_DID, genwqe->sli4_xritag,
+			 vport->port_state,
+			 genwqe, pnvme_lsreq, bmp, xmit_len, first_len);
 	return 0;
 }
 
+
 /**
- * lpfc_nvme_ls_req - Issue an Link Service request
- * @lpfc_pnvme: Pointer to the driver's nvme instance data
- * @lpfc_nvme_lport: Pointer to the driver's local port data
- * @lpfc_nvme_rport: Pointer to the rport getting the @lpfc_nvme_ereq
+ * __lpfc_nvme_ls_req - Generic service routine to issue an NVME LS request
+ * @vport: The local port issuing the LS
+ * @ndlp: The remote port to send the LS to
+ * @pnvme_lsreq: Pointer to LS request structure from the transport
  *
- * Driver registers this routine to handle any link service request
- * from the nvme_fc transport to a remote nvme-aware port.
+ * Routine validates the ndlp, builds buffers and sends a GEN_REQUEST
+ * WQE to perform the LS operation.
  *
  * Return value :
  *   0 - Success
- *   TODO: What are the failure codes.
+ *   non-zero: various error codes, in form of -Exxx
  **/
-static int
-lpfc_nvme_ls_req(struct nvme_fc_local_port *pnvme_lport,
-		 struct nvme_fc_remote_port *pnvme_rport,
-		 struct nvmefc_ls_req *pnvme_lsreq)
+int
+__lpfc_nvme_ls_req(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
+		      struct nvmefc_ls_req *pnvme_lsreq,
+		      void (*gen_req_cmp)(struct lpfc_hba *phba,
+				struct lpfc_iocbq *cmdwqe,
+				struct lpfc_wcqe_complete *wcqe))
 {
-	int ret = 0;
-	struct lpfc_nvme_lport *lport;
-	struct lpfc_nvme_rport *rport;
-	struct lpfc_vport *vport;
-	struct lpfc_nodelist *ndlp;
-	struct ulp_bde64 *bpl;
 	struct lpfc_dmabuf *bmp;
+	struct ulp_bde64 *bpl;
+	int ret;
 	uint16_t ntype, nstate;
 
-	/* there are two dma buf in the request, actually there is one and
-	 * the second one is just the start address + cmd size.
-	 * Before calling lpfc_nvme_gen_req these buffers need to be wrapped
-	 * in a lpfc_dmabuf struct. When freeing we just free the wrapper
-	 * because the nvem layer owns the data bufs.
-	 * We do not have to break these packets open, we don't care what is in
-	 * them. And we do not have to look at the resonse data, we only care
-	 * that we got a response. All of the caring is going to happen in the
-	 * nvme-fc layer.
-	 */
-
-	lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
-	rport = (struct lpfc_nvme_rport *)pnvme_rport->private;
-	if (unlikely(!lport) || unlikely(!rport))
-		return -EINVAL;
-
-	vport = lport->vport;
-
-	if (vport->load_flag & FC_UNLOADING)
-		return -ENODEV;
-
-	/* Need the ndlp.  It is stored in the driver's rport. */
-	ndlp = rport->ndlp;
 	if (!ndlp || !NLP_CHK_NODE_ACT(ndlp)) {
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE | LOG_NVME_IOERR,
-				 "6051 Remoteport x%px, rport has invalid ndlp. "
-				 "Failing LS Req\n", pnvme_rport);
+		lpfc_printf_vlog(vport, KERN_ERR,
+				 LOG_NVME_DISC | LOG_NODE | LOG_NVME_IOERR,
+				 "6051 NVMEx LS REQ: Bad NDLP x%px, Failing "
+				 "LS Req\n",
+				 ndlp);
 		return -ENODEV;
 	}
 
-	/* The remote node has to be a mapped nvme target or an
-	 * unmapped nvme initiator or it's an error.
-	 */
 	ntype = ndlp->nlp_type;
 	nstate = ndlp->nlp_state;
 	if ((ntype & NLP_NVME_TARGET && nstate != NLP_STE_MAPPED_NODE) ||
 	    (ntype & NLP_NVME_INITIATOR && nstate != NLP_STE_UNMAPPED_NODE)) {
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE | LOG_NVME_IOERR,
-				 "6088 DID x%06x not ready for "
-				 "IO. State x%x, Type x%x\n",
-				 pnvme_rport->port_id,
-				 ndlp->nlp_state, ndlp->nlp_type);
+		lpfc_printf_vlog(vport, KERN_ERR,
+				 LOG_NVME_DISC | LOG_NODE | LOG_NVME_IOERR,
+				 "6088 NVMEx LS REQ: Fail DID x%06x not "
+				 "ready for IO. Type x%x, State x%x\n",
+				 ndlp->nlp_DID, ntype, nstate);
 		return -ENODEV;
 	}
-	bmp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
+
+	/*
+	 * there are two dma buf in the request, actually there is one and
+	 * the second one is just the start address + cmd size.
+	 * Before calling lpfc_nvme_gen_req these buffers need to be wrapped
+	 * in a lpfc_dmabuf struct. When freeing we just free the wrapper
+	 * because the nvem layer owns the data bufs.
+	 * We do not have to break these packets open, we don't care what is
+	 * in them. And we do not have to look at the resonse data, we only
+	 * care that we got a response. All of the caring is going to happen
+	 * in the nvme-fc layer.
+	 */
+
+	bmp = kmalloc(sizeof(*bmp), GFP_KERNEL);
 	if (!bmp) {
 
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
-				 "6044 Could not find node for DID %x\n",
-				 pnvme_rport->port_id);
-		return 2;
+		lpfc_printf_vlog(vport, KERN_ERR,
+				 LOG_NVME_DISC | LOG_NVME_IOERR,
+				 "6044 NVMEx LS REQ: Could not alloc LS buf "
+				 "for DID %x\n",
+				 ndlp->nlp_DID);
+		return -ENOMEM;
 	}
-	INIT_LIST_HEAD(&bmp->list);
+
 	bmp->virt = lpfc_mbuf_alloc(vport->phba, MEM_PRI, &(bmp->phys));
 	if (!bmp->virt) {
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
-				 "6042 Could not find node for DID %x\n",
-				 pnvme_rport->port_id);
+		lpfc_printf_vlog(vport, KERN_ERR,
+				 LOG_NVME_DISC | LOG_NVME_IOERR,
+				 "6042 NVMEx LS REQ: Could not alloc mbuf "
+				 "for DID %x\n",
+				 ndlp->nlp_DID);
 		kfree(bmp);
-		return 3;
+		return -ENOMEM;
 	}
+
+	INIT_LIST_HEAD(&bmp->list);
+
 	bpl = (struct ulp_bde64 *)bmp->virt;
 	bpl->addrHigh = le32_to_cpu(putPaddrHigh(pnvme_lsreq->rqstdma));
 	bpl->addrLow = le32_to_cpu(putPaddrLow(pnvme_lsreq->rqstdma));
@@ -702,37 +723,69 @@ lpfc_nvme_ls_req(struct nvme_fc_local_port *pnvme_lport,
 	bpl->tus.f.bdeSize = pnvme_lsreq->rsplen;
 	bpl->tus.w = le32_to_cpu(bpl->tus.w);
 
-	/* Expand print to include key fields. */
 	lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_DISC,
-			 "6149 Issue LS Req to DID 0x%06x lport x%px, "
-			 "rport x%px lsreq x%px rqstlen:%d rsplen:%d "
-			 "%pad %pad\n",
-			 ndlp->nlp_DID, pnvme_lport, pnvme_rport,
-			 pnvme_lsreq, pnvme_lsreq->rqstlen,
-			 pnvme_lsreq->rsplen, &pnvme_lsreq->rqstdma,
-			 &pnvme_lsreq->rspdma);
-
-	atomic_inc(&lport->fc4NvmeLsRequests);
+			"6149 NVMEx LS REQ: Issue to DID 0x%06x lsreq x%px, "
+			"rqstlen:%d rsplen:%d %pad %pad\n",
+			ndlp->nlp_DID, pnvme_lsreq, pnvme_lsreq->rqstlen,
+			pnvme_lsreq->rsplen, &pnvme_lsreq->rqstdma,
+			&pnvme_lsreq->rspdma);
 
-	/* Hardcode the wait to 30 seconds.  Connections are failing otherwise.
-	 * This code allows it all to work.
-	 */
 	ret = lpfc_nvme_gen_req(vport, bmp, pnvme_lsreq->rqstaddr,
-				pnvme_lsreq, lpfc_nvme_cmpl_gen_req,
-				ndlp, 2, 30, 0);
+				pnvme_lsreq, gen_req_cmp, ndlp, 2,
+				LPFC_NVME_LS_TIMEOUT, 0);
 	if (ret != WQE_SUCCESS) {
-		atomic_inc(&lport->xmt_ls_err);
-		lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_DISC,
-				 "6052 EXIT. issue ls wqe failed lport x%px, "
-				 "rport x%px lsreq x%px Status %x DID %x\n",
-				 pnvme_lport, pnvme_rport, pnvme_lsreq,
-				 ret, ndlp->nlp_DID);
+		lpfc_printf_vlog(vport, KERN_ERR,
+				 LOG_NVME_DISC | LOG_NVME_IOERR,
+				 "6052 NVMEx REQ: EXIT. issue ls wqe failed "
+				 "lsreq x%px Status %x DID %x\n",
+				 pnvme_lsreq, ret, ndlp->nlp_DID);
 		lpfc_mbuf_free(vport->phba, bmp->virt, bmp->phys);
 		kfree(bmp);
-		return ret;
+		return -EIO;
 	}
 
-	/* Stub in routine and return 0 for now. */
+	return 0;
+}
+
+/**
+ * lpfc_nvme_ls_req - Issue an NVME Link Service request
+ * @lpfc_nvme_lport: Transport localport that LS is to be issued from.
+ * @lpfc_nvme_rport: Transport remoteport that LS is to be sent to.
+ * @pnvme_lsreq - the transport nvme_ls_req structure for the LS
+ *
+ * Driver registers this routine to handle any link service request
+ * from the nvme_fc transport to a remote nvme-aware port.
+ *
+ * Return value :
+ *   0 - Success
+ *   non-zero: various error codes, in form of -Exxx
+ **/
+static int
+lpfc_nvme_ls_req(struct nvme_fc_local_port *pnvme_lport,
+		 struct nvme_fc_remote_port *pnvme_rport,
+		 struct nvmefc_ls_req *pnvme_lsreq)
+{
+	struct lpfc_nvme_lport *lport;
+	struct lpfc_nvme_rport *rport;
+	struct lpfc_vport *vport;
+	int ret;
+
+	lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
+	rport = (struct lpfc_nvme_rport *)pnvme_rport->private;
+	if (unlikely(!lport) || unlikely(!rport))
+		return -EINVAL;
+
+	vport = lport->vport;
+	if (vport->load_flag & FC_UNLOADING)
+		return -ENODEV;
+
+	atomic_inc(&lport->fc4NvmeLsRequests);
+
+	ret = __lpfc_nvme_ls_req(vport, rport->ndlp, pnvme_lsreq,
+				 lpfc_nvme_ls_req_cmp);
+	if (ret)
+		atomic_inc(&lport->xmt_ls_err);
+
 	return ret;
 }
 
diff --git a/drivers/scsi/lpfc/lpfc_nvme.h b/drivers/scsi/lpfc/lpfc_nvme.h
index 7525b12b06c8..65df27bbb7bb 100644
--- a/drivers/scsi/lpfc/lpfc_nvme.h
+++ b/drivers/scsi/lpfc/lpfc_nvme.h
@@ -80,6 +80,12 @@ struct lpfc_nvme_fcpreq_priv {
 	struct lpfc_io_buf *nvme_buf;
 };
 
+/*
+ * set NVME LS request timeouts to 30s. It is larger than the 2*R_A_TOV
+ * set by the spec, which appears to have issues with some devices.
+ */
+#define LPFC_NVME_LS_TIMEOUT		30
+
 
 #define LPFC_NVMET_DEFAULT_SEGS		(64 + 1)	/* 256K IOs */
 #define LPFC_NVMET_RQE_MIN_POST		128
@@ -225,6 +231,13 @@ struct lpfc_async_xchg_ctx {
 
 
 /* routines found in lpfc_nvme.c */
+int __lpfc_nvme_ls_req(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
+		struct nvmefc_ls_req *pnvme_lsreq,
+		void (*gen_req_cmp)(struct lpfc_hba *phba,
+				struct lpfc_iocbq *cmdwqe,
+				struct lpfc_wcqe_complete *wcqe));
+void __lpfc_nvme_ls_req_cmp(struct lpfc_hba *phba,  struct lpfc_vport *vport,
+		struct lpfc_iocbq *cmdwqe, struct lpfc_wcqe_complete *wcqe);
 
 /* routines found in lpfc_nvmet.c */
 int lpfc_nvme_unsol_ls_issue_abort(struct lpfc_hba *phba,
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
