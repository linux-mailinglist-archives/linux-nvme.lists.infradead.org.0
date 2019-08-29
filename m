Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81DBA296B
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b6ILHyU/Myui4SPq6xueBcS/XIhuSzG4/th2z6Sc8/8=; b=t8HriUoCS35ZolpRTceFKRssIx
	Vgkork5oOoVolg76IwjhiEYQbMBXbueNbFbdKmZGZgQRW96RDCIDdzojXQ7WY4HMZpb0JK0ogvsfm
	eNzQTmqbfynipyutI7mCh/UmPhDm8C4xKVUkG2LKANDWk2rw93rU218I4mPsPtT6PlFixLxB0CacG
	hQeYM3P2C0o0hvsuL7ts3MYBF9QQF4Nc5CzPsZfwxDu8WCeJhpxe8UbpviLLEbhsVHzk+CAT7klNR
	mBPkQwh5bCYKTP6o1fNxWTXdy906VkNH0CiODyhLqZfEbrVFE0FY82vv3UPmXNw2tCRVDr8J77gef
	mJrI1B0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Sal-0000qy-VM; Thu, 29 Aug 2019 22:08:31 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ8-0007dt-0X; Thu, 29 Aug 2019 22:06:50 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 9/9] nvme: fix ns removal hang when failing to revalidate
 due to a transient error
Date: Thu, 29 Aug 2019 15:06:45 -0700
Message-Id: <20190829220645.5480-10-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829220645.5480-1-sagi@grimberg.me>
References: <20190829220645.5480-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
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
returns, and if it is a transient error (for example NVME_SC_HOST_PATH_ERROR
for temporary transport error or ENOMEM as allocation failure), do not remove
the namespace as it will either recover when the controller is back up and
schedule a subsequent scan, or the controller is going away and the namespaces
will be removed anyways.

This fixes a hang namespace scanning racing with a controller reset and
also sporious I/O errors in path failover coditions where the
controller reset is racing with the namespace scan work with multipath
enabled.

Reported-by: Hannes Reinecke  <hare@suse.de>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a7d86a050f85..d514891ccf0c 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3452,8 +3452,19 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
-			nvme_ns_remove(ns);
+		if (ns->disk) {
+			int ret = __nvme_revalidate_disk(ns->disk);
+
+			/*
+			 * Remove the ns only if the return status is
+			 * not a temporal/retryable execution error
+			 */
+			if (ret && ret != -ENOMEM &&
+			    !(ret > 0 && ret & NVME_SC_DNR))
+				nvme_ns_remove(ns);
+			else
+				check_disk_size(ns->disk, true);
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
