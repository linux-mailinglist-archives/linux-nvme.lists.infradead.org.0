Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571FB2CD07
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 19:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8ituL3kCcOV3HagYubWu0ZNTB6wcbaO9GkLQmSkToz4=; b=jPbtNvume5xBXBXzPP60y7tKjv
	uex4VP7cNEIwgK+lCk2SM/SAjyhXj/7UfvXiHP/C6ADzI+qQYIJvUAQ2y7y7z5tKitDxwzHKWjRO8
	Gpc+oqRxC8W4nxERvvB3APLAmpyICCQwnYW+Jf7Lm1Kzlchcl/opmVrGd9wiM9pDRA9ocaowzZQTS
	DCJYAc+aUaEng1KZ/8xW52y+gExkXBY1yFzYp6UYVHPEw1WKe02mqCOkeyZSdUfEfilZmslwl3dQ+
	Ohif0VbDCBi1uCwxk3DJlbqYz/Z95TnAL0ioGgHmUKVDKV31SfKy+mzNOJmwV7JBoN8zWr9Drjdst
	+azIXk/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfWE-00082i-5B; Tue, 28 May 2019 17:04:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfVx-0007pQ-Am
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 17:03:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so11851542pfm.12
 for <linux-nvme@lists.infradead.org>; Tue, 28 May 2019 10:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WbYJoPQrr7l4PfeSvgUi1dyHK2BFXEl5IQmxy5CiHbg=;
 b=OfCQyhIbYRv5v80pj0/+b7yF3hX2JJT6V9S/VI1iq1b1+bZ8GlFuLFWAF46DuhXzwS
 JFDwa7F3IVwohxFOccRegnORN//SUqM9ntVOOySDs+aIppWHaDOdDgFU1q9B7ReZl9Y0
 6QdIq47T2SwtMX/846myDH+DqUim11onNHfY26e15LkQf8LV6Gk7h4m65Q9ubEWmSAZU
 XNzsucnkp1lAsnr4KFCkkmJ1/VXPDcycbI4QNAekS0Pm886PwskQla5Gk2tbBX+3yWMe
 knOb3oXe4RXji/f8b2hyFr8eqHOoA3ndpK3luL+sc4t8RGKMvQk7rO2Bjq0dWdTqRBWo
 n6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WbYJoPQrr7l4PfeSvgUi1dyHK2BFXEl5IQmxy5CiHbg=;
 b=rr70wEIDzgBdDcqCBT1ctxAAy7gIgeU0fEk/q10yc4Nru25E/T/xiMncOMj9VtC3WO
 2BkuILCIxYyZLOB+hjU/OkYuK0RpfqvhOvhKJIcl0Wxr0WNUB8a4d7CnmPbIO20E9r5T
 LOZXvTpUq8jucmfe2NkB5uS8HaRXrrdU7+N1LudOS6XMVmC0XxFkLLdH8ZME0QZHR8yk
 f9PdDrxji5/o1cnWNIBruYXcRABhbGiK5gj5sQFzzfEM94+iNDksTyh79C5Otgdne4wx
 zgV0CYVjF1l4876urKQtltH0uUyY6KnQlqJiOh5BbBZZScdUpPIkXHm1vaX96zfVg0G7
 zv1Q==
X-Gm-Message-State: APjAAAXHqpaSENN7PvodGJBgsKsj1lfHc3O3SZC4jIYU7Aht9nMzxRIM
 4pyveuJyA9cTOkZpLZzV7tYCk6WfMnU=
X-Google-Smtp-Source: APXvYqyRFjNtWccmgm3sab99LJx2aio4XXw4N37oNZW+lyWj3kBJ7SmBi4AT+d4aJ4xfLqoQeaGzhA==
X-Received: by 2002:a63:4710:: with SMTP id u16mr31554463pga.447.1559063032720; 
 Tue, 28 May 2019 10:03:52 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3c36:ee5f:9fff:3b5e])
 by smtp.gmail.com with ESMTPSA id g8sm16898425pfk.83.2019.05.28.10.03.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 10:03:52 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme: prepare for fault injection into admin commands
Date: Wed, 29 May 2019 02:03:37 +0900
Message-Id: <1559063018-3682-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
References: <1559063018-3682-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100353_368524_A960D87B 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Thomas Tai <thomas.tai@oracle.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
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
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/nvme/host/core.c         |  4 ++--
 drivers/nvme/host/fault_inject.c | 28 +++++++++++++++-------------
 drivers/nvme/host/nvme.h         | 20 ++++++++++++--------
 3 files changed, 29 insertions(+), 23 deletions(-)

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
index 4cfd2c9..e8d8da9 100644
--- a/drivers/nvme/host/fault_inject.c
+++ b/drivers/nvme/host/fault_inject.c
@@ -15,11 +15,10 @@ static DECLARE_FAULT_ATTR(fail_default_attr);
 static char *fail_request;
 module_param(fail_request, charp, 0000);
 
-void nvme_fault_inject_init(struct nvme_ns *ns)
+void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
+			    const char *name)
 {
 	struct dentry *dir, *parent;
-	char *name = ns->disk->disk_name;
-	struct nvme_fault_inject *fault_inj = &ns->fault_inject;
 	struct fault_attr *attr = &fault_inj->attr;
 
 	/* set default fault injection attribute */
@@ -40,7 +39,7 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
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
index 53f0b24..3a48b94 100644
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
+			    const char *name);
+void nvme_fault_inject_fini(struct nvme_fault_inject *fault_inject);
 void nvme_should_fail(struct request *req);
 #else
-static inline void nvme_fault_inject_init(struct nvme_ns *ns) {}
-static inline void nvme_fault_inject_fini(struct nvme_ns *ns) {}
+static inline void nvme_fault_inject_init(struct nvme_fault_inject *fault_inj,
+					  const char *name)
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
