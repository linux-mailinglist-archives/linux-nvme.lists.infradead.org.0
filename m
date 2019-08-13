Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3468B014
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7ZzneKpY46FhPMOsoCS48lNRB8oPIS01Zrxv9zNcMwI=; b=OsI9/hQTweqZFNtpGhTHK44l9U
	tMGiM1KaRJPdh2yt47wUA9oonWIAJZe5+8cUnHS+BdFkBdNASRhI1M/3Td0JC0cQClcu+w0A3CcAN
	b0/fsd7Y4WPJdlgOemNYaTzQ5N6UR5No+MRkC5c5+p7ggCjrPAMNYXkphtryCi+8ZcHxUBOzaZHWK
	OKR7/0cGun06fx/le32gnAYWRm47DwcEc3PDN9GwbZuHq17uyZWhfo/6Ry3I4B87xy5Ubt0PnggPf
	TAPgwf+e3BX40+HFW23qs9XKWUDB7boLdFrC+11xMmzYvkzrHORpa6cL2B1WoGFY7GrgdssGtM0wh
	k4znTnzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQYI-0000S9-4y; Tue, 13 Aug 2019 06:45:02 +0000
Received: from [2601:647:4800:973f:a183:2905:6842:b7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQWQ-0007Z2-Jq; Tue, 13 Aug 2019 06:43:06 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v6 7/7] nvme: fix ns removal hang when failing to revalidate
 due to a transient error
Date: Mon, 12 Aug 2019 23:43:04 -0700
Message-Id: <20190813064304.7344-8-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813064304.7344-1-sagi@grimberg.me>
References: <20190813064304.7344-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a controller reset is racing with a namespace revalidation, the
revalidation (admin) I/O will surely fail, but we should not remove the
namespace as we will execute the I/O when the controller is back up.
Same for spurious allocation errors (return -ENOMEM).

Fix this by checking the specific error code that revalidate_disk
returns, and if it is a transient error (for example ENOLINK correlates
to BLK_STS_TRANSPORT or ENOMEM correlates to BLK_STS_RESOURCE or an
allocation failure), do not remove the namespace as it will either
recover when the controller is back up and schedule a subsequent scan,
or the controller is going away and the namespaces will be removed anyways.

This fixes a hang namespace scanning racing with a controller reset and
also sporious I/O errors in path failover coditions where the
controller reset is racing with the namespace scan work with multipath
enabled.

Reported-by: Hannes Reinecke  <hare@suse.de>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 10e237f80800..ce93fbebff61 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3457,8 +3457,17 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
-			nvme_ns_remove(ns);
+		if (ns->disk) {
+			int ret = revalidate_disk(ns->disk);
+
+			/*
+			 * remove the ns only if the return status is
+			 * not a temporal execution error.
+			 */
+			if (ret && ret != -ENOLINK && ret != -ENOMEM &&
+			    ret != -EAGAIN && ret != -EBUSY)
+				nvme_ns_remove(ns);
+		}
 		nvme_put_ns(ns);
 	} else
 		nvme_alloc_ns(ctrl, nsid);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
