Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD8D4C3E2
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 01:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7S1ASFfzy8uwdFkmYLjTpnfTLO2q5/4JCPdLt4yJRCo=; b=lJL
	Wp/JE6PkGoSPx3XdP7KHnmh0CDzT5zmFH/QCuVXdfJK/HFFLeh/Uo3PXrdhPIdvn4EEaeUhjU/3Xs
	KonVRlNfOsh1NV0cQdHkLKzb4Vl0MJhGKIV01rdOnROFtzuSsLjVyL5Zyw5s5ryuhdMSjoiMDl/Nm
	9aTKt3Cgk67CPXcFNDHI7H6XKfgoQrKbyhI/CndEkrKf36QLapsB9vYxuElRx1aINc/Z84Zdhf3lI
	ThOo3C1r453Bvi+6Txjk555He6a+W5vNCBOjte/DJy6e41tEOLiQSVZ7hmN2T9I8W2DL5POC5kSdS
	aGkrFXKmxryCEP0da1XhskhHR4mRxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjYy-0006E5-CF; Wed, 19 Jun 2019 23:00:20 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjYs-0006Dx-CS; Wed, 19 Jun 2019 23:00:14 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet-rdma: move port tsas initialization to rdma code
Date: Wed, 19 Jun 2019 16:00:06 -0700
Message-Id: <20190619230006.15715-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Also, look at the device transport capability to send
the correct trtype (ib/roce/rocev2/iwarp). Note that if
we are listening on addr_any we still return "not specified"
trtype and the same goes for referrals.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/configfs.c |  9 ---------
 drivers/nvme/target/rdma.c     | 25 +++++++++++++++++++++++++
 include/linux/nvme-rdma.h      | 17 +++++++++++++++++
 3 files changed, 42 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 08dd5af357f7..ea8ed83aa1db 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -263,13 +263,6 @@ static ssize_t nvmet_addr_trtype_show(struct config_item *item,
 	return sprintf(page, "\n");
 }
 
-static void nvmet_port_init_tsas_rdma(struct nvmet_port *port)
-{
-	port->disc_addr.tsas.rdma.qptype = NVMF_RDMA_QPTYPE_CONNECTED;
-	port->disc_addr.tsas.rdma.prtype = NVMF_RDMA_PRTYPE_NOT_SPECIFIED;
-	port->disc_addr.tsas.rdma.cms = NVMF_RDMA_CMS_RDMA_CM;
-}
-
 static ssize_t nvmet_addr_trtype_store(struct config_item *item,
 		const char *page, size_t count)
 {
@@ -292,8 +285,6 @@ static ssize_t nvmet_addr_trtype_store(struct config_item *item,
 found:
 	memset(&port->disc_addr.tsas, 0, NVMF_TSAS_SIZE);
 	port->disc_addr.trtype = nvmet_transport_names[i].type;
-	if (port->disc_addr.trtype == NVMF_TRTYPE_RDMA)
-		nvmet_port_init_tsas_rdma(port);
 	return count;
 }
 
diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 36d906a7f70d..8beb51731914 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -1499,6 +1499,29 @@ static void nvmet_rdma_delete_ctrl(struct nvmet_ctrl *ctrl)
 	mutex_unlock(&nvmet_rdma_queue_mutex);
 }
 
+void nvme_rdma_init_tsas(struct nvmet_port *port, struct rdma_cm_id *id)
+{
+	port->disc_addr.tsas.rdma.qptype = NVME_RDMA_QPTYPE_RC;
+	port->disc_addr.tsas.rdma.cms = NVME_RDMA_CMS_RDMA_CM;
+	if (!id->device) {
+		port->disc_addr.tsas.rdma.prtype =
+			NVME_RDMA_PRTYPE_NOT_SPECIFIED;
+	} else if (rdma_cap_iw_cm(id->device, 1)) {
+		port->disc_addr.tsas.rdma.prtype =
+			NVME_RDMA_PRTYPE_IWARP;
+	} else {
+		if(rdma_protocol_roce_udp_encap(id->device, 1))
+			port->disc_addr.tsas.rdma.prtype =
+				NVME_RDMA_PRTYPE_ROCEv2;
+		else if (rdma_protocol_ib(id->device, 1))
+			port->disc_addr.tsas.rdma.prtype =
+				NVME_RDMA_PRTYPE_IB;
+		else
+			port->disc_addr.tsas.rdma.prtype =
+				NVME_RDMA_PRTYPE_ROCE;
+	}
+}
+
 static int nvmet_rdma_add_port(struct nvmet_port *port)
 {
 	struct rdma_cm_id *cm_id;
@@ -1567,6 +1590,8 @@ static int nvmet_rdma_add_port(struct nvmet_port *port)
 		goto out_destroy_id;
 	}
 
+	nvme_rdma_init_tsas(port, cm_id);
+
 	pr_info("enabling port %d (%pISpcs)\n",
 		le16_to_cpu(port->disc_addr.portid), (struct sockaddr *)&addr);
 	port->priv = cm_id;
diff --git a/include/linux/nvme-rdma.h b/include/linux/nvme-rdma.h
index 3ec8e50efa16..27a6fc242bcd 100644
--- a/include/linux/nvme-rdma.h
+++ b/include/linux/nvme-rdma.h
@@ -21,6 +21,23 @@ enum nvme_rdma_cm_status {
 	NVME_RDMA_CM_INVALID_ORD	= 0x08,
 };
 
+enum nvme_rdma_qptype {
+	NVME_RDMA_QPTYPE_RC		= 0x1,
+	NVME_RDMA_QPTYPE_RD		= 0x2,
+};
+
+enum nvme_rdma_prtype {
+	NVME_RDMA_PRTYPE_NOT_SPECIFIED	= 0x1,
+	NVME_RDMA_PRTYPE_IB		= 0x2,
+	NVME_RDMA_PRTYPE_ROCE		= 0x3,
+	NVME_RDMA_PRTYPE_ROCEv2		= 0x4,
+	NVME_RDMA_PRTYPE_IWARP		= 0x5,
+};
+
+enum nvme_rdma_cms {
+	NVME_RDMA_CMS_RDMA_CM		= 0x1,
+};
+
 static inline const char *nvme_rdma_cm_msg(enum nvme_rdma_cm_status status)
 {
 	switch (status) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
