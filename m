Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19485584
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 00:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uUCg9FYTp66+upN+Kc3We+j8v1Py871w+PSeXFg0Jzw=; b=MacV82J4FjhaSY
	a+hxK3Ig2SDwMkDtZAsW34G0tFE+ZAayQ1jmiMqiPADKfxyljdp0U7N62xZIi5tLY7/xmahLdQBtb
	nxGa4pVxiG2kpkFGloCBRGd8gRYDHhZbfO/rfl3R+xEb6z0j03yXwW3W6GnYT+pPEMlbb/DxryiqT
	uvMDHIGXInW0hA8N06QPRjLgwAWfdNzCXr4SSXkESLzTsiZGg+q9Z6Ts0QQxCWkH4t2uUIwnD3X3P
	cDaAJiNwyZTRGSPPnikM4FdcTLl2ea2Z01LfoqWr5wUHzdIQ45gzMIUJOfMCUGiKP+/JxjUkcss+h
	nN1EIMOyv0Ue1DReLifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvU6S-0007UF-HX; Wed, 07 Aug 2019 22:08:16 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvU6M-0007Tn-0t
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 22:08:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 13:10:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="165457363"
Received: from jderrick-mobl.amr.corp.intel.com ([10.232.115.152])
 by orsmga007.jf.intel.com with ESMTP; 07 Aug 2019 13:10:55 -0700
From: Jon Derrick <jonathan.derrick@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	<linux-kernel@vger.kernel.org>
Subject: [PATCH] genirq/affinity: report extra vectors on uneven nodes
Date: Wed,  7 Aug 2019 14:10:51 -0600
Message-Id: <20190807201051.32662-1-jonathan.derrick@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_150810_109881_F9D312B1 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Jon Derrick <jonathan.derrick@intel.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The current irq spreading algorithm spreads vectors amongst cpus evenly
per node. If a node has more cpus than another node, the extra vectors
being spread may not be reported back to the caller.

This is most apparent with the NVMe driver and nr_cpus < vectors, where
the underreporting results in the caller's WARN being triggered:

irq_build_affinity_masks()
...
	if (nr_present < numvecs)
		WARN_ON(nr_present + nr_others < numvecs);

Signed-off-by: Jon Derrick <jonathan.derrick@intel.com>
---
 kernel/irq/affinity.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index 4352b08ae48d..9beafb8c7e92 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -127,7 +127,8 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 	}
 
 	for_each_node_mask(n, nodemsk) {
-		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
+		unsigned int ncpus, v, vecs_to_assign, total_vecs_to_assign,
+			vecs_per_node;
 
 		/* Spread the vectors per node */
 		vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
@@ -141,14 +142,16 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 
 		/* Account for rounding errors */
 		extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
+		total_vecs_to_assign = vecs_to_assign + extra_vecs;
 
-		for (v = 0; curvec < last_affv && v < vecs_to_assign;
+		for (v = 0; curvec < last_affv && v < total_vecs_to_assign;
 		     curvec++, v++) {
 			cpus_per_vec = ncpus / vecs_to_assign;
 
 			/* Account for extra vectors to compensate rounding errors */
 			if (extra_vecs) {
 				cpus_per_vec++;
+				v++;
 				--extra_vecs;
 			}
 			irq_spread_init_one(&masks[curvec].mask, nmsk,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
