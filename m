Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C70C213CF
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 08:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tdcki7AhSNBbiKDOEU6dj8E5WDX9xIEQm4kq9c8rtmQ=; b=ENsnXayguV9eVq+zxx5DtxxmD1
	hVJK8pSCMP58nX1YMGIH8DT+35H8eRIeHMAHjgi2GfBJg5/bupcwxat0LFYatY9EsZrEU402NCmmD
	uENkD9rgbcSnjDmbR2QgBmkxAPU7RkEkOzXpRhnYthTQebCHpk97PDBf8bmCF25+wpYAvDoDPjHM8
	gyHV9GC+NEDHudWRH5GCOuoRhRi3P/elYD0/OH+SKcb3Kiz1uZCwVuiUsIIwpVOckrp+GbjCOwtvi
	RVQoMbML3hQj/xXis7f8SW/xiS2dKvuxZDpZ2XaDRjOZnyHIGD66hhl/7XxqZh3PZBTpEk2/bOdKv
	IPnbvljA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRWaD-0006Qs-6D; Fri, 17 May 2019 06:43:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRWa7-0006P2-CF
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 06:43:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9CA01AEFF;
 Fri, 17 May 2019 06:42:58 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 3/3] nvme-fc: fail reconnect if state change fails
Date: Fri, 17 May 2019 08:42:54 +0200
Message-Id: <20190517064254.95561-4-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190517064254.95561-1-hare@suse.de>
References: <20190517064254.95561-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_234303_567902_C2F46B71 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Additionally it should only be called while in CONNECTING state, so
add a check for this, too.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index e5c81ba2b7a1..a8ef62512d9a 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2624,6 +2624,14 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 
 	++ctrl->ctrl.nr_reconnects;
 
+	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
+		dev_info(ctrl->ctrl.device,
+			 "NVME-FC{%d}: state %s cancelled new "
+			 "association attempt\n",
+			 ctrl->cnum, nvme_ctrl_state_name(&ctrl->ctrl));
+		return -ENODEV;
+	}
+
 	if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
 		return -ENODEV;
 
@@ -2726,6 +2734,13 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	}
 
 	changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);
+	if (!changed && ctrl->ctrl.state != NVME_CTRL_DELETING) {
+		dev_err(ctrl->ctrl.device,
+			"NVME-FC{%d}: error_recovery: Couldn't change "
+			"state from %s to LIVE\n", ctrl->cnum,
+			nvme_ctrl_state_name(&ctrl->ctrl));
+		return -EAGAIN;
+	}
 
 	ctrl->ctrl.nr_reconnects = 0;
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
