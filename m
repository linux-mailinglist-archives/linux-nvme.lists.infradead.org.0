Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F3B5E9E6
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 19:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28inNch9qKHin3G+q/UZPS+xGq8CrOYoJ7WNa3/i0L8=; b=Bo1D6NxvN5kafB
	8XmVgtHky+ZW9rBDk2GQ6gqeRFBDa98cGZQRjepvsNOIOIvyqV44X8gxH1FNWKMqnaAguAh8+SQdt
	n9blDFZJ2NEgr/kMEDOJU5RXT9zXWRqVm/rCU8j+UhCGLwraDVe/MgWvA9Q3xIYJEDKy1P5Leyc0f
	lpQJHy+eivB9R4WHv0Jq/nejNYwAVPEcC6CqoFcQsqwD3mhNc3u0VAl6gfRllxABzhvbMes1EkMAi
	1nn0ox3G48QEMhZECCzr6UJ5z1qMDfOrP0PY4zNq8l+QVQgjSFIppRy/eBCIRCv5mLpENppavnhHJ
	gABluWRZx1roVnRO/YdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiido-0000Df-Rm; Wed, 03 Jul 2019 17:01:57 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiida-0000CT-BW
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 17:01:43 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hiidX-0000Cc-9D; Wed, 03 Jul 2019 11:01:40 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hiidW-0005bq-7S; Wed, 03 Jul 2019 11:01:38 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Date: Wed,  3 Jul 2019 11:01:36 -0600
Message-Id: <20190703170136.21515-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703170136.21515-1-logang@deltatee.com>
References: <20190703170136.21515-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] nvmet-rdma: Fix use-after-free bug when a port is removed
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_100142_446574_DDD088C5 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
Cc: Logan Gunthorpe <logang@deltatee.com>, Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When a port is removed through configfs, any connected controllers
are still active and can still send commands. This causes a
use-after-free bug which is detected by KASAN for any admin command
that dereferences req->port (like in nvmet_execute_identify_ctrl).

To fix this, disconnect all active queues that use the same port
in nvme_rdma_remove_port().

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/rdma.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 36d906a7f70d..6db9f9586ca7 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -1580,9 +1580,25 @@ static int nvmet_rdma_add_port(struct nvmet_port *port)
 static void nvmet_rdma_remove_port(struct nvmet_port *port)
 {
 	struct rdma_cm_id *cm_id = xchg(&port->priv, NULL);
+	struct nvmet_rdma_queue *queue;
 
 	if (cm_id)
 		rdma_destroy_id(cm_id);
+
+restart:
+	mutex_lock(&nvmet_rdma_queue_mutex);
+
+	list_for_each_entry(queue, &nvmet_rdma_queue_list, queue_list) {
+		if (queue->port == port) {
+			list_del_init(&queue->queue_list);
+			mutex_unlock(&nvmet_rdma_queue_mutex);
+
+			__nvmet_rdma_queue_disconnect(queue);
+			goto restart;
+		}
+	}
+
+	mutex_unlock(&nvmet_rdma_queue_mutex);
 }
 
 static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
