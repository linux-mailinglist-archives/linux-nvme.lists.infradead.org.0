Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98084199C20
	for <lists+linux-nvme@lfdr.de>; Tue, 31 Mar 2020 18:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BtVunYwYUZz9bSL6yr71PxOL3waebGuUqadtwjzBSLE=; b=sGG+Ig5lJnDvrhl8q1xzOpOhXm
	KIFyw970+58t98hOH41ucodSqbRboZxncTo/Wl31z4X+2fgIhyBGTJXf8FR1YPofJPbToklrgKW2Q
	QXWnyNONwZgDR5K8GCHlckfy9yrKt8+3OVodbtAICkN4H+smVi+xmFYssE2vBn1/hD5UdbcIlnaKB
	VnxVswH+i2RF+eLwhRqMsySyOv/4qse9qu3iL6+sK1CBqCKfV0crSCl1eIEBLv+L4gin20RosmhTn
	2/ffYhOyrRVT4UgFkt6mKFvZNO6cMMFN6AkQjh54RcdIjOXx5pVoVIw3UWRf315xQUu2YqzrWqDft
	K9mm4qGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJK7p-0005no-Br; Tue, 31 Mar 2020 16:52:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK5y-0004di-DF
 for linux-nvme@lists.infradead.org; Tue, 31 Mar 2020 16:50:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id j19so3616672wmi.2
 for <linux-nvme@lists.infradead.org>; Tue, 31 Mar 2020 09:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pvGNe2FxuDA2saAZibhMUhK8J0jW6d30tm6J96GHGlA=;
 b=Z1ciEBe6pVCFXPHPcnrsxRqdh8bBzjIB5i0a3R+Seg+IBZJb60puSkKM01sDdd43Kt
 J2Kz+aHPM0uTpIETuDnrPGqCPfeMM7B1UYos0N0fCfoWdTOEgeJWEMzTwXH1jdf2yuBJ
 zUHjkxggM4gpE2pUlq5KxNk49+ZfgqNBhxXI03C9rqDJ/HrnTfDikiI5FFUllun7Y/4n
 iJ6bQaMtCRp+vpXzMlptK8BlH3a2GdINNxFJ3CcWnaHw18H8L2jGmd7ZqxfHBU1WUuvH
 hg0zeoi08tW3UMTVbQsgGM96K44Ihk/n/LPYNF7SirjMoH3rR2Sjgf0P5O1v6rV1HvuN
 fQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pvGNe2FxuDA2saAZibhMUhK8J0jW6d30tm6J96GHGlA=;
 b=HNw+FxAmCKoO5Nr29NzuOCTuizhnTTdpkwlLoJdfeKMKPZ35yDLAQWiYWdr2mF1uVK
 VIkZi7pshWw+W5fmJeqAFn4rKGL+5Ds1qF5GJTYrdgteZS7nPij/Iqc8dEwSR9jtxijf
 fXGgdtMSgUnx2cfVi2eFwhAKk19OVrb3bdxiF7PAGd4zmf1lneCRiUZdK5qeP0YiyRCL
 rO7VGQdtwlrAWb9gOJASiGivX8cRXaqF4B77gqDc1PBeJEyuHLgw1uEBJTPchh+j6CcR
 XfV7+ozwG2HsMRE3l4D64R1ZO3mJFhUedn/s2WiVaRUM67ew20WGs5T+Zk33WWUq7iHm
 XDxw==
X-Gm-Message-State: ANhLgQ2cwGfmrCWlNgvBts+h27AcVtuxC/adEfUQ4afqShFg0eFrhDTd
 14A7wRBFgpSUnkWW6pE6Pwcl0M44
X-Google-Smtp-Source: ADFU+vvDYWiYtD6J1iDMzHvG806ZA6LPZBvfPbkCnJALUJ+24ym+6WZHEUo2wAaB+34v3n2aNoLdbA==
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr4513387wmf.175.1585673432717; 
 Tue, 31 Mar 2020 09:50:32 -0700 (PDT)
Received: from localhost.localdomain.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r14sm2711582wmg.0.2020.03.31.09.50.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 09:50:32 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 08/26] nvmet-fc: Update target for common definitions for
 LS handling
Date: Tue, 31 Mar 2020 09:49:53 -0700
Message-Id: <20200331165011.15819-9-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200331165011.15819-1-jsmart2021@gmail.com>
References: <20200331165011.15819-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_095034_496459_D768A395 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Given that both host and target now generate and receive LS's create
a single table definition for LS names. Each tranport half will have
a local version of the table.

Convert the target side transport to use the new common Create
Association LS validation routine.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Reviewed-by: Himanshu Madhani <himanshu.madhani@oracle.com>

---
v2:
  Split original patch into two patches: a host-side patch (with header
  update) and a target-side patch.
---
 drivers/nvme/target/fc.c | 28 ++--------------------------
 1 file changed, 2 insertions(+), 26 deletions(-)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index 66a60a218994..5739df7edc59 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -1442,32 +1442,8 @@ nvmet_fc_ls_disconnect(struct nvmet_fc_tgtport *tgtport,
 
 	memset(acc, 0, sizeof(*acc));
 
-	if (iod->rqstdatalen < sizeof(struct fcnvme_ls_disconnect_assoc_rqst))
-		ret = VERR_DISCONN_LEN;
-	else if (rqst->desc_list_len !=
-			fcnvme_lsdesc_len(
-				sizeof(struct fcnvme_ls_disconnect_assoc_rqst)))
-		ret = VERR_DISCONN_RQST_LEN;
-	else if (rqst->associd.desc_tag != cpu_to_be32(FCNVME_LSDESC_ASSOC_ID))
-		ret = VERR_ASSOC_ID;
-	else if (rqst->associd.desc_len !=
-			fcnvme_lsdesc_len(
-				sizeof(struct fcnvme_lsdesc_assoc_id)))
-		ret = VERR_ASSOC_ID_LEN;
-	else if (rqst->discon_cmd.desc_tag !=
-			cpu_to_be32(FCNVME_LSDESC_DISCONN_CMD))
-		ret = VERR_DISCONN_CMD;
-	else if (rqst->discon_cmd.desc_len !=
-			fcnvme_lsdesc_len(
-				sizeof(struct fcnvme_lsdesc_disconn_cmd)))
-		ret = VERR_DISCONN_CMD_LEN;
-	/*
-	 * As the standard changed on the LS, check if old format and scope
-	 * something other than Association (e.g. 0).
-	 */
-	else if (rqst->discon_cmd.rsvd8[0])
-		ret = VERR_DISCONN_SCOPE;
-	else {
+	ret = nvmefc_vldt_lsreq_discon_assoc(iod->rqstdatalen, rqst);
+	if (!ret) {
 		/* match an active association */
 		assoc = nvmet_fc_find_target_assoc(tgtport,
 				be64_to_cpu(rqst->associd.association_id));
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
