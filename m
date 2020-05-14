Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641C1D3846
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 19:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAvZZjFXxSifOFEqC4jyf4KwSJneQ+acXqOjdAOfjgw=; b=qqweK7T2V801qX
	wM8SBcSu1tTKM7pHCaPGzVTWKfm1XnY4diEaahfozAx9mjai+DIRRVe0QJTN+rh1fIwK2qBBnpesJ
	Vlkp6mVY/TguEHGFaD357VoV6iTW//fd4OGzFc37cYeVG/u7Q2SSedYdnTdQDIkAtRo3jRkxiP8bE
	b2LFFUpRcBqsVbp3qUJgtuljhKwHfbpXFv2vQC/cEJzQmoEnm6kgxhLc7lrnN1o4IhKq5RJ/W8Kem
	3i27RqxQq+EUl8L/0fuavLhDuWxAw2z8BZ1ripBKFZVW/Q/r8lXak8NasgfceNij0dSEU2SUkKj+2
	EPdjr86NOLdxti/WODMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHiI-000179-EP; Thu, 14 May 2020 17:32:06 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHZh-0005Iu-9z
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 17:23:15 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1jZHZV-00021r-Ty; Thu, 14 May 2020 11:23:06 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1jZHZU-0001h3-MM; Thu, 14 May 2020 11:23:00 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 14 May 2020 11:22:49 -0600
Message-Id: <20200514172253.6445-6-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514172253.6445-1-logang@deltatee.com>
References: <20200514172253.6445-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 Chaitanya.Kulkarni@wdc.com, maxg@mellanox.com, sbates@raithlin.com,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.2
Subject: [PATCH v13 5/9] nvme-core: Introduce nvme_ctrl_get_by_path()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_102313_738861_8B2C5015 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_ctrl_get_by_path() is analagous to blkdev_get_by_path() except it
gets a struct nvme_ctrl from the path to its char dev (/dev/nvme0).
It makes use of filp_open() to open the file and uses the private
data to obtain a pointer to the struct nvme_ctrl. If the fops of the
file do not match, -EINVAL is returned.

The purpose of this function is to support NVMe-OF target passthru.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 31 +++++++++++++++++++++++++++++++
 drivers/nvme/host/nvme.h |  9 +++++++++
 2 files changed, 40 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2ead7ad45a9d..2604971362d8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -4305,6 +4305,37 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_sync_queues);
 
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+/*
+ * The exports that follow within this ifdef are only for
+ * use by the nvmet-passthru and should not be used for
+ * other things.
+ */
+
+struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path)
+{
+	struct nvme_ctrl *ctrl;
+	struct file *f;
+
+	f = filp_open(path, O_RDWR, 0);
+	if (IS_ERR(f))
+		return ERR_CAST(f);
+
+	if (f->f_op != &nvme_dev_fops) {
+		ctrl = ERR_PTR(-EINVAL);
+		goto out_close;
+	}
+
+	ctrl = f->private_data;
+	nvme_get_ctrl(ctrl);
+
+out_close:
+	filp_close(f, NULL);
+	return ctrl;
+}
+EXPORT_SYMBOL_GPL(nvme_ctrl_get_by_path);
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
+
 /*
  * Check we didn't inadvertently grow the command structure sizes:
  */
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 2e04a36296d9..9195dd97b61b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -689,4 +689,13 @@ void nvme_hwmon_init(struct nvme_ctrl *ctrl);
 static inline void nvme_hwmon_init(struct nvme_ctrl *ctrl) { }
 #endif
 
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+/*
+ * The exports that follow within this ifdef are only for
+ * use by the nvmet-passthru and should not be used for
+ * other things.
+ */
+struct nvme_ctrl *nvme_ctrl_get_by_path(const char *path);
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
+
 #endif /* _NVME_H */
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
