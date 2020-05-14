Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15531D26DF
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 07:56:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wNarzvdVGyLlnxkpXtd7SB7WWJCM7kXGUH4UCOAgDFc=; b=qLtN+p1QrCamA3
	TL6032FM2/+dcn7j9qdCBIP1P7G3S5X4s8kY2iIGabMqcuni+iDU60kVaQhlKMOzgQwRnde0I+vql
	Mh/cOVy61hozitIh+4HI3JGjUHSWi6p2MuvXdCq1YSrXiy8cXN69PJZtXFhDFgSxi4O5mS304tkOK
	MY1n4pqASfYJgbqad3Q3WH63/xVtgo3qeysTXgf8swdC//oBeUFGViNiclrT22qx7l1qu4qAj5JT1
	zk81HvTPEA7jZUWcgkiGUy0Tqyiv21k4VBEJ1JIctHg5dk8Fcq/jj8DsCHGsZ90GzN4LW2KeeVe6Q
	XfAbp7kT6GI4nbwN56sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ6rG-0006NB-70; Thu, 14 May 2020 05:56:38 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ6rB-0006MB-FO
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 05:56:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589435793; x=1620971793;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uZhkTafbhEX35zTDQdtGiAFtVEKXqBC7TMwD7E1beHE=;
 b=GwPLmyCvp1Xn5GQDklPav5q7wrPS7zyi/rnkUNhsIUzhjr/qDDr0bDzm
 EqY6xcQqGf+MhI3gr+qddTgYSIo9+jq+uxF5qhRPBGFHph+GS0tR6BIWe
 J9i4KEtuomrD5m4vuXfa4LhapPCw3bz0AAlqrzOBqbhEEJbOvkPP+Qrvm
 1FlwzC5WoC4O7NTLAKaPrx4ZJOVDqNTpR6hllkN5fH5y0/wjLF+v4kYNn
 n7YxjNqUBklEjVA4t+czXYW2EMpxjqEM7GdH2Km6gmx33DImwaiVp73Sg
 +b8xuuIfXt0WAYIcdNzryN3EwT5SSs4dMMP/bjm+BM/rgDwh+tytS4oU0 Q==;
IronPort-SDR: /D8OOJ4AeseEqmKcBZ5J96CuSS5Nb5IA6Z837la6z7/FJMvhnMoC7GPuhByu9ZH6DnpUAwpyJw
 x/QK1CnVxKwS4J4fia4d3PxOpfv64jQCEQVRinqAXf+xN1O2DePhCvjibFzjfTidyubpu3v+i/
 htuKn29bcU9T2tW0EId33PCyl5YCOx0/9zud7huVtyJOJxhpjEgzCoxFodE0zmxsxQ5HhOsM+d
 lLv7YwmZiTsgMzJRbU4AV60rp8dMTC2EQlUKP8AHuYx2drUXxcxobKyWlFpCW4yI/pvYlKmSEd
 nSw=
X-IronPort-AV: E=Sophos;i="5.73,390,1583164800"; d="scan'208";a="139078333"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2020 13:56:28 +0800
IronPort-SDR: brnRGefqVX425MQM4lC2wb9o2bcZ+FgYnm0yEx+GK9xaLd0/62b3xRIM+GWC8YuXKqrn7MoDtj
 IXWJfFZoDyH5D3TZW+gObfODjL9cGtetk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 22:46:41 -0700
IronPort-SDR: GUFq/y9lxsACD7y2OWcaWX0rCipv4+rEPH95BrEh+PlKRzRHTz8P05Z5LGesYzUvPMhJRJK5tI
 DktGHcDAsvAw==
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 May 2020 22:56:28 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v2] nvme: Fix io_opt limit setting
Date: Thu, 14 May 2020 14:56:26 +0900
Message-Id: <20200514055626.1111729-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_225633_596944_BE654B39 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-block@vger.kernel.org, Jens Axboe <axboe@kernel.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently, a namespace io_opt queue limit is set by default to the
physical sector size of the namespace and to the the write optimal
size (NOWS) when the namespace reports optimal IO sizes. This causes
problems with block limits stacking in blk_stack_limits() when a
namespace block device is combined with an HDD which generally do not
report any optimal transfer size (io_opt limit is 0). The code:

/* Optimal I/O a multiple of the physical block size? */
if (t->io_opt & (t->physical_block_size - 1)) {
	t->io_opt = 0;
	t->misaligned = 1;
	ret = -1;
}

in blk_stack_limits() results in an error return for this function when
the combined devices have different but compatible physical sector
sizes (e.g. 512B sector SSD with 4KB sector disks).

Fix this by not setting the optimal IO size queue limit if the namespace
does not report an optimal write size value.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---

* Changes from v1:
  - Rebased on nvme/nvme-5.8 tree

 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 805d289e6cd9..951d558dc662 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1842,7 +1842,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 {
 	sector_t capacity = nvme_lba_to_sect(ns, le64_to_cpu(id->nsze));
 	unsigned short bs = 1 << ns->lba_shift;
-	u32 atomic_bs, phys_bs, io_opt;
+	u32 atomic_bs, phys_bs, io_opt = 0;
 
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
@@ -1851,7 +1851,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
-	atomic_bs = phys_bs = io_opt = bs;
+	atomic_bs = phys_bs = bs;
 	nvme_setup_streams_ns(ns->ctrl, ns, &phys_bs, &io_opt);
 	if (id->nabo == 0) {
 		/*
-- 
2.25.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
