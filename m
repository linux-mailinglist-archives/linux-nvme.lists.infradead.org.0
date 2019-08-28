Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D68A0D0D
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 23:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWPCGzKogp58laOFnokSF3HQ+LkC1OLmt+Nz+TTr6Fg=; b=sTuW0UDBA389YG
	XYsGx5c89jM5jEybCy0HvwJUeQFlOGELVMn+F4jQTIle8Xi80SqM/uCkTDMUS2r7VylQ8bnUazvT1
	IvFf6wvZ2RXmAm2B4v8JnPgelvVG8uNM/2Ho5yGndlG2OfEgpHJ42dacTfId1odxfQUJeCgApHXkz
	t9uMs8AJpgJi3BODuKn1sUCWkRau92oLdK127Bsz43QCd3Yf3EridwN2aSBu0Gt7wzNknPcDcWhHO
	EdQ4xNOgvKYM199galuj/0mY5yh1mnyySWxdZ+i2ccKMHSw8tMbanUbJjBiPfMjaXww4FUsWkA6O5
	AZgXpO98NoFKm5DOQ05g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35w6-0007NY-Jx; Wed, 28 Aug 2019 21:57:02 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35tq-00034c-Ei
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 21:54:44 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1i35tj-00071i-NP; Wed, 28 Aug 2019 15:54:41 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1i35ti-0001D1-Nj; Wed, 28 Aug 2019 15:54:34 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Wed, 28 Aug 2019 15:54:23 -0600
Message-Id: <20190828215429.4572-8-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190828215429.4572-1-logang@deltatee.com>
References: <20190828215429.4572-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, maxg@mellanox.com,
 sbates@raithlin.com, logang@deltatee.com, Chaitanya.Kulkarni@wdc.com,
 chaitanya.kulkarni@wdc.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v8 07/13] nvmet-passthru: add enable/disable helpers
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_145442_926828_BD32E9DB 
X-CRM114-Status: GOOD (  14.95  )
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds helper functions which are used in the NVMeOF configfs
when the user is configuring the passthru subsystem. Here we ensure
that only one subsys is assigned to each nvme_ctrl by using an xarray
on the cntlid.

[chaitanya.kulkarni@wdc.com: this patch is very roughly based
 on a similar one by Chaitanya]
Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/core.c            |  8 +++
 drivers/nvme/target/io-cmd-passthru.c | 77 +++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h           | 10 ++++
 3 files changed, 95 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 256f765e772b..986b2511d284 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -520,6 +520,12 @@ int nvmet_ns_enable(struct nvmet_ns *ns)
 
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
 
@@ -1440,6 +1446,8 @@ static void nvmet_subsys_free(struct kref *ref)
 
 	WARN_ON_ONCE(!list_empty(&subsys->namespaces));
 
+	nvmet_passthru_subsys_free(subsys);
+
 	kfree(subsys->subsysnqn);
 	kfree(subsys);
 }
diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
index 2437fc0a74a4..7557927a3451 100644
--- a/drivers/nvme/target/io-cmd-passthru.c
+++ b/drivers/nvme/target/io-cmd-passthru.c
@@ -11,6 +11,11 @@
 #include "../host/nvme.h"
 #include "nvmet.h"
 
+/*
+ * xarray to maintain one passthru subsystem per nvme controller.
+ */
+static DEFINE_XARRAY(passthru_subsystems);
+
 static struct workqueue_struct *passthru_wq;
 
 int nvmet_passthru_init(void)
@@ -27,6 +32,78 @@ void nvmet_passthru_destroy(void)
 	destroy_workqueue(passthru_wq);
 }
 
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
+
 static void nvmet_passthru_req_complete(struct nvmet_req *req,
 		struct request *rq, u16 status)
 {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index daec1240307c..2c287d13ed83 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -230,6 +230,7 @@ struct nvmet_subsys {
 
 #ifdef CONFIG_NVME_TARGET_PASSTHRU
 	struct nvme_ctrl	*passthru_ctrl;
+	char			*passthru_ctrl_path;
 #endif /* CONFIG_NVME_TARGET_PASSTHRU */
 };
 
@@ -509,6 +510,9 @@ static inline u32 nvmet_rw_len(struct nvmet_req *req)
 
 int nvmet_passthru_init(void);
 void nvmet_passthru_destroy(void);
+void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys);
+int nvmet_passthru_ctrl_enable(struct nvmet_subsys *subsys);
+void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys);
 u16 nvmet_parse_passthru_cmd(struct nvmet_req *req);
 
 static inline
@@ -526,6 +530,12 @@ static inline int nvmet_passthru_init(void)
 static inline void nvmet_passthru_destroy(void)
 {
 }
+static inline void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
+{
+}
+static inline void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
+{
+}
 static inline u16 nvmet_parse_passthru_cmd(struct nvmet_req *req)
 {
 	return 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
