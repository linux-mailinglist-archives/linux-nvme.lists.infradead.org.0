Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 759B6E551A
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 22:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEpwK2MB9UcemkeP3kg73butc6e0fl6PUzdSLhFneEE=; b=Ks1eIc/FyIrdLh
	4zU7LCTlW7jspwwk2gUg7ddrMoMW3TqmAxIkzqQd7ruX6hrSkTRDEf/P0bsmuQFjT4mDJo2LINOUX
	+6q2QkGkURChwsLbcjRVjrtinZY35/BVLKLRWZK0EaDZqeAQ+NIyl79sjocda/6iupRFB8YhE1V1e
	cgGXocVqgG0qa9oewsvtoPnsjn7uZ022JQyJ1TUmDJ1THmbxZeRzPeMdbZcrFZFmjNYNeWtwULxsb
	akf/OPZYWrXAQdhtP+Yj6xr8Z4CSTgM1uhGpiFg9uP2WgWzeB+E5oEAyucPj1GY29kBybbuZ5Y4PD
	3MIfTVbo/zbZyMcpJU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO69m-0007di-Hb; Fri, 25 Oct 2019 20:25:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO69U-0007Xi-0O
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 20:25:41 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iO69R-00078e-Ir; Fri, 25 Oct 2019 14:25:39 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iO69Q-000392-RZ; Fri, 25 Oct 2019 14:25:36 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Fri, 25 Oct 2019 14:25:35 -0600
Message-Id: <20191025202535.12036-4-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025202535.12036-1-logang@deltatee.com>
References: <20191025202535.12036-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [RFC PATCH 3/3] nvme: Introduce nvme_execute_passthru_rq_nowait()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_132540_384505_DEC72D8A 
X-CRM114-Status: GOOD (  13.85  )
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This function is similar to nvme_execute_passthru_rq() but does
not wait and will call a callback when the request is complete.

The new function can also be called in interrupt context, so if there
are side effects, the request will be executed in a work queue to
avoid sleeping.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/core.c | 42 ++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/nvme.h |  7 +++++++
 2 files changed, 49 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2b4f0ea55f8d..6d3cade0e63d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -4211,6 +4211,48 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_sync_queues);
 
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+static void nvme_execute_passthru_rq_work(struct work_struct *w)
+{
+	struct nvme_request *req = container_of(w, struct nvme_request, work);
+	struct request *rq = blk_mq_rq_from_pdu(req);
+	rq_end_io_fn *done = rq->end_io;
+	void *end_io_data = rq->end_io_data;
+
+	nvme_execute_passthru_rq(rq);
+
+	if (done) {
+		rq->end_io_data = end_io_data;
+		done(rq, 0);
+	}
+}
+
+void nvme_execute_passthru_rq_nowait(struct request *rq, rq_end_io_fn *done)
+{
+	struct nvme_command *cmd = nvme_req(rq)->cmd;
+	struct nvme_ctrl *ctrl = nvme_req(rq)->ctrl;
+	struct nvme_ns *ns = rq->q->queuedata;
+	struct gendisk *disk = ns ? ns->disk : NULL;
+	u32 effects;
+
+	/*
+	 * This function may be called in interrupt context, so we cannot sleep
+	 * but nvme_passthru_[start|end]() may sleep so we need to execute
+	 * the command in a work queue.
+	 */
+	effects = nvme_command_effects(ctrl, ns, cmd->common.opcode);
+	if (effects) {
+		rq->end_io = done;
+		INIT_WORK(&nvme_req(rq)->work, nvme_execute_passthru_rq_work);
+		queue_work(nvme_wq, &nvme_req(rq)->work);
+		return;
+	}
+
+	blk_execute_rq_nowait(rq->q, disk, rq, 0, done);
+}
+EXPORT_SYMBOL_GPL(nvme_execute_passthru_rq_nowait);
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
+
 /*
  * Check we didn't inadvertently grow the command structure sizes:
  */
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 22e8401352c2..9523779de662 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -128,6 +128,9 @@ struct nvme_request {
 	u8			flags;
 	u16			status;
 	struct nvme_ctrl	*ctrl;
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+	struct work_struct	work;
+#endif
 };
 
 /*
@@ -652,4 +655,8 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
 	return dev_to_disk(dev)->private_data;
 }
 
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+void nvme_execute_passthru_rq_nowait(struct request *rq, rq_end_io_fn *done);
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
+
 #endif /* _NVME_H */
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
