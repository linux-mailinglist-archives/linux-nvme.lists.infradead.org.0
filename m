Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0FE1BF8F
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 00:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VH8dWWd+iyIHCbDXZi0hqaMFw5N1IuWYFBwyUM8LiUY=; b=q6H8M4B69pCDe8jJsivZ46eQAv
	2bhTVzJSUnKO14fp1B4MGdQjDz9qXelW/LGYcr6y4qiJtBmZJ3WGE7Yb1CpM36njGhJvS1Jvsjm97
	howttwvvI113yTnguqYUM5KPkXLDD5NhQwL/20AzfwRKSpunlm+yLIrhJQx2vDARpQ/s8hyDUXn6H
	aAE7xTfYVb7frTDxL2cxecIAl57PG5xxNlK8TO4m47PVyKpkGALnd/hyPE/U2fEuH3czaG4mzjngn
	qwA25CcRawcgTp1wdIRxs03CttoCRMGvQyJ7gIvhHeGoGaT25RtHgj1VFZCI25Ae3YXxCufZz1Cmv
	dgsyO0JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQJfe-0007Ma-Bb; Mon, 13 May 2019 22:43:46 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQJfT-0007IZ-MH
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 22:43:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id a3so7515801pgb.3
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 15:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VQxlyEJbmk2REmlNP8v5phLYKqPSpGA8Y0sfxGAoOR0=;
 b=M6MuDT+hEY2DPcbTnjOQlb1EXqbVSCMAIBcJ1f68lltgz2UkjqgGE+Cn5KpJgwJz2b
 m5If5HQ99TlSwOHlHVqUZovNuwq3q3XKda+rlaYa1Livb39YSay8XTjIH3xzJmlFB5mD
 jKsi93dumlmV7Q0FkNTajkfJsALcywk+7qt0mPuAMZalehx56/941XXXzN2L7rtuU/3S
 QSniAd1lRLPVK6sJjdzsZaESNSv7uYnpm5FACwq6RzbnU+cefrOkaTVoHfchxJcM82Ip
 jOaxEG/e2f/XO8IEhQffFDAAPP/reCsb5nM8/JFPGLj6ZeLmmfu1FKzP2MnZyohyHdDq
 DMmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VQxlyEJbmk2REmlNP8v5phLYKqPSpGA8Y0sfxGAoOR0=;
 b=NN1N5TFvCoo1C0TVL6pf5u0uMLDuvo0PWurQrxw7WFyVCg0oxgtYlt7ytiKwJzG7Ax
 hs74JARFenQ0QNXRkO/2AcpJ2n6mi7FVlgGvl3cazaZARssgLPngcQTRod84dkvfK4v5
 /EOcQWTl44hip3YQSEC6d+/vUqky0d7O/WtDWHdqfV5nVXMUN/62/eLdDC3h7b3Hyk7q
 UhCyc1o3Cx/l3Bfz4myxVVQrqsr0XP4VBzouTAF3l87MjJExuMZb8KhScSs39ri71D/K
 IruDfTCTxPQ5cE3Nl+qlZDi1eoOn4sPVRBav1EJs1p8ECLV22Zu8nrOe0+/vdixCIqbs
 H3dQ==
X-Gm-Message-State: APjAAAX3tHxqpPdhRpwx5boMFOld6Ue8eFBVPFkhKyeTMJzwPmt6B6Cj
 LPVVXt/gBLXVpWkqCEB4xypBD8+V
X-Google-Smtp-Source: APXvYqwFAQpwe9z01FtnOsEP5yOO6vOQXn5Xg51EthWxs04LiNfkovLpJqPtW8RR6tSO+W9y6efIKw==
X-Received: by 2002:a63:ed03:: with SMTP id d3mr34369180pgi.7.1557787414663;
 Mon, 13 May 2019 15:43:34 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id g188sm20299309pfc.151.2019.05.13.15.43.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 15:43:34 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/7] nvmet: add transport discovery change op
Date: Mon, 13 May 2019 15:43:08 -0700
Message-Id: <20190513224314.24169-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190513224314.24169-1-jsmart2021@gmail.com>
References: <20190513224314.24169-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_154335_726265_D2CAE97E 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

Some transports, such as FC-NVME, support discovery controller change
events without the use of a persistent discovery controller. FC receives
events via RSCN from the FC Fabric Controller or subsystem FC port.

This patch adds a nvmet transport op that is called whenever a
discovery change event occurs in the nvmet layer.

To facilitate the callback without adding another layer to cross into
core.c to reference the transport ops, the port structure snapshots
the transport ops when the port is enabled and clears them when disabled.

Signed-off-by: James Smart <jsmart2021@gmail.com>
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
