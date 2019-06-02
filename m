Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C3432374
	for <lists+linux-nvme@lfdr.de>; Sun,  2 Jun 2019 15:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h0iNNdGCP2csej05u6r5Lda5FV02zQxVYaJp1CGnAo4=; b=KOyByqAAJBPijNsESNNdYejy8z
	UdnjsJpdtJZyi91cmTPbxq3YPuznDaBO8s/GUjkGikB1fn5iSPAuvFNVvrUlNMJMtxnKkmN9Yx9nx
	8ZBGu0RnLeR7z9JW+ugWNo652eDuuUEAJ1Ftv8En2MsmL8da1JvS7OsOVZ4qJNnaLbF450wbe3FNd
	nnheaNuDqi60qHfPXTsHFdDL8LC54WWodfuCaVLlxtFhYaaY3Z5Mo0ut92MzUu1R/1gv801URmP7B
	cRDcK/awgp3hdtvj/4K9tYLagk9mXgVA9RTaiJcHUqLuJsLIqX3CaGupitSDP+KYFPhBfRkDbDNEv
	s+EkDuJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXQsw-0003qx-Ni; Sun, 02 Jun 2019 13:50:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXQsk-0003ik-Qy
 for linux-nvme@lists.infradead.org; Sun, 02 Jun 2019 13:50:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so5906768plm.6
 for <linux-nvme@lists.infradead.org>; Sun, 02 Jun 2019 06:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vNVEsq5krsQkA8P6Bq+ShoCfhrLikeb4QwNRgLgORSk=;
 b=qtoEIMCIMosVvhTBzu6YRgXyXSppoQS9AVX3mm8vzSytEnpK0kwgAvJW4WF8Ov9lZF
 olH50ALPz84RbC+BEKyPwA1HzWNiT2vj/XPnTKTB7DCtbFVHpRiSlimqSH0SqMZ4PQ9D
 sMjW17gVjIFGl/ConIJ/3pOqG/qTcfD9ppwQrxwnyTzmUYCpXab/6ABWfrzuBV6C32Y+
 ugSlYHL9Ih8HpEfn00ZlDBi498PRzCW9suJpwiZsGLgAQliWcS59EAPaLKGoTD8yfPQS
 LT+lVKxX3nW0Ru8KKshMKyUF3+LDEUvuiW+9Go9JdugiE8sSX1lKsUMFPBu4hUe2T0Hu
 L5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vNVEsq5krsQkA8P6Bq+ShoCfhrLikeb4QwNRgLgORSk=;
 b=TjAeyn5HpFV7OpvyeZdIppEegU8GkhRTMh3XhyjDOd4V1O1axRmxHIjECP4sNdfSdA
 6q3NPsXE2JJyJ7xEu5siyrkvkSSBnTRkP6FVU4p7tFnSMDLk8uKpD3cxyLenkDwasRU5
 ar9jv6d3dxmyt8PpW0zhpTTY7UQZPp6J/vwioUw1P7sulCXlUi91YSPprP9swfU8UQ4Y
 oFnBUPd70SZwkXW5S84S/5O5VwYm4uACd6myY7ro7ACaEdq7S9N3RGFuCfkdxxc9CDdp
 y4XL1O8KVAmj3oNA+u6NmL3YcKchS2kQM6AxSKzxtHI+gvwBE43+N6134hu9WURWc9Pe
 SG9A==
X-Gm-Message-State: APjAAAW3/ZlxXVS2oMl7+gITHvgc7vSNI4x8p39bY8bHiZ+a08PfaivH
 0RO9VfmLddM5ZTOvtucEeVcYBeCghds=
X-Google-Smtp-Source: APXvYqxdPz++tMTCPhb2f7nR/rq8aShpdqrdLAs/58tJ2t/HDt0C4Hux36QrOpkp6ecduu1oiX5CFw==
X-Received: by 2002:a17:902:d896:: with SMTP id
 b22mr23410279plz.40.1559483441761; 
 Sun, 02 Jun 2019 06:50:41 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:383f:1f19:d982:1b59])
 by smtp.gmail.com with ESMTPSA id m21sm7023871pfa.104.2019.06.02.06.50.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 02 Jun 2019 06:50:41 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/3] nvme: prepare for fault injection into admin commands
Date: Sun,  2 Jun 2019 22:50:19 +0900
Message-Id: <1559483421-11361-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
References: <1559483421-11361-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_065042_976954_DA846A26 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currenlty fault injection support for nvme only enables to inject errors
into the commands submitted to I/O queues.

In preparation for fault injection into the admin commands, this makes
the helper functions independent of struct nvme_ns.

Cc: Thomas Tai <thomas.tai@oracle.com>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
* v2
- rename the argument 'name' to 'dev_name'
- add Reviewed-by tags

 drivers/nvme/host/core.c         |  4 ++--
 drivers/nvme/host/fault_inject.c | 34 ++++++++++++++++++----------------
 drivers/nvme/host/nvme.h         | 20 ++++++++++++--------
 3 files changed, 32 insertions(+), 26 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 26c8b59..9fca8457 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3698,7 +3698,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	device_add_disk(ctrl->device, ns->disk, nvme_ns_id_attr_groups);
 
 	nvme_mpath_add_disk(ns, id);
