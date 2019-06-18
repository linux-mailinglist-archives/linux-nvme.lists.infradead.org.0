Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A8A49E14
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 12:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MCm/WM+qLIfHOsAniyZiMCP0wTZ71EXQ4LtKZDdbnVs=; b=VrCcF2Xzqf/ZmgIpzXn6B2cc9/
	29Kwz2tL8ZzrmRhhLM7v1DMHoaohzSVPOkxm7Kb4UNVjZ6RulGRqdBqSciJR1SSYy8HVASx2JQEJ4
	FDKgvSfP+FQPS+oTltsUjF7OAq9fupBuO0KYvBkfKQDuvuSkbZVKYn1DQutM2p7lRALy9kR/9df5n
	VdyyO+SItEP2oIc6OlBOhr8tl/BLYH016lBYz+Ar9CwaZOZeh8ZfNHZK4V5uRUH40PpMSB/uNX1Zj
	+oWULPUtnsfsa7a6mZ636rUKxprYKl6FSa8t3m846NgH2qeS1ULnkr6fV6/YtdCwIJrJ2xTRHg3Fr
	ndcSM0OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdB4f-0002Eg-SV; Tue, 18 Jun 2019 10:10:45 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdB4O-0002AC-IS
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 10:10:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2DCE2ADF7;
 Tue, 18 Jun 2019 10:10:27 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/2] nvme: Do not remove namespaces during reset
Date: Tue, 18 Jun 2019 12:10:24 +0200
Message-Id: <20190618101025.78840-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190618101025.78840-1-hare@suse.de>
References: <20190618101025.78840-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_031029_735051_7FC01198 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When a controller is resetting or reconnecting there is no way
how we could establish the validity of any given namespace.
So do not call nvme_ns_remove() during resetting or reconnecting
and rely on the call to nvme_scan_queue() after reset to fixup
things.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ba2079d217da..e872591e5fe7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3358,6 +3358,17 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 static void nvme_ns_remove(struct nvme_ns *ns)
 {
+	/*
+	 * We cannot make any assumptions about namespaces during
+	 * reset; in particular we shouldn't attempt to remove them
+	 * as I/O might still be queued to them.
+	 * So ignore this call during reset and rely on the
+	 * rescan after reset to clean up things again.
+	 */
+	if (ns->ctrl->state == NVME_CTRL_RESETTING ||
+	    ns->ctrl->state == NVME_CTRL_CONNECTING)
+		return;
+
 	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
 		return;
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
