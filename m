Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851C97F8DD
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 15:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtuBwb7KmhuhmUqNY3jEa0DCSd9mfTn6f1jaMczdjh8=; b=pO8yzby4jF4nq2
	lYPsDRD/8Jbsw6szjLg+mZeqAXDIMAMmPDdA8Wd5CkuiCZj42wQxrqGpcRz5BauC6P4I7Huya0KWi
	UOOGgvAtbvsrYGBU/BMmniIWDePj4Zm34EX16uaSL19wnDf54s/cz06gpiLLuzbo/ucB9AyQO2g2n
	pe3j6yYQ1w+DWFmdFDJiajeA4WqbZeUzJMJxs4xl6SuJHBvb6sb4UN018zqPbnI+5l39tmJMyln5D
	y6hSzpOqCVlgR/Ql2mdfLG+BysRgm9ImI9UCJkn3hyFyAKcEZvzeeTiWRpqnBBKMNd2wIsbjZe6Jg
	Ly5yehFjHPo3uaoQ7PFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXXR-00054B-1i; Fri, 02 Aug 2019 13:24:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXXM-00053J-B3
 for linux-nvme@lists.infradead.org; Fri, 02 Aug 2019 13:24:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 30ABF21850;
 Fri,  2 Aug 2019 13:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564752240;
 bh=EcsuI+g39qTBmjUcacw7kMGLcPEQ3i7hCV+lyVy9SMM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CAGVg/RPMwnMoJ7GmfK0FtjGZJ9QiFUI10M3Wd4e49MZbwBmf11MFNuTHmAwxxZA2
 iF9+kh8ienyz7UwrYrNSLTa3g0ujKfrQdNuKHwas8vnfwR/P0AEL17XSbJOie5QQCc
 nBv2HM2G+HqPU8WjXDR1PN1p0OC3MCuLcrCtcWDY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 31/42] nvme: fix multipath crash when ANA is
 deactivated
Date: Fri,  2 Aug 2019 09:22:51 -0400
Message-Id: <20190802132302.13537-31-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802132302.13537-1-sashal@kernel.org>
References: <20190802132302.13537-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_062400_422539_60D784D0 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sasha Levin <sashal@kernel.org>, Marta Rybczynska <mrybczyn@kalray.eu>,
 linux-nvme@lists.infradead.org, Jean-Baptiste Riaux <jbriaux@kalray.eu>,
 Marta Rybczynska <marta.rybczynska@kalray.eu>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Marta Rybczynska <mrybczyn@kalray.eu>

[ Upstream commit 66b20ac0a1a10769d059d6903202f53494e3d902 ]

Fix a crash with multipath activated. It happends when ANA log
page is larger than MDTS and because of that ANA is disabled.
The driver then tries to access unallocated buffer when connecting
to a nvme target. The signature is as follows:

