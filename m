Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B49166853
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 21:30:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ru17Qv1b6fDQfA30Rq8FfvD//58dCry9mcHN06HgNuQ=; b=bI3mRfbFjc25q3
	KxuYyE7jfSL2wl93DY9n31VKF9kqm45x7wdbbxX6lUeJkpmq1A8jF0oD9Jp4l3axRvRXj1badhSU6
	S5yIAKJXkVoC7LJk797mcPVplSqnt3kF1vJNeZxZ8Vb0HfK05PM6q4bRhvysQIkv9nheD4blsN3Ug
	In3O7+YIVzdX8dR89RnkcAYpoJESixWq3S4/oetosXe95i9sT2mK8HOXfTnU9rafwkNN6FBWxi99U
	JmTIHyfGl6q+52+bUdpv7OrKjAmxWUw9IAOd0cT3S6TM5l1xr/++zQxiTYdTSghYvESDlD4cb9P8c
	VmJjNeOSxrZJiP1oDo3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4sSa-0006dB-OO; Thu, 20 Feb 2020 20:30:12 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sSW-0005PH-BR
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 20:30:09 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1j4sSO-0005XN-Dz; Thu, 20 Feb 2020 13:30:01 -0700
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1j4sSM-0006oK-Ry; Thu, 20 Feb 2020 13:29:58 -0700
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Thu, 20 Feb 2020 13:29:53 -0700
Message-Id: <20200220202953.26139-1-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 kbusch@kernel.org, axboe@fb.com, hch@lst.de, sagi@grimberg.me,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_FREE,MYRULES_NO_TEXT,URIBL_BLOCKED autolearn=no
 autolearn_force=no version=3.4.2
Subject: [PATCH] nvme-multipath: Fix memory leak with ana_log_buf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_123008_393481_065F397F 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

kmemleak reports a memory leak with the ana_log_buf allocated by
nvme_mpath_init():

unreferenced object 0xffff888120e94000 (size 8208):
  comm "nvme", pid 6884, jiffies 4295020435 (age 78786.312s)
    hex dump (first 32 bytes):
      00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
      01 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00  ................
    backtrace:
      [<00000000e2360188>] kmalloc_order+0x97/0xc0
      [<0000000079b18dd4>] kmalloc_order_trace+0x24/0x100
      [<00000000f50c0406>] __kmalloc+0x24c/0x2d0
      [<00000000f31a10b9>] nvme_mpath_init+0x23c/0x2b0
      [<000000005802589e>] nvme_init_identify+0x75f/0x1600
      [<0000000058ef911b>] nvme_loop_configure_admin_queue+0x26d/0x280
      [<00000000673774b9>] nvme_loop_create_ctrl+0x2a7/0x710
      [<00000000f1c7a233>] nvmf_dev_write+0xc66/0x10b9
      [<000000004199f8d0>] __vfs_write+0x50/0xa0
      [<0000000065466fef>] vfs_write+0xf3/0x280
      [<00000000b0db9a8b>] ksys_write+0xc6/0x160
      [<0000000082156b91>] __x64_sys_write+0x43/0x50
      [<00000000c34fbb6d>] do_syscall_64+0x77/0x2f0
      [<00000000bbc574c9>] entry_SYSCALL_64_after_hwframe+0x49/0xbe

nvme_mpath_init() is called by nvme_init_identify() which is called in
multiple places (nvme_reset_work(), nvme_passthru_end(), etc). This
means nvme_mpath_init() may be called multiple times before
nvme_mpath_uninit() (which is only called on nvme_free_ctrl()).

When nvme_mpath_init() is called multiple times, it overwrites the
ana_log_buf pointer with a new allocation, thus leaking the previous
allocation.

To fix this, free ana_log_buf before allocating a new one.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/multipath.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 797c18337d96..a11900cf3a36 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -715,6 +715,7 @@ int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	}
 
 	INIT_WORK(&ctrl->ana_work, nvme_ana_work);
+	kfree(ctrl->ana_log_buf);
 	ctrl->ana_log_buf = kmalloc(ctrl->ana_log_size, GFP_KERNEL);
 	if (!ctrl->ana_log_buf) {
 		error = -ENOMEM;

base-commit: 11a48a5a18c63fd7621bb050228cebf13566e4d8
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
