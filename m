Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EC7151A9E
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Feb 2020 13:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oeNthGLC5dOVUtBPG6uFtpZosti58PS2pIelto7fH0E=; b=FkMQGcjQEY8KzkMBMgkj6m6T9V
	QijZYWi3xRzdy0Suq+HDsirajuKq+jCKAEeTXDN22Gt/YXTgLZY0QTFX8siJLGUTp4lD+owU4/Tn5
	jUUUsWEKM6PzQdXrWJT+6aa+MA36YTiKY4C44ilmNP/Cnk3hcq2g81xSsaAHb4dT7iLVyzRss/iV6
	iVCo5NCnTGaB+aGBzuIxt/tTvGpgD0xzbb3wogMSyGAHgmrYCC9a3ZNWBGw8y1AtC0MTCC0s8ZBRl
	A8aQnLTH+OQJGYebWMocc68jzUR0S4VRrz6FOIXrGjgkUZE7rSTapsgmVZ0RGQEqrVqD2qD27WXqB
	1/5BlR9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyxTG-0007J9-VL; Tue, 04 Feb 2020 12:38:27 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyxTC-0007Fu-GG
 for linux-nvme@lists.infradead.org; Tue, 04 Feb 2020 12:38:24 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 Feb 2020 14:38:13 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 014CcDjg022994;
 Tue, 4 Feb 2020 14:38:13 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/2] nvmet: Fix controller use after free
Date: Tue,  4 Feb 2020 14:38:10 +0200
Message-Id: <1580819890-11455-2-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
References: <1580819890-11455-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_043822_931557_269B1629 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

After nvmet_install_queue() sets sq->ctrl calling to nvmet_sq_destroy()
reduces the controller refcount. In case nvmet_install_queue() fails,
calling to nvmet_ctrl_put() is done twice (at nvmet_sq_destroy and
nvmet_execute_io_connect/nvmet_execute_admin_connect) instead of once for
the queue which leads to use after free of the controller. Fix this by set
NULL at sq->ctrl in case of a failure at nvmet_install_queue().

The bug leads to the following Call Trace:

[65857.994862] refcount_t: underflow; use-after-free.
[65858.108304] Workqueue: events nvmet_rdma_release_queue_work [nvmet_rdma]
[65858.115557] RIP: 0010:refcount_warn_saturate+0xe5/0xf0
[65858.208141] Call Trace:
[65858.211203]  nvmet_sq_destroy+0xe1/0xf0 [nvmet]
[65858.216383]  nvmet_rdma_release_queue_work+0x37/0xf0 [nvmet_rdma]
[65858.223117]  process_one_work+0x167/0x370
[65858.227776]  worker_thread+0x49/0x3e0
[65858.232089]  kthread+0xf5/0x130
[65858.235895]  ? max_active_store+0x80/0x80
[65858.240504]  ? kthread_bind+0x10/0x10
[65858.244832]  ret_from_fork+0x1f/0x30
[65858.249074] ---[ end trace f82d59250b54beb7 ]---

Fixes: bb1cc74790eb ("nvmet: implement valid sqhd values in completions")
Fixes: 1672ddb8d691 ("nvmet: Add install_queue callout")
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/fabrics-cmd.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
index 53ef507..799de18 100644
--- a/drivers/nvme/target/fabrics-cmd.c
+++ b/drivers/nvme/target/fabrics-cmd.c
@@ -109,6 +109,7 @@ static u16 nvmet_install_queue(struct nvmet_ctrl *ctrl, struct nvmet_req *req)
 	u16 qid = le16_to_cpu(c->qid);
 	u16 sqsize = le16_to_cpu(c->sqsize);
 	struct nvmet_ctrl *old;
+	u16 ret;
 
 	old = cmpxchg(&req->sq->ctrl, NULL, ctrl);
 	if (old) {
@@ -119,7 +120,8 @@ static u16 nvmet_install_queue(struct nvmet_ctrl *ctrl, struct nvmet_req *req)
 	if (!sqsize) {
 		pr_warn("queue size zero!\n");
 		req->error_loc = offsetof(struct nvmf_connect_command, sqsize);
-		return NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
+		ret = NVME_SC_CONNECT_INVALID_PARAM | NVME_SC_DNR;
+		goto err;
 	}
 
 	/* note: convert queue size from 0's-based value to 1's-based value */
@@ -132,16 +134,19 @@ static u16 nvmet_install_queue(struct nvmet_ctrl *ctrl, struct nvmet_req *req)
 	}
 
 	if (ctrl->ops->install_queue) {
-		u16 ret = ctrl->ops->install_queue(req->sq);
-
+		ret = ctrl->ops->install_queue(req->sq);
 		if (ret) {
 			pr_err("failed to install queue %d cntlid %d ret %x\n",
 				qid, ctrl->cntlid, ret);
-			return ret;
+			goto err;
 		}
 	}
 
 	return 0;
+
+err:
+	req->sq->ctrl = NULL;
+	return ret;
 }
 
 static void nvmet_execute_admin_connect(struct nvmet_req *req)
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
