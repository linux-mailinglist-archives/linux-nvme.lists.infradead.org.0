Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004FA168E4
	for <lists+linux-nvme@lfdr.de>; Tue,  7 May 2019 19:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CdJ8W0eqOduOcIQbFiD5eCtZduspB1hX0FbOCLN/u78=; b=bs5ZHbwdg8+PipZnzzw5tlb33S
	hzyayWqA74zD3CmdUzwfgrxHVD3JJpeC5ilZc7RTAn6g9I1fU9P5G4WDYRWQlvt+07VXQx4It7obQ
	fz1LqAKdI+Mi7hrTclRbChsQuywqeaCGleKA9APCcnpXbJD4kQHT9VAV/n8HGuQRQ+E6IxK/jBx/o
	R7vWiQ9UR8y8mMAJkNGcHt1n+7Kb9sjc2wCsmEj4RihqYTPYk8UZGLbb0pRPJ7vDeVh5tyPq5Pydi
	lXPoDcP43sEA0M8mq4CjvWttV16vBYSYMjDH39JpzVofeiMln6oWFl1QS0spZio4qfaiCG+mDdQzi
	w9RQwT5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3gQ-0006m2-9G; Tue, 07 May 2019 17:15:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3gM-0005Jw-3q
 for linux-nvme@bombadil.infradead.org; Tue, 07 May 2019 17:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RAyNpUZ+DEH5dj9+1zKcqdx47WGZV8MiF525GLIcItE=; b=LFg9LEUl9/xyLRZLNZ03SpIah
 5Hgy20t4SGAN9P0UcpDpuzhrqNuyS5OBDMqygl8bOkz9Fth7oNOtVBEfDg14NLLzYfgpDspB2KrLG
 ho7czHslpwXBZI879pEsL+VZ+i/3KU5+cScmZ4zL40IqOaBf2dVTpKuagBCeNq4bkyITRaIgx1Kuh
 /O6y6WyqhhHF2iNEBVlt8l1gUlB85hnsJOK+Op8/dlriHGQzDt4kY1+mjItIcUuqb+uczcpwC+Qkl
 RSVE6ezkFTVwo2gI1TaSgdYtPjEkl58Y9IayFkDVjxq/lsgW5MFoO+W6S49xP6o5W3td/aRehzPx1
 G51P+cV8g==;
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3Qs-0000Dt-Io
 for linux-nvme@lists.infradead.org; Tue, 07 May 2019 16:59:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id e24so8945878pfi.12
 for <linux-nvme@lists.infradead.org>; Tue, 07 May 2019 09:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RAyNpUZ+DEH5dj9+1zKcqdx47WGZV8MiF525GLIcItE=;
 b=In+lCXVjX4NUcXMlCh/OfrRNwGP7QVWelDGafWnJGSsDVj1DZ4RYXcZ7gmldxug1cY
 oXVBOsdNfd3BIdzRYMez1NjhQZSX7dWz3TUCrod3BoT7R95cKq3qpDXjhx4jTmad9mbL
 gyQFTI6JigYAE9SLOXH1gSl9cu4axsfMXEpE3Z0CMPVeuXXHM18HS8H9jhB0EalyGBGz
 MJIX6KvmSscUHHrLhP4sFfnLM2w7hma4gAA56d92+b8pZI/mbAUuLPCo6+39N/hJ8MdW
 VXHsQiF/USfXb8oitOy8Z4ZelIzNxiQgh3YHMAkSe6N02TDGTU+ukxSgrFizsbxr3Kz/
 qoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RAyNpUZ+DEH5dj9+1zKcqdx47WGZV8MiF525GLIcItE=;
 b=RalzEhQH9iJ1i2zlTvTb6qmny7/DA72HdMUsY+qJ13Ticns2pk2nUbeypLwms/bdUD
 cZmHmtlEPbdYF69X+Qpk08hjnD4hb3SM2/vTuttbRGVl+zCCv8mLoyuG+YT0zfFo1K8n
 ZnkK/BtBYHXNhx8J9JzXin3MWUgE9V9zHx8zAp3r5y0bioauAE9yb9eZVVEE5DwWsJaP
 rDjOdwRaC1DNdzCJmqTspafJ+vrCo0ANPudb29lQSJFKh0XAKVOzjsML3hhOrxZ1Lcvr
 FUqGAN2Qst6AClHPcpIdw9q3t6UXiGTfr7xvFBm75WDf/N9ILI4RBDWzoZoJp/lWoiAz
 kN/Q==
