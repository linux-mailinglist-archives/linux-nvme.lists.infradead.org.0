Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6569196093
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 15:42:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yAxr+FoEOrM6CvVBL8pnjhaaD4JM7q31xxmLqz8aU0=; b=Yf8EQq06tgFhD/
	mgvVP9XORWeJNB635kvQbLDhzQLaaQoCcVD4b10vhJ/SvI7z9o6/DklchzE+x9TV6QEkD7CFhJXfo
	Clu6EAvdpiej9v8wiK9F36RgJtjpx5ctS7bgqBBuqQFwYLIV33qRK2jFr1eiRTxfeXOtylehhVuTV
	BK/V3A43gc2fvXBgHR4/yKGR3hxtOTSnVJ3pLMWFxV4ZrWaKoN2SGzQmXm/eoED2SeUI81IUkmZTV
	ByD7uRUb77CPKqLG4IuBw1wMZqI57AyefxCPHnIE0S7jndXGclLqiFLSD6d2hBqiMgzKeQQ/UdZ0F
	efQFEaXR8wLZopVSRh2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04P1-0003wv-2A; Tue, 20 Aug 2019 13:42:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04NO-0002n2-0B
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 13:40:43 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 347382087E;
 Tue, 20 Aug 2019 13:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308441;
 bh=m22HFoX3w7hvrk2hqKVN+8o/6LdYI2zCxygFkC6HIIY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E+5Cgcz9MzD8+nGdzpeZjdKfXcfC3fKOvfapRIHB2YJxh2kkHlvDChUoLzOFR7eZw
 ej57v83ljn/xOUFAkjMF3p8k0AGv4Tl9JULdCVGGyAFRX1Q3jifUnYglY3CN70NiGr
 MkiozKfztd71azQUrPPXVlGlcdS+cmo+Bo4jKxkY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 14/44] nvme: fix a possible deadlock when passthru
 commands sent to a multipath device
Date: Tue, 20 Aug 2019 09:39:58 -0400
Message-Id: <20190820134028.10829-14-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134028.10829-1-sashal@kernel.org>
References: <20190820134028.10829-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064042_158474_07072968 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Sasha Levin <sashal@kernel.org>,
 James Puthukattukaran <james.puthukattukaran@oracle.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit b9156daeb1601d69007b7e50efcf89d69d72ec1d ]

When the user issues a command with side effects, we will end up freezing
the namespace request queue when updating disk info (and the same for
the corresponding mpath disk node).

However, we are not freezing the mpath node request queue,
which means that mpath I/O can still come in and block on blk_queue_enter
(called from nvme_ns_head_make_request -> direct_make_request).

This is a deadlock, because blk_queue_enter will block until the inner
namespace request queue is unfroze, but that process is blocked because
the namespace revalidation is trying to update the mpath disk info
and freeze its request queue (which will never complete because
of the I/O that is blocked on blk_queue_enter).

Fix this by freezing all the subsystem nsheads request queues before
executing the passthru command. Given that these commands are infrequent
we should not worry about this temporary I/O freeze to keep things sane.

