Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8819115EA
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 11:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oCO5ikmokzj3zEL51XlnxLhMhaMwgwrE2Qw8fo9OjmQ=; b=kY/Eg96pfZf/WdW1tIcOeHUPLw
	lrCtWwfrrRIKGX5EYlxL4h5Brjode84C9VVYxPSMnZlAi6SsCfy+vQ29e3Op6GcGsd1OtCIs6DOrF
	3D7lykypB3oV+AW0VKHBfeiuRdWQK+I+GW3h5m5mPQPPsP3a5zJmMx+YiEthv3OpBrOq9m/jtwUL7
	BMibb7gQIur/0ssibqvHWUl1DB3fdv+Lr3huIQo1Q4Fs7x0uaCMR53JfSTOIUDsBl5fF0gBrwanB5
	nGQIhlXLLhR/vxgSQ+3nltiWdqW+KFHYihTfo1MlwCBlqScNzzaSzXHEXV3uQlU5oLejnusZT26Mr
	vcgJl37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7Zc-0004qY-0H; Thu, 02 May 2019 09:00:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7ZC-0004V6-Lf
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 08:59:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id ck18so728816plb.1
 for <linux-nvme@lists.infradead.org>; Thu, 02 May 2019 01:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tXYM5nw7ak39L4uM2osotFg5pKyIiXvFREZpA8SFmCI=;
 b=kGNyR9MLScTRt4jQGlSoW5UjQ3KVMJL5DyQn24jm4+Kq6OGT9b4WVDKE9ceKyM8MZE
 h0aCenY0U1TFau1IfRTHsKwxiWvDg+t4HO5YnkvDPYuftLv0KGIkbubFJKRrfoadhSfN
 7N6mzeaMAx7RZcseN9bohnaL5r2JjL0ttRRs4yf2pqZXVipH9oTnTIdfbu+Xlr+3let1
 6mgEA+BFdWKJpdZ/dwn79pfY821+3bYxHkV1P0Jfh5rM6I7hebF/DnJmgvfZNGNNWnDr
 J6SniuSruQAtEM/muUQrsKFCTGFc2gY6i8MT5MJPkIfmgj0WucnOcyr+MHiUD+j+mn3E
 xA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tXYM5nw7ak39L4uM2osotFg5pKyIiXvFREZpA8SFmCI=;
 b=q2ifZXANg2/xFJfwxJdx4Mrky6JRNIkoAjdplhf+j4IWkrL/quwVoDfi6XlD8dw1cF
 1ymF3zxjKh/vQ1RvIZvRkuLgcMQGwgK1+eEJ29ib6vIA8BswROr1WTvi5F9Bc2ZZe7XS
 xRyKbnFMwzRTWcjcmyghqy4prJLtUn3bwLVQPDKPnithIT8CLllMeKIVcybTWGKD8QSR
 3rDdvpdAy1qWtk09zY7SsQtc0TQS/HQOJ1VKUln1XkjyTL1cpqgZQ2ZFFpYwyQOXNHJv
 g9iW3vFHTlvrDbGKtI1Y645d+/lZKQlzhmiuFeT8W+SJPIDSD4ldcIFhwZvYq7IlTfcw
 C4Mw==
X-Gm-Message-State: APjAAAWXUW+x1+b+jasnuOHWhTedE2NlLkqu0S/gjEqSSSx4/BFYPrW5
 byC4dJqBX3J1mL+QYq9ABulSlJ5S
X-Google-Smtp-Source: APXvYqxp9EQRTqmOExtZ1lGxRSi3l+QszIulZL1dsNrhpA5fRJDy1wCWRRU8pnnC+3k126/gJoSWRg==
X-Received: by 2002:a17:902:7d8a:: with SMTP id
 a10mr2480916plm.167.1556787586054; 
 Thu, 02 May 2019 01:59:46 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id z7sm74960831pgh.81.2019.05.02.01.59.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 01:59:45 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] nvme-pci: add device coredump support
Date: Thu,  2 May 2019 17:59:20 +0900
Message-Id: <1556787561-5113-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
References: <1556787561-5113-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_015946_941020_363FE7F7 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to capture snapshot of controller information via device
coredump machanism.

The nvme device coredump creates the following coredump files.

- regs: NVMe controller registers, including each I/O queue doorbell
        registers, in nvme-show-regs style text format.

- sq<qid>: I/O submission queue

