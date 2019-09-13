Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEE5B28EE
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Sep 2019 01:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHGrErjsKoc1j2RhXDlHWKppw6knwmlrvaDGtm9qvjI=; b=Wr0vx4MKXoMoxk
	ejp2s+BxHjXKGLzEHWYYspj2qGenW4AaJDogdrENuTAl8qnD2CycXjBe8vqP2uLzD1queOxGN9UnE
	2BQUcM6zJyPmBPZdu6G93jFAPcGM7uVdiH48Gq659wXV0za0pRoNQEbMfb3Knd4PgD91acXrN5H+G
	pmGUW/E0lZMC9wvhin7eFOjBEZ5XB0NryLRwsjeszObsCRv912KBk7p0WYAm62/ImFL1q0jH7Nrma
	/S+LE80+Bz0q//ZrLCqe7jmPkOOPVDwSt0PsJJqOMxgR+KLAuo6p56e2qsw9I05iXmcJ4J6Y5XXts
	Ek8h++xKpH7OXexTqDpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8v7a-0007D5-Tb; Fri, 13 Sep 2019 23:36:58 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8v7M-00077u-8P
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 23:36:45 +0000
X-IronPort-AV: E=Sophos;i="5.64,501,1559520000"; d="scan'208";a="750670160"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-c300ac87.us-west-2.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 13 Sep 2019 23:36:43 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-c300ac87.us-west-2.amazon.com (Postfix) with ESMTPS
 id C206AA18CB; Fri, 13 Sep 2019 23:36:42 +0000 (UTC)
Received: from EX13D05UEE001.ant.amazon.com (10.43.62.120) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 23:36:42 +0000
Received: from EX13MTAUEE001.ant.amazon.com (10.43.62.200) by
 EX13D05UEE001.ant.amazon.com (10.43.62.120) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 23:36:41 +0000
Received: from localhost (172.23.204.141) by mail-relay.amazon.com
 (10.43.62.226) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 13 Sep 2019 23:36:41 +0000
From: Balbir Singh <sblbir@amzn.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH v2 2/2] nvme/host/core: Allow overriding of wait_ready timeout
Date: Fri, 13 Sep 2019 23:36:31 +0000
Message-ID: <20190913233631.15352-2-sblbir@amzn.com>
X-Mailer: git-send-email 2.16.5
In-Reply-To: <20190913233631.15352-1-sblbir@amzn.com>
References: <20190913233631.15352-1-sblbir@amzn.com>
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_163644_423175_70C377A2 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
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

Changelog:
 - Remove EXPORT_SYMBOL_GPL for the nvme_wait_ready_timeout

 drivers/nvme/host/core.c | 7 +++++++
 drivers/nvme/host/nvme.h | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f6ddb58a7013..b8676786c06a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -40,6 +40,10 @@ module_param_named(io_timeout, nvme_io_timeout, uint, 0644);
 MODULE_PARM_DESC(io_timeout, "timeout in seconds for I/O");
 EXPORT_SYMBOL_GPL(nvme_io_timeout);
 
+unsigned int nvme_wait_ready_timeout = 0;
+module_param_named(wait_ready_timeout, nvme_wait_ready_timeout, uint, 0644);
+MODULE_PARM_DESC(wait_ready_timeout, "timeout in seconds for wait ready on reset");
+
 static unsigned char shutdown_timeout = 5;
 module_param(shutdown_timeout, byte, 0644);
 MODULE_PARM_DESC(shutdown_timeout, "timeout in seconds for controller shutdown");
@@ -1938,6 +1942,9 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
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
