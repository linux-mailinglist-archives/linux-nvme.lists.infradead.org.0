Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D558F027F
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 17:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zt9H0G73qWPWKHsyNl/kygoZofn8hAE1B8uxKqSumM=; b=f9tGua8YObeIFl
	SJvVJJOMoIRQfHK1qaohFMLhw0Sqie/Lm8sDFErKROgX2nwlrTqVFLaorNChapLwzTqiRI7IGboWO
	khtaruvJAV9CyJ352Tt/25SV7g43G2PmAFXyOGdK8AVulri9Rz26dgr7Tqnh7+G72DCHnqMLzXQrh
	yLhT5u7JeXTKkHq0GBAuMsGRj3dmmyaiF55okIhrYtLyRN+BIyTII+bORONlZzMoDrFzVSzNpyrEJ
	R31IdBQ+DP3+XJrf2UuXOsQ5eSWNrSZTKmT2hp1JPWMdslEE0Bm7ANPGiwgFkU4fbDXkMLzu5NUei
	oVKPsbowvHkWXex6OTmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1a2-000410-EY; Tue, 05 Nov 2019 16:21:18 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1ZO-0003S6-SC
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 16:20:43 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Nov 2019 18:20:28 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xA5GKQm8013132;
 Tue, 5 Nov 2019 18:20:28 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 11/15] nvmet: Introduce nvmet_rw_prot_len and nvmet_ns_has_pi
Date: Tue,  5 Nov 2019 18:20:22 +0200
Message-Id: <20191105162026.183901-13-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191105162026.183901-1-maxg@mellanox.com>
References: <20191105162026.183901-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_082039_349052_9C2E3369 
X-CRM114-Status: UNSURE (   7.08  )
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

This is preparation for adding metadata (T10-PI) over fabric support.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/nvmet.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 39d5300..574ee55 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -501,6 +501,16 @@ static inline u32 nvmet_rw_data_len(struct nvmet_req *req)
 			req->ns->blksize_shift;
 }
 
+static inline u32 nvmet_rw_prot_len(struct nvmet_req *req)
+{
+	return ((u32)le16_to_cpu(req->cmd->rw.length) + 1) * req->ns->ms;
+}
+
+static inline bool nvmet_ns_has_pi(struct nvmet_ns *ns)
+{
+	return ns->prot_type && ns->ms == sizeof(struct t10_pi_tuple);
+}
+
 static inline u32 nvmet_dsm_len(struct nvmet_req *req)
 {
 	return (le32_to_cpu(req->cmd->dsm.nr) + 1) *
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
