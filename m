Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB125EF78
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 01:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDskrBjt+qfkHpHgGjrIEwjditd5fFlMTtYLzbzjzGA=; b=EMV4u7TK8QLAVS
	ER5uEg2DP5tKvQQW5WRL5Ot3WDUu5xtP9VdDR0nAEVyum82OafN0zb2QYsganmGjLIwSKZv+zu5Kd
	585j7TwWXZfZdK9o5JDTjzDuOZNrrjpeMYutsBiO4PVsRmRAn+CnFbnYasSdem419l2S9kNgkErrR
	awa3idu6+FfCbrLNLp/SC/9ZKf7SpvjzkxXHfQprhhdqUpyRMPRex9Mxa9dcRgl1cuU8ZZAndPj8w
	pyTX4RhG2f0hv7mmcHu4RacWRg79RkZfwkyYi9hmjZnlWPMuCZ6LVQvmTXNvHKxJHrTPpZjPXc58Z
	PVNhhN5ix0zvv/mW6gPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioJP-0001CE-Ni; Wed, 03 Jul 2019 23:05:15 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hioHv-0008A1-1l
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 23:03:46 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hioHq-0005uS-Bd; Wed, 03 Jul 2019 17:03:41 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hioHp-0005yD-4H; Wed, 03 Jul 2019 17:03:37 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Date: Wed,  3 Jul 2019 17:03:03 -0600
Message-Id: <20190703230304.22905-2-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190703230304.22905-1-logang@deltatee.com>
References: <20190703230304.22905-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] nvmet: Fix use-after-free bug when a port is removed
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_160343_504859_A327FE93 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Logan Gunthorpe <logang@deltatee.com>, Stephen Bates <sbates@raithlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When a port is removed through configfs, any connected controllers
are still active and can still send commands. This causes a
use-after-free bug which is detected by KASAN for any admin command
that dereferences req->port (like in nvmet_execute_identify_ctrl).

To fix this, disconnect all active controllers when a subsystem is
removed from a port. This ensures there are no active controllers
when the port is eventually removed.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/configfs.c |  1 +
 drivers/nvme/target/core.c     | 12 ++++++++++++
 drivers/nvme/target/nvmet.h    |  3 +++
 3 files changed, 16 insertions(+)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 08dd5af357f7..3854363118cc 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -673,6 +673,7 @@ static void nvmet_port_subsys_drop_link(struct config_item *parent,
 
 found:
 	list_del(&p->entry);
+	nvmet_port_del_ctrls(port, subsys);
 	nvmet_port_disc_changed(port, subsys);
 
 	if (list_empty(&port->subsystems))
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 7734a6acff85..e4db9a441168 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -277,6 +277,18 @@ void nvmet_unregister_transport(const struct nvmet_fabrics_ops *ops)
 }
 EXPORT_SYMBOL_GPL(nvmet_unregister_transport);
 
+void nvmet_port_del_ctrls(struct nvmet_port *port, struct nvmet_subsys *subsys)
+{
+	struct nvmet_ctrl *ctrl;
+
+	mutex_lock(&subsys->lock);
+	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
+		if (ctrl->port == port)
+			ctrl->ops->delete_ctrl(ctrl);
+	}
+	mutex_unlock(&subsys->lock);
+}
+
 int nvmet_enable_port(struct nvmet_port *port)
 {
 	const struct nvmet_fabrics_ops *ops;
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..b6b0d483e0c5 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -415,6 +415,9 @@ void nvmet_port_send_ana_event(struct nvmet_port *port);
 int nvmet_register_transport(const struct nvmet_fabrics_ops *ops);
 void nvmet_unregister_transport(const struct nvmet_fabrics_ops *ops);
 
+void nvmet_port_del_ctrls(struct nvmet_port *port,
+			  struct nvmet_subsys *subsys);
+
 int nvmet_enable_port(struct nvmet_port *port);
 void nvmet_disable_port(struct nvmet_port *port);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
