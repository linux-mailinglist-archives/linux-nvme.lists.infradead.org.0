Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4561CBE0A
	for <lists+linux-nvme@lfdr.de>; Sat,  9 May 2020 08:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aBt7qwECrPQd07iw7DXP2VpSweVY8Y9B2N8oLVj5OWQ=; b=fJiQpnMChC1w0O
	n4qG/me65fLCJ6WNmvXOuCDi3/bVrFkHSd3ThN9ZqSNkDxxlUvWAn7MijO6Mw8PtjcZFPpr34H14d
	TX8PxvDL06n4Km1meko5RilhgSAIxeb+tpxv8pBSTVS99OuwG7EhRkJsj1SGwbdR4yLahgm/p9K87
	XuLRN2G/e7nPA2f4iXkbi4zFm2wUOf7rQj2yrLFTwiMrAkR8XqTU1M7PG1j14Tsd5cJ+cIdXEy/gU
	egucpoAVWsLk+nkx/SEGSdtHQpQn/xCG+fPiBJol8aGOFESU4ldVl/eJTgS1N6yeLbYWqV9E6fB+h
	MTILskcu5qb5gZdAvZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXIsw-000652-UF; Sat, 09 May 2020 06:22:54 +0000
Received: from mx2.didichuxing.com ([36.110.17.22] helo=bsf02.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jXIsp-000640-M1
 for linux-nvme@lists.infradead.org; Sat, 09 May 2020 06:22:51 +0000
X-ASG-Debug-ID: 1589005332-0e4108595ba3fdb0001-VMfPqL
Received: from mail.didiglobal.com (localhost [172.20.36.175]) by
 bsf02.didichuxing.com with ESMTP id 8aEi09t1nxC799Kg;
 Sat, 09 May 2020 14:22:12 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Sat, 9 May
 2020 14:22:12 +0800
Date: Sat, 9 May 2020 14:22:08 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <hch@infradead.org>, <axboe@kernel.dk>, <kbusch@kernel.org>,
 <sagi@grimberg.me>
Subject: [PATCH] nvme: make sure write/poll_queues less or equal then cpu count
Message-ID: <20200509062203.GA19802@192.168.3.9>
X-ASG-Orig-Subj: [PATCH] nvme: make sure write/poll_queues less or equal then
 cpu count
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS05.didichuxing.com (172.20.36.127) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: localhost[172.20.36.175]
X-Barracuda-Start-Time: 1589005332
X-Barracuda-URL: https://bsf02.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 4859
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0653 1.0000 -1.6046
X-Barracuda-Spam-Score: -1.10
X-Barracuda-Spam-Status: No,
 SCORE=-1.10 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.81720
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.50 BSF_RULE7568M          Custom Rule 7568M
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_232248_035919_EAD59670 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Check module parameter write/poll_queues before use, if user
change them to larger than system cpu count, it will trigger a
warning.

Reproduce:

modprobe -r nvme
modprobe nvme write_queues=`nproc`
echo $((`nproc`+1)) > /sys/module/nvme/parameters/write_queues
echo 1 > /sys/block/nvme0n1/device/reset_controller

[  657.069000] ------------[ cut here ]------------
[  657.069022] WARNING: CPU: 10 PID: 1163 at kernel/irq/affinity.c:390 irq_create_affinity_masks+0x47c/0x4a0
[  657.069056]  dm_region_hash dm_log dm_mod
[  657.069059] CPU: 10 PID: 1163 Comm: kworker/u193:9 Kdump: loaded Tainted: G        W         5.6.0+ #8
[  657.069060] Hardware name: Inspur SA5212M5/YZMB-00882-104, BIOS 4.0.9 08/27/2019
[  657.069064] Workqueue: nvme-reset-wq nvme_reset_work [nvme]
[  657.069066] RIP: 0010:irq_create_affinity_masks+0x47c/0x4a0
[  657.069067] Code: fe ff ff 48 c7 c0 b0 89 14 95 48 89 46 20 e9 e9 fb ff ff 31 c0 e9 90 fc ff ff 0f 0b 48 c7 44 24 08 00 00 00 00 e9 e9 fc ff ff <0f> 0b e9 87 fe ff ff 48 8b 7c 24 28 e8 33 a0 80 00 e9 b6 fc ff ff
[  657.069068] RSP: 0018:ffffb505ce1ffc78 EFLAGS: 00010202
[  657.069069] RAX: 0000000000000060 RBX: ffff9b97921fe5c0 RCX: 0000000000000000
[  657.069069] RDX: ffff9b67bad80000 RSI: 00000000ffffffa0 RDI: 0000000000000000
[  657.069070] RBP: 0000000000000000 R08: 0000000000000000 R09: ffff9b97921fe718
[  657.069070] R10: ffff9b97921fe710 R11: 0000000000000001 R12: 0000000000000064
[  657.069070] R13: 0000000000000060 R14: 0000000000000000 R15: 0000000000000001
[  657.069071] FS:  0000000000000000(0000) GS:ffff9b67c0880000(0000) knlGS:0000000000000000
[  657.069072] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  657.069072] CR2: 0000559eac6fc238 CR3: 000000057860a002 CR4: 00000000007606e0
[  657.069073] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  657.069073] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  657.069073] PKRU: 55555554
[  657.069074] Call Trace:
[  657.069080]  __pci_enable_msix_range+0x233/0x5a0
[  657.069085]  ? kernfs_put+0xec/0x190
[  657.069086]  pci_alloc_irq_vectors_affinity+0xbb/0x130
[  657.069089]  nvme_reset_work+0x6e6/0xeab [nvme]
[  657.069093]  ? __switch_to_asm+0x34/0x70
[  657.069094]  ? __switch_to_asm+0x40/0x70
[  657.069095]  ? nvme_irq_check+0x30/0x30 [nvme]
[  657.069098]  process_one_work+0x1a7/0x370
[  657.069101]  worker_thread+0x1c9/0x380
[  657.069102]  ? max_active_store+0x80/0x80
[  657.069103]  kthread+0x112/0x130
[  657.069104]  ? __kthread_parkme+0x70/0x70
[  657.069105]  ret_from_fork+0x35/0x40
[  657.069106] ---[ end trace f4f06b7d24513d06 ]---
[  657.077110] nvme nvme0: 95/1/0 default/read/poll queues

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 drivers/nvme/host/pci.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index b0b042951ac3..cb41699074bc 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -68,14 +68,20 @@ static int io_queue_depth = 1024;
 module_param_cb(io_queue_depth, &io_queue_depth_ops, &io_queue_depth, 0644);
 MODULE_PARM_DESC(io_queue_depth, "set io queue depth, should >= 2");
 
