Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0143996067
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 15:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvEh9mNOuQD48xHzFEPlnNDToXCpWt0zD7j3RWAtjJU=; b=UjWgHKXVo7s9CK
	szX4MOjvcFQ2LCIuXF8Ll8vceghCrBcy9q8vICj49MH0+YUSsQGxuvZgCWyE3yD/z+cT5agLvXKeV
	WD4wT8gWtEAetRlJUZ3RlwPxqw45B6OJtnyDnHHmBNZc5h2iTkE5kgU/fz/MPMnDxe61Wsf2rS1qC
	gEEk+7dJOMpUpjCzJZYyzfFdgtCinMwMpShTpxgqLSxPCIT17aIdZesFOb20PSMXMSSG+yncUJXH8
	/q5TzqLGsRsyTb5L89xQ5UEMhUKrVxeXCqP8GW91PV+FXE4v4ma0swvGjoVcXGl9QIzP2xXZp3603
	RS6fYx7MDAk1OtTWDV2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04OD-0003CL-Cw; Tue, 20 Aug 2019 13:41:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i04NK-0002kS-GK
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 13:40:40 +0000
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCF6422DA9;
 Tue, 20 Aug 2019 13:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566308438;
 bh=6Qop+X5mrgk58CnhImkOZqXfjfCqjcRE6X3Fin3xA2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=e0hb6TXXPiXLBqkT7QtU8egSW4fp//oUJQE3dM60Xba6qhrY0dXTaQqmQTif2Lf3x
 A1KCBngRgYU6CTx1iyic2tolYdjfGkOKyr9VqgqaZPM4/yuuovPzfXuODGeRze8OsZ
 fJjdRgR01DFlWUWXmUPCwtYj53JkbMY0P4sFbTEw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 10/44] nvmet: Fix use-after-free bug when a port
 is removed
Date: Tue, 20 Aug 2019 09:39:54 -0400
Message-Id: <20190820134028.10829-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190820134028.10829-1-sashal@kernel.org>
References: <20190820134028.10829-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_064038_753403_093EAA64 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 3aed86731ee2b23e4dc4d2c6d943d33992cd551b ]

When a port is removed through configfs, any connected controllers
are still active and can still send commands. This causes a
use-after-free bug which is detected by KASAN for any admin command
that dereferences req->port (like in nvmet_execute_identify_ctrl).

To fix this, disconnect all active controllers when a subsystem is
removed from a port. This ensures there are no active controllers
when the port is eventually removed.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by : Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/configfs.c |  1 +
 drivers/nvme/target/core.c     | 12 ++++++++++++
 drivers/nvme/target/nvmet.h    |  3 +++
 3 files changed, 16 insertions(+)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 08dd5af357f7c..3854363118ccf 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -673,6 +673,7 @@ static void nvmet_port_subsys_drop_link(struct config_item *parent,
 
 found:
 	list_del(&p->entry);
+	nvmet_port_del_ctrls(port, subsys);
 	nvmet_port_disc_changed(port, subsys);
 
 	if (list_empty(&port->subsystems))
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 7734a6acff851..e4db9a4411681 100644
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
index c25d88fc9dec8..b6b0d483e0c50 100644
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
