Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F17AED4D
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ctGXEhIn8OmntZy2DkVb/rlu1Jo3YXpmfBCZCt9im4w=; b=M99
	R/GTiEpbV4tIpCHVoygIzSerDo2sO4d7+/04B9VPqFd3NOAXuGNnvqcHsjEr+Fyur0Io6IivlfJjN
	pJ8vvt+d5kKLCKwZJoYJeU4tx3Yq9s3/gI02FxrjU8Al4To7JOEi20uAKh6ztkEZESqz9KxDITrbO
	zhzjOSpTIjqHA+m2NJ5mL0oghZoGAKZDZfk0TYKXzIj3cLOj2MXBBQjglHDLtbZOop+NQ3XhqquCX
	B+lunz/jp//wHhmhbZ3RLZ7H8sp5aR3B7athd8Z8crP9/sj/i/ZPjCbljXB9mO11UE39SIOLnMeRN
	d5z1qdg1FNUoRuWmehWgDOFwRmYcySQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFh9-0002vd-Od; Mon, 29 Apr 2019 23:28:23 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFh5-0002vS-Tu; Mon, 29 Apr 2019 23:28:19 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: protect discovery change log event list iteration
Date: Mon, 29 Apr 2019 16:28:19 -0700
Message-Id: <20190429232819.9844-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we iterate on the discovery subsystem controllers
we need to protect against concurrent mutations to it.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
Changes from v1:
- don't protect nvmet_genctr with subsys lock
  but throw a lockdep_assert_held on nvmet_config_sem

 drivers/nvme/target/discovery.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index e8e09266bfa5..5baf269f3f8a 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -30,14 +30,17 @@ void nvmet_port_disc_changed(struct nvmet_port *port,
 {
 	struct nvmet_ctrl *ctrl;
 
+	lockdep_assert_held(&nvmet_config_sem);
 	nvmet_genctr++;
 
+	mutex_lock(&nvmet_disc_subsys->lock);
 	list_for_each_entry(ctrl, &nvmet_disc_subsys->ctrls, subsys_entry) {
 		if (subsys && !nvmet_host_allowed(subsys, ctrl->hostnqn))
 			continue;
 
 		__nvmet_disc_changed(port, ctrl);
 	}
+	mutex_unlock(&nvmet_disc_subsys->lock);
 }
 
 static void __nvmet_subsys_disc_changed(struct nvmet_port *port,
@@ -46,12 +49,14 @@ static void __nvmet_subsys_disc_changed(struct nvmet_port *port,
 {
 	struct nvmet_ctrl *ctrl;
 
+	mutex_lock(&nvmet_disc_subsys->lock);
 	list_for_each_entry(ctrl, &nvmet_disc_subsys->ctrls, subsys_entry) {
 		if (host && strcmp(nvmet_host_name(host), ctrl->hostnqn))
 			continue;
 
 		__nvmet_disc_changed(port, ctrl);
 	}
+	mutex_unlock(&nvmet_disc_subsys->lock);
 }
 
 void nvmet_subsys_disc_changed(struct nvmet_subsys *subsys,
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
