Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A4364AC1
	for <lists+linux-nvme@lfdr.de>; Wed, 10 Jul 2019 18:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FwhHfAiKgx3orkalL9oNUNYOdh6TySCAYkjN25ZQZTE=; b=Na8
	YE8TFTAxgAWVZ19UU5xSF1pB/Kg89FvfCndlWyV6VOKmb3fkxKGART4pTeZKx1e5scNFAvPsrTt1Z
	q+YgzHj7kMDSOd42soTxRmH8iYpszdvkq7Gj10tOdGJtrM43YP9shIRSvq+nWPyeLfzN+kzNeSDwk
	qPo/Ws8+v9vArKDX0kHVc/nDqGX6kj+6PrYb0TG4pTq3cYWrPdIqVNR8iQ00jKDFzR4R4JI+YVUpe
	chO5ql5V6qZTrt7gMBUUpNdUIVaDddevRP3hfJ0+XGoMOUo3NKZP864NiGdmAQJcX9kX67JNOlSb0
	3y5EWdrWyXjn/megWx9c7Uyzbx+bvSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlFVU-00082I-SA; Wed, 10 Jul 2019 16:31:49 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlFVG-00081z-Jw; Wed, 10 Jul 2019 16:31:34 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: fix regression upon hot device removal and insertion
Date: Wed, 10 Jul 2019 09:31:31 -0700
Message-Id: <20190710163131.30295-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 jonathan.derrick@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we validate the new controller id, we want to skip
controllers that are either deleting or dead. Fix the check
to do that and not on the newly added controller.

Fixes: 1b1031ca63b2 ("nvme: validate cntlid during controller initialisation")
Reported-by: Jon Derrick <jonathan.derrick@intel.com>
Tested-by: Jon Derrick <jonathan.derrick@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e28717d11f9a..04d5ce1a42c1 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2419,8 +2419,8 @@ static bool nvme_validate_cntlid(struct nvme_subsystem *subsys,
 	lockdep_assert_held(&nvme_subsystems_lock);
 
 	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
-		if (ctrl->state == NVME_CTRL_DELETING ||
-		    ctrl->state == NVME_CTRL_DEAD)
+		if (tmp->state == NVME_CTRL_DELETING ||
+		    tmp->state == NVME_CTRL_DEAD)
 			continue;
 
 		if (tmp->cntlid == ctrl->cntlid) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
