Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB05A1E439
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 23:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R9AgeScBbagEXljCZSyIgiq1Nxw3D3zeXIO4SP26dJ0=; b=oEvuWfegpjNlHC2XibQOxCQ/VJ
	iFxxxKDzm+bEKzF4xAVbV9429NE6sqAGfSwQFjyHHHUBx4ZK5hd50KeOX0RVYdp5plQBgBnvWbvxd
	6RcVYnVGur9jceF6tgkyawxte+XlR7Pa4qBJGbJpmWn748ifLYUc3XsHixVKSjz6UYhlcc/d3++KF
	M6gb8WlpxH6bSx4yr4crieFcj2GZ4pDFOhE1hT4d4/gLfqCv5mUHfQZcwhKsbR9T/0bYaTOX0q4TT
	Eb+cU3f2JixPX3ChBfmECwzuKnVN+1d/SvbJucCcRWyOTN6UMYnJPitxL24yPB77CKbSOQq7sJgPU
	UuL/05pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfRP-0007yO-5U; Tue, 14 May 2019 21:58:31 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfRC-0007sD-C5
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 21:58:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so265323plz.1
 for <linux-nvme@lists.infradead.org>; Tue, 14 May 2019 14:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aIyO7wmLaFjAOEryzRiHtpXfQoX4h++ByCrxvqU+6U4=;
 b=LUzN6XvDeo/lfNndIbspb3+4vcxSlmzZiMJWDmwi28nTEmACjXwO+28zZ+A961X7r9
 HOMm5RMVpYLVdqRCUvTrJuWUvjWTCL+Xjb4Bx3TsivXc1ONW8YpywM4u6FUi0t60XW2M
 AYSlCA1c5xVEO97J0uGHSUdRk1xajlHjUMBYNhytJ+O6k6e16xKpg46r3NTyPUq/YTd0
 HZKQdIv+B4400eDq/Lv0cE60ewYEOuNkkYaPkD30TRhfE0K0nECNmCabxE7Mxj9yfRDE
 kwfZ5qu6UIQsBxbyBchmZ53jzXeOW9SfZU8vyqHm244zhxW/iH+65J18rPvhvHlDRFo3
 cOuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aIyO7wmLaFjAOEryzRiHtpXfQoX4h++ByCrxvqU+6U4=;
 b=rX8XtpK/ss1bQd7rVZaaohy6GYT3QwL7t7cJ6b5I1Wkk7vTSolEpITenPLXW/dW38i
 EOQCHt2IfQTc+RUsJhk5Pv+tTVLZJMwlXoRM35vG5B4vfKped3zADFhjBQlD2tfR5phw
 VeC8D5ke511kvoEQzTZWl8sNipYFeOCf2X15Gq6BRAMv6FyzezuqgYQyAMvEcFtgMmG/
 fNhPMkL5iGqHPtCCu2grcrxZHew2r6KEwk648TVTIoe76yhzAr4S/z8uPbr1SHdQ04IE
 Bh1T7MIu6mU6XT7VgT+kLJ6cSJl3fI7gVplIZIlnvUraCuj+mZ2K26Y7dqw8XwH9JNX4
 Yz2Q==
X-Gm-Message-State: APjAAAWTc3Zyba9nJ1wDhClur7m9V0BiODF6O94IBHDxj1Bs6fzOGbrX
 HiONfzUzFU5HPkkei2+P6Sp6gQok
X-Google-Smtp-Source: APXvYqzrPAs8CYZL8Y6RGVBi6Wjh+MaPZPpKyo99vW6EWdH80O6COVixRlPUtQ2+CcebW3zpAqv11Q==
X-Received: by 2002:a17:902:7797:: with SMTP id
 o23mr39175024pll.147.1557871097431; 
 Tue, 14 May 2019 14:58:17 -0700 (PDT)
Received: from os42.localdomain ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o6sm120917pfa.88.2019.05.14.14.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 14 May 2019 14:58:16 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/7] nvmet: add transport discovery change op
Date: Tue, 14 May 2019 14:58:02 -0700
Message-Id: <20190514215808.10572-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190514215808.10572-1-jsmart2021@gmail.com>
References: <20190514215808.10572-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_145818_407263_52FB7A54 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Some transports, such as FC-NVME, support discovery controller change
events without the use of a persistent discovery controller. FC receives
events via RSCN from the FC Fabric Controller or subsystem FC port.

This patch adds a nvmet transport op that is called whenever a
discovery change event occurs in the nvmet layer.

To facilitate the callback without adding another layer to cross into
core.c to reference the transport ops, the port structure snapshots
the transport ops when the port is enabled and clears them when disabled.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/target/core.c      | 2 ++
 drivers/nvme/target/discovery.c | 4 ++++
 drivers/nvme/target/nvmet.h     | 2 ++
 3 files changed, 8 insertions(+)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 7734a6acff85..43e8c4adc1f4 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -311,6 +311,7 @@ int nvmet_enable_port(struct nvmet_port *port)
 		port->inline_data_size = 0;
 
 	port->enabled = true;
+	port->tr_ops = ops;
 	return 0;
 }
 
@@ -321,6 +322,7 @@ void nvmet_disable_port(struct nvmet_port *port)
 	lockdep_assert_held(&nvmet_config_sem);
 
 	port->enabled = false;
+	port->tr_ops = NULL;
 
 	ops = nvmet_transports[port->disc_addr.trtype];
 	ops->remove_port(port);
diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 5baf269f3f8a..8efca26b4776 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -41,6 +41,10 @@ void nvmet_port_disc_changed(struct nvmet_port *port,
 		__nvmet_disc_changed(port, ctrl);
 	}
 	mutex_unlock(&nvmet_disc_subsys->lock);
+
+	/* If transport can signal change, notify transport */
+	if (port->tr_ops && port->tr_ops->discovery_chg)
+		port->tr_ops->discovery_chg(port);
 }
 
 static void __nvmet_subsys_disc_changed(struct nvmet_port *port,
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..dc270944bb25 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -140,6 +140,7 @@ struct nvmet_port {
 	void				*priv;
 	bool				enabled;
 	int				inline_data_size;
+	const struct nvmet_fabrics_ops	*tr_ops;
 };
 
 static inline struct nvmet_port *to_nvmet_port(struct config_item *item)
@@ -277,6 +278,7 @@ struct nvmet_fabrics_ops {
 	void (*disc_traddr)(struct nvmet_req *req,
 			struct nvmet_port *port, char *traddr);
 	u16 (*install_queue)(struct nvmet_sq *nvme_sq);
+	void (*discovery_chg)(struct nvmet_port *port);
 };
 
 #define NVMET_MAX_INLINE_BIOVEC	8
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
