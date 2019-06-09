Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A0E3A656
	for <lists+linux-nvme@lfdr.de>; Sun,  9 Jun 2019 16:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CIPyDC8IbvTJR6pX0p+1BHmpJnPRCVwjaQIFM51cVXU=; b=umfv5vNGma6wMsafFCN9QoKIzp
	eicRxm79O6Y6YTn1dUVVGq6skKEkAo1Low9w+LmUCZVpD1G+K8kxG6jwnfBIES8tpih2Y29vwO815
	O5n2GYxoCsaXcNcVKJWyjg0fI1KRg2vRvWj8x/rO6WQ34J/X0p5m80yBuLE8DxuuHTcoZMpcfwrCY
	MgeaIJnqQECJm3+9svCPjEGsQG1oSgNja/mq4WsP8KobI0wzICphKAIByB7+G53rQGVGiFFl3YCdx
	DYLLCx0ILYW10tbWt1ZPXvTvZzhn7+mBravJGb8HYjBjIsGS0RNCgncL7N+tzcr7dypIbtKHROdXO
	a0SjOwpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZyde-0003Xb-5y; Sun, 09 Jun 2019 14:17:38 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZydR-0003VJ-3C
 for linux-nvme@lists.infradead.org; Sun, 09 Jun 2019 14:17:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so3786359pfa.5
 for <linux-nvme@lists.infradead.org>; Sun, 09 Jun 2019 07:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VX7A9tSkefeZHMzvNLHVxQ7mnBoTdOESlX04HJutfrQ=;
 b=FIH54XKAmbrSwNOQpBfJiJUwA4/tSsKq4FABdoWHQ8dpUczMHjt+K0cwJ1JzJDpFOr
 GbebJNIO7gWo9gcROCxlEJrz9E4r9XS0SrBv3GPoggrqcRljXU8pm8ksTts6+g9TRvt+
 JRrg6T5EhNtcgUrDaWowlOYBS5n4Gjby3x7inRSAWqPIiYSu1pw/1bdVetQl5bmHe/dD
 8Bsl5aU0qKc4z6s09OuDUTRBBuyDyli/jRma5Hg6mrPIJ5utQuAHJnOA39TTm0BvI/ZF
 jGEK0CS8ye+X+FTfSOvaqXzgMHgTwxarpAJ7VGAoIjkrCT23hxnkBWV2ShjyTlsj6qre
 5wDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VX7A9tSkefeZHMzvNLHVxQ7mnBoTdOESlX04HJutfrQ=;
 b=dCIsSY4GNyCYOPrsWQqgubB8eegshvxOxK2FTpKxudVbyme/OfKSz2FS3uK6XYk+Za
 qu795iqF3JYmInRJEJ4cRYTDqw2lqQyupcSJA3wYXTHvx9irzUDrHdBZ8MedSqitrlIy
 UAuxcuxNy49fHSQDmhs78iX+27XCaJ6GBqBDIvPgjSUkNzw+KmyUyLkjlSxbKhH+8Pry
 VoKj9NPOkCbVTbCNmgNIaBjUAGt8Zt6nZPjqp4tyoxwvqvmhWlyA+ZqJIwRz8ayHWTbL
 14etgDoA3Vwuj8W36/UkElqwJ4mHkPTWvJH3PImB7U2I8zpRmX76j+0I9+ogMcrsj4ra
 Et5A==
X-Gm-Message-State: APjAAAV5+Wj0fMTHJ9mg+W4BEChT63GbjDX+iXWGetpH2ot1si/2+B6L
 e72nUVAlytwq85mjgcW6UjzlXEpPfao=
X-Google-Smtp-Source: APXvYqzgp5cVOwnMNUufgBFIKI0zwyjQ4sv+ISv0SshGqLflx6sZrVYFrbMiwHfq7CEb+IXbQNyFig==
X-Received: by 2002:a65:5308:: with SMTP id m8mr11652351pgq.54.1560089844506; 
 Sun, 09 Jun 2019 07:17:24 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b49b:e456:7394:88a2])
 by smtp.gmail.com with ESMTPSA id w4sm9556554pfw.97.2019.06.09.07.17.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 09 Jun 2019 07:17:24 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 1/3] nvme: prepare for fault injection into admin commands
Date: Sun,  9 Jun 2019 23:17:00 +0900
Message-Id: <1560089822-11462-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
References: <1560089822-11462-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_071725_136869_0C7960B3 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Thomas Tai <thomas.tai@oracle.com>, Akinobu Mita <akinobu.mita@gmail.com>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
* v3
- add Reviewed-by tags
- WARN_ONCE() if no namespace is tied to the request

 drivers/nvme/host/core.c         |  4 ++--
 drivers/nvme/host/fault_inject.c | 36 ++++++++++++++++++++----------------
 drivers/nvme/host/nvme.h         | 34 +++++++++++++++++++---------------
 3 files changed, 41 insertions(+), 33 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2af..a66e7d8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3318,7 +3318,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	device_add_disk(ctrl->device, ns->disk, nvme_ns_id_attr_groups);
 
 	nvme_mpath_add_disk(ns, id);
-	nvme_fault_inject_init(ns);
+	nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
 	kfree(id);
 
 	return 0;
@@ -3343,7 +3343,7 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
 		return;
 
-	nvme_fault_inject_fini(ns);
+	nvme_fault_inject_fini(&ns->fault_inject);
 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
 		del_gendisk(ns->disk);
 		blk_cleanup_queue(ns->queue);
diff --git a/drivers/nvme/host/fault_inject.c b/drivers/nvme/host/fault_inject.c
index 4cfd2c9..e37b8c2 100644
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
@@ -49,29 +48,34 @@ void nvme_fault_inject_init(struct nvme_ns *ns)
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
+		else
+			WARN_ONCE(1, "No namespace found for request\n");
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
index 55553d2..f00c596 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -146,6 +146,15 @@ enum nvme_ctrl_state {
 	NVME_CTRL_DEAD,
 };
 
+struct nvme_fault_inject {
+#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
+	struct fault_attr attr;
+	struct dentry *parent;
+	bool dont_retry;	/* DNR, do not retry */
+	u16 status;		/* status code */
+#endif
+};
+
 struct nvme_ctrl {
 	bool comp_seen;
 	enum nvme_ctrl_state state;
@@ -313,15 +322,6 @@ struct nvme_ns_head {
 #endif
 };
 
-#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
-struct nvme_fault_inject {
-	struct fault_attr attr;
-	struct dentry *parent;
-	bool dont_retry;	/* DNR, do not retry */
-	u16 status;		/* status code */
-};
-#endif
-
 struct nvme_ns {
 	struct list_head list;
 
@@ -349,9 +349,7 @@ struct nvme_ns {
 #define NVME_NS_ANA_PENDING	2
 	u16 noiob;
 
-#ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
 	struct nvme_fault_inject fault_inject;
-#endif
 
 };
 
@@ -372,12 +370,18 @@ struct nvme_ctrl_ops {
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
