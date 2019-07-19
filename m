Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63646DBCD
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1wAtfgIr0raapOdnImG6e9dgB1fPLVArE+RG0Bvdwg=; b=QVmcAUJa+utuJ/
	o4PJmnTZVbDmCKeuKMWYs1OyODzx1JRAdyrSdn5dINV0Qlz4Iz9ORZUXMeocmEbAb5iRt0nXBT9NG
	AhrxIJCXlIW/4C8FcgwbMn5jMdvfQ6ljfSwe1+09ALMk9l6blayQWCYerqSy7sYodl2hK4ml2zIG5
	saVXUE0cJTqeM8bW7YIhgAURTA+hVZYfKjgzLAUZXUo4AQwfQ23tEivHW0++B5/lwexV6gXMWnNrO
	zWAChxWSnIWvceHczwwxqIYl1BPCkESf+amLXfZT+j4jW5DKSrm9Gxw3kf0aAADaY9mb7AMiKSS4S
	yzqSWZKh2xTUpIY9yEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKF0-0006lk-O9; Fri, 19 Jul 2019 04:11:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKAK-00037J-1o
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:06:42 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A55FF218BA;
 Fri, 19 Jul 2019 04:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509199;
 bh=1nHh8SFrJ01OwEDsTl3E0H9rA79aDtJZjXrvYKxUibc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NKRPgvxj9Fcq8TYyhrmAnRHuuFD2mcH/p4msgTKhmZCPAiQfEaP8paENCqGbJQwJo
 JPu4dX4295xHo9HhqO24i98o6Jignu6ksgIPCrFy7WhKWOMm5mItZtIWqlrX6J5EZ3
 s8CGSpqrSzuZ3IzZpUebZoobuQU0qeU8J/3oUY0M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 124/141] nvme: fix NULL deref for fabrics options
Date: Fri, 19 Jul 2019 00:02:29 -0400
Message-Id: <20190719040246.15945-124-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210640_856569_282B6E24 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Minwoo Im <minwoo.im.dev@gmail.com>

[ Upstream commit 7d30c81b80ea9b0812d27030a46a5bf4c4e328f5 ]

git://git.infradead.org/nvme.git nvme-5.3 branch now causes the
following NULL deref oops.  Check the ctrl->opts first before the deref.

[   16.337581] BUG: kernel NULL pointer dereference, address: 0000000000000056
[   16.338551] #PF: supervisor read access in kernel mode
[   16.338551] #PF: error_code(0x0000) - not-present page
[   16.338551] PGD 0 P4D 0
[   16.338551] Oops: 0000 [#1] SMP PTI
[   16.338551] CPU: 2 PID: 1035 Comm: kworker/u16:5 Not tainted 5.2.0-rc6+ #1
[   16.338551] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.11.2-0-gf9626ccb91-prebuilt.qemu-project.org 04/01/2014
[   16.338551] Workqueue: nvme-wq nvme_scan_work [nvme_core]
[   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
[   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
[   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
[   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
[   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
[   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
[   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
[   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
[   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
[   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
[   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   16.338551] Call Trace:
[   16.338551]  nvme_scan_work+0x2c0/0x340 [nvme_core]
[   16.338551]  ? __switch_to_asm+0x40/0x70
[   16.338551]  ? _raw_spin_unlock_irqrestore+0x18/0x30
[   16.338551]  ? try_to_wake_up+0x408/0x450
[   16.338551]  process_one_work+0x20b/0x3e0
[   16.338551]  worker_thread+0x1f9/0x3d0
[   16.338551]  ? cancel_delayed_work+0xa0/0xa0
[   16.338551]  kthread+0x117/0x120
[   16.338551]  ? kthread_stop+0xf0/0xf0
[   16.338551]  ret_from_fork+0x3a/0x50
[   16.338551] Modules linked in: nvme nvme_core
[   16.338551] CR2: 0000000000000056
[   16.338551] ---[ end trace b9bf761a93e62d84 ]---
[   16.338551] RIP: 0010:nvme_validate_ns+0xc9/0x7e0 [nvme_core]
[   16.338551] Code: c0 49 89 c5 0f 84 00 07 00 00 48 8b 7b 58 e8 be 48 39 c1 48 3d 00 f0 ff ff 49 89 45 18 0f 87 a4 06 00 00 48 8b 93 70 0a 00 00 <80> 7a 56 00 74 0c 48 8b 40 68 83 48 3c 08 49 8b 45 18 48 89 c6 bf
[   16.338551] RSP: 0018:ffffc900024c7d10 EFLAGS: 00010283
[   16.338551] RAX: ffff888135a30720 RBX: ffff88813a4fd1f8 RCX: 0000000000000007
[   16.338551] RDX: 0000000000000000 RSI: ffffffff8256dd38 RDI: ffff888135a30720
[   16.338551] RBP: 0000000000000001 R08: 0000000000000007 R09: ffff88813aa6a840
[   16.338551] R10: 0000000000000001 R11: 000000000002d060 R12: ffff88813a4fd1f8
[   16.338551] R13: ffff88813a77f800 R14: ffff88813aa35180 R15: 0000000000000001
[   16.338551] FS:  0000000000000000(0000) GS:ffff88813ba80000(0000) knlGS:0000000000000000
[   16.338551] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   16.338551] CR2: 0000000000000056 CR3: 000000000240a002 CR4: 0000000000360ee0
[   16.338551] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   16.338551] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

Fixes: 958f2a0f8121 ("nvme-tcp: set the STABLE_WRITES flag when data digests are enabled")
Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d4c0bc88dd1e..491922bd8b65 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3254,7 +3254,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_ns;
 	}
 
-	if (ctrl->opts->data_digest)
+	if (ctrl->opts && ctrl->opts->data_digest)
 		ns->queue->backing_dev_info->capabilities
 			|= BDI_CAP_STABLE_WRITES;
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