+static int io_queue_count_set(const char *val, const struct kernel_param *kp);
+static const struct kernel_param_ops io_queue_count_ops = {
+	.set = io_queue_count_set,
+	.get = param_get_uint,
+};
+
 static unsigned int write_queues;
-module_param(write_queues, uint, 0644);
+module_param_cb(write_queues, &io_queue_count_ops, &write_queues, 0644);
 MODULE_PARM_DESC(write_queues,
 	"Number of queues to use for writes. If not set, reads and writes "
 	"will share a queue set.");
 
 static unsigned int poll_queues;
-module_param(poll_queues, uint, 0644);
+module_param_cb(poll_queues, &io_queue_count_ops, &poll_queues, 0644);
 MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 
 struct nvme_dev;
@@ -144,6 +150,18 @@ static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
 	return param_set_int(val, kp);
 }
 
+static int io_queue_count_set(const char *val, const struct kernel_param *kp)
+{
+	int ret;
+	unsigned int n;
+
+	ret = kstrtouint(val, 10, &n);
+	if (ret != 0 || n > num_possible_cpus())
+		return -EINVAL;
+
+	return param_set_uint(val, kp);
+}
+
 static inline unsigned int sq_idx(unsigned int qid, u32 stride)
 {
 	return qid * 2 * stride;
@@ -3114,8 +3132,6 @@ static int __init nvme_init(void)
 	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
 	BUILD_BUG_ON(IRQ_AFFINITY_MAX_SETS < 2);
 
-	write_queues = min(write_queues, num_possible_cpus());
-	poll_queues = min(poll_queues, num_possible_cpus());
 	return pci_register_driver(&nvme_driver);
 }
 
-- 
2.18.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
