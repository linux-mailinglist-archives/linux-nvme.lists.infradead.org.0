Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3357E915BF
	for <lists+linux-nvme@lfdr.de>; Sun, 18 Aug 2019 11:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h7lsVCZkieg4ohD2++4FhcrP0RsM3QeB7fr5cnAVC78=; b=FMIP8+TxCMp9iYSCCGYIRQLnYz
	kxxgn40agCpAayDpslu7OudOYgje6iBNbgJnRD2w2jC0RQI2AvGwZTJV5trwKYc7GynwZoSlnXWQN
	wcbVMV+Y+tSKf0dgapXdSUkThjINsOxhkGpR8xmmBXuKyjvn3M/oA3gZxQrX+TalUBqos1d0IiUvN
	jrRa/pufNeTUgOjs7bcDldFCn50CKpvnOqWYbNmVQjYMkx06t/tdCan078ta+SvBj04l/m7+sU4GF
	y4AQ3kACcjWHo8WxbRwqWtQX4j87LUQdlM6yY1QmMMWA2dUdhesCGqZoy5S+C5/GaisTzpOHjVf73
	4+PGyHjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHCL-0005jy-TY; Sun, 18 Aug 2019 09:10:02 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHBV-0005MU-5v
 for linux-nvme@lists.infradead.org; Sun, 18 Aug 2019 09:09:11 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 18 Aug 2019 12:08:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7I98ved013804;
 Sun, 18 Aug 2019 12:08:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 2/5] nvme-rdma: Add TOS for rdma transport
Date: Sun, 18 Aug 2019 12:08:52 +0300
Message-Id: <1566119335-15058-4-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
References: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_020910_524763_39DCBE20 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For RDMA transports, TOS is an extension of IB QoS to provide clients
the ability to segregate traffic flows for different type of data.
RDMA CM abstract it for ULPs using rdma_set_service_type().
Internally, each traffic flow is represented by a connection with all of
its independent resources like that of a normal connection, and is
differentiated by service type. In other words, there can be multiple qp
connections between an IP pair and each supports a unique service type.

One of the TOS usage is bandwidth management which allows setting bandwidth
limits for QoS classes, e.g. 80% bandwidth to controllers at QoS class A
and 20% to controllers at QoS class B.

Note: In addition to the TOS configuration, QOS must be configured on the
relevant HCA on the target (send RDMA commands) and initiator to effect
the traffic.

usage examples:
nvme connect --tos=0 --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/rdma.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index c029ef1..017e48a 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1536,16 +1536,18 @@ static int nvme_rdma_conn_rejected(struct nvme_rdma_queue *queue,
 
 static int nvme_rdma_addr_resolved(struct nvme_rdma_queue *queue)
 {
+	struct nvme_ctrl *ctrl = &queue->ctrl->ctrl;
 	int ret;
 
 	ret = nvme_rdma_create_queue_ib(queue);
 	if (ret)
 		return ret;
 
+	if (ctrl->opts->tos >= 0)
+		rdma_set_service_type(queue->cm_id, ctrl->opts->tos);
 	ret = rdma_resolve_route(queue->cm_id, NVME_RDMA_CONNECT_TIMEOUT_MS);
 	if (ret) {
-		dev_err(queue->ctrl->ctrl.device,
-			"rdma_resolve_route failed (%d).\n",
+		dev_err(ctrl->device, "rdma_resolve_route failed (%d).\n",
 			queue->cm_error);
 		goto out_destroy_queue;
 	}
@@ -2040,7 +2042,8 @@ static struct nvme_ctrl *nvme_rdma_create_ctrl(struct device *dev,
 	.required_opts	= NVMF_OPT_TRADDR,
 	.allowed_opts	= NVMF_OPT_TRSVCID | NVMF_OPT_RECONNECT_DELAY |
 			  NVMF_OPT_HOST_TRADDR | NVMF_OPT_CTRL_LOSS_TMO |
-			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_NR_POLL_QUEUES,
+			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_NR_POLL_QUEUES |
+			  NVMF_OPT_TOS,
 	.create_ctrl	= nvme_rdma_create_ctrl,
 };
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
