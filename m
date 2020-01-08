Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D95134997
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 18:42:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyv/VBG/Lrue14pRWdQj0iA3SCG0PkyFrZNhWJgF+94=; b=sQUe21ZX58rDBh
	S0Tjz2OHoPh5NmWa480u3HJwmNzQCTqj7rqy1XC7ErGYlIH/Fvp2SVyDUBCWrBZ+OvvApy0RkKKg7
	UjFU4s2bjHKmXBIpvnCMc+Xj60Aq8UYLvV/ni1zK085FohAf2458OdhNW/xaBhAgv4T2BdTEyRJLL
	V6BTNjzu2q8MXzHiqKYaLP26oOLi6S6u17VZdLQpDiLd8obXXFZQ3A5yG677ArMykC40mcR+H/H7t
	RCxy6mhLCbcs/KRYQQzQgghqKnFQMtZpnLcETbFdCmeySlBC3rW4VOJ3xSgC5xrPTGBQW7k49tbjN
	+kucnwDgZw29mETpL0SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFLK-00038P-Id; Wed, 08 Jan 2020 17:42:06 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFK0-00029z-6w
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 17:40:48 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1ipFJt-0004he-AX; Wed, 08 Jan 2020 10:40:41 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1ipFJr-0000ua-Bb; Wed, 08 Jan 2020 10:40:35 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Wed,  8 Jan 2020 10:40:29 -0700
Message-Id: <20200108174030.3430-9-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200108174030.3430-1-logang@deltatee.com>
References: <20200108174030.3430-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com,
 Chaitanya.Kulkarni@wdc.com, chaitanya.kulkarni@wdc.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v10 8/9] nvmet-passthru: Add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094044_376597_CB1341C1 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds helper functions which are used in the NVMeOF configfs
when the user is configuring the passthru subsystem. Here we ensure
that only one subsys is assigned to each nvme_ctrl by using an xarray
on the cntlid.

The subsystem's version number is overridden by the passed through
controller's version. However, if that version is less than 1.2.1,
then we bump the advertised version to that and print a warning
in dmesg.

Based-on-a-patch-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/configfs.c |  3 ++
 drivers/nvme/target/core.c     | 10 +++-
 drivers/nvme/target/nvmet.h    | 12 +++++
 drivers/nvme/target/passthru.c | 87 ++++++++++++++++++++++++++++++++++
 4 files changed, 111 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 98613a45bd3b..354d43fab8db 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -828,6 +828,9 @@ static ssize_t nvmet_subsys_attr_version_store(struct config_item *item,
 	int major, minor, tertiary = 0;
 	int ret;
 
+	/* passthru subsystems use the underlying controller's version */
+	if (nvmet_passthru_ctrl(subsys))
+		return -EINVAL;
 
 	ret = sscanf(page, "%d.%d.%d\n", &major, &minor, &tertiary);
 	if (ret != 2 && ret != 3)
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 248818f378e3..1d4fc8779c67 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -518,6 +518,12 @@ int nvmet_ns_enable(struct nvmet_ns *ns)
 
 	mutex_lock(&subsys->lock);
 	ret = 0;
+
+	if (nvmet_passthru_ctrl(subsys)) {
+		pr_info("cannot enable both passthru and regular namespaces for a single subsystem");
+		goto out_unlock;
+	}
+
 	if (ns->enabled)
 		goto out_unlock;
 
@@ -1396,7 +1402,7 @@ struct nvmet_subsys *nvmet_subsys_alloc(const char *subsysnqn,
 	if (!subsys)
 		return ERR_PTR(-ENOMEM);
 
-	subsys->ver = NVME_VS(1, 3, 0); /* NVMe 1.3.0 */
+	subsys->ver = NVMET_DEFAULT_VS;
 	/* generate a random serial number as our controllers are ephemeral: */
 	get_random_bytes(&subsys->serial, sizeof(subsys->serial));
 
@@ -1437,6 +1443,8 @@ static void nvmet_subsys_free(struct kref *ref)
 
 	WARN_ON_ONCE(!list_empty(&subsys->namespaces));
 
+	nvmet_passthru_subsys_free(subsys);
+
 	kfree(subsys->subsysnqn);
 	kfree(subsys);
 }
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 37fc30d2a2c4..9e7d492aedbd 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -20,6 +20,8 @@
 #include <linux/blkdev.h>
 #include <linux/radix-tree.h>
 
+#define NVMET_DEFAULT_VS		NVME_VS(1, 3, 0)
+
 #define NVMET_ASYNC_EVENTS		4
 #define NVMET_ERROR_LOG_SLOTS		128
 #define NVMET_NO_ERROR_LOC		((u16)-1)
@@ -230,6 +232,7 @@ struct nvmet_subsys {
 
 #ifdef CONFIG_NVME_TARGET_PASSTHRU
 	struct nvme_ctrl	*passthru_ctrl;
+	char			*passthru_ctrl_path;
 #endif /* CONFIG_NVME_TARGET_PASSTHRU */
 };
 
@@ -511,6 +514,9 @@ static inline u32 nvmet_dsm_len(struct nvmet_req *req)
 }
 
 #ifdef CONFIG_NVME_TARGET_PASSTHRU
