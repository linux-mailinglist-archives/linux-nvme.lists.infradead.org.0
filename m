Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D768EE1
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 16:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V++pjKz7O63JN4xAmEYT09QYmVU/2qM7zpC71jAliTY=; b=Hd5KnFbR7THONU
	ljFTcAIQsJyllbRRFnSfxCQDzL9lpGcuf0w1BOjP3J9XwdCcZnOubkepAOe78rfsUcpMcxS9dWgZh
	HNF431vqI0zmRzsBKab5JOGzcCFnQkzj4fudn0NgheBpLG41WrsPQbWfrzSptV0ohbVEY4grtDSkM
	GuCUIP1iZ43Hnb6/XG4lafOew3/+T+y1d3aqLyyHlq8dMLTjD4utezZ3bQfIpLh7g4I1ea3kC+EhN
	29VA4o9dLtLvUkbNr0JhD1Qfh8kDxFAULnD+Eb3LmZSXzLVpM+V8rsA5v8gdFJ55FGrPXyArsy+rW
	QVYnAJePS3lvcXoX4XOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn1ga-0007RL-J2; Mon, 15 Jul 2019 14:10:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn1gR-0007QS-3U
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 14:10:28 +0000
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 784CB20651;
 Mon, 15 Jul 2019 14:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563199826;
 bh=ZqTUnPmE2V0kl4j3Gt+vLO/8z5fmIXLKw5xY8z418ho=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Fe3BymRu7YU/s/oMwubu6HnCPF22X96Hl3mGP8vk5GePkKomtEjam+mFfkq5ZarEr
 r0+BI4Jjg3JzjRi6G9CgRC3zYri+sekJXs2pyZga414WcjmO26xsWhqTCnqwv5gqcp
 Wfmo80Pru89yivx6YUrm36T9zqPUPdDukTtzWQck=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 118/219] nvme: fix possible io failures when
 removing multipathed ns
Date: Mon, 15 Jul 2019 10:01:59 -0400
Message-Id: <20190715140341.6443-118-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_071027_160414_993E062E 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Anton Eidelman <anton@lightbitslabs.com>

[ Upstream commit 2181e455612a8db2761eabbf126640552a451e96 ]

When a shared namespace is removed, we call blk_cleanup_queue()
when the device can still be accessed as the current path and this can
result in submission to a dying queue. Hence, direct_make_request()
called by our mpath device may fail (propagating the failure to userspace).
Instead, we want to failover this I/O to a different path if one exists.
Thus, before we cleanup the request queue, we make sure that the device is
cleared from the current path nor it can be selected again as such.

Fix this by:
- clear the ns from the head->list and synchronize rcu to make sure there is
  no concurrent path search that restores it as the current path
- clear the mpath current path in order to trigger a subsequent path search
  and sync srcu to wait for any ongoing request submissions
- safely continue to namespace removal and blk_cleanup_queue

Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3a390b2c7540..cbbdd3dae5a1 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3341,6 +3341,14 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 		return;
 
 	nvme_fault_inject_fini(ns);
+
+	mutex_lock(&ns->ctrl->subsys->lock);
+	list_del_rcu(&ns->siblings);
+	mutex_unlock(&ns->ctrl->subsys->lock);
+	synchronize_rcu(); /* guarantee not available in head->list */
+	nvme_mpath_clear_current_path(ns);
+	synchronize_srcu(&ns->head->srcu); /* wait for concurrent submissions */
+
 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
 		del_gendisk(ns->disk);
 		blk_cleanup_queue(ns->queue);
@@ -3348,16 +3356,10 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 			blk_integrity_unregister(ns->disk);
 	}
 
-	mutex_lock(&ns->ctrl->subsys->lock);
-	list_del_rcu(&ns->siblings);
-	nvme_mpath_clear_current_path(ns);
-	mutex_unlock(&ns->ctrl->subsys->lock);
-
 	down_write(&ns->ctrl->namespaces_rwsem);
 	list_del_init(&ns->list);
 	up_write(&ns->ctrl->namespaces_rwsem);
 
-	synchronize_srcu(&ns->head->srcu);
 	nvme_mpath_check_last_path(ns);
 	nvme_put_ns(ns);
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
