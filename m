Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97270254D7
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wz00EvH4mKNBQpYd8Aid2HKc+UlmMhFbhTytKupSGkA=; b=fQ/RJMTlZOv3DfVktkKU3A0vIe
	CXr3sAXnUJgZPiWZbvAPW8+20fZlaFEMQ3pB5uDoUvrahlX44f3ixHZv4ClDB3gwFwtRIWJt52BvV
	2hlMsniJXkSy4Ohhpb8EtgCuPbIsJnn8X1ZN5d6vWkC3vR9E/FIRcesmwz/Tbh7yZ3qD78QWpyjFM
	aDQhTRvCqXSPXvaxttuQTJqNrUWtiR/DoW7xQynEA6zf9P6MZFZpwYYIstt1Z7kCQRDUgPyV+g485
	2alxoX7FGUNCnFlY0EzMmek9SXGE6kc7mj988/fAIIX5cvC4aHV34aJ6s2TCyqo2wzya+XBAYWjL0
	G+tBpA1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7G9-00021S-DQ; Tue, 21 May 2019 16:05:01 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Fg-0001cJ-1O
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:04:50 +0000
Received: by mail-pf1-x442.google.com with SMTP id q17so9288262pfq.8
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6dlMq3dpaZqEx6RvkbThMUhOu6jgvPwAdvzh6RwJDA0=;
 b=UXbb6DZCMg+n2Zx4oEbLKC8bmid3+/k3Q2MXADkFHbjAjtQDs68vUSqOkHxpLdQQvj
 IdSCqNvmOTIJNEcjROZ73h3Vsfwb4gEpftRpcfjlCDKuv/HjhEmSfPKkVGB0Jef0u37Y
 IcThgB2sa6uYiQJu/yqord6qk3e6N8MUhRdo4zLDNInQ75oXXcKiaXUO1iW0yxYcuQWA
 N/YRhhWvRJoEAynJcR2lGQRXhNQu3i/ICwOMRizqN5PedpjyfhYlxG+MAFzt8Sxdpl/B
 bfMwNdRr2GmgENA2xPAEYuTbDXgZdO+2Q7TDQHESah0Juvy/BFdw+lnlTf60RLKJJYpX
 zSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6dlMq3dpaZqEx6RvkbThMUhOu6jgvPwAdvzh6RwJDA0=;
 b=uCU2PxGbZaTblz2NlE669Y+Wlm0xzFuBYcCwd5r6NyeJIZ14a4GUEwDif9xpPMCmaw
 FH7kYS8NWKToSw1ax3U3+DlrTbsXHM8OcCF/Qe/VFIgv/rGdYJyGpfLZsJd+Y6IwplI2
 9q9JrHREWT9wsoIZtWcj+YA5JODZF61HKBS4MLaC+zBGWIbraMWi7Aj8CkCeUjQwN/Qx
 gWC5eCZpzuuAPdSQBfXkYG7YyicGh/66IYuIyk6rh75iPDVMKyvklbBRfZpTK1nxV790
 OGHHLV7aYKnlDmsLvyGTIvLnfEFUev4BP1St9KiFSIAAtJ7PNtHIbE7PaliOIAwvPvB4
 AXNA==
X-Gm-Message-State: APjAAAWF1xb4YWu83DtP3wzLrd1TgxThCLp0rtMs1roq4sGZ6IowdVFo
 sGafBBQD+Yztmb3i6bTAL7FeT1fsEhg=
X-Google-Smtp-Source: APXvYqyUUrUZ+4NnabA9Wx9gAGu/svtfuvfgqSe7HwMr/XlguJFBuG5TdL72j8yys3dc1aV5Up1BAA==
X-Received: by 2002:a62:ac0c:: with SMTP id v12mr5965733pfe.59.1558454669807; 
 Tue, 21 May 2019 09:04:29 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:9cd0:73e8:b74a:624e])
 by smtp.gmail.com with ESMTPSA id j5sm28954786pfa.15.2019.05.21.09.04.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 21 May 2019 09:04:29 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 1/4] nvme: Export get and set features
Date: Wed, 22 May 2019 01:04:06 +0900
Message-Id: <1558454649-28783-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
References: <1558454649-28783-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090432_499538_097E16B3 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <keith.busch@intel.com>

Future use intends to make use of features, so export these functions. And
since their implementation is identical except for the opcode, provide
a new convenience function that implement each.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/core.c | 22 +++++++++++++++++++---
 drivers/nvme/host/nvme.h |  4 ++++
 2 files changed, 23 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d352145..c04df80 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1113,15 +1113,15 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	return id;
 }
 
-static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
-		      void *buffer, size_t buflen, u32 *result)
+static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned fid,
+		unsigned dword11, void *buffer, size_t buflen, u32 *result)
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
 
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
+		      void *buffer, size_t buflen, u32 *result)
+{
+	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
+			     buflen, result);
+}
+EXPORT_SYMBOL_GPL(nvme_set_features);
+
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
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
index 56bba7a..bb673b8 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -459,6 +459,10 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		union nvme_result *result, void *buffer, unsigned bufflen,
 		unsigned timeout, int qid, int at_head,
 		blk_mq_req_flags_t flags, bool poll);
+int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
+		      void *buffer, size_t buflen, u32 *result);
+int nvme_get_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
+		      void *buffer, size_t buflen, u32 *result);
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
