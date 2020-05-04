Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503971C3F31
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 17:58:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cSE/zbFPDI2wOF2ZDVPgh7M9HrZefZh1jnnihIIKrA=; b=MgGH7XR/YaNM3C
	lrFHN03p4NnlagiQM3I/Rk5PVAhUqjTGHg5vhmernfSG2929ykOaTOxbBz2MMmI+bFPzusccSJ3nB
	k3dcud2x9snABUPhfkbV0eneiCqnSYqjANrR8GgovoylnOJw6IA5pBcQTHZF+0ljGmPFQZDznNN2U
	U2SsKl34hedXctPTJI3feHmMZ8eQinGXJcBBR52brNufH2mM6rUHLLBVVj/AKMZFZvJLjzrJvLWGj
	jAC8plySDamMifAYrc26Kh0aqlv99wSUgK02hBWKJzCTRQ/1OLbD5VOhVAgiDcgrOLG0jRzcnhSNu
	/CvCT+3Ku73cHWxbw80w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdUJ-0001KP-1v; Mon, 04 May 2020 15:58:35 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdTo-0000yx-Tt
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 15:58:08 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 May 2020 18:57:55 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 044FvtCD017882;
 Mon, 4 May 2020 18:57:55 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 01/16] block: always define struct blk_integrity in genhd.h
Date: Mon,  4 May 2020 18:57:40 +0300
Message-Id: <20200504155755.221125-2-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200504155755.221125-1-maxg@mellanox.com>
References: <20200504155755.221125-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_085805_406319_DD936DEB 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 idanb@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This will reduce the amount of ifdefs inside the source code for various
drivers and also will reduce the amount of stub functions that were
created for the !CONFIG_BLK_DEV_INTEGRITY case.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
---
 include/linux/genhd.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 058d895..8418581 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -169,8 +169,6 @@ struct disk_part_tbl {
 struct disk_events;
 struct badblocks;
 
-#if defined(CONFIG_BLK_DEV_INTEGRITY)
-
 struct blk_integrity {
 	const struct blk_integrity_profile	*profile;
 	unsigned char				flags;
@@ -179,8 +177,6 @@ struct blk_integrity {
 	unsigned char				tag_size;
 };
 
-#endif	/* CONFIG_BLK_DEV_INTEGRITY */
-
 struct gendisk {
 	/* major, first_minor and minors are input parameters only,
 	 * don't use directly.  Use disk_devt() and disk_max_parts().
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