- cq<qid>: I/O completion queue

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/nvme/host/Kconfig |   1 +
 drivers/nvme/host/pci.c   | 221 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 222 insertions(+)

diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index 0f345e2..c3a06af 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -5,6 +5,7 @@ config BLK_DEV_NVME
 	tristate "NVM Express block device"
 	depends on PCI && BLOCK
 	select NVME_CORE
+	select WANT_DEV_COREDUMP
 	---help---
 	  The NVM Express driver is for solid state drives directly
 	  connected to the PCI or PCI Express bus.  If you know you
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index a90cf5d..7f3077c 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -9,6 +9,7 @@
 #include <linux/blkdev.h>
 #include <linux/blk-mq.h>
 #include <linux/blk-mq-pci.h>
+#include <linux/devcoredump.h>
 #include <linux/dmi.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
@@ -2867,6 +2868,225 @@ static int nvme_resume(struct device *dev)
 
 static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
 
+#ifdef CONFIG_DEV_COREDUMP
+
+struct nvme_reg {
+	u32 off;
+	const char *name;
+	int bits;
+};
+
+static const struct nvme_reg nvme_regs[] = {
+	{ NVME_REG_CAP,		"cap",		64 },
+	{ NVME_REG_VS,		"version",	32 },
+	{ NVME_REG_INTMS,	"intms",	32 },
+	{ NVME_REG_INTMC,	"intmc",	32 },
+	{ NVME_REG_CC,		"cc",		32 },
+	{ NVME_REG_CSTS,	"csts",		32 },
+	{ NVME_REG_NSSR,	"nssr",		32 },
+	{ NVME_REG_AQA,		"aqa",		32 },
+	{ NVME_REG_ASQ,		"asq",		64 },
+	{ NVME_REG_ACQ,		"acq",		64 },
+	{ NVME_REG_CMBLOC,	"cmbloc",	32 },
+	{ NVME_REG_CMBSZ,	"cmbsz",	32 },
+};
+
+static int nvme_coredump_regs_padding(int num_queues)
+{
+	char name[16];
+	int padding;
+	int i;
+
+	padding = sprintf(name, "sq%dtdbl", num_queues - 1);
+
+	for (i = 0; i < ARRAY_SIZE(nvme_regs); i++)
+		padding = max_t(int, padding, strlen(nvme_regs[i].name));
+
+	return padding;
+}
+
+static int nvme_coredump_regs_buf_size(int num_queues, int padding)
+{
+	int line_size = padding + strlen(" : ffffffffffffffff\n");
+	int buf_size;
+
+	/* Max print buffer size for controller registers */
+	buf_size = line_size * ARRAY_SIZE(nvme_regs);
+
+	/* Max print buffer size for SQyTDBL and CQxHDBL registers */
+	buf_size += line_size * num_queues * 2;
+
+	return buf_size;
+}
+
+static int nvme_coredump_regs_print(void *buf, int buf_size,
+				    struct nvme_ctrl *ctrl, int padding)
+{
+	struct nvme_dev *dev = to_nvme_dev(ctrl);
+	int len = 0;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(nvme_regs); i++) {
+		const struct nvme_reg *reg = &nvme_regs[i];
+		u64 val;
+
+		if (reg->bits == 32)
+			val = readl(dev->bar + reg->off);
+		else
+			val = readq(dev->bar + reg->off);
+
+		len += snprintf(buf + len, buf_size - len, "%-*s : %llx\n",
+				padding, reg->name, val);
+	}
+
+	for (i = 0; i < ctrl->queue_count; i++) {
+		struct nvme_queue *nvmeq = &dev->queues[i];
+		char name[16];
+
+		sprintf(name, "sq%dtdbl", i);
+		len += snprintf(buf + len, buf_size - len, "%-*s : %x\n",
+				padding, name, readl(nvmeq->q_db));
+
+		sprintf(name, "cq%dhdbl", i);
+		len += snprintf(buf + len, buf_size - len, "%-*s : %x\n",
+				padding, name,
+				readl(nvmeq->q_db + dev->db_stride));
+	}
+
+	return len;
+}
+
+static ssize_t nvme_coredump_read(char *buffer, loff_t offset, size_t count,
+				  void *data, size_t datalen)
+{
+	return memory_read_from_buffer(buffer, count, &offset, data, datalen);
+}
+
+static void nvme_coredump_free(void *data)
+{
+	kvfree(data);
+}
+
+static int nvme_coredump_regs(struct dev_coredumpm_bulk_data *data,
+			      struct nvme_ctrl *ctrl)
+{
+	int padding = nvme_coredump_regs_padding(ctrl->queue_count);
+	int buf_size = nvme_coredump_regs_buf_size(ctrl->queue_count, padding);
+	void *buf;
+
+	buf = kvzalloc(buf_size, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	data->name = kstrdup("regs", GFP_KERNEL);
+	if (!data->name) {
+		kvfree(buf);
+		return -ENOMEM;
+	}
+
+	data->data = buf;
+	data->datalen = nvme_coredump_regs_print(buf, buf_size, ctrl, padding);
+	data->read = nvme_coredump_read;
+	data->free = nvme_coredump_free;
+
+	return 0;
+}
+
+static void *kvmemdup(const void *src, size_t len, gfp_t gfp)
+{
+	void *p;
+
+	p = kvmalloc(len, gfp);
+	if (p)
+		memcpy(p, src, len);
+
+	return p;
+}
+
+static int nvme_coredump_queues(struct dev_coredumpm_bulk_data *bulk_data,
+				struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for (i = 0; i < ctrl->queue_count; i++) {
+		struct dev_coredumpm_bulk_data *data = &bulk_data[2 * i];
+		struct nvme_queue *nvmeq = &to_nvme_dev(ctrl)->queues[i];
+
+		data[0].name = kasprintf(GFP_KERNEL, "sq%d", i);
+		data[0].data = kvmemdup(nvmeq->sq_cmds,
+					SQ_SIZE(nvmeq->q_depth), GFP_KERNEL);
+		data[0].datalen = SQ_SIZE(nvmeq->q_depth);
+		data[0].read = nvme_coredump_read;
+		data[0].free = nvme_coredump_free;
+
+		data[1].name = kasprintf(GFP_KERNEL, "cq%d", i);
+		data[1].data = kvmemdup((void *)nvmeq->cqes,
+					CQ_SIZE(nvmeq->q_depth), GFP_KERNEL);
+		data[1].datalen = CQ_SIZE(nvmeq->q_depth);
+		data[1].read = nvme_coredump_read;
+		data[1].free = nvme_coredump_free;
+
+		if (!data[0].name || !data[1].name ||
+		    !data[0].data || !data[1].data)
+			goto free;
+	}
+
+	return 0;
+free:
+	for (; i >= 0; i--) {
+		struct dev_coredumpm_bulk_data *data = &bulk_data[2 * i];
+
+		kfree(data[0].name);
+		kfree(data[1].name);
+		kvfree(data[0].data);
+		kvfree(data[1].data);
+	}
+
+	return -ENOMEM;
+}
+
+static void nvme_coredump(struct device *dev)
+{
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
+	struct nvme_ctrl *ctrl = &ndev->ctrl;
+	struct dev_coredumpm_bulk_data *bulk_data;
+	int ret;
+	int i;
+
+	bulk_data = kcalloc(1 + 2 * ctrl->queue_count, sizeof(*bulk_data),
+			    GFP_KERNEL);
+	if (!bulk_data)
+		return;
+
+	ret = nvme_coredump_regs(&bulk_data[0], ctrl);
+	if (ret)
+		goto free_bulk_data;
+
+	ret = nvme_coredump_queues(&bulk_data[1], ctrl);
+	if (ret)
+		goto free_bulk_data;
+
+	dev_coredumpm_bulk(dev, THIS_MODULE, GFP_KERNEL, bulk_data,
+			   1 + 2 * ctrl->queue_count);
+
+free_bulk_data:
+	for (i = 0; i < 1 + 2 * ctrl->queue_count; i++) {
+		kfree(bulk_data[i].name);
+		if (ret)
+			kvfree(bulk_data[i].data);
+	}
+
+	kfree(bulk_data);
+}
+
+#else
+
+static void nvme_coredump(struct device *dev)
+{
+}
+
+#endif /* CONFIG_DEV_COREDUMP */
+
 static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
 						pci_channel_state_t state)
 {
@@ -2972,6 +3192,7 @@ static struct pci_driver nvme_driver = {
 	.shutdown	= nvme_shutdown,
 	.driver		= {
 		.pm	= &nvme_dev_pm_ops,
+		.coredump = nvme_coredump,
 	},
 	.sriov_configure = pci_sriov_configure_simple,
 	.err_handler	= &nvme_err_handler,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
