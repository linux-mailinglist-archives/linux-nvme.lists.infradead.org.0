Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F99819DB8C
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 18:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NuFOdId60EOBc7wPBF3p0dDx0ZImZC1F90/yAhk/OJg=; b=kaCR32O3O3ISIQ
	tWPRwCjYPREPE0PzmJDYND3P78RZIeUKt4Y1PWUZIFJc5kvd6jBu4rvlcJ849TNBN3M4XE1i+2FB5
	XYkq1LHhWxrKBFjPUXSOLq2F1Bq1mcyhxJvGxUv+n/SPLThe5HLnd9c2BASSPR33txiHGymHug+XF
	4fOGRD4vdvsxXT7On4Pr91weLOTljsBVrMUb16v8OCXoiFRkSLCrZdI/nNin6bfTHJelKtwGyhoYJ
	F8qwubTe7/I3NtpzgCBu3Jd20a4y0Q7P8HM/nWj/AtdZbxaLhD5whdxGvF42+HCEbYQ7yr8qU7pAM
	tlTXdNUR4zjSpa0t3/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKP7F-00038q-4R; Fri, 03 Apr 2020 16:24:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKP75-000369-CX
 for linux-nvme@lists.infradead.org; Fri, 03 Apr 2020 16:24:12 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB13F20721;
 Fri,  3 Apr 2020 16:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585931051;
 bh=ajjsIwhISlQSjNOtRWClSNXD1IvSk21/nJ4H/kjpDGA=;
 h=From:To:Cc:Subject:Date:From;
 b=b6HNuvqy3Z9zaCJs+DqmiG6dmb/XQjdnZF1Gd68+5OthIGopZJdK9uIp8e+OAavin
 5u9UzHW1STcIJbmTZH8Jz6fECFnIhR7EELMslR41HwQ2vnK8yG7FYCKypNZJGi3SZ7
 zUqvrBQTqkuWa7TFHtOPT8F8dR2ekZyxLwQvA6TA=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme: remove unused parameter
Date: Fri,  3 Apr 2020 09:24:09 -0700
Message-Id: <20200403162409.1324031-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_092411_442640_1D57F304 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_alloc_ns_head() doesn't use the 'struct nvme_id_ns' parameter.
Remove it, and update caller accordingly.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d219a531ba4f..05aa3525ef06 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3410,8 +3410,7 @@ static int __nvme_check_ids(struct nvme_subsystem *subsys,
 }
 
 static struct nvme_ns_head *nvme_alloc_ns_head(struct nvme_ctrl *ctrl,
-		unsigned nsid, struct nvme_id_ns *id,
-		struct nvme_ns_ids *ids)
+		unsigned nsid, struct nvme_ns_ids *ids)
 {
 	struct nvme_ns_head *head;
 	size_t size = sizeof(*head);
@@ -3482,7 +3481,7 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 	if (is_shared)
 		head = nvme_find_ns_head(ctrl->subsys, nsid);
 	if (!head) {
-		head = nvme_alloc_ns_head(ctrl, nsid, id, &ids);
+		head = nvme_alloc_ns_head(ctrl, nsid, &ids);
 		if (IS_ERR(head)) {
 			ret = PTR_ERR(head);
 			goto out_unlock;
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
