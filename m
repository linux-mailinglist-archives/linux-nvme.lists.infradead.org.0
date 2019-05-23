Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6B228141
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SKAsDAVLXSaa/xP+NhZfAYI/4vlink7UpfUsaSQ7MLI=; b=gTB
	2wvH3vEgo7CLd4UDBlaJqnXFyB9XSY89op3xc5Enl3R/Ru9874E4DYNEe1nK+20MAI8mIAEQNfLrK
	Nv9GI4U/pesOOruZ/zafONGTtHRLY0N/cF/Zi8GEJnZIRKOysLPZZtzN8MR6sC03m7VH94hpp+oh1
	AEbE2QN4hDMYK7pc1PuAnmj59HK7PmNmObzH37IYN/HE9flVvS2E/3/8zJCZPZjfL3IPKwW3iHw5i
	colkoPfaBRvdvP+Ct26w91lDABosKusM2wnLKKsFzcTK0d4zd1xAZBvmpKlj00FCkkKMjYW2U+RCf
	QCAdt0ojZXp8i7FAU/w6V9ZZre9rEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTphz-0007de-MG; Thu, 23 May 2019 15:32:43 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTphu-0007d5-36
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:32:39 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 08:32:37 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2019 08:32:37 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCHv3 1/2] nvme: Export get and set features
Date: Thu, 23 May 2019 09:27:34 -0600
Message-Id: <20190523152735.15052-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083238_179482_A8144600 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Rafael Wysocki <rafael@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Future use intends to make use of both, so export these functions. And
since their implementation is identical except for the opcode, provide a
new function that implement both.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
Change since v2: Use 'unsigned int' instead of just 'unsiged'

 drivers/nvme/host/core.c | 22 +++++++++++++++++++---
 drivers/nvme/host/nvme.h |  4 ++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f6879e417386..bf489800bf89 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1113,15 +1113,15 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	return id;
 }
 
-static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
-		      void *buffer, size_t buflen, u32 *result)
+static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
+		unsigned int dword11, void *buffer, size_t buflen, u32 *result)
 {
 	struct nvme_command c;
 	union nvme_result res;
 	int ret;
 
 	memset(&c, 0, sizeof(c));
-	c.features.opcode = nvme_admin_set_features;
+	c.features.opcode = op;
 	c.features.fid = cpu_to_le32(fid);
 	c.features.dword11 = cpu_to_le32(dword11);
 
@@ -1132,6 +1132,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,
+		      void *buffer, size_t buflen, u32 *result)
+{
+	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
+			     buflen, result);
+}
+EXPORT_SYMBOL_GPL(nvme_set_features);
+
+int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,
+		      void *buffer, size_t buflen, u32 *result)
+{
+	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
+			     buflen, result);
+}
+EXPORT_SYMBOL_GPL(nvme_get_features);
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count = (*count - 1) | ((*count - 1) << 16);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 55553d293a98..c7f6ce548b66 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -459,6 +459,10 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		union nvme_result *result, void *buffer, unsigned bufflen,
 		unsigned timeout, int qid, int at_head,
 		blk_mq_req_flags_t flags, bool poll);
+int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,
+		      void *buffer, size_t buflen, u32 *result);
+int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid, unsigned int dword11,
+		      void *buffer, size_t buflen, u32 *result);
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
