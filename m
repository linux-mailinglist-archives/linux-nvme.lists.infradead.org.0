Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB8A1BF90
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pP04U5QIQCqSHr5lA+VMifUSBZIKTldwZKrDt9ZX5YY=; b=qaUybus08nf+3kQcdVOF4nPIeL
	9XIyXXkuOpYCi/ZHV4BeO3lCVx1j0ySUaD1sLrPl5gF2pHU9TWqlvhsmu68QjK2BSSWBYZVmUnCuN
	Jtwa3ALFfMmMTM16HHxKSVg1n/k3CyZu1y7r1asuIY2HYRui7NiQXhZ8/ZkptvvPXRWKreVN4J4S0
	661PReR9FN+ssxl/uiEAld4d1NpUTjzO0CaPhpaHSQyGYIiYoWQ4O3qoCNIjXlIVV1QNYypNmX/Zr
	oxlGvF0n1oiGCW3KcyRZ5Br0mCpFZcplQo4MRipZd0JlnklZoZgG+Gai8OSpfQ0o30sSERpepYH11
	8pFvfjuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJfl-0007Xe-60; Mon, 13 May 2019 22:43:53 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfV-0007Jc-H1
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:43:39 +0000
Received: by mail-pl1-x644.google.com with SMTP id g5so7193001plt.2
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nP7Rr96WNa0Pnk7hfmDbMX39dvA96ffgLEU/w3XQyuw=;
 b=LWAHUbgFSLOa0aoaPztCt93xyHH+YgO/KE6gbSpzTq2NB9cMzgwgI9qHeNRA4EBH00
 MSnMZX+rRgMufJD9uNil8t1BbE+NC1NL/luCKX24bOMYuZaRutQKLcgHYfuTO5oIREB1
 rL7AecDR+OPw5ZrBHzlreQrvoIDyIa696WMvjvidXjY1FuQFrr36XHwRZ7SJv08Y10Ab
 S7iq1N626JyMAXDIOq4PIuG40nG6Szvy6+OpYgC7AzV2d1rQEJMicBQzhbnJPx2JkekP
 Xh2z1X11vUT0Wy1/ySzes82RgQmG8HGAo2mPDaGnbkUjDQCJLjulDC7F0gqnu70vO+Jn
 gIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nP7Rr96WNa0Pnk7hfmDbMX39dvA96ffgLEU/w3XQyuw=;
 b=K6Zl2l+68665vk6sRPa03KmzE3o2GGDHss/XAwtpeGdIojpVchnAbsYND+gHLbrFK9
 upUp5YNd8TV/u1HbUinmqSzvQdAPoSAdZFGoVd6EO0dghfhTjYC30NvL01sAkDfwKv0V
 fvLwnBcnrmXud4sARuDYgWJ68CxglybbDgylvO8ES2kas6MkWTVH07IYP7RlBPDkOS4Z
 KQMAxEKjdn7un/rsCo2Kkn6F5yQ5eOOmTN/l6Irqex7I9pCZtFDaoJ5TjEUauZLwUdoR
 NdnStRtJLd6fIdBfKvnKSsQZC6Q5U57m0iiuIf75Chzo+3nZPdTDi7Hc8JBmr7pLoLQd
 aamA==
X-Gm-Message-State: APjAAAXWGjmUpb3DHPBX0aB7JLjCIADxifaouwOO1oOjw2lTLWzNxBIR
 wuYosu7mKgWwTHlqfNTvVNsdeGVv
X-Google-Smtp-Source: APXvYqwwcNlkHDyowL7+Zm21qxE+Qbxo4W+4TV+xBpyG8QBwLCSStBW6S/W/geoCZvFH3/bra3gu6w==
X-Received: by 2002:a17:902:9a83:: with SMTP id
 w3mr34398348plp.241.1557787416929; 
 Mon, 13 May 2019 15:43:36 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:36 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/7] nvmet_fc: add transport discovery change event callback
 support
Date: Mon, 13 May 2019 15:43:09 -0700
Message-Id: <20190513224314.24169-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154337_776618_42DADC50 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds support for the nvmet discovery_change transport op.
In turn, the transport adds it's own LLDD api callback discovery_event
op to request the LLDD to generate an RSCN for the discovery change.

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 drivers/nvme/target/fc.c       | 11 +++++++++++
 include/linux/nvme-fc-driver.h |  6 ++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/nvme/target/fc.c b/drivers/nvme/target/fc.c
index 508661af0f50..1f252c9a953a 100644
--- a/drivers/nvme/target/fc.c
+++ b/drivers/nvme/target/fc.c
@@ -2549,6 +2549,16 @@ nvmet_fc_remove_port(struct nvmet_port *port)
 	kfree(pe);
 }
 
+static void
+nvmet_fc_discovery_chg(struct nvmet_port *port)
+{
+	struct nvmet_fc_port_entry *pe = port->priv;
+	struct nvmet_fc_tgtport *tgtport = pe->tgtport;
+
+	if (tgtport && tgtport->ops->discovery_event)
+		tgtport->ops->discovery_event(&tgtport->fc_target_port);
+}
+
 static const struct nvmet_fabrics_ops nvmet_fc_tgt_fcp_ops = {
 	.owner			= THIS_MODULE,
 	.type			= NVMF_TRTYPE_FC,
@@ -2557,6 +2567,7 @@ static const struct nvmet_fabrics_ops nvmet_fc_tgt_fcp_ops = {
 	.remove_port		= nvmet_fc_remove_port,
 	.queue_response		= nvmet_fc_fcp_nvme_cmd_done,
 	.delete_ctrl		= nvmet_fc_delete_ctrl,
+	.discovery_chg		= nvmet_fc_discovery_chg,
 };
 
 static int __init nvmet_fc_init_module(void)
diff --git a/include/linux/nvme-fc-driver.h b/include/linux/nvme-fc-driver.h
index 2bb349035431..5bbcb7afef39 100644
--- a/include/linux/nvme-fc-driver.h
+++ b/include/linux/nvme-fc-driver.h
@@ -797,6 +797,11 @@ struct nvmet_fc_target_port {
  *       nvmefc_tgt_fcp_req.
  *       Entrypoint is Optional.
  *
+ * @discovery_event:  Called by the transport to generate an RSCN
+ *       change notifications to NVME initiators. The RSCN notifications
+ *       should cause the initiator to rescan the discovery controller
+ *       on the targetport.
+ *
  * @max_hw_queues:  indicates the maximum number of hw queues the LLDD
  *       supports for cpu affinitization.
  *       Value is Mandatory. Must be at least 1.
@@ -838,6 +843,7 @@ struct nvmet_fc_target_template {
 				struct nvmefc_tgt_fcp_req *fcpreq);
 	void (*defer_rcv)(struct nvmet_fc_target_port *tgtport,
 				struct nvmefc_tgt_fcp_req *fcpreq);
+	void (*discovery_event)(struct nvmet_fc_target_port *tgtport);
 
 	u32	max_hw_queues;
 	u16	max_sgl_segments;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
