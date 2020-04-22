Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6201D1B398A
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 10:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=emjsWrSxx/EKBPymh/nkLGTnXNT7dLVQmR2vzJrKgwE=; b=daglTbJ+bF7Vfl
	nXuM/3+k7uVaJaKWaOPuiDM60ZkgEL7Wm0uNi4k1NCLmzPyq52z+Ax/v9BKbmv2JlUG5ERF3aW7gL
	fXNltZRqusv+1rd9EJsGW1q1FR8ujyecUi0yyCs6rzdEr+QAkCOOg+CA7bwnlp906mnfMaGXMbWgm
	1VY+OtQM3zKD5bgXZ4po6YiwppLQv99nnoTaruzanM9GDw06M+++QfCNzaPD6zdmKBHp5h4Ujw0Bx
	cOSIe3JMyNBfVkHMhpFbKcmYsddusJlnso2+sxlDwT0Nr1RCBpSoRMJGQyHwHtu2b1a+WenofmBdu
	KQMN81cYAUyCyvEFrz5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAJ0-0001iL-OF; Wed, 22 Apr 2020 08:00:27 +0000
Received: from [2001:4bb8:191:e12c:c70:4a89:bc61:3] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAIs-0001gv-42; Wed, 22 Apr 2020 08:00:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: sagi@grimberg.me,
	kbusch@kernel.org
Subject: [PATCH] nvme: clean up error handling in nvme_init_ns_head
Date: Wed, 22 Apr 2020 10:00:16 +0200
Message-Id: <20200422080016.306205-1-hch@lst.de>
X-Mailer: git-send-email 2.26.1
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

Use a common label for putting the nshead if needed and only convert
nvme status codes for the one case where it actually is needed.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index dfb064b4334f..15bc1b342412 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3501,8 +3501,11 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 	int ret = 0;
 
 	ret = nvme_report_ns_ids(ctrl, nsid, id, &ids);
-	if (ret)
-		goto out;
+	if (ret) {
+		if (ret < 0)
+			return ret;
+		return blk_status_to_errno(nvme_error_status(ret));
+	}
 
 	mutex_lock(&ctrl->subsys->lock);
 	head = nvme_find_ns_head(ctrl->subsys, nsid);
@@ -3514,32 +3517,29 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 		}
 		head->shared = is_shared;
 	} else {
+		ret = -EINVAL;
 		if (!is_shared || !head->shared) {
 			dev_err(ctrl->device,
-				"Duplicate unshared namespace %d\n",
-					nsid);
-			ret = -EINVAL;
-			nvme_put_ns_head(head);
-			goto out_unlock;
+				"Duplicate unshared namespace %d\n", nsid);
+			goto out_put_ns_head;
 		}
 		if (!nvme_ns_ids_equal(&head->ids, &ids)) {
 			dev_err(ctrl->device,
 				"IDs don't match for shared namespace %d\n",
 					nsid);
-			ret = -EINVAL;
-			nvme_put_ns_head(head);
-			goto out_unlock;
+			goto out_put_ns_head;
 		}
 	}
 
 	list_add_tail(&ns->siblings, &head->list);
 	ns->head = head;
+	mutex_unlock(&ctrl->subsys->lock);
+	return 0;
 
+out_put_ns_head:
+	nvme_put_ns_head(head);
 out_unlock:
 	mutex_unlock(&ctrl->subsys->lock);
-out:
-	if (ret > 0)
-		ret = blk_status_to_errno(nvme_error_status(ret));
 	return ret;
 }
 
-- 
2.26.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
