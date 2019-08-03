Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2514080410
	for <lists+linux-nvme@lfdr.de>; Sat,  3 Aug 2019 04:51:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e1zuLtOf1dZ/tM9yYepOGluJ5G4/7uIRrpMLJEGrewk=; b=dOBsc21hvroziQHoBaz8H1vJL7
	H5jl+w4ObsaZPdU0f+zeDhCpTuSRX3iEZcZeIm7LRPzheNZ3KkaoqvLtcuhsn+G7vccASoXaDSjIr
	CVlc6LzLudRCHs1Slbsto1LKhlMm9s+PkCQcbcTrvIV+DjR4Yr4r6wyVpdOG6UzvRgyTINHjZZuae
	Z+yMDuWlgdED8Chi+/6FV7dHLojyMVknRT8OXR/F4uLkh+wSLBGZuAqH2CnneS3OWlsoLbHCk4yk/
	FySUd0QfJA/BXXjLorFC5ttYtFaHMfwwVKxMQdTqjysuFlH1FtXynLwmWo3W0dmAZ27NWrKdWZksU
	AnBH0+fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htk8V-0008E5-OX; Sat, 03 Aug 2019 02:51:11 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htk7N-00060U-Sj; Sat, 03 Aug 2019 02:50:01 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Subject: [PATCH rfc v2 6/6] nvme: don't remove namespace if revalidate failed
 because of a transport error
Date: Fri,  2 Aug 2019 19:49:55 -0700
Message-Id: <20190803024955.29508-7-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190803024955.29508-1-sagi@grimberg.me>
References: <20190803024955.29508-1-sagi@grimberg.me>
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
Cc: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a controller reset is racing with a namespace revalidation, the
revalidation (admin) I/O will surely fail, but we should not remove the
namespace as we will execute the I/O when the controller is back up.

Fix this by checking the specific error code that revalidate_disk
returns, and if it is a transport related error, do not remove
the namespace as it will either recover when the controller is
back up and schedule a subsequent scan, or the controller is
going away and the namespaces will be removed anyways.

This fixes a hang namespace scanning racing with a controller reset and
also sporious I/O errors in path failover coditions where the
controller reset is racing with the namespace scan work with multipath
enabled.

Reported-by: Hannes Reinecke  <hare@suse.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index b561b61b35d9..7412989a1f78 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -228,6 +228,8 @@ static blk_status_t nvme_error_status(struct request *req)
 		return BLK_STS_PROTECTION;
 	case NVME_SC_RESERVATION_CONFLICT:
 		return BLK_STS_NEXUS;
+	case NVME_SC_HOST_PATH_ERROR:
+		return BLK_STS_TRANSPORT;
 	default:
 		return BLK_STS_IOERR;
 	}
@@ -3448,8 +3450,11 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
-			nvme_ns_remove(ns);
+		if (ns->disk) {
+			blk_status_t sts = revalidate_disk(ns->disk);
+			if (sts && sts != BLK_STS_TRANSPORT)
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