+void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys);
+int nvmet_passthru_ctrl_enable(struct nvmet_subsys *subsys);
+void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys);
 u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req);
 u16 nvmet_setup_passthru_command(struct nvmet_req *req);
 static inline struct nvme_ctrl *nvmet_passthru_ctrl(struct nvmet_subsys *subsys)
@@ -518,6 +524,12 @@ static inline struct nvme_ctrl *nvmet_passthru_ctrl(struct nvmet_subsys *subsys)
 	return subsys->passthru_ctrl;
 }
 #else /* CONFIG_NVME_TARGET_PASSTHRU */
+static inline void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
+{
+}
+static inline void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
+{
+}
 static inline u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req)
 {
 	return 0;
diff --git a/drivers/nvme/target/passthru.c b/drivers/nvme/target/passthru.c
index 01127bfa6c8a..0705f4ff8b16 100644
--- a/drivers/nvme/target/passthru.c
+++ b/drivers/nvme/target/passthru.c
@@ -11,6 +11,11 @@
 #include "../host/nvme.h"
 #include "nvmet.h"
 
+/*
+ * xarray to maintain one passthru subsystem per nvme controller.
+ */
+static DEFINE_XARRAY(passthru_subsystems);
+
 static void nvmet_passthru_execute_cmd_work(struct work_struct *w)
 {
 	struct nvmet_req *req = container_of(w, struct nvmet_req, p.work);
@@ -346,3 +351,85 @@ u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req)
 		return NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
 	}
 }
+
+int nvmet_passthru_ctrl_enable(struct nvmet_subsys *subsys)
+{
+	struct nvme_ctrl *ctrl;
+	int ret = -EINVAL;
+	void *old;
+
+	mutex_lock(&subsys->lock);
+	if (!subsys->passthru_ctrl_path)
+		goto out_unlock;
+	if (subsys->passthru_ctrl)
+		goto out_unlock;
+
+	if (subsys->nr_namespaces) {
+		pr_info("cannot enable both passthru and regular namespaces for a single subsystem");
+		goto out_unlock;
+	}
+
+	ctrl = nvme_ctrl_get_by_path(subsys->passthru_ctrl_path);
+	if (IS_ERR(ctrl)) {
+		ret = PTR_ERR(ctrl);
+		pr_err("failed to open nvme controller %s\n",
+		       subsys->passthru_ctrl_path);
+
+		goto out_unlock;
+	}
+
+	old = xa_cmpxchg(&passthru_subsystems, ctrl->cntlid, NULL,
+			 subsys, GFP_KERNEL);
+	if (xa_is_err(old)) {
+		ret = xa_err(old);
+		goto out_put_ctrl;
+	}
+
+	if (old)
+		goto out_put_ctrl;
+
+	subsys->passthru_ctrl = ctrl;
+	subsys->ver = ctrl->vs;
+
+	if (subsys->ver < NVME_VS(1, 2, 1)) {
+		pr_warn("nvme controller version is too old: %d.%d.%d, advertising 1.2.1\n",
+			(int)NVME_MAJOR(subsys->ver),
+			(int)NVME_MINOR(subsys->ver),
+			(int)NVME_TERTIARY(subsys->ver));
+		subsys->ver = NVME_VS(1, 2, 1);
+	}
+
+	mutex_unlock(&subsys->lock);
+	return 0;
+
+out_put_ctrl:
+	nvme_put_ctrl(ctrl);
+out_unlock:
+	mutex_unlock(&subsys->lock);
+	return ret;
+}
+
+static void __nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
+{
+	if (subsys->passthru_ctrl) {
+		xa_erase(&passthru_subsystems, subsys->passthru_ctrl->cntlid);
+		nvme_put_ctrl(subsys->passthru_ctrl);
+	}
+	subsys->passthru_ctrl = NULL;
+	subsys->ver = NVMET_DEFAULT_VS;
+}
+
+void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
+{
+	mutex_lock(&subsys->lock);
+	__nvmet_passthru_ctrl_disable(subsys);
+	mutex_unlock(&subsys->lock);
+}
+
+void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
+{
+	mutex_lock(&subsys->lock);
+	__nvmet_passthru_ctrl_disable(subsys);
+	kfree(subsys->passthru_ctrl_path);
+	mutex_unlock(&subsys->lock);
+}
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