Here is the matching hang traces:
--
[ 374.465002] INFO: task systemd-udevd:17994 blocked for more than 122 seconds.
[ 374.472975] Not tainted 5.2.0-rc3-mpdebug+ #42
[ 374.478522] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 374.487274] systemd-udevd D 0 17994 1 0x00000000
[ 374.493407] Call Trace:
[ 374.496145] __schedule+0x2ef/0x620
[ 374.500047] schedule+0x38/0xa0
[ 374.503569] blk_queue_enter+0x139/0x220
[ 374.507959] ? remove_wait_queue+0x60/0x60
[ 374.512540] direct_make_request+0x60/0x130
[ 374.517219] nvme_ns_head_make_request+0x11d/0x420 [nvme_core]
[ 374.523740] ? generic_make_request_checks+0x307/0x6f0
[ 374.529484] generic_make_request+0x10d/0x2e0
[ 374.534356] submit_bio+0x75/0x140
[ 374.538163] ? guard_bio_eod+0x32/0xe0
[ 374.542361] submit_bh_wbc+0x171/0x1b0
[ 374.546553] block_read_full_page+0x1ed/0x330
[ 374.551426] ? check_disk_change+0x70/0x70
[ 374.556008] ? scan_shadow_nodes+0x30/0x30
[ 374.560588] blkdev_readpage+0x18/0x20
[ 374.564783] do_read_cache_page+0x301/0x860
[ 374.569463] ? blkdev_writepages+0x10/0x10
[ 374.574037] ? prep_new_page+0x88/0x130
[ 374.578329] ? get_page_from_freelist+0xa2f/0x1280
[ 374.583688] ? __alloc_pages_nodemask+0x179/0x320
[ 374.588947] read_cache_page+0x12/0x20
[ 374.593142] read_dev_sector+0x2d/0xd0
[ 374.597337] read_lba+0x104/0x1f0
[ 374.601046] find_valid_gpt+0xfa/0x720
[ 374.605243] ? string_nocheck+0x58/0x70
[ 374.609534] ? find_valid_gpt+0x720/0x720
[ 374.614016] efi_partition+0x89/0x430
[ 374.618113] ? string+0x48/0x60
[ 374.621632] ? snprintf+0x49/0x70
[ 374.625339] ? find_valid_gpt+0x720/0x720
[ 374.629828] check_partition+0x116/0x210
[ 374.634214] rescan_partitions+0xb6/0x360
[ 374.638699] __blkdev_reread_part+0x64/0x70
[ 374.643377] blkdev_reread_part+0x23/0x40
[ 374.647860] blkdev_ioctl+0x48c/0x990
[ 374.651956] block_ioctl+0x41/0x50
[ 374.655766] do_vfs_ioctl+0xa7/0x600
[ 374.659766] ? locks_lock_inode_wait+0xb1/0x150
[ 374.664832] ksys_ioctl+0x67/0x90
[ 374.668539] __x64_sys_ioctl+0x1a/0x20
[ 374.672732] do_syscall_64+0x5a/0x1c0
[ 374.676828] entry_SYSCALL_64_after_hwframe+0x44/0xa9

[ 374.738474] INFO: task nvmeadm:49141 blocked for more than 123 seconds.
[ 374.745871] Not tainted 5.2.0-rc3-mpdebug+ #42
[ 374.751419] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[ 374.760170] nvmeadm D 0 49141 36333 0x00004080
[ 374.766301] Call Trace:
[ 374.769038] __schedule+0x2ef/0x620
[ 374.772939] schedule+0x38/0xa0
[ 374.776452] blk_mq_freeze_queue_wait+0x59/0x100
[ 374.781614] ? remove_wait_queue+0x60/0x60
[ 374.786192] blk_mq_freeze_queue+0x1a/0x20
[ 374.790773] nvme_update_disk_info.isra.57+0x5f/0x350 [nvme_core]
[ 374.797582] ? nvme_identify_ns.isra.50+0x71/0xc0 [nvme_core]
[ 374.804006] __nvme_revalidate_disk+0xe5/0x110 [nvme_core]
[ 374.810139] nvme_revalidate_disk+0xa6/0x120 [nvme_core]
[ 374.816078] ? nvme_submit_user_cmd+0x11e/0x320 [nvme_core]
[ 374.822299] nvme_user_cmd+0x264/0x370 [nvme_core]
[ 374.827661] nvme_dev_ioctl+0x112/0x1d0 [nvme_core]
[ 374.833114] do_vfs_ioctl+0xa7/0x600
[ 374.837117] ? __audit_syscall_entry+0xdd/0x130
[ 374.842184] ksys_ioctl+0x67/0x90
[ 374.845891] __x64_sys_ioctl+0x1a/0x20
[ 374.850082] do_syscall_64+0x5a/0x1c0
[ 374.854178] entry_SYSCALL_64_after_hwframe+0x44/0xa9
--

