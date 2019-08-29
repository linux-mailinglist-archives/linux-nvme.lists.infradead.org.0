Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2218A16C0
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 12:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50VCRHiU+GEoRhwhJ0Rdyzb88hB0u2WbAEVGuDNgbrA=; b=kFPXUyfQpBJnGt
	nV1Na9ZUHih212pGuZoLc0dWMVE4XfEv5wWqmQbYyXSI3gHjZBncfyrw+dtdPAFTl+ljBg9vBSJCW
	WzYKNhb+w0I8zAE6P9SWaH14+IXt6WDkpo5ifdzNM0d368jaYZcEEJxqplcPDMOiQY9ugGgPzMsVh
	J7pt1Qn5E8vBayDeuRu/KIO//FRGVyu7jasKwpsfjpba96yErJoqmwzvFjJDpMFj8OhHqohaxpaVf
	MgwAtq2YPoB/rzpukD3q0PSAQDMyBEbD+5VCx4fn48fybUaORFgO717Bem2w4AcxXi/8wpQZHu9Gk
	k+mkBpqUZaxTlglOrnjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3I0x-0000II-R3; Thu, 29 Aug 2019 10:50:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3I0l-0000H1-1V
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 10:50:40 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3BB8233FF;
 Thu, 29 Aug 2019 10:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567075838;
 bh=YqMqhnwmFGwqeoBJvsqjLVHMarwz2//zk8On24MIYAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KZCwK/vU4C5cBxFRB7AJY6KbDAT2jP+f+gS5N1kcmtRpGmB2l/WW133JyXTTOvnGy
 BRdd6jBVVFvft5zzzNUu3SQsMLZ+O8qRlKQmBdqY+MMPGPBz72+HG8+hKq7XQEUxB5
 6xKWggXd12UJAI79VIFW0C6db5aqBdkgL/vMQ5DE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 25/29] nvme-fc: use separate work queue to avoid
 warning
Date: Thu, 29 Aug 2019 06:50:05 -0400
Message-Id: <20190829105009.2265-25-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829105009.2265-1-sashal@kernel.org>
References: <20190829105009.2265-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_035039_104671_2FBA39AE 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Hannes Reinecke <hare@suse.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Hannes Reinecke <hare@suse.de>

[ Upstream commit 8730c1ddb69bdeeb10c1f613a4e15e95862b1981 ]

When tearing down a controller the following warning is issued:

WARNING: CPU: 0 PID: 30681 at ../kernel/workqueue.c:2418 check_flush_dependency

This happens as the err_work workqueue item is scheduled on the
system workqueue (which has WQ_MEM_RECLAIM not set), but is flushed
from a workqueue which has WQ_MEM_RECLAIM set.

Fix this by providing an FC-NVMe specific workqueue.

Fixes: 4cff280a5fcc ("nvme-fc: resolve io failures during connect")
Signed-off-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/fc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 67dec8860bf3c..1f5aa8d4712b3 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -206,7 +206,7 @@ static LIST_HEAD(nvme_fc_lport_list);
 static DEFINE_IDA(nvme_fc_local_port_cnt);
 static DEFINE_IDA(nvme_fc_ctrl_cnt);
 
-
+static struct workqueue_struct *nvme_fc_wq;
 
 /*
  * These items are short-term. They will eventually be moved into
@@ -2053,7 +2053,7 @@ nvme_fc_error_recovery(struct nvme_fc_ctrl *ctrl, char *errmsg)
 	 */
 	if (ctrl->ctrl.state == NVME_CTRL_CONNECTING) {
 		active = atomic_xchg(&ctrl->err_work_active, 1);
-		if (!active && !schedule_work(&ctrl->err_work)) {
+		if (!active && !queue_work(nvme_fc_wq, &ctrl->err_work)) {
 			atomic_set(&ctrl->err_work_active, 0);
 			WARN_ON(1);
 		}
@@ -3321,6 +3321,10 @@ static int __init nvme_fc_init_module(void)
 {
 	int ret;
 
+	nvme_fc_wq = alloc_workqueue("nvme_fc_wq", WQ_MEM_RECLAIM, 0);
+	if (!nvme_fc_wq)
+		return -ENOMEM;
+
 	/*
 	 * NOTE:
 	 * It is expected that in the future the kernel will combine
@@ -3338,7 +3342,7 @@ static int __init nvme_fc_init_module(void)
 	fc_class = class_create(THIS_MODULE, "fc");
 	if (IS_ERR(fc_class)) {
 		pr_err("couldn't register class fc\n");
-		return PTR_ERR(fc_class);
+		goto out_destroy_wq;
 	}
 
 	/*
@@ -3362,6 +3366,9 @@ out_destroy_device:
 	device_destroy(fc_class, MKDEV(0, 0));
 out_destroy_class:
 	class_destroy(fc_class);
+out_destroy_wq:
+	destroy_workqueue(nvme_fc_wq);
+
 	return ret;
 }
 
@@ -3378,6 +3385,7 @@ static void __exit nvme_fc_exit_module(void)
 
 	device_destroy(fc_class, MKDEV(0, 0));
 	class_destroy(fc_class);
+	destroy_workqueue(nvme_fc_wq);
 }
 
 module_init(nvme_fc_init_module);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
