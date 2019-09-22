Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D01EBA47B
	for <lists+linux-nvme@lfdr.de>; Sun, 22 Sep 2019 20:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5URC5CRIcdBqLj3oY6cxX0rzMWQ5xK+2KmLfeDQ28Nw=; b=M4Nt2PIutZcFPx
	l9Hd7DNQWEzo0z27i6E5Efe5+EOch4/kCMPtl6AmddZ1BeghJwUUQfaSkVXTA7YYZ61Geax/Z4ku7
	hflkpw19nj5HKniZjoQUYSzx4e1D18Dj8mXoj2onPydR2x0QXAh9eok86zqKC4jbQF9LT0L0ZIWGQ
	WzmgZ8XFtZ3UQSJMOBL4/TwQm278ypGEkghSoDLqnITqGNEIktYnZn0jTNQfIK7sUNCfRtDIHwrCe
	48Ionw8fRAMn1M1jlfr6q4nj0Fj6vGIM+chN9MSX0fNY62atwIIvzf1b2uwtfUybnYAjrXnXSBXe1
	+Ih3hTEqG8jKjOfoLC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iC72I-000658-2O; Sun, 22 Sep 2019 18:56:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iC71z-0005wK-Jk
 for linux-nvme@lists.infradead.org; Sun, 22 Sep 2019 18:56:25 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5E1C321A4A;
 Sun, 22 Sep 2019 18:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569178583;
 bh=TEG5FMLOPxC2m3iJa7OAlqaOJOc/fweVtH3XyEcLuQE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bfpqS+hXjNn5VeH3zAmoE97rlGiPN2YBPfXjcFbQoba/dd4jFMs5+Ygu259YTI6Eo
 HpVRazpLM/PYCZbBeCAckL/od9PGYknG+SIG3wpx1XqrxdcjAxtcUyFO+cglePVBug
 RHSZ21HC7i+sCVxhJvICDmx6Y+vfLzqvvLtUfpqM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 092/128] nvme-multipath: fix ana log nsid lookup
 when nsid is not found
Date: Sun, 22 Sep 2019 14:53:42 -0400
Message-Id: <20190922185418.2158-92-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190922185418.2158-1-sashal@kernel.org>
References: <20190922185418.2158-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_115623_687667_2D6CA963 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Anton Eidelman <anton@lightbitslabs.com>,
 Sagi Grimberg <sagi@grimberg.me>, James Smart <james.smart@broadcom.com>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Anton Eidelman <anton@lightbitslabs.com>

[ Upstream commit e01f91dff91c7b16a6e3faf2565017d497a73f83 ]

ANA log parsing invokes nvme_update_ana_state() per ANA group desc.
This updates the state of namespaces with nsids in desc->nsids[].

Both ctrl->namespaces list and desc->nsids[] array are sorted by nsid.
Hence nvme_update_ana_state() performs a single walk over ctrl->namespaces:
- if current namespace matches the current desc->nsids[n],
  this namespace is updated, and n is incremented.
- the process stops when it encounters the end of either
  ctrl->namespaces end or desc->nsids[]

In case desc->nsids[n] does not match any of ctrl->namespaces,
the remaining nsids following desc->nsids[n] will not be updated.
Such situation was considered abnormal and generated WARN_ON_ONCE.

However ANA log MAY contain nsids not (yet) found in ctrl->namespaces.
For example, lets consider the following scenario:
- nvme0 exposes namespaces with nsids = [2, 3] to the host
- a new namespace nsid = 1 is added dynamically
- also, a ANA topology change is triggered
- NS_CHANGED aen is generated and triggers scan_work
- before scan_work discovers nsid=1 and creates a namespace, a NOTICE_ANA
  aen was issues and ana_work receives ANA log with nsids=[1, 2, 3]

Result: ana_work fails to update ANA state on existing namespaces [2, 3]

Solution:
Change the way nvme_update_ana_state() namespace list walk
checks the current namespace against desc->nsids[n] as follows:
a) ns->head->ns_id < desc->nsids[n]: keep walking ctrl->namespaces.
b) ns->head->ns_id == desc->nsids[n]: match, update the namespace
c) ns->head->ns_id >= desc->nsids[n]: skip to desc->nsids[n+1]

This enables correct operation in the scenario described above.
This also allows ANA log to contain nsids currently invisible
to the host, i.e. inactive nsids.

Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Reviewed-by:   James Smart <james.smart@broadcom.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/multipath.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index f57feb8fdea45..892ef52122329 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -404,14 +404,16 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 
 	down_write(&ctrl->namespaces_rwsem);
 	list_for_each_entry(ns, &ctrl->namespaces, list) {
-		if (ns->head->ns_id != le32_to_cpu(desc->nsids[n]))
+		unsigned nsid = le32_to_cpu(desc->nsids[n]);
+
+		if (ns->head->ns_id < nsid)
 			continue;
-		nvme_update_ns_ana_state(desc, ns);
+		if (ns->head->ns_id == nsid)
+			nvme_update_ns_ana_state(desc, ns);
 		if (++n == nr_nsids)
 			break;
 	}
 	up_write(&ctrl->namespaces_rwsem);
-	WARN_ON_ONCE(n < nr_nsids);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
