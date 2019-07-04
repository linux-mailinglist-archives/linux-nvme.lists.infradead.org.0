Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45D45F2A5
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 08:11:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+JB9CjFaB4DWrDosb5ON8AnFeWMwrSYwlo470BbDjBA=; b=pdE2ixVKFlxXDZR4SVUCjoqg67
	WMW/IIw0WQpWQrqDmFIMjwcYgcGGzmKSJTLbceEKXJ2IhBcQ3F+fGmN3oEUl4Rjdt1ntjPi5cGl7e
	F76z+WKgxT7cawvEtN0T7tXaATrw887baHUOZVfqGS+6nYH7B/wlvD6ZMtJK/gwoa1mTW3Iy8QxPX
	abvbu4ppVC/wOFIeJPrRaCbwQ5/qwm7o6GrK1LIM+rzQxHKLH6MQSoKEZbTAY31h253K1iAunmetJ
	SQEDsh/M1dTv5clapfjurSmmIPWN6EqSDlcnSkHTwZ5oo1ked5LmIzbQhe+cKwfuljeypyePGf7Fp
	NUv1cOJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuy0-0007tP-8z; Thu, 04 Jul 2019 06:11:36 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuxK-0007XU-Al
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 06:10:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C1A9CAFA5;
 Thu,  4 Jul 2019 06:10:51 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/2] nvme-multipath: check singular list in
 vme_round_robin_path()
Date: Thu,  4 Jul 2019 08:10:46 +0200
Message-Id: <20190704061047.94976-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190704061047.94976-1-hare@suse.de>
References: <20190704061047.94976-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_231054_527867_3E59189F 
X-CRM114-Status: GOOD (  12.08  )
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

When we have a singular list in nvme_round_robin_path() we still
need to check its validity.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 499acf07d61a..9b6dc11fa559 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -123,14 +123,19 @@ void nvme_mpath_clear_current_path(struct nvme_ns *ns)
 	}
 }
 
+static bool nvme_path_is_disabled(struct nvme_ns *ns)
+{
+	return ns->ctrl->state != NVME_CTRL_LIVE ||
+		test_bit(NVME_NS_ANA_PENDING, &ns->flags);
+}
+
 static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
 {
 	int found_distance = INT_MAX, fallback_distance = INT_MAX, distance;
 	struct nvme_ns *found = NULL, *fallback = NULL, *ns;
 
 	list_for_each_entry_rcu(ns, &head->list, siblings) {
-		if (ns->ctrl->state != NVME_CTRL_LIVE ||
-		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
+		if (nvme_path_is_disabled(ns))
 			continue;
 
 		if (READ_ONCE(head->subsys->iopolicy) == NVME_IOPOLICY_NUMA)
@@ -178,14 +183,16 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 {
 	struct nvme_ns *ns, *found, *fallback = NULL;
 
-	if (list_is_singular(&head->list))
+	if (list_is_singular(&head->list)) {
+		if (nvme_path_is_disabled(old))
+			return NULL;
 		return old;
+	}
 
 	for (ns = nvme_next_ns(head, old);
 	     ns != old;
 	     ns = nvme_next_ns(head, ns)) {
-		if (ns->ctrl->state != NVME_CTRL_LIVE ||
-		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
+		if (nvme_path_is_disabled(ns))
 			continue;
 
 		if (ns->ana_state == NVME_ANA_OPTIMIZED) {
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
