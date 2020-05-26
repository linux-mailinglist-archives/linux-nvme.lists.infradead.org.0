Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06519DB8B
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 18:24:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1+LfBFCncEEuNrf9+qOatiSXp3J2ow8jZaK2YWE3qM0=; b=G3ccO40kYeTRxt
	0ZIIpP2WCryXTiw9U48XvALObsaYegIHM6KVKXxaTMiUYO4J53C75SAJLHivPJWOG8jEUSp5mup9f
	Jf4l4gpxnBvZPchT8BXBe6zOOkYHnrMNfv5+2Y4R9HYGnQvzUF/ygaXNK5doZj01kRyrXa9WQVAeS
	Mles9Hyf9f3MY7bUcAW4c9uyULFnOkX0WK+xhKqcHe5eG4HPAgHvtUYWjmNqKaLE/JX4mJBY4uHb+
	5oBpF6f+XZZ7rEm0m0iSgg5nVYDj+w30JBGEe2sin/6CFQAHSE//vG+GrnzdUMMcAXG5EQW1S7t8S
	TO2e5qyxNLyajHOFCLfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKP75-00035S-Ug; Fri, 03 Apr 2020 16:24:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKP70-00033p-Cm
 for linux-nvme@lists.infradead.org; Fri, 03 Apr 2020 16:24:08 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 363412077D;
 Fri,  3 Apr 2020 16:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585931043;
 bh=xGQu1VnISVQWI7IH9gwNFfPOpjC1DH0kp+25/2CwI/E=;
 h=From:To:Cc:Subject:Date:From;
 b=I74l6ZqCjOPQCQEoT37oBoahyoNyRTjkM2FZO7B4DjSwqYM74bFFOZ+XidraaXAWF
 gzb4/hrS8OGY7BL4XMnalL4hZSosl46dMF88QzvJCgzxT2kQ/mYaMFi8QPlJ4zTYeR
 r1EkZ0aT76WI8idfiJQaP0AGzb9RyIAD074D0Ls0=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme: provide num dword helper
Date: Fri,  3 Apr 2020 09:24:01 -0700
Message-Id: <20200403162401.1323982-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_092406_449494_B070BF4F 
X-CRM114-Status: GOOD (  11.32  )
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

Various nvme commands use a zeroes based number of dwords field. Create
a helper function to convert byte lengths to this format.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 4 ++--
 drivers/nvme/host/nvme.h | 8 ++++++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 91c1bd659947..d219a531ba4f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -530,7 +530,7 @@ static int nvme_get_stream_params(struct nvme_ctrl *ctrl,
 
 	c.directive.opcode = nvme_admin_directive_recv;
 	c.directive.nsid = cpu_to_le32(nsid);
-	c.directive.numd = cpu_to_le32((sizeof(*s) >> 2) - 1);
+	c.directive.numd = cpu_to_le32(nvme_bytes_to_numd(sizeof(*s)));
 	c.directive.doper = NVME_DIR_RCV_ST_OP_PARAM;
 	c.directive.dtype = NVME_DIR_STREAMS;
 
@@ -2746,7 +2746,7 @@ int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 		void *log, size_t size, u64 offset)
 {
 	struct nvme_command c = { };
-	unsigned long dwlen = size / 4 - 1;
+	u32 dwlen = nvme_bytes_to_numd(size);
 
 	c.get_log_page.opcode = nvme_admin_get_log_page;
 	c.get_log_page.nsid = cpu_to_le32(nsid);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 2e04a36296d9..36f44b79bb3b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -449,6 +449,14 @@ static inline sector_t nvme_lba_to_sect(struct nvme_ns *ns, u64 lba)
 	return lba << (ns->lba_shift - SECTOR_SHIFT);
 }
 
+/*
+ * Convert byte length to nvme's 0-based num dwords
+ */
+static inline u32 nvme_bytes_to_numd(size_t len)
+{
+	return (len >> 2) - 1;
+}
+
 static inline void nvme_end_request(struct request *req, __le16 status,
 		union nvme_result result)
 {
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
