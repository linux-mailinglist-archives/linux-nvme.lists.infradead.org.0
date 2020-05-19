Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 766B91D9903
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 16:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OwOnHRTxN0EMAX054TIFeE24j44zcExjhUIJdcXRlo=; b=KmTNVYDViz+5NB
	3a6bIS86ho/LuDMFRGOSrRKKLX5sfhmXvgCeH61+kMjgv+w4BlgizCU7i4L4FOHEWtTXZB6NRNHfE
	lyyBuwyyHef/DI3OI1w8VbjeR9DlxNNgNFsKcS3Qs8VxzB1lEMBL7KYpyIsy5vgYKjStAtaD+dd17
	+r3Ph6Hgr7Crg3YbXrdarw1zorfVS4dd1aZM4XOxkU7Efprj/dtmIinDOMWHRyPScwdg9cKVXfyS6
	5Qknv8NLz7iwVOR2M5BxwVsJ0G1m1x1QFT9tskzHY+Sw89DTvQXo1Qx6W84DjEXQsPKhLxHX5VN+h
	ddiOLNEgvBGS58ZY4qQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2vT-0003hw-NI; Tue, 19 May 2020 14:08:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2sz-0001cE-G0
 for linux-nvme@bombadil.infradead.org; Tue, 19 May 2020 14:06:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=NU9DLz5ZX6hquvJcn/VyKQ4yciOp3h+TOMo32Fh91Zs=; b=T69ukPV2gMXblORTH9hKz5w3cM
 wGDmaX85x9PvX36cGam0uaR6QrDW5MTMRtVDKEyoj8/xqjOG9M9KvnRypyudL82LSNIkGzlwtavUM
 voAaScy38twohy4S2MOmX35tlDts3jUCYpFo++bsWvG5dmFoJoE73MSe68eN1Y1+SdYAOZqV0oRcD
 i+KUrbI4U6EoF7AvEwdxdaYkVQ9kH/Xxy2xDGfUFPV+9Jr0WbiukoHLWhWANzrDTnq/PFo/Zf/jMD
 VucVG1NCkzNYeDioWPZ0jty9gMWRLgY83cereTbaQJ2c8wn79AAvGXZSZhwHUzyqHmnvoBweZr3L+
 C8c12seQ==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2so-0004Wc-DV
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 14:06:24 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 19 May 2020 17:06:03 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 04JE63xi006590;
 Tue, 19 May 2020 17:06:03 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, martin.petersen@oracle.com, jsmart2021@gmail.com,
 axboe@kernel.dk
Subject: [PATCH 01/16] block: always define struct blk_integrity in genhd.h
Date: Tue, 19 May 2020 17:05:48 +0300
Message-Id: <20200519140603.166576-2-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200519140603.166576-1-maxg@mellanox.com>
References: <20200519140603.166576-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_150616_146516_D3503AF1 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 idanb@mellanox.com, oren@mellanox.com, Max Gurtovoy <maxg@mellanox.com>,
 nitzanc@mellanox.com
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
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
---
 include/linux/genhd.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index f9c226f..2590bed 100644
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
