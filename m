Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33038755BB
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:28:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Xthn4QKkRmSlIZi7b5JtB3It6RoInVZcmOcy4Fcq7k=; b=ZWntGAmfrZEcfz
	9LBTa+9q9CN0VFnFYZp2weTq5cklmdDP45dz/LLRYpo+rfwmiQEtBQ2thp6v20yAku1h6xUznEAZF
	RxmQ0jD2LIT6jr3XFGI31qjvi36rKiucLUXRZureSBz1DPW5dFp8LQ9t7xSZV6Gu1PeZCST3zXFA0
	CQ3NK/uydUNBvSjw9nE0RBDqjBaUbX4IbHmMKsqYGqYL/2Ov+s8/KLQ04hhjxZjaSBG+OEsTyBda1
	cS2kJ04UIMVZMPMk/RpnjXL+ZZj+X7Kaby7IeJs3+RBP+G1wQbLy/euEZyu99mlaOIsOh/Cmn4+HY
	shBAtIlJvPoNKw45K37A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhXt-0007Ro-Rr; Thu, 25 Jul 2019 17:28:49 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhT9-0000J9-I3
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:24:02 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSw-0001Ja-5R; Thu, 25 Jul 2019 11:23:54 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSw-0001nZ-0T; Thu, 25 Jul 2019 11:23:42 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu, 25 Jul 2019 11:23:30 -0600
Message-Id: <20190725172335.6825-12-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725172335.6825-1-logang@deltatee.com>
References: <20190725172335.6825-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, maxg@mellanox.com,
 sbates@raithlin.com, Chaitanya.Kulkarni@wdc.com, chaitanya.kulkarni@wdc.com,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v6 11/16] nvmet-core: allow one host per passthru-ctrl
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102355_702878_C36D3A67 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

This patch rejects any new connection to the passthru-ctrl if this
controller is already connected to host. At the time of allocating the
controller we check if the subsys associated with the passthru ctrl is
already connected to the host.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
[logang@deltatee.com:
   * drop the overide of the target cntlid with the passthru cntlid;
     this seemed like a really bad idea especially in the presence of
     mixed systems as you could end up with two ctrlrs with the same
     cntlid
   * push the check to ensure only one ctrlr per subsys into
     functions in passthru-cmd.c to avoid excess inline #ifdefs
]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/core.c            |  6 +++++
 drivers/nvme/target/io-cmd-passthru.c | 32 +++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h           | 10 +++++++++
 3 files changed, 48 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 2e75968af7f4..9e92486e2ee9 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -13,6 +13,7 @@
 #define CREATE_TRACE_POINTS
 #include "trace.h"
 
+#include "../host/nvme.h"
 #include "nvmet.h"
 
 struct workqueue_struct *buffered_io_wq;
@@ -1278,6 +1279,10 @@ u16 nvmet_alloc_ctrl(const char *subsysnqn, const char *hostnqn,
 	if (!ctrl->sqs)
 		goto out_free_cqs;
 
+	ret = nvmet_passthru_alloc_ctrl(subsys);
+	if (ret)
+		goto out_free_sqs;
+
 	ret = ida_simple_get(&cntlid_ida,
 			     NVME_CNTLID_MIN, NVME_CNTLID_MAX,
 			     GFP_KERNEL);
@@ -1341,6 +1346,7 @@ static void nvmet_ctrl_free(struct kref *ref)
 	flush_work(&ctrl->async_event_work);
 	cancel_work_sync(&ctrl->fatal_err_work);
 
+	nvmet_passthru_ctrl_free(subsys);
 	ida_simple_remove(&cntlid_ida, ctrl->cntlid);
 
 	kfree(ctrl->sqs);
diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
index 9ddcdb8415fc..aefdd534cb4a 100644
--- a/drivers/nvme/target/io-cmd-passthru.c
+++ b/drivers/nvme/target/io-cmd-passthru.c
@@ -104,6 +104,38 @@ void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
 	mutex_unlock(&subsys->lock);
 }
 
+int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys)
+{
+	/*
+	 * Check here if this subsystem is already connected to the passthru
+	 * ctrl. We allow only one target ctrl for one passthru subsystem.
+	 */
+
+	mutex_lock(&subsys->lock);
+
+	if (!subsys->passthru_ctrl)
+		goto out;
+
+	if (subsys->passthru_connected) {
+		mutex_unlock(&subsys->lock);
+		return -ENODEV;
+	}
+
+	subsys->passthru_connected = true;
+
+out:
+	mutex_unlock(&subsys->lock);
+
+	return 0;
+}
+
+void nvmet_passthru_ctrl_free(struct nvmet_subsys *subsys)
+{
+	mutex_lock(&subsys->lock);
+	subsys->passthru_connected = false;
+	mutex_unlock(&subsys->lock);
+}
+
 static void nvmet_passthru_req_complete(struct nvmet_req *req,
 		struct request *rq, u16 status)
 {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index aff4db03269d..004949b6b666 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -231,6 +231,7 @@ struct nvmet_subsys {
 #ifdef CONFIG_NVME_TARGET_PASSTHRU
 	struct nvme_ctrl	*passthru_ctrl;
 	char			*passthru_ctrl_path;
+	bool			passthru_connected;
 #endif /* CONFIG_NVME_TARGET_PASSTHRU */
 };
 
@@ -513,6 +514,8 @@ void nvmet_passthru_destroy(void);
 void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys);
 int nvmet_passthru_ctrl_enable(struct nvmet_subsys *subsys);
 void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys);
+int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys);
+void nvmet_passthru_ctrl_free(struct nvmet_subsys *subsys);
 u16 nvmet_parse_passthru_cmd(struct nvmet_req *req);
 
 static inline
@@ -536,6 +539,13 @@ static inline void nvmet_passthru_subsys_free(struct nvmet_subsys *subsys)
 static inline void nvmet_passthru_ctrl_disable(struct nvmet_subsys *subsys)
 {
 }
+static inline int nvmet_passthru_alloc_ctrl(struct nvmet_subsys *subsys)
+{
+	return 0;
+}
+static inline void nvmet_passthru_ctrl_free(struct nvmet_subsys *subsys)
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
