Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 039FE1793C1
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 16:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eo4pOPXOc8S7gg91puKBBIFVSGwttYKu+Si+xKPLLZQ=; b=peHDD4ld7qhxeE
	vZBd63Qv7Ceh7ppKesgQcvfbpEIbUxbrg5nKf6seexBHTRpj9G0r8iCDdkzSIm8ufEG3aK90bf5/k
	p38/ae4WVvbwa2bg1xKTvR4FSnZbHLX6xvIDZQ+yYvK53Z7aPz19HZcwhj4LsDLf2Sxnn0n1KAR//
	tOBQs//T/jRiFyhFuNiXC44velXReVXIUpkW/dT09XuUuciKQTn3t345/N1MuNVe7NXHVIJfA+L8T
	XR2jEEpnnSv4scpVSCOT8RyDEDjZOdY/EHps7V8A4HDblmrGZV1WdHR3eGlftWDsFxX49hC+pV2Yw
	ldh0rWDJ1LThmrb4a/ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9W7y-0004uc-6a; Wed, 04 Mar 2020 15:40:06 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9W7e-0004rH-9J
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 15:39:48 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 Mar 2020 17:39:35 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 024FdZrJ032385;
 Wed, 4 Mar 2020 17:39:35 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: jgg@mellanox.com, linux-nvme@lists.infradead.org, sagi@grimberg.me,
 hch@lst.de, kbusch@kernel.org, Chaitanya.Kulkarni@wdc.com
Subject: [PATCH 2/3] nvmet-rdma: Implement set_mdts controller op
Date: Wed,  4 Mar 2020 17:39:34 +0200
Message-Id: <20200304153935.101063-2-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200304153935.101063-1-maxg@mellanox.com>
References: <20200304153935.101063-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_073946_746160_2B0A4FBC 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: krishna2@chelsio.com, Max Gurtovoy <maxg@mellanox.com>, bharat@chelsio.com,
 nirranjan@chelsio.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Set the maximal data transfer size to be 1MB (currently mdts is
unlimited). This will allow calculating the amount of MR's that
one ctrl should allocate to fulfill it's capabilities.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 37d262a..5ba76d2 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -30,6 +30,7 @@
 #define NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE	PAGE_SIZE
 #define NVMET_RDMA_MAX_INLINE_SGE		4
 #define NVMET_RDMA_MAX_INLINE_DATA_SIZE		max_t(int, SZ_16K, PAGE_SIZE)
+#define NVMET_RDMA_MAX_MDTS			8
 
 struct nvmet_rdma_cmd {
 	struct ib_sge		sge[NVMET_RDMA_MAX_INLINE_SGE + 1];
@@ -1602,6 +1603,12 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
 	}
 }
 
+static u8 nvmet_rdma_set_mdts(struct nvmet_ctrl *ctrl)
+{
+	/* Assume mpsmin == device_page_size == 4KB */
+	return NVMET_RDMA_MAX_MDTS;
+}
+
 static const struct nvmet_fabrics_ops nvmet_rdma_ops = {
 	.owner			= THIS_MODULE,
 	.type			= NVMF_TRTYPE_RDMA,
@@ -1612,6 +1619,7 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
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
