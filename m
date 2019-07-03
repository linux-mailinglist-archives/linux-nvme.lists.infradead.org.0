Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322705E4F9
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 15:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NrmiGUmDRMe5c4g+fFw+YzBQwE9SXsTlP0V6rqZb42M=; b=gSRddwtAzVqjdt6xHla+asViyf
	zaKa4bFyX4HNUhdmNj7UU20BKQ2uNlUjLo0N+gVxDU9+qnfj2SNsBQU32lskWK4CKSxdO8MMNVT3w
	Im0knqGc1xm+JZUGkmhYAvqD9AYMnuRDV+qfznEBEDNnxXcJ6Tml/zZt+cSspcH9WayOTb5iQHdEl
	cjvUqR4YQSb0VPPeZKTRHEI52mIp5XUTiRzA2d8yh7HqEB+imjET9XVJPT6ookvUGiCfrF7/2eEiX
	B7j/Zjt47GWvz8n9E7e1+eXDk35BC6oxQsIW7PF+LLwMCYRdNPDk23rT2ejlOczlIx6sMNGWiJ0O/
	bV9p1fWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hif4i-0005HP-N4; Wed, 03 Jul 2019 13:13:28 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hif3u-0004px-5y
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 13:12:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EB00AAFA7;
 Wed,  3 Jul 2019 13:12:34 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/2] nvme-multipath: do not select namespaces which are about
 to be removed
Date: Wed,  3 Jul 2019 15:12:32 +0200
Message-Id: <20190703131232.58595-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190703131232.58595-1-hare@suse.de>
References: <20190703131232.58595-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_061238_362806_7B3627FD 
X-CRM114-Status: GOOD (  11.25  )
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
 drivers/nvme/host/multipath.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index c8cc82639327..1f6105a5c596 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -130,7 +130,8 @@ static struct nvme_ns *__nvme_find_path(struct nvme_ns_head *head, int node)
 
 	list_for_each_entry_rcu(ns, &head->list, siblings) {
 		if (ns->ctrl->state != NVME_CTRL_LIVE ||
-		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
+		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
+		    test_bit(NVME_NS_REMOVING, &ns->flags))
 			continue;
 
 		if (READ_ONCE(head->subsys->iopolicy) == NVME_IOPOLICY_NUMA)
@@ -180,7 +181,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 
 	if (list_is_singular(&head->list)) {
 		if (old->ctrl->state != NVME_CTRL_LIVE ||
-		    test_bit(NVME_NS_ANA_PENDING, &old->flags))
+		    test_bit(NVME_NS_ANA_PENDING, &old->flags)||
+		    test_bit(NVME_NS_REMOVING, &old->flags))
 			return NULL;
 		return old;
 	}
@@ -189,7 +191,8 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 	     ns != old;
 	     ns = nvme_next_ns(head, ns)) {
 		if (ns->ctrl->state != NVME_CTRL_LIVE ||
-		    test_bit(NVME_NS_ANA_PENDING, &ns->flags))
+		    test_bit(NVME_NS_ANA_PENDING, &ns->flags) ||
+		    test_bit(NVME_NS_REMOVING, &ns->flags))
 			continue;
 
 		if (ns->ana_state == NVME_ANA_OPTIMIZED) {
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
