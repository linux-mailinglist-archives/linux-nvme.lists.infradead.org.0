Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3462996092
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 15:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjQ5Hr0vcfYI3len5tgHNFE8e9wkltr6Xfon0kypYXk=; b=DU8FHCfHSpvqps
	POUz3VPfIwaNIeblbkPxfGi2/Rr8mIv6OpWhV9xZBIMANHekV3cL5YgZf0OvNDyEgQLGQajwtsYc0
	sXmxhjtES4WofPxLtS/69VDHpJzMogdmbXYV94zoz7uG/ier0MwWQWbKHnqUtFS8UtGU+2ldRO7HG
	Kfz6IOkUmQhcTSmvHYXx7b2eI1zk1gAq8iN8kf3wQGzsvegKXopiw5eMa0DG2PMZ9jDr/TurNmhXK
	xHbvTGStLcDrckDLO5kjn2NzkJBGmczHXwqDfxhIv9dLsxKhsZuiprXL6fgKJDU5PiStP+a+vRMa4
	QdaxYLzHSun80nHN1FQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04Oo-0003le-OD; Tue, 20 Aug 2019 13:42:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04NN-0002mC-0R
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 13:40:42 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33B052339E;
 Tue, 20 Aug 2019 13:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308440;
 bh=/9RJlkedACGw7ohoLN1ltEN4W8LdBKzQ8gvD4GvVr+E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nStgeZqDtCERZuHpMpaU41c185g49hoUxYeX5Ru/ZlVm6ARBAJxVno74uOJjWoifP
 CfeUCrktVL2ovdmPR3/LgWFhVFts1xDwmLKAimVkTCr04fX06cf5rCYpeiHwZjp091
 HbrMS+3z2r/KA3VNPleRKEOOHD3QRE5fishoe204=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 13/44] nvme-core: Fix extra device_put() call on
 error path
Date: Tue, 20 Aug 2019 09:39:57 -0400
Message-Id: <20190820134028.10829-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134028.10829-1-sashal@kernel.org>
References: <20190820134028.10829-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064041_122310_1062CAA6 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: Sasha Levin <sashal@kernel.org>, Logan Gunthorpe <logang@deltatee.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 8c36e66fb407ce076535a7db98ab9f6d720b866a ]

In the error path for nvme_init_subsystem(), nvme_put_subsystem()
will call device_put(), but it will get called again after the
mutex_unlock().

The device_put() only needs to be called if device_add() fails.

