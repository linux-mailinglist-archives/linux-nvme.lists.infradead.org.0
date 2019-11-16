Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA857FEDD4
	for <lists+linux-nvme@lfdr.de>; Sat, 16 Nov 2019 16:47:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbEaBlrx7is1rZ/rQTmBE2KhLV7E2mirugIjSvVwRfc=; b=K+wW+5K/hHu4lS
	Eojhzwh6unGm9iqqF8o8/pX1h4hQjvlxChRWbjasME6SHhRnB6g6Bq3lwl7oVqs3R0wRkQddKU4bp
	Mc+XuUPmG7mfi8ExzSe1nUQImQ5ECpTmCC1yOTBawzLceri8053HjrGU9D9NbV23L1BS2I9BRZ82u
	mW/9ozKamSyrKGW7OP03KNgOPTq4qfJivwKnOUFbHnnU65sxTnOluRSxYTxgp6Y4mjuAqsw5pxSZI
	KE3nDKVQ8EhTirKtu/RKYL6X//GOpHQAcgPOO/GAE0MpdQD4MHOoyBBfPcYk4SJEfCIN+uTY5WVcC
	GGgCdXLBOIvmRuFRwhBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0I5-0002Fe-KO; Sat, 16 Nov 2019 15:47:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0I0-0002Ek-Fl
 for linux-nvme@lists.infradead.org; Sat, 16 Nov 2019 15:47:09 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD3072083E;
 Sat, 16 Nov 2019 15:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573919228;
 bh=PV75VkIsQLSgJfMJKGoDxgGY1yV4axR33hw/nS5ls3w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r+99ikYBG5FC64ak8lYuHubAWuli8KXEGLoHwOHONxLvx6m6QjkF+PzGuVutGKO0M
 2Gc3CPC6gt7drOKg3hHrhHg8Aeiare6n+EmxD51zAMObRAxh6L0vTeUsFalGMeWwUt
 6TkbyiWAnr7bmLU8/FcmIkrmdEylJxNvfuFVm2MY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 232/237] nvme-pci: fix surprise removal
Date: Sat, 16 Nov 2019 10:41:07 -0500
Message-Id: <20191116154113.7417-232-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074708_543517_EECD3572 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Igor Konopko <igor.j.konopko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Igor Konopko <igor.j.konopko@intel.com>

[ Upstream commit 751a0cc0cd3a0d51e6aaf6fd3b8bd31f4ecfaf3e ]

When a PCIe NVMe device is not present, nvme_dev_remove_admin() calls
blk_cleanup_queue() on the admin queue, which frees the hctx for that
queue.  Moments later, on the same path nvme_kill_queues() calls
blk_mq_unquiesce_queue() on admin queue and tries to access hctx of it,
which leads to following OOPS:

Oops: 0000 [#1] SMP PTI
RIP: 0010:sbitmap_any_bit_set+0xb/0x40
Call Trace:
 blk_mq_run_hw_queue+0xd5/0x150
 blk_mq_run_hw_queues+0x3a/0x50
 nvme_kill_queues+0x26/0x50
 nvme_remove_namespaces+0xb2/0xc0
 nvme_remove+0x60/0x140
 pci_device_remove+0x3b/0xb0

Fixes: cb4bfda62afa2 ("nvme-pci: fix hot removal during error handling")
Signed-off-by: Igor Konopko <igor.j.konopko@intel.com>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5d0f99bcc987f..44da9fe5b27b8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3647,7 +3647,7 @@ void nvme_kill_queues(struct nvme_ctrl *ctrl)
 	down_read(&ctrl->namespaces_rwsem);
 
 	/* Forcibly unquiesce queues to avoid blocking dispatch */
-	if (ctrl->admin_q)
+	if (ctrl->admin_q && !blk_queue_dying(ctrl->admin_q))
 		blk_mq_unquiesce_queue(ctrl->admin_q);
 
 	list_for_each_entry(ns, &ctrl->namespaces, list)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
