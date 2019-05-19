Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DE82270F
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6W4nEb539qrYvUgvgdgFh7uhlyONc5NmhytPLTL64gs=; b=NnBkNW1UpARtPsxWyIpzgzS+sb
	D1TS+t7vcOHYHQ+fu4zHArFTJmjfPJcbzCCeTWvzIPrRd4cLUSFNhiZhqFkHXz4ldPgnAN+kolpiQ
	qtlesoGhl8B2BstMGdarSyB6Kzx3lT0nZQdCN85Ltj0Z0OXjfKhzOft6kCzhFndX/ZdyUqwOhwX0C
	jqBi7Xk4GvzHTqyMObOvcAsLD2oO4+4xqiG2BHETNYHHh+Hj9AFkRg53EpWqlNwWDY7pYKWsYqIX/
	56E1b88Tc3ekyp6Gm0+B+AE7KAREuMHrYdDxr7etLPIbOne//mPtQxl5APuBROfGCZlNuNkvyhTGZ
	w5tnEfRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNPn-0005Fc-KP; Sun, 19 May 2019 15:07:55 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPL-0004mp-9W
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id z26so5969430pfg.6
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1MUML/WO6P/Y7Typ4j8YbaCvRNQ+50j7APjhTGvMt+c=;
 b=dUUOM525VZsC+/o3OpTs+gwFSq8WdJ/iqV9x1Y6KkZ4CFNGxGpVD0/ht8n0MY5+FPM
 p9Bt3NwKmQzv9+br+sBhHKOrowzEOMKtUQuecLDIqcQATgMIt+OaCDy07rVsj24dn1VG
 Gox9DyITVn5KWfZua/K9nIB3ema+EtCJ6BAtgorMHjgjF3EwRbwd9MfV/Vr5Dg+XKuf4
 MIjMN1PR5/0t289K5Bkrmg5DrNfWwW+IK2edVF4wzzjqEyCTbaQetEkZnI0ibFZkM0mN
 z4izxiTpa0hz5V2rKuRUR746k0wxIlDVRd0V91i2b56c8ZaDtldAWa6/4hF0JcSFh1GM
 9aIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1MUML/WO6P/Y7Typ4j8YbaCvRNQ+50j7APjhTGvMt+c=;
 b=CK9feo4G2zkw7QeLWllZhllPD1/vQuHidCUQblLKrSegGfYRxy/YkD0a41WRxGPyxl
 i5zVK0vH7pqFXT7dky2OC2gPkP/ceMYGnNEqZuWlSGaDyujuZL9TCRu0IKAjEbGJQoP0
 VqiIMHTtFmP1MFTt0XJmOEhV4RKUu1b9BRY0JftAMJmTcyzF1NlyKAuMIVcy8iO9rffy
 +dk1eqIIRELnNJEl4WOwIqDGFMCu79lnqnUmrteIz4uNawHZNmNISklnKPPUlYOzO05F
 veGxzwTaoH/tA1FwFH/qaeX61WKc3r97QOhZFwhW90p7BaIHsAnyGImsU9b3eOC+6RSM
 dDaQ==
X-Gm-Message-State: APjAAAXuIl3BXlZ4HY8wywBU5FcOUu7swyQO01YRT6F20Nh9hjalSKVd
 7P5B1M9USHVYDF40hJpXZ7l+G9O0
X-Google-Smtp-Source: APXvYqxd9SyCPO7jHq1gzOSasfFwDXNQ16s0jkippQL2TXjGDE5hCkscw/r+slOyh/CQKSfH2lB2aw==
X-Received: by 2002:a63:7c6:: with SMTP id 189mr69588731pgh.247.1558278446449; 
 Sun, 19 May 2019 08:07:26 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:26 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/7] nvme: add basic facilities to get telemetry log page
Date: Mon, 20 May 2019 00:06:55 +0900
Message-Id: <1558278418-5702-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080727_776053_EE450698 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This adds the required facilities to get telemetry log page.  The telemetry
log page structure and identifier are copied from nvme-cli.

We need a facility to check log page attributes in order to know the
controller supports the telemetry log pages and log page offset field for
the Get Log Page command.  The telemetry data area could be larger than
maximum data transfer size, so we may need to split into multiple transfers
with incremental page offset.

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- Add nvme_get_telemetry_log() to nvme core module.
- Copy struct nvme_telemetry_log_page_hdr from the latest nvme-cli

 drivers/nvme/host/core.c | 59 ++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/nvme.h |  3 +++
 include/linux/nvme.h     | 32 ++++++++++++++++++++++++++
 3 files changed, 94 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7da80f3..d352145 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2464,6 +2464,7 @@ int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 
 	return nvme_submit_sync_cmd(ctrl->admin_q, &c, log, size);
 }
+EXPORT_SYMBOL_GPL(nvme_get_log);
 
 static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
 {
@@ -2484,6 +2485,62 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
 	return ret;
 }
 
