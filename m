Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B5E93F
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 19:36:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5Yus2k+nmNLmECRxoufpHvs0LT2r8XCR80uc6Qd17o=; b=VuV9NRyuEXEkyr
	7Dk7rw08doXMA4+qRIBTDLXbtzrtmLUnnZJQZ6vzPZEoOZaZTtcrNFrrVz8Uptvxeyufxz+ANCWJJ
	jZbk2PlB7bR822v/mUS2ehu/+dB1/5UW2HbYd8CS57eH1papnSxflGjxaOzGqr3NFS6iORDatPbXh
	+Gczdomcnpwjt/O8s7WFaWkoZFk7VwVI5KVaUDU278EONRs1Pifs8h6o7XvK4RdT3/vHn5z3pJAn6
	s4bhNYaoBy+LewxidBTIj3xd2YUyLllk4nGFXGb+OGtaDBfqtK02FT1chiqselu4xCy0ePjySRBv5
	jK9xxtGM+D4rFW5SaC7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAC9-0003pi-MK; Mon, 29 Apr 2019 17:36:01 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLABj-0003O8-Au
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 17:35:37 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 73CEE30C2979;
 Mon, 29 Apr 2019 10:35:34 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org,
	ednadols@linux.microsoft.com
Subject: [PATCH 2/2] nvme: add clarifying comments and fix some typos
Date: Mon, 29 Apr 2019 10:35:33 -0700
Message-Id: <20190429173533.10366-3-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429173533.10366-1-ednadols@linux.microsoft.com>
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103535_410098_3D8F099D 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add comment descriptions for struct fields per NVMe spec.

Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>
---
 drivers/nvme/host/nvme.h | 32 ++++++++++++++++----------------
 drivers/nvme/host/pci.c  |  2 +-
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d64545023..61736d1ef15e 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -177,7 +177,7 @@ struct nvme_ctrl {
 	u16 cntlid;
 
 	u32 ctrl_config;
-	u16 mtfa;
+	u16 mtfa;		/* maximum time for firmware activation */
 	u32 queue_count;
 
 	u64 cap;
@@ -185,23 +185,23 @@ struct nvme_ctrl {
 	u32 max_hw_sectors;
 	u32 max_segments;
 	u16 crdt[3];
-	u16 oncs;
-	u16 oacs;
-	u16 nssa;
+	u16 oncs;		/* optional nvm command support */
+	u16 oacs;		/* optional admin command support */
+	u16 nssa;		/* nvme subsystem streams available */
 	u16 nr_streams;
 	u32 max_namespaces;
 	atomic_t abort_limit;
-	u8 vwc;
-	u32 vs;
-	u32 sgls;
-	u16 kas;
-	u8 npss;
-	u8 apsta;
-	u32 oaes;
+	u8 vwc;			/* volatile write cache */
+	u32 vs;			/* version */
+	u32 sgls;		/* scatter gather list support */
+	u16 kas;		/* keep alive support */
+	u8 npss;		/* number of power states supported */
+	u8 apsta;		/* autonomous power state transition */
+	u32 oaes;		/* optional asynchronous events supported */
 	u32 aen_result;
-	u32 ctratt;
+	u32 ctratt;		/* controller attribute */
 	unsigned int shutdown_timeout;
-	unsigned int kato;
+	unsigned int kato;	/* keep alive timeout */
 	bool subsystem;
 	unsigned long quirks;
 	struct nvme_id_power_state psd[32];
@@ -231,8 +231,8 @@ struct nvme_ctrl {
 	bool apst_enabled;
 
 	/* PCIe only: */
-	u32 hmpre;
-	u32 hmmin;
+	u32 hmpre;	/* host memory buffer preferred size */
+	u32 hmmin;	/* host memory buffer minimum size */
 	u32 hmminds;
 	u16 hmmaxd;
 
@@ -290,7 +290,7 @@ struct nvme_ns_ids {
 /*
  * Anchor structure for namespaces.  There is one for each namespace in a
  * NVMe subsystem that any of our controllers can see, and the namespace
- * structure for each controller is chained of it.  For private namespaces
+ * structure for each controller is chained off it.  For private namespaces
  * there is a 1:1 relation to our namespace structures, that is ->list
  * only ever has a single entry for private namespaces.
  */
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index c1eecde6b853..368371c5cafc 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -227,7 +227,7 @@ struct nvme_iod {
 };
 
 /*
- * Check we didin't inadvertently grow the command struct
+ * Check we didn't inadvertently grow the command struct
  */
 static inline void _nvme_check_size(void)
 {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
