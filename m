Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5781D2700
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 08:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nc9FZ/0X9czLAlrlgBMd4VyJ7pTTLjriiIrgBdls/+c=; b=rjo
	xyZphS9ziyt8tQ2IIa9CiffW7ggWPxUOOc7ZhzgGtHHFzzYCeLPVEHM8FjK0aQ28N5YndPSSh2r45
	kXl+i+PJ7EUUJH75nfEFpCNGfzs6FslOiJbHgwI/CfNgpcdzIBOCrcU408Wzgxi6+p2fFIB7Rg2lk
	XOgbWvdmZKhHoiLP4GCks+SEWYX+hDrBIVN1NgghQiNG3vSKM1JJU7MTcdo4NpJWPp6H3fEprepzk
	aSI/lLsMzNUaZQ0YzET6K9LaEpV4Rx0oLEm9FKRdUfv17TTD3GLwyEDRHOqZlbT+7XHqtbpwzFyrO
	eIorcFsD1VqSREc5j8PwAAVipvgbiLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ6zt-0004MA-92; Thu, 14 May 2020 06:05:33 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ6zo-0004LW-1M
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 06:05:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3BDEAACFA;
 Thu, 14 May 2020 06:05:24 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme: set 'io_opt' to '0' if not specified
Date: Thu, 14 May 2020 08:05:14 +0200
Message-Id: <20200514060514.85309-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_230529_837939_4BFF6F95 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Damien LeMoal <damien.lemoal@wdc.com>, Mike Snitzer <snitzer@redhat.com>,
 Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When no optimal I/O size is report we should set the value of
io_opt to '0', not the block size.
This avoids any potential miscalculation of the block limits
for stacking devices.

Reported-by: Damien LeMoal <damien.lemoal@wdc.com>
Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a4d8c90ee7cc..6a8a8e749d11 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1785,12 +1785,12 @@ static void nvme_update_disk_info(struct gendisk *disk,
 		atomic_bs = bs;
 	}
 	phys_bs = bs;
-	io_opt = bs;
+	io_opt = 0;
 	if (id->nsfeat & (1 << 4)) {
 		/* NPWG = Namespace Preferred Write Granularity */
 		phys_bs *= 1 + le16_to_cpu(id->npwg);
 		/* NOWS = Namespace Optimal Write Size */
-		io_opt *= 1 + le16_to_cpu(id->nows);
+		io_opt = bs * 1 + le16_to_cpu(id->nows);
 	}
 
 	blk_queue_logical_block_size(disk->queue, bs);
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
