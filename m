Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398CF9A369
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 01:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kYjStZKywS1fosTEwurUegUIQGk87fBYzGAe5H3yyFI=; b=hyTqLr3kEFfmmcj+sp6TQ6M1t1
	My5L2aPBOsS6hoX0ApJxWJZuiweNK9kZHBO9s3jeYbF44gclqs6giYAADVJtgnNDklOGF7SRSLEzk
	LwBZlA3YeYPmodHbg7rRcdjxDO6XGPJDvVxLoQ/s9uyrGofVis9hG5Er230QyyDbV/ySESUkdH1+f
	zVb/bmf0ojzsJj24ZNji45QCdiBFqqaNKmXRr0DbhQatobysZv3EzaIx55YsS73F02Y3Rz2E97p1j
	3s6E+Gtr8+lAQWL2JTaUwt4nl8UbM/7WatDkmmqQVSc4MYN7Qj4Twg+W7bCMjTki6IvdolsjqNyaE
	BDQcFWkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0w4a-0007YS-Bn; Thu, 22 Aug 2019 23:00:52 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0w3V-0005G0-PX; Thu, 22 Aug 2019 22:59:45 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v7 6/6] nvme: fix ns removal hang when failing to revalidate
 due to a transient error
Date: Thu, 22 Aug 2019 15:59:43 -0700
Message-Id: <20190822225943.20072-7-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822225943.20072-1-sagi@grimberg.me>
References: <20190822225943.20072-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a controller reset is racing with a namespace revalidation, the
revalidation (admin) I/O will surely fail, but we should not remove the
namespace as we will execute the I/O when the controller is back up.
Same for spurious allocation errors (return -ENOMEM).

Fix this by checking the specific error code that revalidate_disk
returns, and if it is a transient error (for example NVME_SC_HOST_PATH_ERROR
for temporary transport error or ENOMEM as allocation failure), do not remove
the namespace as it will either recover when the controller is back up and
schedule a subsequent scan, or the controller is going away and the namespaces
will be removed anyways.

This fixes a hang namespace scanning racing with a controller reset and
also sporious I/O errors in path failover coditions where the
controller reset is racing with the namespace scan work with multipath
enabled.

Reported-by: Hannes Reinecke  <hare@suse.de>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a90d05598fc8..6e64c39041ca 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3456,8 +3456,17 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
-			nvme_ns_remove(ns);
+		if (ns->disk) {
+			int ret = revalidate_disk(ns->disk);
+
+			/*
+			 * remove the ns only if the return status is
+			 * not a temporal execution error.
+			 */
+			if (ret && ret != -ENOMEM &&
+			    ret != NVME_SC_HOST_PATH_ERROR)
+				nvme_ns_remove(ns);
+		}
 		nvme_put_ns(ns);
 	} else
 		nvme_alloc_ns(ctrl, nsid);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
