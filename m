Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 094E71FE05
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=znOYLnwYPN0QB8Gor/JUI7eFCpNpQ0gTMZGAgHlH70w=; b=ffWwwPv4nfSwjbh01Gc22vq8Ji
	V+Wh5FMKW0+SrP9wywlfThwcTHvylrYpr9sltaKgqNbJOX1l5tBCyIDb/mn+O3LCxsDl3MuSbZ21X
	++74ntoCLQX1M1+Bq1gps04ZLXaGN70fzCKuXBBrwsPDrhEeeloeh0iIKvFlBJVuBG5yl49ByjMO9
	SsZU2QxSrtzverhbXb4lJRETpC6BZXSKrMJ93CRAr47eZ//ifdXQhS6HjELuyxaiYH6RcN9Z5W3hF
	j3ZrPmt0E24m45xoY9Zvh70XTf2nEm8ml/ukZIXqPvJC5LE2toMIU+KrGI8J3TUtANwUrhSqIaVUd
	cDGHL4ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6y9-0005oJ-Ow; Thu, 16 May 2019 03:22:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6xr-0005Wz-Ga
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557976911; x=1589512911;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=aOjU31AnN+msbc3FVmggu7LVv5EYswNDsxwqRPG9ADU=;
 b=ZA5UACOViUV/gyWNbgU/fYN7a7hMOPtgwd0zh2d9Lwa55+TcYGArkiYs
 EAU7xRxL+hzF9/ihSkCdRPn2wt0DUM3so2DRPts7han6FRcYOKo4/LSAH
 BbifLy0VSCWxkK9b/QB+tk8KZfUsNy2DK2/8BIKfqIg2Z7x3Z+DF3AetZ
 IJA+i+F3+0MnQkHsSGqNPfBRQsJPEjuqzSPt0xejvKe6XKDLqlNPdO3ML
 qv6yAvFZ8IGFKqLXsD22TR/QzGGgkV6r6TiqJ8b0jeVKgn4pmTBK1CoR5
 SLO8uaKdoDfU01zqsfkdCWwy9B7D/vtsM2a3YAZPPkRR5Dx1eTIAB6H3Z g==;
X-IronPort-AV: E=Sophos;i="5.60,475,1549900800"; d="scan'208";a="214490460"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2019 11:21:31 +0800
IronPort-SDR: AFcv06CvzziLoZl05rL7fWEvgTjI/8RFdEtCulYV/CB0v9M7EjV6zavJMculQRgFgdP/qgc9Do
 osASv541+Mau1sQphvXEmmFt+t2yEiqxQSISuPnvt7a/cFNSUnPSMQC2UpwsPqrD4EYdlZkMy9
 wkNAOc8kq8uLpCKnh9XASqhFqY/cIBhOCNJenzbRzeTGurmB7e/u9oFFpOEqElLNZ+DdFuncg3
 EZmI0WUpqQlAU6qN3wKdtjOw7DGNZFZGK5sCQPZBpOdXQadFDJW3TZJhnnN5E4MqCLjN0wNI12
 J0SODx2wYx/as0kQtkymbH+j
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 15 May 2019 19:59:26 -0700
IronPort-SDR: QFzIMQWY4QGrXaLdsMKW8yFuDgDozcBF8w2+z+EZYzuVpuwBnZJPEK6CWWqYPCffwUYXOJAu3T
 c5xV7Uv68+KIhWKCXDaIntmRaZlY+bmyFX98cudQs2NIBnxaRI4+wEz3aaPn2Mf5nbrxSUfhh5
 KJ4AkwaVhpsJkJ2RB2M7yA2WQ1zZWJ4VGsxVG4KcJl21RArwBO1I25lP2dLyN/ski3lrucHTW5
 Sxx/Wn35ZN1NIKR6cP7Kq1ogFQh+TgfhpY2NsKyGEqzlqnCmD/zPQw2FXP3sQoxkFB0xEy4bBD
 Or8=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 May 2019 20:21:32 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 2/4] nvmet: allow user to specify ioprioty from cfgfs
