Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB0D68D12
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 15:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1AjnP7j6ZXCn31jrMZHSXVr3FQw0ZHpOMJZz6CWJZ0=; b=RkfR0zI6lszeNO
	TBMYIZq1T5mhV90y3plRlaGi1RFlLUrFSMf8mdiR9/6X+Fh7NFW6MNNo0ru/nKixu03gMZ7IrekxL
	hztgxu8gA4ZoM4DYUYFLYV4SSVp28TgdSee5Pts3QjlzIt/ZhK+6zpS7Z9fRbfoX38RDeC9Mc8FDf
	KemTS0u27ubA+vgHilM6GmSi8msHs1abFP0dGfHRIyOO9ie8iLlONEGaoU3jStdfGus6JBN0m/3w8
	GCZ2eF0qmfcGalI1RQEkbw52Kh1AY43co+0d6812p4vv9RDtYvvD2eajMLSdq+Qx5bemSj/wYFm/k
	jeBky3s16LULvRLgIkkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1SU-0007jl-F0; Mon, 15 Jul 2019 13:56:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1Rg-0006m8-Af
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 13:55:14 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0435B2086C;
 Mon, 15 Jul 2019 13:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563198911;
 bh=ovg9ZDUI6jl1GuH5iDDALQ2Yb/zQJbhBTTu2XRVRrLg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Pl1ZHbFx1s32MPtrcjkFOtmm0WwO785ykjOaAoK0r+/XEut2/iFwtHkMQ03D6lOGP
 fwZpgI5osGnJeOMuo+z46AIsAV9H6vYaKrB6ITlLOxVor52AycW+HKMBkmwuz5iJjZ
 CSH9fIIuH08UGxbShm1PxC+WJ1nlgk8ijE58gKoU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 139/249] nvme-pci: adjust irq max_vector using
 num_possible_cpus()
Date: Mon, 15 Jul 2019 09:45:04 -0400
Message-Id: <20190715134655.4076-139-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_065513_048091_C1FFDFB0 
X-CRM114-Status: GOOD (  12.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Minwoo Im <minwoo.im.dev@gmail.com>

[ Upstream commit dad77d63903e91a2e97a0c984cabe5d36e91ba60 ]

If the "irq_queues" are greater than num_possible_cpus(),
nvme_calc_irq_sets() can have irq set_size for HCTX_TYPE_DEFAULT greater
than it can be afforded.
2039         affd->set_size[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;

It might cause a WARN() from the irq_build_affinity_masks() like [1]:
220         if (nr_present < numvecs)
221                 WARN_ON(nr_present + nr_others < numvecs);

This patch prevents it from the WARN() by adjusting the max_vector value
from the nvme_setup_irqs().

[1] WARN messages when modprobe nvme write_queues=32 poll_queues=0:
root@target:~/nvme# nproc
8
root@target:~/nvme# modprobe nvme write_queues=32 poll_queues=0
[   17.925326] nvme nvme0: pci function 0000:00:04.0
[   17.940601] WARNING: CPU: 3 PID: 1030 at kernel/irq/affinity.c:221 irq_create_affinity_masks+0x222/0x330
[   17.940602] Modules linked in: nvme nvme_core [last unloaded: nvme]
[   17.940605] CPU: 3 PID: 1030 Comm: kworker/u17:4 Tainted: G        W         5.1.0+ #156
[   17.940605] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.12.1-0-ga5cab58e9a3f-prebuilt.qemu.org 04/01/2014
[   17.940608] Workqueue: nvme-reset-wq nvme_reset_work [nvme]
[   17.940609] RIP: 0010:irq_create_affinity_masks+0x222/0x330
[   17.940611] Code: 4c 8d 4c 24 28 4c 8d 44 24 30 e8 c9 fa ff ff 89 44 24 18 e8 c0 38 fa ff 8b 44 24 18 44 8b 54 24 1c 5a 44 01 d0 41 39 c4 76 02 <0f> 0b 48 89 df 44 01 e5 e8 f1 ce 10 00 48 8b 34 24 44 89 f0 44 01
[   17.940611] RSP: 0018:ffffc90002277c50 EFLAGS: 00010216
[   17.940612] RAX: 0000000000000008 RBX: ffff88807ca48860 RCX: 0000000000000000
[   17.940612] RDX: ffff88807bc03800 RSI: 0000000000000020 RDI: 0000000000000000
[   17.940613] RBP: 0000000000000001 R08: ffffc90002277c78 R09: ffffc90002277c70
[   17.940613] R10: 0000000000000008 R11: 0000000000000001 R12: 0000000000000020
[   17.940614] R13: 0000000000025d08 R14: 0000000000000001 R15: ffff88807bc03800
[   17.940614] FS:  0000000000000000(0000) GS:ffff88807db80000(0000) knlGS:0000000000000000
[   17.940616] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   17.940617] CR2: 00005635e583f790 CR3: 000000000240a000 CR4: 00000000000006e0
[   17.940617] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   17.940618] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   17.940618] Call Trace:
[   17.940622]  __pci_enable_msix_range+0x215/0x540
[   17.940623]  ? kernfs_put+0x117/0x160
[   17.940625]  pci_alloc_irq_vectors_affinity+0x74/0x110
[   17.940626]  nvme_reset_work+0xc30/0x1397 [nvme]
[   17.940628]  ? __switch_to_asm+0x34/0x70
[   17.940628]  ? __switch_to_asm+0x40/0x70
[   17.940629]  ? __switch_to_asm+0x34/0x70
[   17.940630]  ? __switch_to_asm+0x40/0x70
[   17.940630]  ? __switch_to_asm+0x34/0x70
[   17.940631]  ? __switch_to_asm+0x40/0x70
[   17.940632]  ? nvme_irq_check+0x30/0x30 [nvme]
[   17.940633]  process_one_work+0x20b/0x3e0
[   17.940634]  worker_thread+0x1f9/0x3d0
[   17.940635]  ? cancel_delayed_work+0xa0/0xa0
[   17.940636]  kthread+0x117/0x120
[   17.940637]  ? kthread_stop+0xf0/0xf0
[   17.940638]  ret_from_fork+0x3a/0x50
[   17.940639] ---[ end trace aca8a131361cd42a ]---
[   17.942124] nvme nvme0: 7/1/0 default/read/poll queues

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 544d095d44e5..f5bc1c30cef5 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2068,6 +2068,7 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		.priv		= dev,
 	};
 	unsigned int irq_queues, this_p_queues;
+	unsigned int nr_cpus = num_possible_cpus();
 
 	/*
 	 * Poll queues don't need interrupts, but we need at least one IO
@@ -2078,7 +2079,10 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		this_p_queues = nr_io_queues - 1;
 		irq_queues = 1;
 	} else {
-		irq_queues = nr_io_queues - this_p_queues + 1;
+		if (nr_cpus < nr_io_queues - this_p_queues)
+			irq_queues = nr_cpus + 1;
+		else
+			irq_queues = nr_io_queues - this_p_queues + 1;
 	}
 	dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