X-Gm-Message-State: APjAAAVbH2ewhJil8610YTCgZagnxVBc/EKx+U+bu/Q+Ccfdy//4D9Ro
 ALBF0sBTInt4LjACe/w806I445fj
X-Google-Smtp-Source: APXvYqxV9XUMLuN+VhPXwDgav/Q/SClxj/G0SdycbU1DG2jO4vosLYx5KkH7TCVWB96j59daKg4tow==
X-Received: by 2002:a63:cf01:: with SMTP id j1mr9164268pgg.97.1557248348301;
 Tue, 07 May 2019 09:59:08 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id r12sm18140093pfn.144.2019.05.07.09.59.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 09:59:07 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] nvme-pci: add device coredump support
Date: Wed,  8 May 2019 01:58:33 +0900
Message-Id: <1557248314-4238-7-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
References: <1557248314-4238-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_175910_639875_3046065F 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables to capture snapshot of controller information via device
coredump machanism.

The nvme device coredump creates the following coredump files.

- regs: NVMe controller registers (00h to 4Fh)
- sq<qid>: Submission queue
- cq<qid>: Completion queue
- telemetry-ctrl-log: Telemetry controller-initiated log (if available)
- data: Empty

The reason for an empty 'data' file is to provide a uniform way to notify
the device coredump is no longer needed by writing the 'data' file.

Since all existing drivers using the device coredump provide a 'data' file
if the nvme device coredump doesn't provide it, the userspace programs need
to know which driver provides what coredump file.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- Exclude the doorbell registers from register dump.
- Save controller registers in a binary format instead of a text format.
- Create an empty 'data' file in the device coredump.
- Save telemetry controller-initiated log if available

 drivers/nvme/host/Kconfig |   1 +
 drivers/nvme/host/core.c  |   1 +
 drivers/nvme/host/pci.c   | 425 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 427 insertions(+)

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
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 42f09d6..8d297c7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2457,6 +2457,7 @@ int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 
 	return nvme_submit_sync_cmd(ctrl->admin_q, &c, log, size);
 }
