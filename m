Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254C2134985
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Jan 2020 18:40:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHDt51AiclvkJBVLzv59ZsV2bSmWmAozNWsPjHExRdw=; b=nc1lZZNIex/dMT
	kf1HjMb0rn6i7J8M9kY76iPeKcAN1iUFUPWyVIGmvJ4UP4JXWF8u+ZvoGgFJIbgfUooJf/jaglCsg
	N9k6VUGbHMI5t6ewgZsXlaL3NrjFDaK+sO897OBAoKz7xdve6FjXUYArTb1WUGxOJX2JkjWmkPnLz
	pVBaTktUWg3aYEQoKhtDyCMqA5Kvx/BEEYTnSAnCdVvPVX6Zhy/cyxDXbrAiRIU1jvPEg6hWX6j9x
	Ei0MyYgeGK5BDuG9UO7XmQ60vEuAOtsbGazdQ6JZdytCbF9IGUxV4swjWLltkiERZ/3wCAEn04oKj
	/YaCPr5gyCJJGtMxNCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFK3-00028P-Es; Wed, 08 Jan 2020 17:40:47 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFJw-00027m-5U
 for linux-nvme@lists.infradead.org; Wed, 08 Jan 2020 17:40:41 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1ipFJt-0004hc-AV; Wed, 08 Jan 2020 10:40:38 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1ipFJr-0000uU-5u; Wed, 08 Jan 2020 10:40:35 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Wed,  8 Jan 2020 10:40:27 -0700
Message-Id: <20200108174030.3430-7-logang@deltatee.com>
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
Subject: [PATCH v10 6/9] nvme: Export existing nvme core functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094040_268329_431D4C7A 
X-CRM114-Status: GOOD (  10.71  )
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

Export nvme_put_ns(), nvme_command_effects(), nvme_execute_passthru_rq()
and nvme_find_get_ns() for use in the nvmet passthru code.

The exports are conditional on CONFIG_NVME_TARGET_PASSTHRU.

Based-on-a-patch-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/core.c | 14 +++++++++-----
 drivers/nvme/host/nvme.h |  5 +++++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d7912e7a9911..037415882d46 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -463,7 +463,7 @@ static void nvme_free_ns(struct kref *kref)
 	kfree(ns);
 }
 
-static void nvme_put_ns(struct nvme_ns *ns)
+void nvme_put_ns(struct nvme_ns *ns)
 {
 	kref_put(&ns->kref, nvme_free_ns);
 }
@@ -896,8 +896,8 @@ static void *nvme_add_user_metadata(struct bio *bio, void __user *ubuf,
 	return ERR_PTR(ret);
 }
 
-static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
-				u8 opcode)
+u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+			 u8 opcode)
 {
 	u32 effects = 0;
 
@@ -982,7 +982,7 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
 		nvme_queue_scan(ctrl);
 }
 
-static void nvme_execute_passthru_rq(struct request *rq)
+void nvme_execute_passthru_rq(struct request *rq)
 {
 	struct nvme_command *cmd = nvme_req(rq)->cmd;
 	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
@@ -3441,7 +3441,7 @@ static int ns_cmp(void *priv, struct list_head *a, struct list_head *b)
 	return nsa->head->ns_id - nsb->head->ns_id;
 }
 
-static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
+struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 {
 	struct nvme_ns *ns, *ret = NULL;
 
@@ -4225,6 +4225,10 @@ EXPORT_SYMBOL_GPL(nvme_sync_queues);
  * use by the nvmet-passthru and should not be used for
  * other things.
  */
+EXPORT_SYMBOL_GPL(nvme_put_ns);
+EXPORT_SYMBOL_GPL(nvme_command_effects);
+EXPORT_SYMBOL_GPL(nvme_execute_passthru_rq);
+EXPORT_SYMBOL_GPL(nvme_find_get_ns);
 
 struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path)
 {
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 356e4062796e..b1b1e7dd866b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -687,6 +687,11 @@ static inline void nvme_hwmon_init(struct nvme_ctrl *ctrl) { }
  * use by the nvmet-passthru and should not be used for
  * other things.
  */
+void nvme_put_ns(struct nvme_ns *ns);
+u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+			 u8 opcode);
+void nvme_execute_passthru_rq(struct request *rq);
+struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned int nsid);
 struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path);
 #endif /* CONFIG_NVME_TARGET_PASSTHRU */
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
