Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131B8AA66E
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 16:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5gvOdktLc/sJZ+TZUNB8gN+8YZ4VSyHgQV+YfmGIxJc=; b=oAq
	9FA+SSmhNDJIs8XUMij8yv6d1RwfN37ktflhLk6PPw8qvkROl/mbNAXoQ68c4u5MuYfB2UjMEe676
	F4FMBIGZk/BvAJsxSG5YZI5BPk8SSsKx6wWkI3PJE3VTYCwRq95aauoRNRcv5a5nIFDzb/xuQPm+q
	MSDhyT126KyMLq97XpEIkXcLQIygdZWwuhd5kWh/eK6DmwcRLVmwrfJffmw3BgJGQEx+m4pr0qvcM
	l2f/jaH3x0FxTy2J0b4g+5xeoA6yETDCeZEf4pGmXzT+I+VIl7WOcf4n2gRBmgc9RrxdXrufLd8EE
	RSi5SBi3basEV1rkkQPSEAmLTgOzhMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5t4O-0007Yq-Dh; Thu, 05 Sep 2019 14:49:08 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5t4H-0007Y7-4V
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 14:49:02 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Sep 2019 17:48:52 +0300
Received: from rsws47.mtr.labs.mlnx (rsws47.mtr.labs.mlnx [10.209.40.47])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x85EmpKb025943;
 Thu, 5 Sep 2019 17:48:51 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvme: Remove double assignment of cq vector
Date: Thu,  5 Sep 2019 14:50:48 +0000
Message-Id: <1567695048-5234-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_074901_619889_08DDD458 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Poll queues don't use it, so the assignment should be only when
using IRQs.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 10d3071d6098..492074c95b9b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1560,7 +1560,6 @@ static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled)
 	else if (result)
 		goto release_cq;
 
-	nvmeq->cq_vector = vector;
 	nvme_init_queue(nvmeq, qid);
 
 	if (!polled) {
-- 
2.16.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