Date: Wed, 15 May 2019 20:21:07 -0700
Message-Id: <20190516032109.13048-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
References: <20190516032109.13048-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202151_846519_21166E2A 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jthumshirn@suse.de, hch@lst.de,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, sagi@grimberg.me
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds the configfs interface to initialize the iopriority
class and values from the user for each port. By default we use
NONE iopriority class.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/target/configfs.c | 76 ++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
index 08dd5af357f7..51548b0f605e 100644
--- a/drivers/nvme/target/configfs.c
+++ b/drivers/nvme/target/configfs.c
@@ -11,6 +11,7 @@
 #include <linux/ctype.h>
 #include <linux/pci.h>
 #include <linux/pci-p2pdma.h>
+#include <linux/ioprio.h>
 
 #include "nvmet.h"
 
@@ -143,6 +144,74 @@ static ssize_t nvmet_addr_traddr_store(struct config_item *item,
 
 CONFIGFS_ATTR(nvmet_, addr_traddr);
 
+static ssize_t nvmet_ioprio_class_show(struct config_item *item, char *page)
+{
+	return sprintf(page, "%d\n", to_nvmet_port(item)->ioprio_class);
+}
+
+static ssize_t nvmet_ioprio_class_store(struct config_item *item,
+		const char *page, size_t count)
+{
+	struct nvmet_port *port = to_nvmet_port(item);
+	u8 class;
+
+	if (kstrtou8(page, 0, &class))
+		return -EINVAL;
+
+	if (class > 3) {
+		pr_err("class %u is out of range ioprio_class [0-3]\n", class);
+		port->ioprio_class = 0;
+		port->ioprio_value = 0;
+		return -EINVAL;
+	}
+	/*
+	 * Right now update ioprio value everytime class or value is
+	 * initialized.
+	 *
+	 * XXX: add lock here.
+	 */
+	port->ioprio = IOPRIO_PRIO_VALUE(port->ioprio_class,
+			port->ioprio_value);
+	port->ioprio_class = class;
+	return count;
+}
+
+CONFIGFS_ATTR(nvmet_, ioprio_class);
+
+static ssize_t nvmet_ioprio_value_show(struct config_item *item, char *page)
+{
+	return sprintf(page, "%d\n", to_nvmet_port(item)->ioprio_value);
+}
+
+static ssize_t nvmet_ioprio_value_store(struct config_item *item,
+		const char *page, size_t count)
+{
+	struct nvmet_port *port = to_nvmet_port(item);
+	u8 value;
+
+	if (kstrtou8(page, 0, &value))
+		return -EINVAL;
+
+	if (value > 7) {
+		pr_err("value %u is out of range ioprio_value [0-7]\n", value);
+		port->ioprio_class = 0;
+		port->ioprio_value = 0;
+		return -EINVAL;
+	}
+	/*
+	 * Right now update ioprio value everytime class or value is
+	 * initialized.
+	 *
+	 * XXX: add lock here.
+	 */
+	port->ioprio = IOPRIO_PRIO_VALUE(port->ioprio_class,
+			port->ioprio_value);
+	port->ioprio_value = value;
+	return count;
+}
+
+CONFIGFS_ATTR(nvmet_, ioprio_value);
+
 static ssize_t nvmet_addr_treq_show(struct config_item *item,
 		char *page)
 {
@@ -1158,6 +1227,8 @@ static struct configfs_attribute *nvmet_port_attrs[] = {
 	&nvmet_attr_addr_trsvcid,
 	&nvmet_attr_addr_trtype,
 	&nvmet_attr_param_inline_data_size,
+	&nvmet_attr_ioprio_class,
+	&nvmet_attr_ioprio_value,
 	NULL,
 };
 
@@ -1206,6 +1277,11 @@ static struct config_group *nvmet_ports_make(struct config_group *group,
 	INIT_LIST_HEAD(&port->referrals);
 	port->inline_data_size = -1;	/* < 0 == let the transport choose */
 
+	port->ioprio_class = IOPRIO_CLASS_NONE;
+	port->ioprio_value = 0;
+	port->ioprio = IOPRIO_PRIO_VALUE(port->ioprio_class,
+			port->ioprio_value);
+
 	port->disc_addr.portid = cpu_to_le16(portid);
 	port->disc_addr.treq = NVMF_TREQ_DISABLE_SQFLOW;
 	config_group_init_type_name(&port->group, name, &nvmet_port_type);
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
