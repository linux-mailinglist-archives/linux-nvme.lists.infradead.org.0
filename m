Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B061963A9
	for <lists+linux-nvme@lfdr.de>; Sat, 28 Mar 2020 06:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORFPKjWtFyZCcLx1GHaKctWV0hJvsMYxTw75sTUPLQ8=; b=RBtdTjQ7SqpuOK
	kl0RZFQ8DUHGp1lhpl+LyoUliRyMiG80DFoVXXCle5AjqEBeXAjj0v/D/WcijvQvGBAPYvzQFjHus
	YQOhphmu01he8SXawmswfD8w5qOeounb44RR5pcRJ/4hqZ0MzZfJqVtxM3ZB8NcaKpwQWSnd6roAK
	wVlDz0m3X+eElm/fKk94hcmaN+4/YrN4kE4qRHX9KWvo61AfSLac2eNmpUz7YeofPva8KAw0C0p6b
	WgJb/8RVLdjL6Tz7sRGHS+q+vg+3GiFjDwldBbOG4kij5VyG04tr2TPA/xODmQHhEVrrH1yHndj0/
	XOo6WmdlFfFH4qqOm73Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI3kO-0002jy-Rm; Sat, 28 Mar 2020 05:11:05 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI3jx-0002V4-G5
 for linux-nvme@lists.infradead.org; Sat, 28 Mar 2020 05:10:40 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id A946E4292B;
 Sat, 28 Mar 2020 01:10:33 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id ADCD142928;
 Sat, 28 Mar 2020 01:10:31 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] nvme: Fix compat address handling in several ioctls
Date: Sat, 28 Mar 2020 01:09:09 -0400
Message-Id: <20200328050909.30639-3-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200328050909.30639-1-nbowler@draconx.ca>
References: <20200328050909.30639-1-nbowler@draconx.ca>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_221037_667963_7196AD05 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On a 32-bit kernel, the upper bits of userspace addresses passed
via various ioctls are silently ignored by the nvme driver.

However on a 64-bit kernel running a compat task, these upper bits are
not ignored and are in fact required to be zero for the ioctls to work.

Unfortunately, this difference matters.  32-bit smartctl submits the
NVME_IOCTL_ADMIN_CMD ioctl with garbage in these upper bits because
it seems the pointer value it puts into the nvme_passthru_cmd structure
is sign extended.  This works fine on 32-bit kernels but fails on a
64-bit one because (at least on my setup) the addresses smartctl uses
are consistently above 2G.  For example:

  # smartctl -x /dev/nvme0n1
  smartctl 7.1 2019-12-30 r5022 [x86_64-linux-5.5.11] (local build)
  Copyright (C) 2002-19, Bruce Allen, Christian Franke, www.smartmontools.org

  Read NVMe Identify Controller failed: NVME_IOCTL_ADMIN_CMD: Bad address

Since changing 32-bit kernels to actually check all of the submitted
address bits now would break existing userspace, this patch fixes the
compat problem by explicitly zeroing the upper bits in the compat case.
This enables 32-bit smartctl to work on a 64-bit kernel.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 drivers/nvme/host/core.c | 28 +++++++++++++++++++++-------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 9eccf56494de..f265ccd69dd7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -6,6 +6,7 @@
 
 #include <linux/blkdev.h>
 #include <linux/blk-mq.h>
+#include <linux/compat.h>
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/hdreg.h>
@@ -1248,6 +1249,19 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	queue_work(nvme_wq, &ctrl->async_event_work);
 }
 
+/*
+ * Convert integer values from ioctl structures to user pointers, silently
+ * ignoring the upper bits in the compat case to match behaviour of 32-bit
+ * kernels.
+ */
+static void __user *nvme_to_user_ptr(uintptr_t ptrval)
+{
+	if (in_compat_syscall())
+		ptrval = (compat_uptr_t)ptrval;
+
+	return (void __user *)ptrval;
+}
+
 static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio,
 			  size_t uio_size)
 {
@@ -1276,7 +1290,7 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio,
 
 	length = (io.nblocks + 1) << ns->lba_shift;
 	meta_len = (io.nblocks + 1) * ns->ms;
-	metadata = (void __user *)(uintptr_t)io.metadata;
+	metadata = nvme_to_user_ptr(io.metadata);
 
 	if (ns->ext) {
 		length += meta_len;
@@ -1299,7 +1313,7 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio,
 	c.rw.appmask = cpu_to_le16(io.appmask);
 
 	return nvme_submit_user_cmd(ns->queue, &c,
-			(void __user *)(uintptr_t)io.addr, length,
+			nvme_to_user_ptr(io.addr), length,
 			metadata, meta_len, lower_32_bits(io.slba), NULL, 0);
 }
 
@@ -1419,9 +1433,9 @@ static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
 	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
 	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
-			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
-			(void __user *)(uintptr_t)cmd.metadata,
-			cmd.metadata_len, 0, &result, timeout);
+			nvme_to_user_ptr(cmd.addr), cmd.data_len,
+			nvme_to_user_ptr(cmd.metadata), cmd.metadata_len,
+			0, &result, timeout);
 	nvme_passthru_end(ctrl, effects);
 
 	if (status >= 0) {
@@ -1466,8 +1480,8 @@ static int nvme_user_cmd64(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
 	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
 	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
-			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
-			(void __user *)(uintptr_t)cmd.metadata, cmd.metadata_len,
+			nvme_to_user_ptr(cmd.addr), cmd.data_len,
+			nvme_to_user_ptr(cmd.metadata), cmd.metadata_len,
 			0, &cmd.result, timeout);
 	nvme_passthru_end(ctrl, effects);
 
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