[  300.433586] nvme nvme0: ANA log page size (8208) larger than MDTS (8192).
[  300.435387] nvme nvme0: disabling ANA support.
[  300.437835] nvme nvme0: creating 4 I/O queues.
[  300.459132] nvme nvme0: new ctrl: NQN "nqn.0.0.0", addr 10.91.0.1:8009
[  300.464609] BUG: unable to handle kernel NULL pointer dereference at 0000000000000008
[  300.466342] #PF error: [normal kernel read fault]
[  300.467385] PGD 0 P4D 0
[  300.467987] Oops: 0000 [#1] SMP PTI
[  300.468787] CPU: 3 PID: 50 Comm: kworker/u8:1 Not tainted 5.0.20kalray+ #4
[  300.470264] Hardware name: Red Hat KVM, BIOS 0.5.1 01/01/2011
[  300.471532] Workqueue: nvme-wq nvme_scan_work [nvme_core]
[  300.472724] RIP: 0010:nvme_parse_ana_log+0x21/0x140 [nvme_core]
[  300.474038] Code: 45 01 d2 d8 48 98 c3 66 90 0f 1f 44 00 00 41 57 41 56 41 55 41 54 55 53 48 89 fb 48 83 ec 08 48 8b af 20 0a 00 00 48 89 34 24 <66> 83 7d 08 00 0f 84 c6 00 00 00 44 8b 7d 14 49 89 d5 8b 55 10 48
[  300.477374] RSP: 0018:ffffa50e80fd7cb8 EFLAGS: 00010296
[  300.478334] RAX: 0000000000000001 RBX: ffff9130f1872258 RCX: 0000000000000000
[  300.479784] RDX: ffffffffc06c4c30 RSI: ffff9130edad4280 RDI: ffff9130f1872258
[  300.481488] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000044
[  300.483203] R10: 0000000000000220 R11: 0000000000000040 R12: ffff9130f18722c0
[  300.484928] R13: ffff9130f18722d0 R14: ffff9130edad4280 R15: ffff9130f18722c0
[  300.486626] FS:  0000000000000000(0000) GS:ffff9130f7b80000(0000) knlGS:0000000000000000
[  300.488538] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  300.489907] CR2: 0000000000000008 CR3: 00000002365e6000 CR4: 00000000000006e0
[  300.491612] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  300.493303] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  300.494991] Call Trace:
[  300.495645]  nvme_mpath_add_disk+0x5c/0xb0 [nvme_core]
[  300.496880]  nvme_validate_ns+0x2ef/0x550 [nvme_core]
[  300.498105]  ? nvme_identify_ctrl.isra.45+0x6a/0xb0 [nvme_core]
[  300.499539]  nvme_scan_work+0x2b4/0x370 [nvme_core]
[  300.500717]  ? __switch_to_asm+0x35/0x70
[  300.501663]  process_one_work+0x171/0x380
[  300.502340]  worker_thread+0x49/0x3f0
[  300.503079]  kthread+0xf8/0x130
[  300.503795]  ? max_active_store+0x80/0x80
[  300.504690]  ? kthread_bind+0x10/0x10
[  300.505502]  ret_from_fork+0x35/0x40
[  300.506280] Modules linked in: nvme_tcp nvme_rdma rdma_cm iw_cm ib_cm ib_core nvme_fabrics nvme_core xt_physdev ip6table_raw ip6table_mangle ip6table_filter ip6_tables xt_comment iptable_nat nf_nat_ipv4 nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 xt_CHECKSUM iptable_mangle iptable_filter veth ebtable_filter ebtable_nat ebtables iptable_raw vxlan ip6_udp_tunnel udp_tunnel sunrpc joydev pcspkr virtio_balloon br_netfilter bridge stp llc ip_tables xfs libcrc32c ata_generic pata_acpi virtio_net virtio_console net_failover virtio_blk failover ata_piix serio_raw libata virtio_pci virtio_ring virtio
[  300.514984] CR2: 0000000000000008
[  300.515569] ---[ end trace faa2eefad7e7f218 ]---
[  300.516354] RIP: 0010:nvme_parse_ana_log+0x21/0x140 [nvme_core]
[  300.517330] Code: 45 01 d2 d8 48 98 c3 66 90 0f 1f 44 00 00 41 57 41 56 41 55 41 54 55 53 48 89 fb 48 83 ec 08 48 8b af 20 0a 00 00 48 89 34 24 <66> 83 7d 08 00 0f 84 c6 00 00 00 44 8b 7d 14 49 89 d5 8b 55 10 48
[  300.520353] RSP: 0018:ffffa50e80fd7cb8 EFLAGS: 00010296
[  300.521229] RAX: 0000000000000001 RBX: ffff9130f1872258 RCX: 0000000000000000
[  300.522399] RDX: ffffffffc06c4c30 RSI: ffff9130edad4280 RDI: ffff9130f1872258
[  300.523560] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000044
[  300.524734] R10: 0000000000000220 R11: 0000000000000040 R12: ffff9130f18722c0
[  300.525915] R13: ffff9130f18722d0 R14: ffff9130edad4280 R15: ffff9130f18722c0
[  300.527084] FS:  0000000000000000(0000) GS:ffff9130f7b80000(0000) knlGS:0000000000000000
[  300.528396] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  300.529440] CR2: 0000000000000008 CR3: 00000002365e6000 CR4: 00000000000006e0
[  300.530739] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[  300.531989] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[  300.533264] Kernel panic - not syncing: Fatal exception
[  300.534338] Kernel Offset: 0x17c00000 from 0xffffffff81000000 (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[  300.536227] ---[ end Kernel panic - not syncing: Fatal exception ]---

Condition check refactoring from Christoph Hellwig.

Signed-off-by: Marta Rybczynska <marta.rybczynska@kalray.eu>
Tested-by: Jean-Baptiste Riaux <jbriaux@kalray.eu>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/multipath.c | 8 ++------
 drivers/nvme/host/nvme.h      | 6 +++++-
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 260248fbb8feb..a11e210d173e4 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -20,11 +20,6 @@ module_param(multipath, bool, 0444);
 MODULE_PARM_DESC(multipath,
 	"turn on native support for multiple controllers per subsystem");
 
-inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
-{
-	return multipath && ctrl->subsys && (ctrl->subsys->cmic & (1 << 3));
-}
-
 /*
  * If multipathing is enabled we need to always use the subsystem instance
  * number for numbering our devices to avoid conflicts between subsystems that
@@ -516,7 +511,8 @@ int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
 	int error;
 
-	if (!nvme_ctrl_use_ana(ctrl))
+	/* check if multipath is enabled and we have the capability */
+	if (!multipath || !ctrl->subsys || !(ctrl->subsys->cmic & (1 << 3)))
 		return 0;
 
 	ctrl->anacap = id->anacap;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index e82cdaec81c9c..d5e29b57eb340 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -464,7 +464,11 @@ extern const struct attribute_group nvme_ns_id_attr_group;
 extern const struct block_device_operations nvme_ns_head_ops;
 
 #ifdef CONFIG_NVME_MULTIPATH
-bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl);
+static inline bool nvme_ctrl_use_ana(struct nvme_ctrl *ctrl)
+{
+	return ctrl->ana_log_buf != NULL;
+}
+
 void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 			struct nvme_ctrl *ctrl, int *flags);
 void nvme_failover_req(struct request *req);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
