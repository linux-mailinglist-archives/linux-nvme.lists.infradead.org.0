Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DC486BF7
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DkT585uPOBHM9Km+SZ1jHL5fy5kdFbze4eUGOO1ReI0=; b=bUbCblofsDUv1wi6LsHQOAf+3Q
	B7r5bpEhRAQktdIEMX6rtWOvX/ZrETOdIu75rnoAmu391c8spYHhvQtgTun+kmDyjwEsOpPmZBzAp
	HxIdCkqEf7jXPAcT+C4rp57hcLq4L0A9BVhqJ9vwPCtoXGF+N0qfLHcQ97ET3TGWqy3TOeivGjtPp
	wHt6Hvwlsry+ZmGbgXH7qzt9r56NFA3em4m387HXXo5LHs+mulUZiJNvHXQ1BHvhOXtVWZ3uP2ztf
	m1zde7Hhl9PW+I3YfQH+Llw1KH+Wswp1MkyqW+U1lmoFhm6rg4aDn5761wLcFFnB3jFnI6Q2F1swv
	m8elsU+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpQs-0002Ke-ME; Thu, 08 Aug 2019 20:54:46 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPh-00013b-2N; Thu, 08 Aug 2019 20:53:33 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 7/7] nvme: don't remove namespace if revalidate failed
 because of a transport error
Date: Thu,  8 Aug 2019 13:53:25 -0700
Message-Id: <20190808205325.24036-8-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
References: <20190808205325.24036-1-sagi@grimberg.me>
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
index 49ffccd72091..001bcc8a8d3e 100644
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
@@ -3452,8 +3454,11 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
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
