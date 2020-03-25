Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A85AD192995
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 14:26:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WLChn8B9RM8rdUwP5GiC2WnednxL+DZxxhMWOGASAw4=; b=CIeHWyXDSYehrc
	bS8Jp1zC/Bvp6hQW70wL/4AnBphNikDp0jo3Y/vQjZnag0ja/prU3uqns57DV3c46b+ZKmiYpH3BA
	5SWFCbwoDlqOJBy4lAuW/EzVnIFoq0onOk5A8fhov9qfL++Te+DT4eTSKxrsWBkkYY6Nj/s/wBYXG
	IeZ2uHNHhH9XepPZ6BsMlkaWo4Gcg6TT4KEA1+Hkayd373Zt5Xo06YiWg2pl9GpPYHsyt0m3jF7Wj
	e/1nYqAN3fFd0KIHj6KAy3R3O7s/WJJZvtjALn5rEvfC61K8WZTgC6INlnJovuhTBUYWLryhONwji
	FBZqs+/YWZ33Uc3+74Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH631-0004Wx-Ig; Wed, 25 Mar 2020 13:26:19 +0000
Received: from 213-225-10-87.nat.highway.a1.net ([213.225.10.87]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH62x-0004Wd-TV; Wed, 25 Mar 2020 13:26:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 2/3] nvme: rename __nvme_find_ns_head to nvme_find_ns_head
Date: Wed, 25 Mar 2020 14:19:36 +0100
Message-Id: <20200325131937.1198787-3-hch@lst.de>
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

There is no non __-prefixed version, so make the name a little more
readable.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 29716cca3768..51517368e56a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3357,7 +3357,7 @@ static const struct attribute_group *nvme_dev_attr_groups[] = {
 	NULL,
 };
 
-static struct nvme_ns_head *__nvme_find_ns_head(struct nvme_subsystem *subsys,
+static struct nvme_ns_head *nvme_find_ns_head(struct nvme_subsystem *subsys,
 		unsigned nsid)
 {
 	struct nvme_ns_head *h;
@@ -3457,7 +3457,7 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 
 	mutex_lock(&ctrl->subsys->lock);
 	if (is_shared)
-		head = __nvme_find_ns_head(ctrl->subsys, nsid);
+		head = nvme_find_ns_head(ctrl->subsys, nsid);
 	if (!head) {
 		head = nvme_alloc_ns_head(ctrl, nsid, id);
 		if (IS_ERR(head)) {
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
