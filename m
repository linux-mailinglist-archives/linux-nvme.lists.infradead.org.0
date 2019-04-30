Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40171FD09
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZ33lenwjgKLuimxz1z64Od4Nz3ZPrEw9hWrXuvaMKE=; b=YvWE0Lik8ISkma
	7cca/kVcJ99KAsqhXBwYiwgq3kcAAmzeiuVXm/Ggu9/5t4c8oDlGnTnc2o2FP5u8NYg1vO01hbrid
	nc4liarwg+/YRwx/G0jS4HDomwhup9fddS2F0DQ890qOFOAMj5320bQJaGHY2G2Zt7qkvfODNn/Dz
	AXtvjlSYkiIizAPL8qKlmMpGteJvDQiiBs3mfjeqQWs2D22SQ4eHwcYvyoYrbPLno+1EqorGdCnLg
	cdfncMwpkLMEmk0DosUp5Ampz/xbBqHXk/TKVZgrvSFtVlTl7/FlCK+36oTB2v5t9Uwt8n7MvlR9X
	/hkgsX3mwxch1+0W8HEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUqm-0001Th-E1; Tue, 30 Apr 2019 15:39:20 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUqf-0001NU-5S; Tue, 30 Apr 2019 15:39:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: keith.busch@intel.com,
	sagi@grimberg.me
Subject: [PATCH 2/2] nvme: mark nvme_core_init and nvme_core_exit static
Date: Tue, 30 Apr 2019 11:38:33 -0400
Message-Id: <20190430153833.9011-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430153833.9011-1-hch@lst.de>
References: <20190430153833.9011-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 4 ++--
 drivers/nvme/host/nvme.h | 3 ---
 2 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e970c5adee28..cd16d98d1f1a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3904,7 +3904,7 @@ static inline void _nvme_check_size(void)
 }
 
 
-int __init nvme_core_init(void)
+static int __init nvme_core_init(void)
 {
 	int result = -ENOMEM;
 
@@ -3956,7 +3956,7 @@ int __init nvme_core_init(void)
 	return result;
 }
 
-void __exit nvme_core_exit(void)
+static void __exit nvme_core_exit(void)
 {
 	ida_destroy(&nvme_subsystems_ida);
 	class_destroy(nvme_subsys_class);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d64545023..5ee75b5ff83f 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -577,7 +577,4 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
 	return dev_to_disk(dev)->private_data;
 }
 
-int __init nvme_core_init(void);
-void __exit nvme_core_exit(void);
-
 #endif /* _NVME_H */
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
