Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC310094
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 22:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2ZZEK2uKlffG+5YNF+FrfLwbc50Hf/deOfYLexKLw0=; b=n9RIwe4UN7KLm+
	4lWjH/jSMWZxPCS5p+QmMbcqPYinic9L2ZGvBIHJFuOMErferfmDJVc35v+VNzql5Xm0Hn5D6M3df
	K07G5SFF6q5jKp4yyweilPW4+TrLSV/brxkddzHzfWStCS4G5kuXfwyjc+Qx9sV/Z/FwTDqRQVvME
	4dHrECvJEfeQK99RtTBZIKXfwG/FdMDaYaQnmjtTXfhuBF7HD9AgtJFw7cCK4rc/ej33ZIMCjuoVF
	vj54gYXooAUsuyv5cLnmf/ND3WlQWEsf2MBS4Nnkor9Z/ABJa0WwsbbQ2/c8b7nvmKV2Ww4QCNhWd
	fjVs4SoqhjrX8740s0DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZ48-0003GY-Tn; Tue, 30 Apr 2019 20:09:24 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZ3q-00031Z-WB
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 20:09:09 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id C2B0C3022D57
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 13:09:05 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/2] nvme: fix some typos
Date: Tue, 30 Apr 2019 13:09:05 -0700
Message-Id: <20190430200905.28341-3-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430200905.28341-1-ednadols@linux.microsoft.com>
References: <20190430200905.28341-1-ednadols@linux.microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_130907_052901_AC55C48C 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Corrects a few trivial typos.

Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>
---
 drivers/nvme/host/nvme.h | 2 +-
 drivers/nvme/host/pci.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d64545023..01dca6c18d7b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
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
index 9b02c4576591..5b69147a7250 100644
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
