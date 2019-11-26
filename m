Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C54109F53
	for <lists+linux-nvme@lfdr.de>; Tue, 26 Nov 2019 14:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7n+62dS9i2Al4e06vPwiZrFN+GSxrR9XlgrDaZ2Eg7Y=; b=FvC
	+l9G3V3fqIFqG6+eJvIYNqV4/jdB8ulzYcDEi8fzZgb4TTbyEmVWWx0rfXk1knHTqqXwUfWgRhCvO
	FhX86Q0zxWmWW8qXfpg3Kt2q9HfKbyO8e7B5pIp2NCOPG06BLgyHwrKKXkzHK/1qm6+KyLLHjU8sh
	Ypt1SH9E5V2ggt9YK3zMct0Wg7XWGjtTRyeu+/MJ3Uoqv28ebVQbSDy3ah6RUpJsQqeO2EwobIyun
	ydNunIN0XxkxguGRCY93/uqBWHHvEDAtcVQFS/+Hy7ZBUKlw/DspFBHpAEhDDi15pfh8ZcE1/wxtW
	Fwj2f7BXlLtAcPcj1R62a+d9+4de+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZb1q-0005YV-44; Tue, 26 Nov 2019 13:37:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZb1Y-0004qi-GH
 for linux-nvme@lists.infradead.org; Tue, 26 Nov 2019 13:37:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 894DCB2E0;
 Tue, 26 Nov 2019 13:36:56 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme: Add support for ACRE Command Interrupted status
Date: Tue, 26 Nov 2019 14:36:50 +0100
Message-Id: <20191126133650.72196-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_053700_706203_02BB0E1C 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 John Meneghini <johnm@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: John Meneghini <johnm@netapp.com>

This patch fixes a bug in nvme_complete_rq logic introduced by
Enhanced Command Retry code. According to TP-4033 the controller
only sets CDR when the Command Interrupted status is returned.
The current code interprets Command Interrupted status as a
BLK_STS_IOERR, which results in a controller reset if
REQ_NVME_MPATH is set.

Signed-off-by: John Meneghini <johnm@netapp.com>
Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/nvme/host/core.c  | 2 ++
 include/linux/blk_types.h | 1 +
 include/linux/nvme.h      | 2 ++
 3 files changed, 5 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 108f60b46804..752a40daf2b3 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -201,6 +201,8 @@ static blk_status_t nvme_error_status(u16 status)
 	switch (status & 0x7ff) {
 	case NVME_SC_SUCCESS:
 		return BLK_STS_OK;
+	case NVME_SC_COMMAND_INTERRUPTED:
+		return BLK_STS_RESOURCE;
 	case NVME_SC_CAP_EXCEEDED:
 		return BLK_STS_NOSPC;
 	case NVME_SC_LBA_RANGE:
diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index d688b96d1d63..3a0d84528325 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -84,6 +84,7 @@ static inline bool blk_path_error(blk_status_t error)
 	case BLK_STS_NEXUS:
 	case BLK_STS_MEDIUM:
 	case BLK_STS_PROTECTION:
+	case BLK_STS_RESOURCE:
 		return false;
 	}
 
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index f61d6906e59d..6b21f3888cad 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -1292,6 +1292,8 @@ enum {
 
 	NVME_SC_NS_WRITE_PROTECTED	= 0x20,
 
+	NVME_SC_COMMAND_INTERRUPTED	= 0x21,
+
 	NVME_SC_LBA_RANGE		= 0x80,
 	NVME_SC_CAP_EXCEEDED		= 0x81,
 	NVME_SC_NS_NOT_READY		= 0x82,
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
