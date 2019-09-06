Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232B8ABF29
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AcISIOAWlg5BHaPs3jQ1rIxtNYQSxAPw/Rp0l3NDfto=; b=sdm3SxjmLvjFdygJ0qtFfIEUBD
	9i5s8ZbYua2uZoB2XdKhtd7PqW5XJsUMoa6OtaaNlYzvms/BpKRNz5ZyB+P0lkIenw9Mle4Fd/jbL
	BCUo8uhWMX+IZ8okvMZAeW2sd2AsqtOMF4RFMdJM3Oc9AIqSC4G7rWKUDva0SfaKoCveacRWnSifv
	VGkm0Y3A7Ol4aXxduIPkVKbxDsKU6Yarwc7ETTd3rOCsBcmWZaBCchgAyjtKcOd4GBSmVuB4Hu3iQ
	uG8W3ulO8EcvsgUBvydVY0x6DsjhrKpZOog4qaaF3vcaGQlPqiHtgeX6ZpQIVV4Lt2GSXpgIlgGrg
	QG1XuT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ij5-0001WF-6J; Fri, 06 Sep 2019 18:12:51 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Iip-0001O2-Vr; Fri, 06 Sep 2019 18:12:36 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v5 1/4] nvme-fabrics: allow discovery subsystems accept a kato
Date: Fri,  6 Sep 2019 11:12:31 -0700
Message-Id: <20190906181235.20365-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906181235.20365-1-sagi@grimberg.me>
References: <20190906181235.20365-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This modifies the behavior of discovery subsystems to accept
a kato as a preparation to support discovery log change
events. This also means that now every discovery controller
will have a default kato value, and for non-persistent connections
the host needs to pass in a zero kato value (keep_alive_tmo=0).

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/fabrics.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 145c210edb03..74b8818ac9a1 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -381,8 +381,8 @@ int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
 	 * Set keep-alive timeout in seconds granularity (ms * 1000)
 	 * and add a grace period for controller kato enforcement
 	 */
-	cmd.connect.kato = ctrl->opts->discovery_nqn ? 0 :
-		cpu_to_le32((ctrl->kato + NVME_KATO_GRACE) * 1000);
+	cmd.connect.kato = ctrl->kato ?
+		cpu_to_le32((ctrl->kato + NVME_KATO_GRACE) * 1000) : 0;
 
 	if (ctrl->opts->disable_sqflow)
 		cmd.connect.cattr |= NVME_CONNECT_DISABLE_SQFLOW;
@@ -740,13 +740,6 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 				pr_warn("keep_alive_tmo 0 won't execute keep alives!!!\n");
 			}
 			opts->kato = token;
-
-			if (opts->discovery_nqn && opts->kato) {
-				pr_err("Discovery controllers cannot accept KATO != 0\n");
-				ret = -EINVAL;
-				goto out;
-			}
-
 			break;
 		case NVMF_OPT_CTRL_LOSS_TMO:
 			if (match_int(args, &token)) {
@@ -883,7 +876,6 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 	}
 
 	if (opts->discovery_nqn) {
-		opts->kato = 0;
 		opts->nr_io_queues = 0;
 		opts->nr_write_queues = 0;
 		opts->nr_poll_queues = 0;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