Reported-by: James Puthukattukaran <james.puthukattukaran@oracle.com>
Tested-by: James Puthukattukaran <james.puthukattukaran@oracle.com>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c      |  5 +++++
 drivers/nvme/host/multipath.c | 30 ++++++++++++++++++++++++++++++
 drivers/nvme/host/nvme.h      | 12 ++++++++++++
 3 files changed, 47 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index dfbd5872f4422..05301b94e2fa0 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1268,6 +1268,9 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 	 */
 	if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
 		mutex_lock(&ctrl->scan_lock);
+		mutex_lock(&ctrl->subsys->lock);
+		nvme_mpath_start_freeze(ctrl->subsys);
+		nvme_mpath_wait_freeze(ctrl->subsys);
 		nvme_start_freeze(ctrl);
 		nvme_wait_freeze(ctrl);
 	}
@@ -1298,6 +1301,8 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
 		nvme_update_formats(ctrl);
 	if (effects & (NVME_CMD_EFFECTS_LBCC | NVME_CMD_EFFECTS_CSE_MASK)) {
 		nvme_unfreeze(ctrl);
+		nvme_mpath_unfreeze(ctrl->subsys);
+		mutex_unlock(&ctrl->subsys->lock);
 		mutex_unlock(&ctrl->scan_lock);
 	}
 	if (effects & NVME_CMD_EFFECTS_CCC)
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index e942b3e840687..dafb9e4aa1237 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -12,6 +12,36 @@ module_param(multipath, bool, 0444);
 MODULE_PARM_DESC(multipath,
 	"turn on native support for multiple controllers per subsystem");
 
+void nvme_mpath_unfreeze(struct nvme_subsystem *subsys)
+{
+	struct nvme_ns_head *h;
+
+	lockdep_assert_held(&subsys->lock);
+	list_for_each_entry(h, &subsys->nsheads, entry)
+		if (h->disk)
+			blk_mq_unfreeze_queue(h->disk->queue);
+}
+
+void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys)
+{
+	struct nvme_ns_head *h;
+
+	lockdep_assert_held(&subsys->lock);
+	list_for_each_entry(h, &subsys->nsheads, entry)
+		if (h->disk)
+			blk_mq_freeze_queue_wait(h->disk->queue);
+}
+
+void nvme_mpath_start_freeze(struct nvme_subsystem *subsys)
+{
+	struct nvme_ns_head *h;
+
+	lockdep_assert_held(&subsys->lock);
+	list_for_each_entry(h, &subsys->nsheads, entry)
+		if (h->disk)
+			blk_freeze_queue_start(h->disk->queue);
+}
+
 /*
  * If multipathing is enabled we need to always use the subsystem instance
  * number for numbering our devices to avoid conflicts between subsystems that
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 7391cd0a7739e..b8b45822f7be0 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -477,6 +477,9 @@ static inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
 	return ctrl->ana_log_buf != NULL;
 }
 
+void nvme_mpath_unfreeze(struct nvme_subsystem *subsys);
+void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys);
+void nvme_mpath_start_freeze(struct nvme_subsystem *subsys);
 void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 			struct nvme_ctrl *ctrl, int *flags);
 void nvme_failover_req(struct request *req);
@@ -555,6 +558,15 @@ static inline void nvme_mpath_uninit(struct nvme_ctrl *ctrl)
 static inline void nvme_mpath_stop(struct nvme_ctrl *ctrl)
 {
 }
+static inline void nvme_mpath_unfreeze(struct nvme_subsystem *subsys)
+{
+}
+static inline void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys)
+{
+}
+static inline void nvme_mpath_start_freeze(struct nvme_subsystem *subsys)
+{
+}
 #endif /* CONFIG_NVME_MULTIPATH */
 
 #ifdef CONFIG_NVM
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
