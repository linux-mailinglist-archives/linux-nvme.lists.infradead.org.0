Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BCF14727E
	for <lists+linux-nvme@lfdr.de>; Thu, 23 Jan 2020 21:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kl7nOblYiAWSkuF6WGNauG6nv5KX+EumPmdJFmC5VjY=; b=D+QqJubP+2U6+w
	/lveKDZDB3IlBL0P4w6VYrg+jSbtMlmE/iWgPH5NlvE8d71g61iwog9rAYxgZ2FT6vS+QK6//QSCq
	x/PcGQbIXp2owGYt3Fk0Bf8lCPHzS0lV/9mAQ9RA1SYjMRitihkQs05hP/A4YMPUuJKzI0UJ22WhX
	4rksT4DIljguEYBvRSfYheGe+oEiJcGfj3RqLuWxwIL94eC+0hysWyyj67Jjyy9E8un/nW+Auqt+V
	+9+ckujgfWA2JUailw55dTRUCvAqZ/cPWE6FEFshd+ch6y3tBn50wSgWE0/1PiqDarKzjzxJxNzct
	Ub7/sAdMyhng6UBh++nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuixm-0002sm-Na; Thu, 23 Jan 2020 20:20:26 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuixO-0001Zu-54
 for linux-nvme@lists.infradead.org; Thu, 23 Jan 2020 20:20:03 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 12:19:58 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="220784063"
Received: from unknown (HELO caliente.lm.intel.com) ([10.232.116.67])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 12:19:57 -0800
From: Edmund Nadolski <edmund.nadolski@intel.com>
To: edmund.nadolski@intel.com, kbusch@kernel.org,
 linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/1] nvme: clear io tags when freeing tagset
Date: Thu, 23 Jan 2020 13:19:47 -0700
Message-Id: <20200123201947.4482-2-edmund.nadolski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200123201947.4482-1-edmund.nadolski@intel.com>
References: <20200123201947.4482-1-edmund.nadolski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_122002_235586_8D7F71CD 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A tagset is invalidated by blk_mq_free_tag_set, so nvme_free_tagset must
clear nvmeq->tags for the io queues. A subsequent nvme_init_hctx will
re-init the tags if/when needed.

Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
---
 drivers/nvme/host/pci.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index d37dcc1b629e..445c2ee2a01d 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2477,10 +2477,20 @@ static void nvme_release_prp_pools(struct nvme_dev *dev)
 	dma_pool_destroy(dev->prp_small_pool);
 }
 
+static void nvme_clear_io_tags(struct nvme_dev *dev)
+{
+	int i;
+
+	for (i = 1; i < max_queue_count(); i++)
+		dev->queues[i].tags = NULL;
+}
+
 static void nvme_free_tagset(struct nvme_dev *dev)
 {
-	if (dev->tagset.tags)
+	if (dev->tagset.tags) {
+		nvme_clear_io_tags(dev);
 		blk_mq_free_tag_set(&dev->tagset);
+	}
 	dev->ctrl.tagset = NULL;
 }
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
