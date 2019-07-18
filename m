Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F016D765
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 01:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mGS+gO+kvBhpgsJuwqnnND04P5FX009Ql7hlL/xBaJY=; b=nOlfOcl3KN4Tpa
	FPfQqeMV8U2E64hAkwLrizWeG7Q996IsRc+JqOo2KB4CfNO4Yn7Jrwmt8gy880lkl8lE3USiasbeN
	yijfV91fgNPjZquyZTrI7IYzwttZENU8LlWWj3TjIZxtIZX2xQRf0K3llsEm4Dtw9H+rPe61a36rE
	Ai59IYlS8p7LQ78oP9BA+2ZMtn0R+IZQPAtqr7mPauQfa1jedp0cwLkXIgI/c2YDvghticLJcuSRd
	/wEpwgYgwGhatUtOr5+qlxEUqEtAeQn4zQcNpRGnhdEwqyZXSTudBU3dImGU+BxvEOHWkA7q6a0/z
	Eh/wqrxfWgs8gCmmhfxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoGDt-0005mp-BE; Thu, 18 Jul 2019 23:54:05 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoGDj-0005mB-7V
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 23:53:56 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hoGDh-0002nz-FR; Thu, 18 Jul 2019 17:53:54 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hoGDg-0001jK-0y; Thu, 18 Jul 2019 17:53:52 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 18 Jul 2019 17:53:50 -0600
Message-Id: <20190718235350.6610-1-logang@deltatee.com>
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
Subject: [PATCH] nvme-core: Fix memory leak caused by incorrect subsystem free
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_165355_612881_D382C7CA 
X-CRM114-Status: GOOD (  11.84  )
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

When freeing the subsystem after finding another match with
__nvme_find_get_subsystem(), use put_device() instead of
__nvme_release_subsystem() which calls kfree() directly.

Per the documentation, put_device() should always be used
after device_initialization() is called. Otherwise, leaks
like the one below which was detected by kmemleak may occur.

Once the call of __nvme_release_subsystem() is removed it no
longer makes sense to keep the helper, so fold it back
into nvme_release_subsystem().

unreferenced object 0xffff8883d12bfbc0 (size 16):
  comm "nvme", pid 2635, jiffies 4294933602 (age 739.952s)
  hex dump (first 16 bytes):
    6e 76 6d 65 2d 73 75 62 73 79 73 32 00 88 ff ff  nvme-subsys2....
  backtrace:
    [<000000007d8fc208>] __kmalloc_track_caller+0x16d/0x2a0
    [<0000000081169e5f>] kvasprintf+0xad/0x130
    [<0000000025626f25>] kvasprintf_const+0x47/0x120
    [<00000000fa66ad36>] kobject_set_name_vargs+0x44/0x120
    [<000000004881f8b3>] dev_set_name+0x98/0xc0
    [<000000007124dae3>] nvme_init_identify+0x1995/0x38e0
    [<000000009315020a>] nvme_loop_configure_admin_queue+0x4fa/0x5e0
    [<000000001a63e766>] nvme_loop_create_ctrl+0x489/0xf80
    [<00000000a46ecc23>] nvmf_dev_write+0x1a12/0x2220
    [<000000002259b3d5>] __vfs_write+0x66/0x120
    [<000000002f6df81e>] vfs_write+0x154/0x490
    [<000000007e8cfc19>] ksys_write+0x10a/0x240
    [<00000000ff5c7b85>] __x64_sys_write+0x73/0xb0
    [<00000000fee6d692>] do_syscall_64+0xaa/0x470
    [<00000000997e1ede>] entry_SYSCALL_64_after_hwframe+0x49/0xbe

Fixes: ab9e00cc72fa ("nvme: track subsystems")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/core.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 0a7b46066fe3..f53207f65d9a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2316,17 +2316,15 @@ static void nvme_init_subnqn(struct nvme_subsystem *subsys, struct nvme_ctrl *ct
 	memset(subsys->subnqn + off, 0, sizeof(subsys->subnqn) - off);
 }
 
-static void __nvme_release_subsystem(struct nvme_subsystem *subsys)
+static void nvme_release_subsystem(struct device *dev)
 {
+	struct nvme_subsystem *subsys =
+		container_of(dev, struct nvme_subsystem, dev);
+
 	ida_simple_remove(&nvme_subsystems_ida, subsys->instance);
 	kfree(subsys);
 }
 
-static void nvme_release_subsystem(struct device *dev)
-{
-	__nvme_release_subsystem(container_of(dev, struct nvme_subsystem, dev));
-}
-
 static void nvme_destroy_subsystem(struct kref *ref)
 {
 	struct nvme_subsystem *subsys =
@@ -2482,7 +2480,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	mutex_lock(&nvme_subsystems_lock);
 	found = __nvme_find_get_subsystem(subsys->subnqn);
 	if (found) {
-		__nvme_release_subsystem(subsys);
+		put_device(&subsys->dev);
 		subsys = found;
 
 		if (!nvme_validate_cntlid(subsys, ctrl, id)) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
