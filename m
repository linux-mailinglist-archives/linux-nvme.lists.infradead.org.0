Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C820C5F2A1
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 08:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RgDQJAZmIz2O4fOPhKR2iSiVcSHtvUzctOh4pUl6FkA=; b=CMLlQHB78cebSd3DzFe16XRSB9
	Ph65dz7cBXntu05LfXvcfjZLiAw88znJXE02Qi+tNEHznGBRo0b2NlBYwuRAl+KI3smntfYUWTL0s
	IsQHfaa3ueHKD1OhLjh8GIvpn+WYXMiiAKWfu+I5f8oNPpoWHVt4OQ/eZBOZZExGPjq0eI8m3WD+c
	6dVfJJE9Gdp1QKdBX+GZrL3vQ0iKJsn9Buss+nHmJ3GEcQZG7MSFR9YdabmthZN31APyrXQ9M7ZVQ
	Ti7SAC6VK+SdX09/kBVTuiuol8QPOT57J7Hd7i2K5vpSeAZFEM8AzCsGczMZPVUl4vxjV6hgRs03i
	PssycYuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuxl-0007fF-5o; Thu, 04 Jul 2019 06:11:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuxK-0007XT-An
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 06:10:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C2125AFF6;
 Thu,  4 Jul 2019 06:10:51 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/2] nvme-multipath: do not select namespaces which are about
 to be removed
Date: Thu,  4 Jul 2019 08:10:47 +0200
Message-Id: <20190704061047.94976-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190704061047.94976-1-hare@suse.de>
References: <20190704061047.94976-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_231054_523646_B31AEDD8 
X-CRM114-Status: GOOD (  11.14  )
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

nvme_ns_remove() will first set the NVME_NS_REMOVING flag before removing
it from the list at the very last step.
So to avoid selecting a namespace in nvme_find_path() which is about to be
removed check the NVME_NS_REMOVING flag, too, when selecting a new path.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 9b6dc11fa559..a9a927677970 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -126,7 +126,8 @@ void nvme_mpath_clear_current_path(struct nvme_ns *ns)
 static bool nvme_path_is_disabled(struct nvme_ns *ns)
 {
 	return ns->ctrl->state != NVME_CTRL_LIVE ||
-		test_bit(NVME_NS_ANA_PENDING, &ns->flags);
+		test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
+		test_bit(NVME_NS_REMOVING, &ns->flags);
 }
 
 static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
