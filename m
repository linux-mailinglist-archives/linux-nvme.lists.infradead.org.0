Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4133D56E8
	for <lists+linux-nvme@lfdr.de>; Sun, 13 Oct 2019 18:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wjwVaXt7kPGej4EmCNk1sUANrXWnntmPPJzVMuw22Hk=; b=qumR7R3HtUxsU3sPSLYvzjF2zw
	UPDDLGrMVGtqvcVnCJfbBMvJN0YWKkAIgLQz2c1k9lQOjMXeVThfXly3lAQnnAXeluS2yrL6KDKth
	v3j2y/4gt+j+JQn0OYyfgQRWCJLqx2T1JZkvtstEbVzWR8tfl8CPSKpNyWfsHMnmc3xlxIuYIrZSB
	HUOJ4F0zoHGS+V7Ozj0HkQInuac792cH6KyyykjJBKpuqRUW1IL/i+PuKC6q1gs3TYwf8nd57RF2P
	vBQTCJ3yxogQ0dktTj7K1qyxTdrbF6SrG1xULNgQglaCMtGOKtosOwdZBcJGA7UA6pB/KYmeMGgsN
	YYv9z1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJhCL-000502-Ke; Sun, 13 Oct 2019 16:58:25 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJhBo-0004u2-SL
 for linux-nvme@lists.infradead.org; Sun, 13 Oct 2019 16:57:56 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Oct 2019 18:57:40 +0200
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x9DGvdoQ005965;
 Sun, 13 Oct 2019 19:57:40 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 sagi@grimberg.me
Subject: [PATCH 5/8] nvme: introduce "Command Aborted By host" status code
Date: Sun, 13 Oct 2019 19:57:35 +0300
Message-Id: <1570985858-26805-6-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
References: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_095753_310256_EF644DEA 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com,
 james.smart@broadcom.com, shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix the status code of canceled requests initiated by the host according
to TP4028 (Status Code 0x371):
"Command Aborted By host: The command was aborted as a result of host
action (e.g., the host disconnected the Fabric connection)."

Also in a multipath environment, unless otherwise specified, errors of
this type (path related) should be retried using a different path, if
one is available.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c      | 2 +-
 drivers/nvme/host/multipath.c | 1 +
 include/linux/nvme.h          | 1 +
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ef1d8f8..2203309 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -298,7 +298,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 	if (blk_mq_request_completed(req))
 		return true;
 
-	nvme_req(req)->status = NVME_SC_HOST_PATH_ERROR;
+	nvme_req(req)->status = NVME_SC_HOST_ABORTED_CMD;
 	blk_mq_complete_request(req);
 	return true;
 }
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 30de7ef..103c04f 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -95,6 +95,7 @@ void nvme_failover_req(struct request *req)
 		}
 		break;
 	case NVME_SC_HOST_PATH_ERROR:
+	case NVME_SC_HOST_ABORTED_CMD:
 		/*
 		 * Temporary transport disruption in talking to the controller.
 		 * Try to send on a new path.
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index f61d690..a260cd7 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -1368,6 +1368,7 @@ enum {
 	NVME_SC_ANA_INACCESSIBLE	= 0x302,
 	NVME_SC_ANA_TRANSITION		= 0x303,
 	NVME_SC_HOST_PATH_ERROR		= 0x370,
+	NVME_SC_HOST_ABORTED_CMD	= 0x371,
 
 	NVME_SC_CRD			= 0x1800,
 	NVME_SC_DNR			= 0x4000,
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
