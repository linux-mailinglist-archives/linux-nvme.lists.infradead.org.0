Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BCC11DA53
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Dec 2019 00:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHDt51AiclvkJBVLzv59ZsV2bSmWmAozNWsPjHExRdw=; b=UbOjlE1F/sXM8g
	lHiV4pehagN4RpangvAZYEmpqWuquqOt1KMGFw0u1Bt+cjbMqjcuUEwww5VKscUxxkkWsrYRjtwii
	l7aCGZ8vlkxRgvVGjThAaIlkNilqRLjLCR/uU+iuP5XOcyEdG8DtGaFsfD4gGmsQGVEPC/0nykN86
	SaWqMx+3P1+vqJSqJZ0q+m01TfRNlVdtKLiDjl12J8sT5EDd0dAz8an5hmcTSJSP5Ff7ZyQ/q3qRP
	zRvzXqsPIL80Tb5UVgeYf8LdZ/6u1XnPLTfrSALpBwaqL7CMNZiFqd6e4EtoEY1CC/tQy9QIX4Vxx
	CWnRvdY5PvzlFjiDFjgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYKR-0007jg-0i; Thu, 12 Dec 2019 23:57:07 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYI7-0003kN-Dz
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 23:54:45 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1ifYHt-0004ZJ-IT; Thu, 12 Dec 2019 16:54:42 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1ifYHn-0005qN-TI; Thu, 12 Dec 2019 16:54:23 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 12 Dec 2019 16:54:15 -0700
Message-Id: <20191212235418.22396-7-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191212235418.22396-1-logang@deltatee.com>
References: <20191212235418.22396-1-logang@deltatee.com>
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
X-CRM114-CacheID: sfid-20191212_155443_486751_2E834D11 
X-CRM114-Status: GOOD (  10.31  )
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
