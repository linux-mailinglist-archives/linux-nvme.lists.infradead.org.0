Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FC61AEDDE
	for <lists+linux-nvme@lfdr.de>; Sat, 18 Apr 2020 16:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXktqSqdwmAqHyw8TaZKZ3dVOK7HPf149UhS++PH32k=; b=e/rZzFBH+RzEwb
	WfQbN6FvCkkv8r7/8aVs/7P46x4ac/FzeiZ6II0Q/dk3qLUEe/EyztDgiqeV3vSTwuZ2KmBUMlXMK
	nfRAOHc78RoblzBxbwxulfEoZ0pVd8zsIPKK9X3dMaX7QqQByAJSMpB/PYpZhJ/QkjktNmVTOIY4j
	pm5AAL7duRefnqftEaOQph0bYpoYl5pSD/EiAJ/xfN+OM97r/GCJk/uRl5KgKMeiCnH6AY6C7FG9N
	usAlskNDte8t9aFJzciZb/lM+EDnKOK97cv5Oo0UwZT4HRo3GgtpWU1bzt+wFm3A3DcAXpBnxnC2+
	n/mrc7352jZiqRXbenMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoAx-00047A-7B; Sat, 18 Apr 2020 14:10:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPoAT-0001cT-Ng
 for linux-nvme@lists.infradead.org; Sat, 18 Apr 2020 14:10:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A7AE22265;
 Sat, 18 Apr 2020 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587219001;
 bh=xkAnrLZvTNvKX1L+pvH4etEqx+qyIWsoBOD+apAeDKw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aKeH5VBXn0E0O4PbfSHyNQUNQwjTC3Rp2qywfWTRXvktjlMkaEIbxA7FUR5KqGhkc
 wtgkzbmX78XG+mQdYghpychRPvXEDaqenhRhvgRjbQc56SLvfNDPzMQXgW4X2X0ZO9
 9jkLbPxhtfRE+81fjq4yHJPf6BcN/0h+U7m9ZDt8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 40/75] nvme: fix compat address handling in
 several ioctls
Date: Sat, 18 Apr 2020 10:08:35 -0400
Message-Id: <20200418140910.8280-40-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418140910.8280-1-sashal@kernel.org>
References: <20200418140910.8280-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_071001_915368_01DC0622 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nick Bowler <nbowler@draconx.ca>, Sasha Levin <sashal@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Nick Bowler <nbowler@draconx.ca>

[ Upstream commit c95b708d5fa65b4e51f088ee077d127fd5a57b70 ]

On a 32-bit kernel, the upper bits of userspace addresses passed via
various ioctls are silently ignored by the nvme driver.

However on a 64-bit kernel running a compat task, these upper bits are
not ignored and are in fact required to be zero for the ioctls to work.

Unfortunately, this difference matters.  32-bit smartctl submits the
NVME_IOCTL_ADMIN_CMD ioctl with garbage in these upper bits because it
seems the pointer value it puts into the nvme_passthru_cmd structure is
sign extended.  This works fine on 32-bit kernels but fails on a 64-bit
one because (at least on my setup) the addresses smartctl uses are
consistently above 2G.  For example:

  # smartctl -x /dev/nvme0n1
  smartctl 7.1 2019-12-30 r5022 [x86_64-linux-5.5.11] (local build)
  Copyright (C) 2002-19, Bruce Allen, Christian Franke, www.smartmontools.org

  Read NVMe Identify Controller failed: NVME_IOCTL_ADMIN_CMD: Bad address

Since changing 32-bit kernels to actually check all of the submitted
address bits now would break existing userspace, this patch fixes the
compat problem by explicitly zeroing the upper bits in the compat case.
This enables 32-bit smartctl to work on a 64-bit kernel.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a4d8c90ee7cc4..652ca87dac949 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -6,6 +6,7 @@
 
 #include <linux/blkdev.h>
 #include <linux/blk-mq.h>
+#include <linux/compat.h>
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/hdreg.h>
@@ -1248,6 +1249,18 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
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
+	return (void __user *)ptrval;
+}
+
 static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
 {
 	struct nvme_user_io io;
@@ -1271,7 +1284,7 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
 
 	length = (io.nblocks + 1) << ns->lba_shift;
 	meta_len = (io.nblocks + 1) * ns->ms;
-	metadata = (void __user *)(uintptr_t)io.metadata;
+	metadata = nvme_to_user_ptr(io.metadata);
 
 	if (ns->ext) {
 		length += meta_len;
@@ -1294,7 +1307,7 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
 	c.rw.appmask = cpu_to_le16(io.appmask);
 
 	return nvme_submit_user_cmd(ns->queue, &c,
-			(void __user *)(uintptr_t)io.addr, length,
+			nvme_to_user_ptr(io.addr), length,
 			metadata, meta_len, lower_32_bits(io.slba), NULL, 0);
 }
 
@@ -1414,9 +1427,9 @@ static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
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
@@ -1461,8 +1474,8 @@ static int nvme_user_cmd64(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
 	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
 	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
-			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
-			(void __user *)(uintptr_t)cmd.metadata, cmd.metadata_len,
+			nvme_to_user_ptr(cmd.addr), cmd.data_len,
+			nvme_to_user_ptr(cmd.metadata), cmd.metadata_len,
 			0, &cmd.result, timeout);
 	nvme_passthru_end(ctrl, effects);
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
