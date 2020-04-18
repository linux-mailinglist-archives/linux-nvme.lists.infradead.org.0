Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EB31AEF11
	for <lists+linux-nvme@lfdr.de>; Sat, 18 Apr 2020 16:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Jnsybt/qf8PU6lK9Bod7VwHRuAXl9NtPTAjkzrwnF0=; b=ERpbDh00eqQNNE
	SZe0wgEeGDUsKyjNZUQDP2FVPL+OiXW++5Ok1xzqGrJiUii9PLF83Mu8m0+KlEgBA3oWD6rTa5fT0
	TVRg90EGX8HscljSUvhbjbHL+NOtMw/3fFJVQllwt7Pzef+I25hvNT7L32/abSexsK5pgT1KPmz3y
	+u4K6XhAGwr8JU4q+zSRGz/ToREkPk5122daaEw90NKdMfBNZ5GtlaYoCkmOdSZxLNovO4Jg/Fx/2
	Ic2wa2xFeeFLPscSk9pn1o9h0LKZ/paYA3rlpk+p4jaKCCznaZRP3srNLpBdzwkOa7zgnk3sH6QF6
	QJCKhP/WRv30IYqDfo/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPogf-0000jV-Nd; Sat, 18 Apr 2020 14:43:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPogA-0000St-NZ
 for linux-nvme@bombadil.infradead.org; Sat, 18 Apr 2020 14:42:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=MPKJ8ASee6vJRBz3yp6rIWXOYkNG3SGLEM5fuUDzI4I=; b=tJ84y5woCzGdX56vwWKFBPi4ph
 4zXnNHXiDBgcyEVDvmIZuWXPBvzTorCdGR/dJVEk6DFg0Ayj+BGxnWlruAtIJORwAE5cJGgHM6PnV
 mO1gWDNEVJF3rodwBSp/N2RqL8lDsbchzZkS2gbdhEX9cpe8s2Bf8gYqQX37OuTe/TwxAHkFmrR2/
 pSbAxt1V1z3ZOz3SrDCWLQC28rf0X9mdqYBmBe0YOtridvNy0+qRZfCOxTF2lr3c9N9L7v9XzzEYI
 d8hWSDEkP/nDYSg33jhe0JAelplFF0hWQmh+eLVg0wY/scd0ITDaHOCba94VklymoO/5nHZGx233A
 pq4BkhYw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPog8-0006yB-F3
 for linux-nvme@lists.infradead.org; Sat, 18 Apr 2020 14:42:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EAB52224F;
 Sat, 18 Apr 2020 14:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587220963;
 bh=j6iGxe6hgIhvhNhibRWCBc45s0hch/cUkLVkSENAXGI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GLn+XIU56ubevZudsbJhJkAxrGhPSxHTMFWzMPkRq5B2Yn3g4oiRlUiR5kptDi9Gy
 /8+h/LS8Hjn16xxqM4zCYxjMT8zTxkZ28nIzZzerbxLgczAp30qxYh8FqdeV5KUW1S
 DnGQRFrs4cM4yv4alOloZnbpIvU68BkoOckkgsdE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 13/47] nvme: fix deadlock caused by ANA update
 wrong locking
Date: Sat, 18 Apr 2020 10:41:53 -0400
Message-Id: <20200418144227.9802-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418144227.9802-1-sashal@kernel.org>
References: <20200418144227.9802-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 657f1975e9d9c880fa13030e88ba6cc84964f1db ]

The deadlock combines 4 flows in parallel:
- ns scanning (triggered from reconnect)
- request timeout
- ANA update (triggered from reconnect)
- I/O coming into the mpath device

(1) ns scanning triggers disk revalidation -> update disk info ->
    freeze queue -> but blocked, due to (2)

(2) timeout handler reference the g_usage_counter - > but blocks in
    the transport .timeout() handler, due to (3)

(3) the transport timeout handler (indirectly) calls nvme_stop_queue() ->
    which takes the (down_read) namespaces_rwsem - > but blocks, due to (4)

(4) ANA update takes the (down_write) namespaces_rwsem -> calls
    nvme_mpath_set_live() -> which synchronize the ns_head srcu
    (see commit 504db087aacc) -> but blocks, due to (5)

(5) I/O came into nvme_mpath_make_request -> took srcu_read_lock ->
    direct_make_request > blk_queue_enter -> but blocked, due to (1)

==> the request queue is under freeze -> deadlock.

The fix is making ANA update take a read lock as the namespaces list
is not manipulated, it is just the ns and ns->head that are being
updated (which is protected with the ns->head lock).

Fixes: 0d0b660f214dc ("nvme: add ANA support")
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Reviewed-by: Hannes Reinecke <hare@suse.de>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/multipath.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index e8bc25aed44ca..588864beabd80 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -402,7 +402,7 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 	if (!nr_nsids)
 		return 0;
 
-	down_write(&ctrl->namespaces_rwsem);
+	down_read(&ctrl->namespaces_rwsem);
 	list_for_each_entry(ns, &ctrl->namespaces, list) {
 		unsigned nsid = le32_to_cpu(desc->nsids[n]);
 
@@ -413,7 +413,7 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 		if (++n == nr_nsids)
 			break;
 	}
-	up_write(&ctrl->namespaces_rwsem);
+	up_read(&ctrl->namespaces_rwsem);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
