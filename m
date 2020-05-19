Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2121D990D
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 16:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMV/u3A6VBSs3Aojv7FPZ6tP6JAjJ/MlK8noUtVUQvM=; b=YIkEENQBZg3Ynt
	A7Vi4/SCZfueLCGaVjkm/EO9/PS/cz68Ll6kp6nTdTxsQb4MDxX9uaoBTHc6udlHi/hO2dRpZsbs1
	IQ468lQLeCWr7VGtcUiiu45JPD9B6BLmH2N/olN8mWtM1eAy7PLsO/gVq9IZWgX8ebiZl9Io/SQAS
	OY5zjCyRRpoD+kYY6219zY9L3nHawE4HeNs5tieAPGLmCuWzV58pPJ1Lt8eIqkZ0JRd4eDSqbfkaG
	ER6DSceriSjumo6CAFz+L7QjSM212EeVDnbAofLtxT5Ncqe36VeIcyGMUvesKSCuuhv0IrOkXAMPR
	b5bJUC9tRWd+ZFiGjhDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2wj-0004ZT-DD; Tue, 19 May 2020 14:10:17 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2tA-0001jv-Qs
 for linux-nvme@bombadil.infradead.org; Tue, 19 May 2020 14:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=s6zEL6JqfARMoJAYAl041bvb5omRBrKuMsV5+sjD6RY=; b=kmZkAV1+id0QMDldvfDNfl5W/0
 RQj39WiTWLcToI4sBq59mAdNhKrHfd+GsU6w/Q2HuygQdBM/AcfGrizYeEOsoaywClKoR35TrTms/
 Jf1k5QOJsYid+NCiqOGOTYbFuYjULWCtvNa2GBSwuin2pw2an6Meq8ry8MsXLUkfV1RR0DHHKWefm
 p5ch0Dl1HYa3spvQE+IH9mwzadXRHVkopiEUEOfRSafSN+8eRTs++FNYsUdpdHR8dWeIYtymm5CL7
 xSpBLmeCQUtVDKx9VH77Zh4d3NjXOLaUNptKfCh+FXWM1XrowDkk1ODvB/9uIzg9jo1+2pmwlYWzB
 qB9i5tJA==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2t2-0000vE-46
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 14:06:36 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 19 May 2020 17:06:04 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 04JE63xs006590;
 Tue, 19 May 2020 17:06:04 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, martin.petersen@oracle.com, jsmart2021@gmail.com,
 axboe@kernel.dk
Subject: [PATCH 11/16] nvmet: rename nvmet_rw_len to nvmet_rw_data_len
Date: Tue, 19 May 2020 17:05:58 +0300
Message-Id: <20200519140603.166576-12-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200519140603.166576-1-maxg@mellanox.com>
References: <20200519140603.166576-1-maxg@mellanox.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 James Smart <james.smart@broadcom.com>, idanb@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

The function doesn't add the metadata length (only data length is
calculated). This is preparation for adding metadata (T10-PI) support.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
---
 drivers/nvme/target/io-cmd-bdev.c | 2 +-
 drivers/nvme/target/io-cmd-file.c | 2 +-
 drivers/nvme/target/nvmet.h       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 45dc644..1ebee62 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -178,7 +178,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	sector_t sector;
 	int op, i;
 
-	if (!nvmet_check_data_len(req, nvmet_rw_len(req)))
+	if (!nvmet_check_data_len(req, nvmet_rw_data_len(req)))
 		return;
 
 	if (!req->sg_cnt) {
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index f0bd08d..b31717c 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -241,7 +241,7 @@ static void nvmet_file_execute_rw(struct nvmet_req *req)
 {
 	ssize_t nr_bvec = req->sg_cnt;
 
-	if (!nvmet_check_data_len(req, nvmet_rw_len(req)))
+	if (!nvmet_check_data_len(req, nvmet_rw_data_len(req)))
 		return;
 
 	if (!req->sg_cnt || !nr_bvec) {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index b9fb57b..0ce9404 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -504,7 +504,7 @@ void nvmet_add_async_event(struct nvmet_ctrl *ctrl, u8 event_type,
 void nvmet_bdev_ns_revalidate(struct nvmet_ns *ns);
 int nvmet_file_ns_revalidate(struct nvmet_ns *ns);
 
-static inline u32 nvmet_rw_len(struct nvmet_req *req)
+static inline u32 nvmet_rw_data_len(struct nvmet_req *req)
 {
 	return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) <<
 			req->ns->blksize_shift;
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
