Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D235B19298D
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 14:24:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypJiHKTCOzx84HhF9uDio6UQvQTsZcGKlqNsHOU/yyo=; b=h9s844r9y1u0Np
	waoXcSSFNFME2HJ1+2M3UNU590kNJbBKlQItuu0T46PkSwVBXTz40ykT3kBCxMitizIEDwAQFdnWf
	Rfk6/JUJv0Tlc5p5hV+UPO6bJ7Rf9cEG2c5+ZGC7X2ImHatBgb0jWuqZF5aObzueEDh2fO9xd4TqU
	famND/A7/f45sF/WjOECte1BY20rHZMkIdOekMdSP+7R8UnkzE4vffMj1BiIsVjNmFjc3tUYz2j0N
	8Br88lC79vGGOiAPJI2BOny1WGb2EsQGBvgL77fQ+TJm7criENm5QF+10JbBpmBef6QCffcJfUzc1
	1rW0igrusbzcdCuCc2yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH60t-00032q-Tg; Wed, 25 Mar 2020 13:24:07 +0000
Received: from 213-225-10-87.nat.highway.a1.net ([213.225.10.87]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH60o-00032g-Qd; Wed, 25 Mar 2020 13:24:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 1/3] nvme: refactor nvme_identify_ns_descs error handling
Date: Wed, 25 Mar 2020 14:19:35 +0100
Message-Id: <20200325131937.1198787-2-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200325131937.1198787-1-hch@lst.de>
References: <20200325131937.1198787-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Move the handling of an error into the function from the caller, and
only do it for an actual error on the admin command itself, not the
command parsing, as that should be enough to deal with devices claiming
a bogus version compliance.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 9961d0ec2b91..29716cca3768 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1102,8 +1102,17 @@ static int nvme_identify_ns_descs(struct nvme_ctrl *ctrl, unsigned nsid,
 
 	status = nvme_submit_sync_cmd(ctrl->admin_q, &c, data,
 				      NVME_IDENTIFY_DATA_SIZE);
-	if (status)
+	if (status) {
+		dev_warn(ctrl->device,
+			"Identify Descriptors failed (%d)\n", status);
+		 /*
+		  * Don't treat an error as fatal, as we potentially already
+		  * have a NGUID or EUI-64.
+		  */
+		if (status > 0)
+			status = 0;
 		goto free_data;
+	}
 
 	for (pos = 0; pos < NVME_IDENTIFY_DATA_SIZE; pos += len) {
 		struct nvme_ns_id_desc *cur = data + pos;
@@ -1757,26 +1766,15 @@ static void nvme_config_write_zeroes(struct gendisk *disk, struct nvme_ns *ns)
 static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
 		struct nvme_id_ns *id, struct nvme_ns_ids *ids)
 {
-	int ret = 0;
-
 	memset(ids, 0, sizeof(*ids));
 
 	if (ctrl->vs >= NVME_VS(1, 1, 0))
 		memcpy(ids->eui64, id->eui64, sizeof(id->eui64));
 	if (ctrl->vs >= NVME_VS(1, 2, 0))
 		memcpy(ids->nguid, id->nguid, sizeof(id->nguid));
-	if (ctrl->vs >= NVME_VS(1, 3, 0)) {
-		 /* Don't treat error as fatal we potentially
-		  * already have a NGUID or EUI-64
-		  */
-		ret = nvme_identify_ns_descs(ctrl, nsid, ids);
-		if (ret)
-			dev_warn(ctrl->device,
-				 "Identify Descriptors failed (%d)\n", ret);
-		if (ret > 0)
-			ret = 0;
-	}
-	return ret;
+	if (ctrl->vs >= NVME_VS(1, 3, 0))
+		return nvme_identify_ns_descs(ctrl, nsid, ids);
+	return 0;
 }
 
 static bool nvme_ns_ids_valid(struct nvme_ns_ids *ids)
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
