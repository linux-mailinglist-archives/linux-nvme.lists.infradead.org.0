Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B31E43C
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0BiJNgKhsShABYnUmYcogSXgBXs9sFC2ed6TtSzlFNw=; b=ewWu2LesPUknmse+MVjC8pmEL9
	Nns1QHfEdCfyoZqzam54iWdTBMmXhmz/dq+a368Fga3DPzrQP1w3FvSINEZXo9FkMacyus8dI9hre
	+NUpjCpXVAy+tqWnkMZMGVysJEde0c3ih2+GZyDP6CHW8kHVm2ZB38r3zWVAOX+AZECGch9ta/ydu
	LUwtlVNkgoDnuKeY7ySmoTz4J8gQdBqzW9X1YtNokSSiNYleVRfv/SvoOnerQI5V6TwancZY4D+4S
	48knzyg/L9ZbkkWnAx5Xg3JUmV2qrkt0BcAS0wqxey7TuYcpbD6/3AOEaFMus6FaSZwF1Oa5MjDV2
	h5fzYPHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfRW-00088U-Gm; Tue, 14 May 2019 21:58:38 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRD-0007sU-AP
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:20 +0000
Received: by mail-pf1-x444.google.com with SMTP id b76so199796pfb.5
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eG0nZ9K/NT52XvBR95UyqY0vRI/Sb3i6pSefteAh30A=;
 b=luEmQAi2eJAU5/iLZyT66VciPlXXK5Ly7k0yCWis3e7KWfXqmBms8mJXjLMwRem4KI
 NCIGgzJJirtDi3vjFKjgKYav235euMzBxX/QX5XYn7gmkUlAWzSjOZAxdVrfFQKoxGRG
 z/NTkWb8649FsNBmwXXdBBOmwZGxHGSdMB5JH2ImAxdSpLat1i/oImPufLjTM4reqQFw
 U2SrgYRG8mk7D4wo79O+g8LZBGyXBD6IOuX1iF0pXD6cr0mEyFUi/wShttD1vi8Y/JyA
 NUZHlbEHbUMD2pKkJKeMZCNPh7JHPf/VWmPICB1u2Ohy99S1eFZ9AA/e5uT/8QZvqFQo
 Qa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eG0nZ9K/NT52XvBR95UyqY0vRI/Sb3i6pSefteAh30A=;
 b=ro1n6E7LigSDV/rOwvcqXBdA+aDWWMZ8h98rUo2tCEXecaYojFO6N4nKU2yQUjFaAn
 2PmiA6FstndDTN5vqt8mBIEcUL7NjthH/5ivV342XODstqZ7uLo5qhj7TYfxuIny2rjm
 CwLVdqW3Guub7enYT8b+EbsDJIQkgzVKdh9YuBZBSG0jmpOKJ9ynaNAxtpdRcFdQNyTc
 TOQ3NASxeLTt0heVFalDqMeYom+i7TKrRG4NrxutjYO1RyvMX/U6GgHbx8+BM3PQtXIy
 l/A1wlKOuDqZ0DzKMqib12h8qk6Z4yPJWUcBCvVgoLDV9RTYZQr/lz31Hkco/ef3AQOX
 RwJg==
X-Gm-Message-State: APjAAAXEtJ/q4myWcYC+2MeoL6OaAKM+d088rQHq9Bge6Oyx3C0PQAjB
 0AjKYZLf/9f1V76tfZh/NDufHvFg
X-Google-Smtp-Source: APXvYqwNAHf1DUbuXdZwsCcZ1RULOHenXp7ENj8M6dt9HfqWGpXjWPEQ3Co1ZS/i8Q879jZesONPNQ==
X-Received: by 2002:aa7:8ec6:: with SMTP id b6mr42965301pfr.234.1557871098372; 
 Tue, 14 May 2019 14:58:18 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:17 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/7] nvmet_fc: add transport discovery change event
 callback support
Date: Tue, 14 May 2019 14:58:03 -0700
Message-Id: <20190514215808.10572-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145819_379638_A1BB658F 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This patch adds support for the nvmet discovery_change transport op.
In turn, the transport adds it's own LLDD api callback discovery_event
op to request the LLDD to generate an RSCN for the discovery change.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
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
