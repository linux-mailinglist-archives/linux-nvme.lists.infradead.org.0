Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEB41E43D
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GGfeUoH5igQYdRiathOtQF8QJ6OKLAdGXHVjQrcUsRk=; b=iVpYXD3s7ihvT7f3TEmVoMUoU4
	o2Uww7Ozwzgxc279fev/6etLZPMw/azDsNxQfzsADNm2JI8eb3e8OhJLztsIVlgXWc5aSP/zZuD96
	PXuGGXPa5Zn5jWFdHnA/WNumhbRu6WTP4xIwFUbz6L5YAl0onMSkKjxAhtaN5M9JilS+fi/Zsx+DQ
	lZs6kXI1Tlag8DmTyH2z1G7RrVZE68Y2Lffnw/1c3hL1vVpdMK/V1ml4FMzP/h1nYkVfHoqr7OHwe
	wtOv81KkaozNXEwh2Ml6/QiBn1sQZL3j5glAfE/h00bVpj2U7KAVt7ZwcSGWX75gtZjPAO3Zj3C15
	ZdhJhqTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfRi-0008NB-SS; Tue, 14 May 2019 21:58:50 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRE-0007sr-25
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:22 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so238263pgb.3
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cOmw6qGw69FEBiT5ne54YNzirFQJ1J4Hpwq4G/erkuM=;
 b=ofkKH4IV9PJq72cX3iAqMAD0KGtZLc9HYgNJDNRdWBieUobc2w5z82Jnu2H6tHGlF4
 d2TmEph8420fGG7O0KPGYgiudwzxSEisYseGBDf3al5AmyS0GwYmKUrMgSKU/bo90naK
 rkbM8VI8J387L6vKEK0RVeYutbZwVf0FuTQl1tkhRACjc9vtokNNBGcSk3+AyyRGck15
 SIK0qe7QMCGMZFNlf9BNR2Da6RLeqKmrjHGgtswldEyB9f8KzdpfM2HAnzFN9a0pEho2
 yoi4zfU4qNHaM+FxK5tAV7GP3YvK/wMWjow6j8a2MUCcQqY6dvEK3rBV+bEKCSNUzOUP
 Yzxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cOmw6qGw69FEBiT5ne54YNzirFQJ1J4Hpwq4G/erkuM=;
 b=s3Cc/MgkAso9rU6eVzmhHCSk34zfxlT34O72vt5aiSt5OdvTnIL4ttwUOTXexF9cTK
 azQrOxps/V8QPSNke3uKjuZw58uSo1pWyy0UaDa/QsbJndB5jyO3evGqBgDVfmjcHHCh
 OwDkFKwE5akL6RkdLrYyy1I1ICk6KBtJ6+fL8oflOXAhm7bxER8lYp7DOqTXqGvMCnwE
 zLsoFEJwoeubzl+Z/VTMksBjyiZd+oyNcNU7HKNVuOa9Ia7IVHndqsQ44D+RjBhrvi0s
 S9LAeT/vQpbSHkoDIlXkOE9i7sAagA3mz7mqA+Nd2L8xLGflXZix71KsNt/tHN/pxMxQ
 0D7Q==
X-Gm-Message-State: APjAAAVafA+g7rrFtkTt6cE3hltsAJw9cOlRqlIr+0qGVupiKUa+KRIW
 konlDtMXAB0qTEhh3skV9NcYS0ip
X-Google-Smtp-Source: APXvYqwiU7w9/4li7SGd87CNcfhZlMco44iw0dr5Wa+qk1mS9FTng+ijVtyvzaoaBGhmUHZ80i6X7Q==
X-Received: by 2002:aa7:99c7:: with SMTP id v7mr43713954pfi.103.1557871099373; 
 Tue, 14 May 2019 14:58:19 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:18 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/7] nvme-fcloop: Add support for nvmet discovery_event op
Date: Tue, 14 May 2019 14:58:04 -0700
Message-Id: <20190514215808.10572-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145820_115060_7D49FF88 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Update fcloop to support the discovery_event operation and
invoke a nvme rescan. In a real fc adapter, this would generate an
RSCN, which the host would receive and convert into a nvme rescan
on the remote port specified in the rscn payload.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/target/fcloop.c | 37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 381b5a90c48b..6ddcd090ec07 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -231,6 +231,11 @@ struct fcloop_lsreq {
 	int				status;
 };
 
+struct fcloop_rscn {
+	struct fcloop_tport		*tport;
+	struct work_struct		work;
+};
+
 enum {
 	INI_IO_START		= 0,
 	INI_IO_ACTIVE		= 1,
@@ -348,6 +353,37 @@ fcloop_xmt_ls_rsp(struct nvmet_fc_target_port *tport,
 	return 0;
 }
 
+/*
+ * Simulate reception of RSCN and converting it to a initiator transport
+ * call to rescan a remote port.
+ */
+static void
+fcloop_tgt_rscn_work(struct work_struct *work)
+{
+	struct fcloop_rscn *tgt_rscn =
+		container_of(work, struct fcloop_rscn, work);
+	struct fcloop_tport *tport = tgt_rscn->tport;
+
+	if (tport->remoteport)
+		nvme_fc_rescan_remoteport(tport->remoteport);
+	kfree(tgt_rscn);
+}
+
+void
+fcloop_tgt_discovery_evt(struct nvmet_fc_target_port *tgtport)
+{
+	struct fcloop_rscn *tgt_rscn;
+
+	tgt_rscn = kzalloc(sizeof(*tgt_rscn), GFP_KERNEL);
+	if (!tgt_rscn)
+		return;
+
+	tgt_rscn->tport = tgtport->private;
+	INIT_WORK(&tgt_rscn->work, fcloop_tgt_rscn_work);
+
+	schedule_work(&tgt_rscn->work);
+}
+
 static void
 fcloop_tfcp_req_free(struct kref *ref)
 {
@@ -839,6 +875,7 @@ static struct nvmet_fc_target_template tgttemplate = {
 	.fcp_op			= fcloop_fcp_op,
 	.fcp_abort		= fcloop_tgt_fcp_abort,
 	.fcp_req_release	= fcloop_fcp_req_release,
+	.discovery_event	= fcloop_tgt_discovery_evt,
 	.max_hw_queues		= FCLOOP_HW_QUEUES,
 	.max_sgl_segments	= FCLOOP_SGL_SEGS,
 	.max_dif_sgl_segments	= FCLOOP_SGL_SEGS,
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
