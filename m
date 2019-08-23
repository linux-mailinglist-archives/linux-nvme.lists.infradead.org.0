Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C499A747
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 07:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OK/EfDsZF86owcOhi3smX3GJUAN6C5dYVo2C4uR5gyM=; b=YE7LWgRY8hocD8Rc9YK8+bK/Ls
	kAqvFzaI7k9GjJnX49xbb4lAFHbY6ytclvuEq+tOzJMrAvyhG26ft+mLvKm6o2X8+vmR2mZCNU7/r
	2QJqG3e/X3njV4RogAIGu70RMkv8+YdLDfsUe1UQYcNj93UUkytjTX8hwCN8Fk4eZ15QUFggEfxy/
	wvIPBK23vGjIrG8v4kme5HXZyh6QFhwrg9WjZ8Rcwx5YyJHy2ise9zJz33XHXVvh5tRVJGAR90RhW
	FCfdCIJZTXYmzuxoCKWAclBIh2uQh5saRzaPcDWPff8ka7Hx5kNiDdok01Hvwme87A/FW9cSkL9g6
	mjXoHgJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i12Xj-0004eL-AI; Fri, 23 Aug 2019 05:55:23 +0000
Received: from [2601:647:4800:973f:7c34:e13b:6185:5c2a]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i12X9-0004dE-4a; Fri, 23 Aug 2019 05:54:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Christoph Hellwig <hch@lst.de>
Subject: [PATCH v8 7/7] nvme: fix ns removal hang when failing to revalidate
 due to a transient error
Date: Thu, 22 Aug 2019 22:54:42 -0700
Message-Id: <20190823055442.19148-8-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823055442.19148-1-sagi@grimberg.me>
References: <20190823055442.19148-1-sagi@grimberg.me>
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
 Hannes Reinecke <hare@suse.de>
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
index a90d05598fc8..305fcd1d8a96 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3456,8 +3456,19 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
-			nvme_ns_remove(ns);
+		if (ns->disk) {
+			int ret = nvme_revalidate_disk(ns->disk);
+
+			/*
+			 * remove the ns only if the return status is
+			 * not a temporal execution error.
+			 */
+			if (ret && ret != -ENOMEM &&
+			    ret != NVME_SC_HOST_PATH_ERROR)
+				nvme_ns_remove(ns);
+
+			check_disk_size(ns->disk, true);
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
