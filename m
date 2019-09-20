Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD7BB971D
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Sep 2019 20:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uLwzKH8OUnKrDf9+4KTwVzHf3TrQG0THd4XCjOLFpU4=; b=Lht
	eZ19IM/JZAjGW35i5K20KzIR3F5eBOfEV7wUIJpPgmsuO7kFSRQPQCFU7UIC+WF6LKqfaOHO12YiA
	rUJ81aHauZm0asRLaz0PXfAT8TSr+SnGcggu65/3LLhG7r1qwQvxQEOEYOA6IZbV8kedN0/T2JIqv
	j57VQWa6EdYhYqwRW4mwqpVFQZPDQnyldX4oIT6wbZxVjAMDMXqsfcAM4Xv4Y0d6rKR62FnXaMaoD
	amP0v6cm0HYIDb242dCba45v1Zhu9wvHDwZND8JZQhDS4ykfc30PYSpl3ioO70LrnE1aPJ8xQVeK9
	Nwxxx1zXS5swspwk9d6thYimXchYjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBNV1-0007Ld-43; Fri, 20 Sep 2019 18:19:19 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBNUx-0007LU-At; Fri, 20 Sep 2019 18:19:15 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: set NVME_REQ_CANCELLED flag when cancelling a request
Date: Fri, 20 Sep 2019 11:19:13 -0700
Message-Id: <20190920181913.14723-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This will prevent userspace to wrongly get the completion result
when we cancelled the command. Also, make sure to clear it from
the request flags in nvme_setup_cmd.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f85e7b09d1d4..fc3ed75ef80b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -298,6 +298,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 	if (blk_mq_request_completed(req))
 		return true;
 
+	nvme_req(req)->flags |= NVME_REQ_CANCELLED;
 	nvme_req(req)->status = NVME_SC_HOST_PATH_ERROR;
 	blk_mq_complete_request(req);
 	return true;
@@ -434,6 +435,7 @@ static inline void nvme_clear_nvme_request(struct request *req)
 		nvme_req(req)->flags = 0;
 		req->rq_flags |= RQF_DONTPREP;
 	}
+	nvme_req(req)->flags &= ~NVME_REQ_CANCELLED;
 }
 
 struct request *nvme_alloc_request(struct request_queue *q,
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
