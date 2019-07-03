Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB405E4F8
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 15:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=thSrch3iS5cX6kEKr1GYPX4wBSOoQ+riaJJ0zKJevus=; b=nELkXtqTMNJPmdXrqhECHyl3Rg
	tc0NvJ2gYv1jtt4pSrzWfeqzeuQsQqTqaE8cC9BHUXxom905ER3ykuMs+lr0cXseqlNH1cwZcgZPL
	GrqRGusERr9eokZ7e/VO33zpHGXuLOLt2rXSy0MczqowLXXRRjNEMVZ7MaOL4EUopYP8nGT9HHe/f
	xeKL8+NOqNC1jc5qjx3To0oZGD3CyF/lOwuvtp6NCuG9m07vFmDvMeyQwENBmFAcKSfN+yMsZEj5g
	sqERQy8de8ZjdI11vllvlJABCgWMHN/MuG38KaTjGB7jcaWlDPdx2+CTYFcXvz/hejt+RObzrJHGY
	fzenFUYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hif4J-0004zB-Cc; Wed, 03 Jul 2019 13:13:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hif3u-0004py-60
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 13:12:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EBF55AFBC;
 Wed,  3 Jul 2019 13:12:34 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/2] nvme-multipath: check singular list in
 vme_round_robin_path()
Date: Wed,  3 Jul 2019 15:12:31 +0200
Message-Id: <20190703131232.58595-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190703131232.58595-1-hare@suse.de>
References: <20190703131232.58595-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_061238_365502_52B460E0 
X-CRM114-Status: GOOD (  11.49  )
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
 drivers/nvme/host/multipath.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 499acf07d61a..c8cc82639327 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -178,8 +178,12 @@ static struct nvme_ns *nvme_round_robin_path(struct nvme_ns_head *head,
 {
 	struct nvme_ns *ns, *found, *fallback = NULL;
 
-	if (list_is_singular(&head->list))
+	if (list_is_singular(&head->list)) {
+		if (old->ctrl->state != NVME_CTRL_LIVE ||
+		    test_bit(NVME_NS_ANA_PENDING, &old->flags))
+			return NULL;
 		return old;
+	}
 
 	for (ns = nvme_next_ns(head, old);
 	     ns != old;
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
