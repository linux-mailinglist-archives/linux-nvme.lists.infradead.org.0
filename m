Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8E116AC12
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 17:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXvO+w2OaCcMBFNGeCTmD3k3i/xnM5qrkTSQrWhsilQ=; b=bYTpdsqPafAnWs
	Q9zawVuQA8ts+lU8wXKo4Ri4kgZp4yKTdbKJr8tAa/mOpo0xxewhxd/N/hKbPiAQjTDszj6QVxPhV
	pXRXhvpIFwEiDPbmazfseffqD59VmQaAZSZP4NamHseMSvu2ZO082I6D/sn4SAs0b9ISeOwH+1/Y9
	pc9qtiSwqXB7yEveD0I0LuYAzbVmq09yBKbvfIY/kYoLPgaLwssprysqDoaY3vlX6I1A7J8AftbJd
	IQtaGKxJtjd6meMztdEmwEezsCLwcaYXBl9GE8OJscyCx4Ky3xzQM3x3zFESE7iswUOvPTHcVjVKB
	afzL6vVrIr6egj7qQAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Gtl-0002uX-H2; Mon, 24 Feb 2020 16:48:01 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Grj-0001EG-4U
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 16:46:01 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Feb 2020 18:45:47 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 01OGji9e013647;
 Mon, 24 Feb 2020 18:45:47 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me,
 linux-rdma@vger.kernel.org, kbusch@kernel.org, hch@lst.de,
 martin.petersen@oracle.com
Subject: [PATCH 18/19] nvmet-rdma: Implement set_mdts controller op
Date: Mon, 24 Feb 2020 18:45:43 +0200
Message-Id: <20200224164544.219438-20-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200224164544.219438-1-maxg@mellanox.com>
References: <20200224164544.219438-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_084555_597852_E37830D2 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Set the maximal data transfer size according to device capabilities.
For example, for T10-DIF offload by supporting RDMA HCA, one uses
RDMA/rw API that limits the IO operation to use a single MR with 256
pages at the most. Limit the mdts according to RDMA/rw API and even
decrease it in order to avoid multiple splits by the local block layer
for large IOs to ease on the CPU on the target side.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 37d262a..2227adf 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -30,6 +30,7 @@
 #define NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE	PAGE_SIZE
 #define NVMET_RDMA_MAX_INLINE_SGE		4
 #define NVMET_RDMA_MAX_INLINE_DATA_SIZE		max_t(int, SZ_16K, PAGE_SIZE)
+#define NVMET_RDMA_T10_PI_MDTS			5
 
 struct nvmet_rdma_cmd {
 	struct ib_sge		sge[NVMET_RDMA_MAX_INLINE_SGE + 1];
@@ -1602,6 +1603,21 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
 	}
 }
 
+static u8 nvmet_rdma_set_mdts(struct nvmet_ctrl *ctrl)
+{
+	struct nvmet_port *port = ctrl->port;
+	struct rdma_cm_id *cm_id = port->priv;
+	u32 max_pages;
+
+	if (ctrl->pi_support) {
+		max_pages = rdma_rw_fr_page_list_len(cm_id->device, true);
+		/* Assume mpsmin == device_page_size == 4KB */
+		return min(ilog2(max_pages), NVMET_RDMA_T10_PI_MDTS);
+	}
+
+	return 0;
+}
+
 static const struct nvmet_fabrics_ops nvmet_rdma_ops = {
 	.owner			= THIS_MODULE,
 	.type			= NVMF_TRTYPE_RDMA,
@@ -1612,6 +1628,7 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
 	.queue_response		= nvmet_rdma_queue_response,
 	.delete_ctrl		= nvmet_rdma_delete_ctrl,
 	.disc_traddr		= nvmet_rdma_disc_port_addr,
+	.set_mdts		= nvmet_rdma_set_mdts,
 };
 
 static void nvmet_rdma_remove_one(struct ib_device *ib_device, void *client_data)
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
