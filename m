Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C71719F5AD
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 14:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuTKp80fEqsUewO6RdgBgodZv/u6CGP0KTSEeLu/IwM=; b=skI9wR7jnfhi2t
	6R0MB3VLBKDroYlunojEoajRsDZMT2HQzSZuBlVaC3omuIblbXXNAMV9ZoaHQpm0RFZVxhaTnyEbU
	VI3ymtISL3lxB2suMt9QX4CRDof53B3jEWtv9aGdM7PVX5L2dwEAgDDkiE5Tphr9UUVn6bos59dZv
	kTzR2cXfcBFvlFV+MV1yecnE+dqCmB0Rkuh9XuNtmMCt/mjjfge548jCo8Z+BbRYtDl6YBpFfDMBJ
	Xq+HrJfTp27+W0xD+Z+/15ovwLu94JOERP5K0RtkP5IAVwvhlupsRLLQBSzVIe+tFjTKjzuykSpSG
	BmTaFDQUwiWZp4jS7ugg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQel-00053s-6p; Mon, 06 Apr 2020 12:15:11 +0000
Received: from [2001:4bb8:180:5765:7ca0:239a:fe26:fec2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQdj-0004Ge-7h; Mon, 06 Apr 2020 12:14:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 5/5] nvme: remove the magic 1024 constant in nvme_scan_ns_list
Date: Mon,  6 Apr 2020 14:13:52 +0200
Message-Id: <20200406121352.1151026-6-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200406121352.1151026-1-hch@lst.de>
References: <20200406121352.1151026-1-hch@lst.de>
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

Replace it with a value derived from the identify data and nsid sizes.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d11c462af0f3..5de3b993525b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3740,6 +3740,7 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 
 static int nvme_scan_ns_list(struct nvme_ctrl *ctrl)
 {
+	const int nr_entries = NVME_IDENTIFY_DATA_SIZE / sizeof(__le32);
 	__le32 *ns_list;
 	u32 prev = 0;
 	int ret = 0, i;
@@ -3756,7 +3757,7 @@ static int nvme_scan_ns_list(struct nvme_ctrl *ctrl)
 		if (ret)
 			goto free;
 
-		for (i = 0; i < 1024; i++) {
+		for (i = 0; i < nr_entries; i++) {
 			u32 nsid = le32_to_cpu(ns_list[i]);
 
 			if (!nsid)	/* end of the list? */
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
