Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4A26D6ED
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 00:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kPz9Jb85o4uSDb2xx4Y7VniXUAgHBdNOnvGwXIVFiYs=; b=agAlTgyuFsHyr7
	4mHX4quo+AeEphIarNQtZp5+W6hkxYkZhkMrFbGYW5dNWvIqLLAxnb8WBZfujHSstI+d4y5x38L5I
	gWv4Y9UPmuR+bEC9IMuEXX3hWg3U++0g/BERFtTlNe7Fh93sYV+5baQOTE/MoD4TuZGJvie/pDjnx
	nE2Zy8E46/wxZJ0xVHSUImukils7j+3yu4ObVzi2aXH3tXyhooAd6HDUsYIkGdShXZWwfXa6M4YKf
	MB5fz67X+BA4uuvg1UzDQj0aubcs6t3SiFiHyyv+ZKSAG7bVBVQ6U6MBjD4p7LoaQfQmSpnsEeXav
	bvQie4XSuB9kpM1MJehQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoFG0-0006gp-Pg; Thu, 18 Jul 2019 22:52:12 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoFFo-0006fA-KJ
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 22:52:02 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hoFFf-0001to-Bh; Thu, 18 Jul 2019 16:51:53 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hoFFc-0001XK-AT; Thu, 18 Jul 2019 16:51:48 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 18 Jul 2019 16:51:31 -0600
Message-Id: <20190718225132.5865-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] nvme-core: Fix extra device_put() call on error path
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_155200_727282_14AC7EDC 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

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
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cc09b81fc7f4..3ca33a2714e5 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2489,6 +2489,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		if (ret) {
 			dev_err(ctrl->device,
 				"failed to register subsystem device.\n");
+			put_device(&subsys->dev);
 			goto out_unlock;
 		}
 		ida_init(&subsys->ns_ida);
@@ -2511,7 +2512,6 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