This bug caused a KASAN use-after-free error when adding and
removing subsytems in a loop:

  BUG: KASAN: use-after-free in device_del+0x8d9/0x9a0
  Read of size 8 at addr ffff8883cdaf7120 by task multipathd/329

  CPU: 0 PID: 329 Comm: multipathd Not tainted 5.2.0-rc6-vmlocalyes-00019-g70a2b39005fd-dirty #314
  Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
  Call Trace:
   dump_stack+0x7b/0xb5
   print_address_description+0x6f/0x280
   ? device_del+0x8d9/0x9a0
   __kasan_report+0x148/0x199
   ? device_del+0x8d9/0x9a0
   ? class_release+0x100/0x130
   ? device_del+0x8d9/0x9a0
   kasan_report+0x12/0x20
   __asan_report_load8_noabort+0x14/0x20
   device_del+0x8d9/0x9a0
   ? device_platform_notify+0x70/0x70
   nvme_destroy_subsystem+0xf9/0x150
   nvme_free_ctrl+0x280/0x3a0
   device_release+0x72/0x1d0
   kobject_put+0x144/0x410
   put_device+0x13/0x20
   nvme_free_ns+0xc4/0x100
   nvme_release+0xb3/0xe0
   __blkdev_put+0x549/0x6e0
   ? kasan_check_write+0x14/0x20
   ? bd_set_size+0xb0/0xb0
   ? kasan_check_write+0x14/0x20
   ? mutex_lock+0x8f/0xe0
   ? __mutex_lock_slowpath+0x20/0x20
   ? locks_remove_file+0x239/0x370
   blkdev_put+0x72/0x2c0
   blkdev_close+0x8d/0xd0
   __fput+0x256/0x770
   ? _raw_read_lock_irq+0x40/0x40
   ____fput+0xe/0x10
   task_work_run+0x10c/0x180
   ? filp_close+0xf7/0x140
   exit_to_usermode_loop+0x151/0x170
   do_syscall_64+0x240/0x2e0
   ? prepare_exit_to_usermode+0xd5/0x190
   entry_SYSCALL_64_after_hwframe+0x44/0xa9
  RIP: 0033:0x7f5a79af05d7
  Code: 00 00 0f 05 48 3d 00 f0 ff ff 77 3f c3 66 0f 1f 44 00 00 53 89 fb 48 83 ec 10 e8 c4 fb ff ff 89 df 89 c2 b8 03 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 2b 89 d7 89 44 24 0c e8 06 fc ff ff 8b 44 24
  RSP: 002b:00007f5a7799c810 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
  RAX: 0000000000000000 RBX: 0000000000000008 RCX: 00007f5a79af05d7
  RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000008
  RBP: 00007f5a58000f98 R08: 0000000000000002 R09: 00007f5a7935ee80
  R10: 0000000000000000 R11: 0000000000000293 R12: 000055e432447240
  R13: 0000000000000000 R14: 0000000000000001 R15: 000055e4324a9cf0

  Allocated by task 1236:
   save_stack+0x21/0x80
   __kasan_kmalloc.constprop.6+0xab/0xe0
   kasan_kmalloc+0x9/0x10
   kmem_cache_alloc_trace+0x102/0x210
   nvme_init_identify+0x13c3/0x3820
   nvme_loop_configure_admin_queue+0x4fa/0x5e0
   nvme_loop_create_ctrl+0x469/0xf40
   nvmf_dev_write+0x19a3/0x21ab
   __vfs_write+0x66/0x120
   vfs_write+0x154/0x490
   ksys_write+0x104/0x240
   __x64_sys_write+0x73/0xb0
   do_syscall_64+0xa5/0x2e0
   entry_SYSCALL_64_after_hwframe+0x44/0xa9

  Freed by task 329:
   save_stack+0x21/0x80
   __kasan_slab_free+0x129/0x190
   kasan_slab_free+0xe/0x10
   kfree+0xa7/0x200
   nvme_release_subsystem+0x49/0x60
   device_release+0x72/0x1d0
   kobject_put+0x144/0x410
   put_device+0x13/0x20
   klist_class_dev_put+0x31/0x40
   klist_put+0x8f/0xf0
   klist_del+0xe/0x10
   device_del+0x3a7/0x9a0
   nvme_destroy_subsystem+0xf9/0x150
   nvme_free_ctrl+0x280/0x3a0
   device_release+0x72/0x1d0
   kobject_put+0x144/0x410
   put_device+0x13/0x20
   nvme_free_ns+0xc4/0x100
   nvme_release+0xb3/0xe0
   __blkdev_put+0x549/0x6e0
   blkdev_put+0x72/0x2c0
   blkdev_close+0x8d/0xd0
   __fput+0x256/0x770
   ____fput+0xe/0x10
   task_work_run+0x10c/0x180
   exit_to_usermode_loop+0x151/0x170
   do_syscall_64+0x240/0x2e0
   entry_SYSCALL_64_after_hwframe+0x44/0xa9

Fixes: 32fd90c40768 ("nvme: change locking for the per-subsystem controller list")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ab1a2b1ec3637..dfbd5872f4422 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2440,6 +2440,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		if (ret) {
 			dev_err(ctrl->device,
 				"failed to register subsystem device.\n");
+			put_device(&subsys->dev);
 			goto out_unlock;
 		}
 		ida_init(&subsys->ns_ida);
@@ -2462,7 +2463,6 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	nvme_put_subsystem(subsys);
 out_unlock:
 	mutex_unlock(&nvme_subsystems_lock);
-	put_device(&subsys->dev);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
