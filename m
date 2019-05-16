Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C612016A
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 10:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dzolWqHLPaEFKHXXRrB+gTt7LldIJG2NfLd9abj9abw=; b=N45d2agzprEy5oHe0T/zoZlJFD
	sKK9TZWsRMpuE0CjQYlnpISINMKMGU8ASH3jrX4QolZ66U3/PNqBiRMhAjYU4ivvGYOSYDY++BAWs
	bQJBcg6QkmFIe6b0NSmHT/jXoUR96kGJJuvapAOLvC/27VViGmaHkNUFdviEXuT8uHBFYIrIGreRt
	9SzYl+faP6V5vPmagm844py9rsuJcMarp9j44IPAg1h/IeVpdICId+kafbH2C9Cw87r+z2Q3qtwsK
	MhU/a4NdeQfkfdSunyaqxiKUnSAg16BDgVElIWAUDNNKSJhsPb/c3HD1vkoK5+eaxHGlD8VLUBkr0
	UQqGb8Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBtt-0003KQ-Pn; Thu, 16 May 2019 08:38:05 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBtb-00035n-0j
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 08:37:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1C06BAECB;
 Thu, 16 May 2019 08:37:45 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
Date: Thu, 16 May 2019 10:37:40 +0200
Message-Id: <20190516083740.95894-4-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190516083740.95894-1-hare@suse.de>
References: <20190516083740.95894-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013747_206380_54334CF0 
X-CRM114-Status: GOOD (  13.42  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the final state change to LIVE in nvme_fc_create_association()
fails the controller is not operational as no I/O is possible.
So we should be returning an error here to reschedule reconnect.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index e5c81ba2b7a1..9f9300cbdb62 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2620,7 +2620,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 {
 	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 	int ret;
-	bool changed;
 
 	++ctrl->ctrl.nr_reconnects;
 
@@ -2725,12 +2724,19 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 			goto out_term_aen_ops;
 	}
 
-	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
+	if (nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE)) {
+		if (ctrl->ctrl.state != NVME_CTRL_DELETING) {
+			dev_err(ctrl->ctrl.device,
+				"NVME-FC{%d}: error_recovery: Couldn't change "
+				"state from %s to LIVE\n", ctrl->cnum,
+				nvme_ctrl_state_name(&ctrl->ctrl));
+			return -EAGAIN;
+		}
+	}
 
 	ctrl->ctrl.nr_reconnects = 0;
 
-	if (changed)
-		nvme_start_ctrl(&ctrl->ctrl);
+	nvme_start_ctrl(&ctrl->ctrl);
 
 	return 0;	/* Success */
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
