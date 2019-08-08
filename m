Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8988581E
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 04:23:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o54pd5zI/J+7VVn2nOU+1io90R54IzdibEY4PKmRxO8=; b=LZa
	aKY7doKRHrFHWi7nUcrCV82SyXjqhJA24TE7+E6YwX/9cuoxVhmp1AdBEvBemBKluthXNNZvNjqC5
	eOSSkYlXkGxSQrJIQvMfPCV0IyX6+y0YBDXmmqjwSxJY6CBF1/YVx7UE5lVSQMN02mrced4rrFWT5
	0s96Hkdp5pp7339W1hiNJavTJgDZjGgLcZ+osD/QJNQf5rMlw02IYWOz1j22Thu6uPPwxbRcGz6NV
	J6jvngTDuaYTZdwfkGW0ftGSBMYc1zj6W60l4LVRayWSaZeN6y+fOsoDMtsY3ApsR7K7bwhkf4DEr
	3yDso211EePF6KnUuq3qnDPTg2fE4aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvY5T-0002Az-QM; Thu, 08 Aug 2019 02:23:32 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvY5E-0002AI-Li
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 02:23:19 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 tomwu@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 8 Aug 2019 05:23:05 +0300
Received: from rsws46.mtr.labs.mlnx (rsws46.mtr.labs.mlnx [10.209.40.46])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x782N5ZP032607;
 Thu, 8 Aug 2019 05:23:05 +0300
Received: from rsws46.mtr.labs.mlnx (localhost [127.0.0.1])
 by rsws46.mtr.labs.mlnx (8.14.7/8.14.7) with ESMTP id x782N50f029034;
 Thu, 8 Aug 2019 02:23:05 GMT
Received: (from tomwu@localhost)
 by rsws46.mtr.labs.mlnx (8.14.7/8.14.7/Submit) id x782N3BK029033;
 Thu, 8 Aug 2019 02:23:03 GMT
From: Tom Wu <tomwu@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>, <keith.busch@intel.com>,
 <hch@lst.de>, <sagi@grimberg.me>
Subject: [PATCH] nvmet: fix data units read and written counters in SMART log
Date: Thu,  8 Aug 2019 02:22:36 +0000
Message-Id: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_192317_128567_8C505C66 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Tom Wu <tomwu@mellanox.com>, Israel Rukshin <israelr@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In nvme spec 1.3 there is a definition for data write/read counters
from SMART log, (See section 5.14.1.2):
	This value is reported in thousands (i.e., a value of 1
	corresponds to 1000 units of 512 bytes read) and is rounded up.

However, in nvme target where value is reported with actual units,
but not thousands of units as the spec requires.

Signed-off-by: Tom Wu <tomwu@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/admin-cmd.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 9f72d51..4099093 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -81,9 +81,11 @@ static u16 nvmet_get_smart_log_nsid(struct nvmet_req *req,
 		goto out;
 
 	host_reads = part_stat_read(ns->bdev->bd_part, ios[READ]);
-	data_units_read = part_stat_read(ns->bdev->bd_part, sectors[READ]);
+	data_units_read = DIV_ROUND_UP(part_stat_read(ns->bdev->bd_part,
+		sectors[READ]), 1000);
 	host_writes = part_stat_read(ns->bdev->bd_part, ios[WRITE]);
-	data_units_written = part_stat_read(ns->bdev->bd_part, sectors[WRITE]);
+	data_units_written = DIV_ROUND_UP(part_stat_read(ns->bdev->bd_part,
+		sectors[WRITE]), 1000);
 
 	put_unaligned_le64(host_reads, &slog->host_reads[0]);
 	put_unaligned_le64(data_units_read, &slog->data_units_read[0]);
@@ -111,11 +113,11 @@ static u16 nvmet_get_smart_log_all(struct nvmet_req *req,
 		if (!ns->bdev)
 			continue;
 		host_reads += part_stat_read(ns->bdev->bd_part, ios[READ]);
-		data_units_read +=
-			part_stat_read(ns->bdev->bd_part, sectors[READ]);
+		data_units_read += DIV_ROUND_UP(
+			part_stat_read(ns->bdev->bd_part, sectors[READ]), 1000);
 		host_writes += part_stat_read(ns->bdev->bd_part, ios[WRITE]);
-		data_units_written +=
-			part_stat_read(ns->bdev->bd_part, sectors[WRITE]);
+		data_units_written += DIV_ROUND_UP(
+			part_stat_read(ns->bdev->bd_part, sectors[WRITE]), 1000);
 
 	}
 	rcu_read_unlock();
-- 
1.8.4.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
