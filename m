Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE45B1744
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 04:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxBwm37A34Mi3kY+7OhdkJii6HJdZLATb5h6Qcoz0aE=; b=cdxVImuzmb75fY
	yk1bb4PwSpg7s6WfBkP9WrVyi+zSQ4Pi3FqepH9xFr0pQbWe//COlpQBUtkjmthcc25QAUSEEVpb9
	Dvi96cz2Ge2NHQkCQ1XVT8LsEotRn0QejYQMmWMbox74YYE55plsY7Jx4fuF2QAu1iLoZE0XfKHYC
	/CVSKQGxbekDdrJDd+sp+dvczLLQYqLeOWo4X+hQMGFeDyxeV9vsD1OU6O4sFYsGmAwIWmDIEQbfx
	4vQrpXHoj7tjUijSwD96KiavBMytNbIYf8mGD9yPtmUS1jQFd8fSM+kEr+Vgq6GVQbWniEJjYUIdS
	ni0kRovZQJRp2G6sbaGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8baJ-00035h-F6; Fri, 13 Sep 2019 02:45:19 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8bZq-0002Sz-1F
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 02:44:53 +0000
X-IronPort-AV: E=Sophos;i="5.64,499,1559520000"; d="scan'208";a="831378341"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-2b-baacba05.us-west-2.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 13 Sep 2019 02:44:40 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-baacba05.us-west-2.amazon.com (Postfix) with ESMTPS
 id D1E33A1D63; Fri, 13 Sep 2019 02:44:39 +0000 (UTC)
Received: from EX13D08UEE002.ant.amazon.com (10.43.62.92) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 02:44:39 +0000
Received: from EX13MTAUEE001.ant.amazon.com (10.43.62.200) by
 EX13D08UEE002.ant.amazon.com (10.43.62.92) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 02:44:39 +0000
Received: from localhost (172.23.204.141) by mail-relay.amazon.com
 (10.43.62.226) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 13 Sep 2019 02:44:38 +0000
From: Balbir Singh <sblbir@amzn.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH 2/2] nvme/host/core: Allow overriding of wait_ready timeout
Date: Fri, 13 Sep 2019 02:44:32 +0000
Message-ID: <20190913024432.7705-2-sblbir@amzn.com>
X-Mailer: git-send-email 2.16.5
In-Reply-To: <20190913024432.7705-1-sblbir@amzn.com>
References: <20190913024432.7705-1-sblbir@amzn.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_194450_116649_9BF51FCB 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org, axboe@fb.com, Balbir Singh <sblbir@amzn.com>, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Largely for debugging purposes where controllers with large
timeouts get stuck during reset.

Signed-off-by: Balbir Singh <sblbir@amzn.com>
---
 drivers/nvme/host/core.c | 8 ++++++++
 drivers/nvme/host/nvme.h | 3 +++
 2 files changed, 11 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 45b96c6ac2d5..fa7982dfe551 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -40,6 +40,11 @@ module_param_named(io_timeout, nvme_io_timeout, uint, 0644);
 MODULE_PARM_DESC(io_timeout, "timeout in seconds for I/O");
 EXPORT_SYMBOL_GPL(nvme_io_timeout);
 
+unsigned int nvme_wait_ready_timeout = 0;
+module_param_named(wait_ready_timeout, nvme_wait_ready_timeout, uint, 0644);
+MODULE_PARM_DESC(wait_ready_timeout, "timeout in seconds for wait ready on reset");
+EXPORT_SYMBOL_GPL(nvme_wait_ready_timeout);
+
 static unsigned char shutdown_timeout = 5;
 module_param(shutdown_timeout, byte, 0644);
 MODULE_PARM_DESC(shutdown_timeout, "timeout in seconds for controller shutdown");
@@ -1937,6 +1942,9 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
 	u32 csts, bit = enabled ? NVME_CSTS_RDY : 0;
 	int ret;
 
+	if (nvme_wait_ready_timeout)
+		timeout = NVME_WAIT_READY_TIMEOUT + jiffies;
+
 	while ((ret = ctrl->ops->reg_read32(ctrl, NVME_REG_CSTS, &csts)) == 0) {
 		if (csts == ~0)
 			return -ENODEV;
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index b5013c101b35..c3caabc1f149 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -21,6 +21,9 @@
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
 
+extern unsigned int nvme_wait_ready_timeout;
+#define NVME_WAIT_READY_TIMEOUT	(nvme_wait_ready_timeout * HZ)
+
 extern unsigned int admin_timeout;
 #define ADMIN_TIMEOUT	(admin_timeout * HZ)
 
-- 
2.16.5


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