+static int nvme_get_log_blocks(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page,
+			       u8 lsp, void *buf, size_t bytes, loff_t offset)
+{
+	loff_t pos = 0;
+	u32 chunk_size;
+
+	if (check_mul_overflow(ctrl->max_hw_sectors, 512u, &chunk_size))
+		chunk_size = UINT_MAX;
+
+	while (pos < bytes) {
+		size_t size = min_t(size_t, bytes - pos, chunk_size);
+		int ret;
+
+		if ((offset + pos) &&
+		    !(ctrl->lpa & NVME_CTRL_LPA_EXTENDED_DATA))
+			return -EINVAL;
+
+		ret = nvme_get_log(ctrl, nsid, log_page, lsp, buf + pos, size,
+				   offset + pos);
+		if (ret)
+			return ret;
+
+		pos += size;
+	}
+
+	return 0;
+}
+
+int nvme_get_telemetry_log(struct nvme_ctrl *ctrl, struct bio_vec *bvecs,
+			   size_t bytes)
+{
+	struct bvec_iter iter = {
+		.bi_size = bytes,
+	};
+	size_t offset = 0;
+
+	while (iter.bi_size) {
+		struct bio_vec bvec = mp_bvec_iter_bvec(bvecs, iter);
+		size_t size = min(iter.bi_size, bvec.bv_len);
+		void *buf = page_address(bvec.bv_page) + bvec.bv_offset;
+		int ret;
+
+		ret = nvme_get_log_blocks(ctrl, NVME_NSID_ALL,
+					  NVME_LOG_TELEMETRY_CTRL, 0, buf, size,
+					  offset);
+		if (ret)
+			return ret;
+
+		offset += size;
+		bvec_iter_advance(bvecs, &iter, size);
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvme_get_telemetry_log);
+
 /*
  * Initialize the cached copies of the Identify data and various controller
  * register in our nvme_ctrl structure.  This should be called as soon as
@@ -2587,6 +2644,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 	} else
 		ctrl->shutdown_timeout = shutdown_timeout;
 
+	ctrl->lpa = id->lpa;
 	ctrl->npss = id->npss;
 	ctrl->apsta = id->apsta;
 	prev_apst_enabled = ctrl->apst_enabled;
@@ -3899,6 +3957,7 @@ static inline void _nvme_check_size(void)
 	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
 	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
 	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_telemetry_log_page_hdr) != 512);
 	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
 	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
 	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5..56bba7a 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -195,6 +195,7 @@ struct nvme_ctrl {
 	u32 vs;
 	u32 sgls;
 	u16 kas;
+	u8 lpa;
 	u8 npss;
 	u8 apsta;
 	u32 oaes;
@@ -466,6 +467,8 @@ int nvme_delete_ctrl(struct nvme_ctrl *ctrl);
 
 int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 		void *log, size_t size, u64 offset);
+int nvme_get_telemetry_log(struct nvme_ctrl *ctrl, struct bio_vec *bvecs,
+			   size_t bytes);
 
 extern const struct attribute_group *nvme_ns_id_attr_groups[];
 extern const struct block_device_operations nvme_ns_head_ops;
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 8028ada..658ac75 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -294,6 +294,8 @@ enum {
 	NVME_CTRL_OACS_DIRECTIVES		= 1 << 5,
 	NVME_CTRL_OACS_DBBUF_SUPP		= 1 << 8,
 	NVME_CTRL_LPA_CMD_EFFECTS_LOG		= 1 << 1,
+	NVME_CTRL_LPA_EXTENDED_DATA		= 1 << 2,
+	NVME_CTRL_LPA_TELEMETRY_LOG		= 1 << 3,
 };
 
 struct nvme_lbaf {
@@ -396,6 +398,35 @@ enum {
 	NVME_NIDT_UUID		= 0x03,
 };
 
+/**
+ * struct nvme_telemetry_log_page_hdr - structure for telemetry log page
+ * @lpi: Log page identifier
+ * @iee_oui: IEEE OUI Identifier
+ * @dalb1: Data area 1 last block
+ * @dalb2: Data area 2 last block
+ * @dalb3: Data area 3 last block
+ * @ctrlavail: Controller initiated data available
+ * @ctrldgn: Controller initiated telemetry Data Generation Number
+ * @rsnident: Reason Identifier
+ * @telemetry_dataarea: Contains telemetry data block
+ *
+ * This structure can be used for both telemetry host-initiated log page
+ * and controller-initiated log page.
+ */
+struct nvme_telemetry_log_page_hdr {
+	__u8	lpi;
+	__u8	rsvd[4];
+	__u8	iee_oui[3];
+	__le16	dalb1;
+	__le16	dalb2;
+	__le16	dalb3;
+	__u8	rsvd1[368];
+	__u8	ctrlavail;
+	__u8	ctrldgn;
+	__u8	rsnident[128];
+	__u8	telemetry_dataarea[0];
+};
+
 struct nvme_smart_log {
 	__u8			critical_warning;
 	__u8			temperature[2];
@@ -832,6 +863,7 @@ enum {
 	NVME_LOG_FW_SLOT	= 0x03,
 	NVME_LOG_CHANGED_NS	= 0x04,
 	NVME_LOG_CMD_EFFECTS	= 0x05,
+	NVME_LOG_TELEMETRY_CTRL	= 0x08,
 	NVME_LOG_ANA		= 0x0c,
 	NVME_LOG_DISC		= 0x70,
 	NVME_LOG_RESERVATION	= 0x80,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
