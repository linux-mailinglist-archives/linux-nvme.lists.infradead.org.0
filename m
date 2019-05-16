Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641ED2016C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 10:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5OrGhxTsb0o0OrOLNv+1bbK+4Dia8WrNShbc57eWxWE=; b=R3xQKNPbLuP/UnkThywYOHkcDC
	4TMWuGEJV8AT/dTYUG7wZ3B9H8GXEQPeaJJbRYytBfzJ+ZphP6fttW05rJBZ4KXgEaW+AZNHlo/tz
	Qs/P9BoGRv3nxudsjKbvaEDuAhin5jvZHoVSYTX8QW70mmVoFm+vsUokwdZNUOB7iZWzM/+peqKXZ
	v5ucEZxkbQVpmNcQsbLoS5pPpxFIr8SpGqIrtFtQDtw/vG+mkMbdcrKd+7UoliOLcbDZVisW2x56m
	q20fMUAW7FXLYY5SdRHIzwAmNYXWzLzG2hiFBRXD7D/fsBaRqnOph3BZX8CF1dz4SIRFvszUJoMv5
	esIE+zJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBu1-0003Ty-2R; Thu, 16 May 2019 08:38:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBtb-00035o-0h
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 08:37:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1A7A9AEC8;
 Thu, 16 May 2019 08:37:45 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/3] nvme-fc: track state change failures during reconnect
Date: Thu, 16 May 2019 10:37:39 +0200
Message-Id: <20190516083740.95894-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190516083740.95894-1-hare@suse.de>
References: <20190516083740.95894-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013747_208266_073D839A 
X-CRM114-Status: GOOD (  12.24  )
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

The nvme-fc driver has several situation under which an expected
state transition fails, but doesn't print out any messages if
this happens.
The patch adds logging for these situations.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 0c9e036afd09..e5c81ba2b7a1 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2867,8 +2867,12 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
 	unsigned long recon_delay = ctrl->ctrl.opts->reconnect_delay * HZ;
 	bool recon = true;
 
-	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING)
+	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
+		dev_info(ctrl->ctrl.device,
+			 "NVME-FC{%d}: couldn't reconnect in state %s\n",
+			 ctrl->cnum, nvme_ctrl_state_name(&ctrl->ctrl));
 		return;
+	}
 
 	if (portptr->port_state == FC_OBJSTATE_ONLINE)
 		dev_info(ctrl->ctrl.device,
@@ -2914,7 +2918,8 @@ __nvme_fc_terminate_io(struct nvme_fc_ctrl *ctrl)
 	    !nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING))
 		dev_err(ctrl->ctrl.device,
 			"NVME-FC{%d}: error_recovery: Couldn't change state "
-			"to CONNECTING\n", ctrl->cnum);
+			"from %s to CONNECTING\n", ctrl->cnum,
+			nvme_ctrl_state_name(&ctrl->ctrl));
 }
 
 static void
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