+EXPORT_SYMBOL_GPL(nvme_get_log);
 
 static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
 {
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index a90cf5d..4684a86 100644
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
@@ -131,6 +132,9 @@ struct nvme_dev {
 	dma_addr_t host_mem_descs_dma;
 	struct nvme_host_mem_buf_desc *host_mem_descs;
 	void **host_mem_desc_bufs;
+
+	struct dev_coredumpm_bulk_data *dumps;
+	int num_dumps;
 };
 
 static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
@@ -2867,6 +2871,426 @@ static int nvme_resume(struct device *dev)
 
 static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
 
+#ifdef CONFIG_DEV_COREDUMP
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
+static int nvme_coredump_empty(struct dev_coredumpm_bulk_data *data)
+{
+	data->name = kstrdup("data", GFP_KERNEL);
+	if (!data->name)
+		return -ENOMEM;
+
+	data->data = NULL;
+	data->datalen = 0;
+	data->read = nvme_coredump_read;
+	data->free = nvme_coredump_free;
+
+	return 0;
+}
+
+static int nvme_coredump_regs(struct dev_coredumpm_bulk_data *data,
+			      struct nvme_ctrl *ctrl)
+{
+	const int reg_size = 0x50; /* 00h to 4Fh */
+
+	data->name = kstrdup("regs", GFP_KERNEL);
+	if (!data->name)
+		return -ENOMEM;
+
+	data->data = kvzalloc(reg_size, GFP_KERNEL);
+	if (!data->data) {
+		kfree(data->name);
+		return -ENOMEM;
+	}
+	memcpy_fromio(data->data, to_nvme_dev(ctrl)->bar, reg_size);
+
+	data->datalen = reg_size;
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
+static struct
+dev_coredumpm_bulk_data *nvme_coredump_alloc(struct nvme_dev *dev, int n)
+{
+	struct dev_coredumpm_bulk_data *data;
+
+	data = krealloc(dev->dumps, sizeof(*data) * (dev->num_dumps + n),
+			GFP_KERNEL | __GFP_ZERO);
+	if (!data)
+		return NULL;
+
+	dev->dumps = data;
+	data += dev->num_dumps;
+	dev->num_dumps += n;
+
+	return data;
+}
+
+static void __nvme_coredump_discard(struct nvme_dev *dev, bool free_data)
+{
+	int i;
+
+	for (i = 0; i < dev->num_dumps; i++) {
+		kfree(dev->dumps[i].name);
+		if (free_data)
+			dev->dumps[i].free(dev->dumps[i].data);
+	}
+
+	kfree(dev->dumps);
+	dev->dumps = NULL;
+	dev->num_dumps = 0;
+}
+
+static void nvme_coredump_discard(struct nvme_dev *dev)
+{
+	__nvme_coredump_discard(dev, true);
+}
+
+static void nvme_coredump_clear(struct nvme_dev *dev)
+{
+	__nvme_coredump_discard(dev, false);
+}
+
+static int nvme_coredump_prologue(struct nvme_dev *dev)
+{
+	struct nvme_ctrl *ctrl = &dev->ctrl;
+	struct dev_coredumpm_bulk_data *bulk_data;
+	int ret;
+
+	if (WARN_ON(dev->dumps))
+		nvme_coredump_discard(dev);
+
+	bulk_data = nvme_coredump_alloc(dev, 2 + 2 * ctrl->queue_count);
+	if (!bulk_data)
+		return -ENOMEM;
+
+	ret = nvme_coredump_empty(&bulk_data[0]);
+	if (ret)
+		goto free_bulk_data;
+
+	ret = nvme_coredump_regs(&bulk_data[1], ctrl);
+	if (ret)
+		goto free_bulk_data;
+
+	ret = nvme_coredump_queues(&bulk_data[2], ctrl);
+	if (ret)
+		goto free_bulk_data;
+
+	return 0;
+
+free_bulk_data:
+	nvme_coredump_discard(dev);
+
+	return -ENOMEM;
+}
+
+static ssize_t nvme_coredump_read_sgtable(char *buffer, loff_t offset,
+					  size_t buf_len, void *data,
+					  size_t data_len)
+{
+	struct sg_table *table = data;
+
+	if (data_len <= offset)
+		return 0;
+
+	if (offset + buf_len > data_len)
+		buf_len = data_len - offset;
+
+	return sg_pcopy_to_buffer(table->sgl, sg_nents(table->sgl), buffer,
+				  buf_len, offset);
+}
+
+static void nvme_coredump_free_sgtable(void *data)
+{
+	struct sg_table *table = data;
+	struct scatterlist *sg;
+	int n = sg_nents(table->sgl);
+	int i;
+
+	for_each_sg(table->sgl, sg, n, i) {
+		struct page *page = sg_page(sg);
+
+		if (page)
+			__free_page(page);
+
+	}
+
+	kfree(table);
+}
+
+static struct sg_table *nvme_coredump_alloc_sgtable(size_t bytes)
+{
+	struct sg_table *table;
+	struct scatterlist *sg;
+	int n = DIV_ROUND_UP(bytes, PAGE_SIZE);
+	int i;
+
+	table = kzalloc(sizeof(*table), GFP_KERNEL);
+	if (!table)
+		return NULL;
+
+	if (sg_alloc_table(table, n, GFP_KERNEL))
+		goto free_table;
+
+	for_each_sg(table->sgl, sg, n, i) {
+		struct page *page = alloc_page(GFP_KERNEL);
+		size_t size = min_t(int, bytes, PAGE_SIZE);
+
+		if (!page)
+			goto free_page;
+
+		sg_set_page(sg, page, size, 0);
+		bytes -= size;
+	}
+
+	return table;
+free_page:
+	for_each_sg(table->sgl, sg, n, i) {
+		struct page *page = sg_page(sg);
+
+		if (page)
+			__free_page(page);
+
+	}
+free_table:
+	kfree(table);
+
+	return NULL;
+}
+
+static int nvme_get_telemetry_log_blocks(struct nvme_ctrl *ctrl, void *buf,
+					 size_t bytes, loff_t offset)
+{
+	const size_t chunk_size = ctrl->max_hw_sectors * ctrl->page_size;
+	loff_t pos = 0;
+
+	while (pos < bytes) {
+		size_t size = min_t(size_t, bytes - pos, chunk_size);
+		int ret;
+
+		ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_TELEMETRY_CTRL,
+				   0, buf + pos, size, offset + pos);
+		if (ret)
+			return ret;
+
+		pos += size;
+	}
+
+	return 0;
+}
+
+static int nvme_get_telemetry_log(struct nvme_ctrl *ctrl,
+				  struct sg_table *table, size_t bytes)
+{
+	int n = sg_nents(table->sgl);
+	struct scatterlist *sg;
+	size_t offset = 0;
+	int i;
+
+	for_each_sg(table->sgl, sg, n, i) {
+		struct page *page = sg_page(sg);
+		size_t size = min_t(int, bytes - offset, sg->length);
+		int ret;
+
+		ret = nvme_get_telemetry_log_blocks(ctrl, page_address(page),
+						    size, offset);
+		if (ret)
+			return ret;
+
+		offset += size;
+	}
+
+	return 0;
+}
+
+static int nvme_coredump_telemetry_log(struct dev_coredumpm_bulk_data *data,
+				       struct nvme_ctrl *ctrl)
+{
+	struct nvme_telemetry_log_page_hdr *page_hdr;
+	struct sg_table *table;
+	int log_size;
+	int ret;
+	u8 ctrldgn;
+
+	if (!(ctrl->lpa & NVME_CTRL_LPA_TELEMETRY_LOG))
+		return -EINVAL;
+	if (!(ctrl->lpa & NVME_CTRL_LPA_EXTENDED_DATA))
+		return -EINVAL;
+
+	page_hdr = kzalloc(sizeof(*page_hdr), GFP_KERNEL);
+	if (!page_hdr)
+		return -ENOMEM;
+
+	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_TELEMETRY_CTRL, 0,
+			   page_hdr, sizeof(*page_hdr), 0);
+	if (ret)
+		goto free_page_hdr;
+
+	if (!page_hdr->ctrlavail) {
+		ret = -EINVAL;
+		goto free_page_hdr;
+	}
+
+	log_size = (le16_to_cpu(page_hdr->dalb3) + 1) * 512;
+
+	table = nvme_coredump_alloc_sgtable(log_size);
+	if (!table) {
+		ret = -ENOMEM;
+		goto free_page_hdr;
+	}
+
+	ret = nvme_get_telemetry_log(ctrl, table, log_size);
+	if (ret)
+		goto free_table;
+
+	sg_pcopy_to_buffer(table->sgl, sg_nents(table->sgl), &ctrldgn,
+			   sizeof(ctrldgn),
+			   offsetof(typeof(*page_hdr), ctrldgn));
+
+	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_TELEMETRY_CTRL, 0,
+			   page_hdr, sizeof(*page_hdr), 0);
+	if (ret)
+		goto free_table;
+
+	if (page_hdr->ctrldgn != ctrldgn) {
+		ret = -EINVAL;
+		goto free_table;
+	}
+
+	data->name = kstrdup("telemetry-ctrl-log", GFP_KERNEL);
+	if (!data->name) {
+		ret = -ENOMEM;
+		goto free_table;
+	}
+
+	data->data = table;
+	data->datalen = log_size;
+	data->read = nvme_coredump_read_sgtable;
+	data->free = nvme_coredump_free_sgtable;
+
+	kfree(page_hdr);
+
+	return 0;
+free_table:
+	nvme_coredump_free_sgtable(table);
+free_page_hdr:
+	kfree(page_hdr);
+
+	return ret;
+}
+
+static void nvme_coredump_epilogue(struct nvme_dev *dev)
+{
+	struct dev_coredumpm_bulk_data *bulk_data;
+
+	if (!dev->dumps)
+		return;
+
+	bulk_data = nvme_coredump_alloc(dev, 1);
+	if (bulk_data) {
+		if (nvme_coredump_telemetry_log(bulk_data, &dev->ctrl))
+			dev->num_dumps--;
+	}
+
+	dev_coredumpm_bulk(dev->dev, THIS_MODULE, GFP_KERNEL,
+			   dev->dumps, dev->num_dumps);
+	nvme_coredump_clear(dev);
+}
+
+static void nvme_coredump(struct device *dev)
+{
+	struct nvme_dev *ndev = dev_get_drvdata(dev);
+
+	mutex_lock(&ndev->shutdown_lock);
+
+	nvme_coredump_prologue(ndev);
+	nvme_coredump_epilogue(ndev);
+
+	mutex_unlock(&ndev->shutdown_lock);
+}
+
+#else
+
+static int nvme_coredump_prologue(struct nvme_dev *dev)
+{
+	return 0;
+}
+
+static void nvme_coredump_epilogue(struct nvme_dev *dev)
+{
+}
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
@@ -2972,6 +3396,7 @@ static struct pci_driver nvme_driver = {
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
