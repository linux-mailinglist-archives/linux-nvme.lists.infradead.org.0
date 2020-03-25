Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A914191E16
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Mar 2020 01:29:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lkSaop4DiYzYiRQlnJXfr+zQrlTEtbeR1gRgdKsBze8=; b=XFtFssHaMwdrov
	HC8FqgcLTwR+g4gRAPygohKWOiVpw6zN1kaZNfBofvNXau/8bBwuQhBRpHaRg02gm+DphgGHCqNsD
	RM45kiHBj2DWfz1qPnwfX5j61ULUOGaftZWFj3vysBnb+gwbbtZfKSltZ6E0Tkj1Ks63OOpd3mQWR
	qKQnMyl704KS+0vM4m9veiXp7qdjXs6IRMRsS5vZ41aKxSyv1SQ0PeJIuIYQjsoY7zN56VTBzEP08
	8yGntR4YKq57bCxeEmMehLoHlAthOk/fc06+fUK9P6fdWw2QOE2UwQgcPTsTjONdawQ+NHal14sia
	hlronfdt6uqfO1QFTztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGtvQ-0002aR-0I; Wed, 25 Mar 2020 00:29:40 +0000
Received: from mta01.start.ca ([162.250.196.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGtvK-0002Zq-Nx
 for linux-nvme@lists.infradead.org; Wed, 25 Mar 2020 00:29:36 +0000
Received: from mta01.start.ca (localhost [127.0.0.1])
 by mta01.start.ca (Postfix) with ESMTP id 7F76D4266E;
 Tue, 24 Mar 2020 20:29:21 -0400 (EDT)
Received: from localhost (dhcp-24-53-240-163.cable.user.start.ca
 [24.53.240.163])
 by mta01.start.ca (Postfix) with ESMTPS id 5527941F7F;
 Tue, 24 Mar 2020 20:29:18 -0400 (EDT)
From: Nick Bowler <nbowler@draconx.ca>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] nvme: Fix NVME_IOCTL_ADMIN_CMD compat address handling.
Date: Tue, 24 Mar 2020 20:28:48 -0400
Message-Id: <20200325002847.2140-1-nbowler@draconx.ca>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_172934_843740_0AD9B286 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On a real 32-bit kernel, the upper bits of userspace addresses passed
to NVME_IOCTL_ADMIN_CMD via the nvme_passthru_cmd structure are silently
ignored by the nvme driver.

However on a 64-bit kernel running a compat task, these upper bits are
not ignored and are in fact required to be zero for the ioctl to work.

Unfortunately, this difference matters.  32-bit smartctl submits garbage
in these upper bits because it seems the pointer value it puts into the
nvme_passthru_cmd structure is sign extended.  This works fine on a real
32-bit kernel but fails on a 64-bit one because (at least on my setup)
the addresses smartctl uses are consistently above 2G.  For example:

  # smartctl -x /dev/nvme0n1p1
  smartctl 7.1 2019-12-30 r5022 [x86_64-linux-5.5.11] (local build)
  Copyright (C) 2002-19, Bruce Allen, Christian Franke, www.smartmontools.org

  Read NVMe Identify Controller failed: NVME_IOCTL_ADMIN_CMD: Bad address

Since changing 32-bit kernels to actually check all of the submitted
address bits now would break existing userspace, this patch fixes the
problem by explicitly zeroing the upper bits in the compat case.  This
enables 32-bit smartctl to work on a 64-bit kernel.

Signed-off-by: Nick Bowler <nbowler@draconx.ca>
---
 drivers/nvme/host/core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a4d8c90ee7cc..afb7b76d1d8a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -6,6 +6,7 @@
 
 #include <linux/blkdev.h>
 #include <linux/blk-mq.h>
+#include <linux/compat.h>
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/hdreg.h>
@@ -1412,6 +1413,16 @@ static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 	if (cmd.timeout_ms)
 		timeout = msecs_to_jiffies(cmd.timeout_ms);
 
+	if (in_compat_syscall()) {
+		/*
+		 * On real 32-bit kernels this implementation ignores the
+		 * upper bits of address fields so we must replicate that
+		 * behaviour in the compat case.
+		 */
+		cmd.addr = (compat_uptr_t)cmd.addr;
+		cmd.metadata = (compat_uptr_t)cmd.metadata;
+	}
+
 	effects = nvme_passthru_start(ctrl, ns, cmd.opcode);
 	status = nvme_submit_user_cmd(ns ? ns->queue : ctrl->admin_q, &c,
 			(void __user *)(uintptr_t)cmd.addr, cmd.data_len,
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
