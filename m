Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D880F79CDC
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 01:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ae38fBm81rMMTAphsfI1npPF4HSqIonrPFFGD1kl3qI=; b=WSvFMmP89qpziqF2dW/RTz0/YI
	JGYU+alfAalJju8MNB/8vG00lMvX1ZeAjGJonAx35AWdrs7jxnMK+A8Csa3S0xT2b8ObCrC8yn57G
	PGqrVFUAoZVTBNhAMUwLF4F5tNtwzLHNOe63gnW0PlpvqNTjNdXwL5U4ZR3Mai07ftAXfoSmd41Vj
	1tgjb6Q3IZIZKF8hkW4C1IZIGdlndjzQZ7D8j+yOI1f/ugls9lwfNAztg9eS7+8y0oF+0pprx7hNX
	7kp5gM8uA2hlci/xbvG16UTlS7ffkiQTbaz1vvtYDMXy4KdSsJnCF/XEmcvSrG9kkv+u6VO+uDVG1
	EWPXmp3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsF7k-0003C1-B2; Mon, 29 Jul 2019 23:32:12 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsF7f-0003BW-NL; Mon, 29 Jul 2019 23:32:07 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>,
	linux-nvme@lists.infradead.org
Subject: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
Date: Mon, 29 Jul 2019 16:32:00 -0700
Message-Id: <20190729233201.27993-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729233201.27993-1-sagi@grimberg.me>
References: <20190729233201.27993-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a controller reset is racing with a namespace revalidation, the
revalidation I/O will surely fail, but we should not remove the
namespace as we will execute the I/O when the controller is LIVE again.
Specifically check if the controller is LIVE because as
RESETTING/CONNECTING are transient and DELETING/DEAD will eventually
remove the namespace in the removal code path.

This fixes sporious I/O errors in path failover coditions where the
controller reset is racing with the namespace scan work.

Reported-by: Hannes Reinecke  <hare@suse.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fa31da0762b9..5f6970e7ba73 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3428,7 +3428,8 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = nvme_find_get_ns(ctrl, nsid);
 	if (ns) {
-		if (ns->disk && revalidate_disk(ns->disk))
+		if (ns->disk && revalidate_disk(ns->disk) &&
+		    ctrl->state != NVME_CTRL_LIVE)
 			nvme_ns_remove(ns);
 		nvme_put_ns(ns);
 	} else
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
