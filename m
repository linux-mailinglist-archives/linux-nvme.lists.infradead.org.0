Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB095A11
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 10:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wVRr9l+8jy3LVjYya4XBOY/ptYoB52KMlD+iSLvdVi0=; b=mHxQdGI5fFozi/
	/NyyrZa5GiIvfUnr8EhykLHRdx43xUnZvpRuLFHZ0EGL+++FOtn0GIZqqTBADfnHYIFs+btlPDiRA
	ZNWLAGRuD0tIfAfg8x33zwGdiwjt/FeJopbdurHUogUoco4dGO1SYeazFD6v2AcCCWNofH2v8yzrC
	P55OJjA75AauriLuhgPOtChLYAGfK5HXKirOfBO1t0Oq+4odG681a5fKIPoqGfP9yVqhGtbirXRgc
	PsKurmBxQsN7p+DTqkO0elX3EkQXpTS1a8UpwrHoIwdOadjaOZZE8R3BWzXThF/wbyMoWUT5EyZqw
	lgEJZ3HRqoWEwToPhydw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzka-00062D-OW; Tue, 20 Aug 2019 08:44:20 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzkS-00061b-Ep
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 08:44:13 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 72EC1A80070;
 Tue, 20 Aug 2019 08:44:09 +0000 (UTC)
Received: from linux-m89u (213.152.162.84) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Tue, 20 Aug
 2019 09:44:03 +0100
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH v3] nvme: exclude completion trace from non-multipath builds
Date: Tue, 20 Aug 2019 09:35:10 +0200
Message-ID: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [213.152.162.84]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24858.003
X-TM-AS-Result: No-6.611700-8.000000-10
X-TMASE-MatchedRID: qhv5zHNMUVmS0tPiucGxC/KUR83BvqItEhHgAtjqBcljLp8Cm8vwF3Io
 zGa69omdrdoLblq9S5oTqqN9z4iBnofGISHW1Bqp3uJKJF9BC8Hbjtx2Oq4Xg1VkJxysad/ISA5
 hfW+G+Azd4tXT7p0yAShOvWnzeKB/hfUatHkEWNS3D7EeeyZCM5iiE4pQC7td33Nl3elSfsoiqM
 u8wsqbAd2STT4g27X0lrXh0AlmsAOjxYyRBa/qJcFwgTvxipFa9xS3mVzWUuCgZHIBpyeFpp2eL
 5AKot71MwwRTcRE5Ht2YQgsBv8JF9rtZS194KurftwZ3X11IV0=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.611700-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24858.003
X-MDID: 1566290650-MXQpo-ewBBcq
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_014412_550250_6EEC11C9 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This trace point have no meaning without native multipath support and
break compilation on configurations without enabled multipath.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
---
 drivers/nvme/host/core.c | 12 ++++--------
 drivers/nvme/host/nvme.h | 14 ++++++++++++++
 2 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 90cfacc44209..40021cfd715a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -22,14 +22,12 @@
 #include <linux/pm_qos.h>
 #include <asm/unaligned.h>
 
-#include <trace/events/block.h>
+#include "nvme.h"
+#include "fabrics.h"
 
 #define CREATE_TRACE_POINTS
 #include "trace.h"
 
-#include "nvme.h"
-#include "fabrics.h"
-
 #define NVME_MINORS		(1U << MINORBITS)
 
 unsigned int admin_timeout = 60;
@@ -263,7 +261,6 @@ static void nvme_retry_req(struct request *req)
 void nvme_complete_rq(struct request *req)
 {
 	blk_status_t status = nvme_error_status(req);
-	struct nvme_ns *ns = req->q->queuedata;
 
 	trace_nvme_complete_rq(req);
 
@@ -282,9 +279,8 @@ void nvme_complete_rq(struct request *req)
 			return;
 		}
 	}
-	if (req->bio && ns && ns->head->disk)
-		trace_block_bio_complete(ns->head->disk->queue,
-					 req->bio, status);
+
+	nvme_trace_bio_complete(req, status);
 	blk_mq_end_request(req, status);
 }
 EXPORT_SYMBOL_GPL(nvme_complete_rq);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 3e64f7187e70..dc415183cabd 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -16,6 +16,8 @@
 #include <linux/fault-inject.h>
 #include <linux/rcupdate.h>
 
+#include <trace/events/block.h>
+
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
 
@@ -530,6 +532,15 @@ static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
 		kblockd_schedule_work(&head->requeue_work);
 }
 
+static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)
+{
+	struct nvme_ns *ns = req->q->queuedata;
+
+	if (req->bio && ns && ns->head->disk)
+		trace_block_bio_complete(ns->head->disk->queue,
+					 req->bio, status);
+}
+
 extern struct device_attribute dev_attr_ana_grpid;
 extern struct device_attribute dev_attr_ana_state;
 extern struct device_attribute subsys_attr_iopolicy;
@@ -600,6 +611,9 @@ static inline void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys)
 static inline void nvme_mpath_start_freeze(struct nvme_subsystem *subsys)
 {
 }
+static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)
+{
+}
 #endif /* CONFIG_NVME_MULTIPATH */
 
 #ifdef CONFIG_NVM
-- 
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