-	nvme_fault_inject_init(ns);
+	nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
 	kfree(id);
 
 	return 0;
@@ -3723,7 +3723,7 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
 		return;
 
-	nvme_fault_inject_fini(ns);
+	nvme_fault_inject_fini(&ns->fault_inject);
 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
 		del_gendisk(ns->disk);
 		blk_cleanup_queue(ns->queue);
diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
index 4cfd2c9..18ad983 100644
--- a/drivers/nvme/host/fault_inject.c
+++ b/drivers/nvme/host/fault_inject.c
@@ -15,11 +15,10 @@ static DECLARE_FAULT_ATTR(fail_default_attr);
 static char *fail_request;
 module_param(fail_request, charp, 0000);
 
-void nvme_fault_inject_init(struct nvme_ns *ns)
+void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
+			    const char *dev_name)
 {
 	struct dentry *dir, *parent;
-	char *name = ns->disk->disk_name;
-	struct nvme_fault_inject *fault_inj = &ns->fault_inject;
 	struct fault_attr *attr = &fault_inj->attr;
 
 	/* set default fault injection attribute */
@@ -27,20 +26,20 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
 		setup_fault_attr(&fail_default_attr, fail_request);
 
 	/* create debugfs directory and attribute */
-	parent = debugfs_create_dir(name, NULL);
+	parent = debugfs_create_dir(dev_name, NULL);
 	if (!parent) {
-		pr_warn("%s: failed to create debugfs directory\n", name);
+		pr_warn("%s: failed to create debugfs directory\n", dev_name);
 		return;
 	}
 
 	*attr = fail_default_attr;
 	dir = fault_create_debugfs_attr("fault_inject", parent, attr);
 	if (IS_ERR(dir)) {
-		pr_warn("%s: failed to create debugfs attr\n", name);
+		pr_warn("%s: failed to create debugfs attr\n", dev_name);
 		debugfs_remove_recursive(parent);
 		return;
 	}
-	ns->fault_inject.parent = parent;
+	fault_inj->parent = parent;
 
 	/* create debugfs for status code and dont_retry */
 	fault_inj->status = NVME_SC_INVALID_OPCODE;
@@ -49,29 +48,32 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
 	debugfs_create_bool("dont_retry", 0600, dir, &fault_inj->dont_retry);
 }
 
-void nvme_fault_inject_fini(struct nvme_ns *ns)
+void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject)
 {
 	/* remove debugfs directories */
-	debugfs_remove_recursive(ns->fault_inject.parent);
+	debugfs_remove_recursive(fault_inject->parent);
 }
 
 void nvme_should_fail(struct request *req)
 {
 	struct gendisk *disk = req->rq_disk;
-	struct nvme_ns *ns = NULL;
+	struct nvme_fault_inject *fault_inject = NULL;
 	u16 status;
 
 	/*
 	 * make sure this request is coming from a valid namespace
 	 */
-	if (!disk)
-		return;
+	if (disk) {
+		struct nvme_ns *ns = disk->private_data;
+
+		if (ns)
+			fault_inject = &ns->fault_inject;
+	}
 
-	ns = disk->private_data;
-	if (ns && should_fail(&ns->fault_inject.attr, 1)) {
+	if (fault_inject && should_fail(&fault_inject->attr, 1)) {
 		/* inject status code and DNR bit */
-		status = ns->fault_inject.status;
-		if (ns->fault_inject.dont_retry)
+		status = fault_inject->status;
+		if (fault_inject->dont_retry)
 			status |= NVME_SC_DNR;
 		nvme_req(req)->status =	status;
 	}
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 53f0b24..c1658ed 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -323,14 +323,14 @@ struct nvme_ns_head {
 #endif
 };
 
-#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
 struct nvme_fault_inject {
+#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
 	struct fault_attr attr;
 	struct dentry *parent;
 	bool dont_retry;	/* DNR, do not retry */
 	u16 status;		/* status code */
-};
 #endif
+};
 
 struct nvme_ns {
 	struct list_head list;
@@ -359,9 +359,7 @@ struct nvme_ns {
 #define NVME_NS_ANA_PENDING	2
 	u16 noiob;
 
-#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
 	struct nvme_fault_inject fault_inject;
-#endif
 
 };
 
@@ -382,12 +380,18 @@ struct nvme_ctrl_ops {
 };
 
 #ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
-void nvme_fault_inject_init(struct nvme_ns *ns);
-void nvme_fault_inject_fini(struct nvme_ns *ns);
+void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
+			    const char *dev_name);
+void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject);
 void nvme_should_fail(struct request *req);
 #else
-static inline void nvme_fault_inject_init(struct nvme_ns *ns) {}
-static inline void nvme_fault_inject_fini(struct nvme_ns *ns) {}
+static inline void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
+					  const char *dev_name)
+{
+}
+static inline void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inj)
+{
+}
 static inline void nvme_should_fail(struct request *req) {}
 #endif
 
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
