Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6689D6A2C0
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 09:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hrTgIYmxIC/PtY70h1s74QV8R8wmDfeedmjdZyrM4FM=; b=O16
	e5YFlbbbCHmgVwnl+fDewXO4Rjbses88O3Jp7YUJKNV9Lqcfd3OfJ8ejQnOcwvxZtLc1e6R4oP0Hg
	u3ofTR5ZHc2409as0Y+RvnCKgpsJZV/WfvZ0vqxHZQZqV2aEAna8bIOpPszylOB56P/JvOzb+U6v3
	uycc2HXdjF8Q9uHpyvAagfFvuktMCnkvVtFQOhZi0KeQRSig35hk4fTpc2RQ6Bo3AZ29h5gt4pqzj
	af934DVC3Z2W6tRDDcanTWr7RNen5hcg0ECM4FiY/7VSuLLyh1xYzW4cmrGKK1gG8Nfm3ibNCoIbk
	XKRpsZhVNWw/eOdRg/9c7l+0J2a6bRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHja-0005S7-C1; Tue, 16 Jul 2019 07:18:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHjQ-0005RR-24
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 07:18:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 81D2CAEA3;
 Tue, 16 Jul 2019 07:18:31 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
Date: Tue, 16 Jul 2019 09:18:30 +0200
Message-Id: <20190716071830.22672-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_001837_130568_ECB685FF 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Commit 04e70bd4a026 ("nvme-multipath: do not select namespaces
which are about to be removed") introduced checks when traversing
the list of namespaces to avoid tripping over invalid namespaces.
A similar check is needed in nvme_update_ana_state() to skip updates
for any namespaces which will be removed.
With that we should also remove the WARN_ON() at the end of the
iteration; this will also be errorneously triggered if ANA Change AENS
are received during scanning.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a9a927677970..78415f2909cd 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -449,6 +449,8 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 
 	down_write(&ctrl->namespaces_rwsem);
 	list_for_each_entry(ns, &ctrl->namespaces, list) {
+		if (test_bit(NVME_NS_REMOVING, &ns->flags))
+			continue;
 		if (ns->head->ns_id != le32_to_cpu(desc->nsids[n]))
 			continue;
 		nvme_update_ns_ana_state(desc, ns);
@@ -456,7 +458,6 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 			break;
 	}
 	up_write(&ctrl->namespaces_rwsem);
-	WARN_ON_ONCE(n < nr_nsids);
 	return 0;
 }
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
