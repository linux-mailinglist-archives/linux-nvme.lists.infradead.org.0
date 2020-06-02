Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1C81EBCE2
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 15:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtO6lGdiK1sN6N12YA+5G+CuvmwjJLs8b7YDsnEnyP0=; b=YwIDkWpSneWBET
	kphRm13bl+jnaUh10z4QCbXgo2JftI37A6getl05Arkk+EOnR4sU92hLRupr1gn4mbFIqDnNM+wHY
	GRPZ+mEqHrIZkePxgpG6gfIMvx8njvmkK8B1qhTDZ/LAErVLszAQiHEKCFeGFkkYbAI2AdiYHZnSy
	y7jmUVJf6j78jFDOfkAe33RSAdmym+as2lyv2gOAJnzHtcqUPyKq6hK/yB1BO3GmyyvSmCj0n4Duj
	Wz9JfJf8Miu8KVO9JBVFxc4OpNjmlIynQJ0xgqfwmVlkhq+wcd+SfTraBUaTgAo2ITDlR5YR+NxcI
	eZGcG7C+4PimIRJ0mDJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6mj-0003uW-Bo; Tue, 02 Jun 2020 13:16:53 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6ll-0003AL-GP
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 13:15:57 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Jun 2020 16:15:47 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 052DFkVl031311;
 Tue, 2 Jun 2020 16:15:47 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, james.smart@broadcom.com, chaitanya.kulkarni@wdc.com
Subject: [PATCH 5/5] nvmet: introduce flags member in nvmet_fabrics_ops
Date: Tue,  2 Jun 2020 16:15:46 +0300
Message-Id: <20200602131546.51903-6-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200602131546.51903-1-maxg@mellanox.com>
References: <20200602131546.51903-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_061553_953851_224EE564 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Replace has_keyed_sgls and metadata_support booleans with a flags member
that will be used for adding more features in the future.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/target/admin-cmd.c | 2 +-
 drivers/nvme/target/core.c      | 2 +-
 drivers/nvme/target/discovery.c | 2 +-
 drivers/nvme/target/nvmet.h     | 5 +++--
 drivers/nvme/target/rdma.c      | 3 +--
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 1db8c04..95bb3bc 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -427,7 +427,7 @@ static void nvmet_execute_identify_ctrl(struct nvmet_req *req)
 	id->awupf = 0;
 
 	id->sgls = cpu_to_le32(1 << 0);	/* we always support SGLs */
-	if (ctrl->ops->has_keyed_sgls)
+	if (ctrl->ops->flags & NVMF_KEYED_SGLS)
 		id->sgls |= cpu_to_le32(1 << 2);
 	if (req->port->inline_data_size)
 		id->sgls |= cpu_to_le32(1 << 20);
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 6392bcd..86882d4 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -322,7 +322,7 @@ int nvmet_enable_port(struct nvmet_port *port)
 	 * If the user requested PI support and the transport isn't pi capable,
 	 * don't enable the port.
 	 */
-	if (port->pi_enable && !ops->metadata_support) {
+	if (port->pi_enable && !(ops->flags & NVMF_METADATA_SUPPORTED)) {
 		pr_err("T10-PI is not supported by transport type %d\n",
 		       port->disc_addr.trtype);
 		ret = -EINVAL;
diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 40cf0b6..f40c05c 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -277,7 +277,7 @@ static void nvmet_execute_disc_identify(struct nvmet_req *req)
 	id->maxcmd = cpu_to_le16(NVMET_MAX_CMD);
 
 	id->sgls = cpu_to_le32(1 << 0);	/* we always support SGLs */
-	if (ctrl->ops->has_keyed_sgls)
+	if (ctrl->ops->flags & NVMF_KEYED_SGLS)
 		id->sgls |= cpu_to_le32(1 << 2);
 	if (req->port->inline_data_size)
 		id->sgls |= cpu_to_le32(1 << 20);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index ce57d5f..daf3838 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -287,8 +287,9 @@ struct nvmet_fabrics_ops {
 	struct module *owner;
 	unsigned int type;
 	unsigned int msdbd;
-	bool has_keyed_sgls : 1;
-	bool metadata_support : 1;
+	unsigned int flags;
+#define NVMF_KEYED_SGLS			(1 << 0)
+#define NVMF_METADATA_SUPPORTED		(1 << 1)
 	void (*queue_response)(struct nvmet_req *req);
 	int (*add_port)(struct nvmet_port *port);
 	void (*remove_port)(struct nvmet_port *port);
diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index d514178..4c89f58 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -1968,8 +1968,7 @@ static u8 nvmet_rdma_get_mdts(const struct nvmet_ctrl *ctrl)
 	.owner			= THIS_MODULE,
 	.type			= NVMF_TRTYPE_RDMA,
 	.msdbd			= 1,
-	.has_keyed_sgls		= 1,
-	.metadata_support	= 1,
+	.flags			= NVMF_KEYED_SGLS | NVMF_METADATA_SUPPORTED,
 	.add_port		= nvmet_rdma_add_port,
 	.remove_port		= nvmet_rdma_remove_port,
 	.queue_response		= nvmet_rdma_queue_response,
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
