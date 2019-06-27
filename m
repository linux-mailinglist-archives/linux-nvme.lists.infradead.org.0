Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F075848E
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 16:34:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqblx1+on9mL58zcoHFT/+w5BTySI4/SjhLFZ0WHIs4=; b=kuTDEieCpkA21w
	2ZhxGzfqoBHTT3sj6C7AcQu1cX3Hgjd7nof+JX1v0Rh/IDrA1MebnRcXKBtzVZxkZLTny0mIIi0Vl
	S4zBAvr4Gg3l6WFbMwKL5uk3nOhpc314kG/cSUffRLpa/wtR+Z2lpoLvM7EZU++UlqEawqFs+QE9j
	/xQ7UUpbepwYiFwnJ35UKwh1LIOUox+z47tEHs+hRd/VLgKLpM8hy4Ll/xf7fp1D48HBDjGgr1aq7
	DSqzkKwMcoTY9uonf1YKzN+Ivot+eyn2tltJEh8kuXo4/6NVAS57sg129vJN2BVo8QNsyMXRgbFFN
	CCMICsGgDuvb8bcGr2/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVTH-0004xP-RZ; Thu, 27 Jun 2019 14:33:55 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVRq-0004AB-8Y
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 14:32:29 +0000
Received: by mail-pf1-f196.google.com with SMTP id x15so1344766pfq.0
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 07:32:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wGERSUsNP4t6LlsbXvp1Ue+/78HLTYZ5GccXlmE6H58=;
 b=WaAvDtIAB9cRbVJQHI4XUTVJ61DO3n3t5AbxH2OfZWNFz3zIJx4ktabgpHvnlKnz4S
 y2XaZGDjHsfn7MD719oYgrbxtxpSyDIz1soGcJHwTCyTT3lJse7RqUR8/GC6avOUqffl
 czVv9L6Svbvo/lUIxAusl0Ih5mirdFe5vXe2HKA2UqRirYUX32c4cq9xNB3mSulwWvDH
 1Wc8RNe1QZnLfOav7zE+WW/YZvejr4vn2uYK9mELcuCIS/RcMiem1T5S4Fz/nFj6m+Kg
 Fg+D1CVfQqBzpxCY5QeOXlTjSMCCI3Y3kuq4wfDidpdDak+1n1CDE0I++n5c5jtR5xKO
 bJBA==
X-Gm-Message-State: APjAAAUSJR/XHLEqRXd1GW0kFLq0qoM7dxt40y9MXsWUEMq6Krng4ien
 ZuT0JhLTsjdxQRwgJem8JCo=
X-Google-Smtp-Source: APXvYqxMzGipNgRIrpHKJ8C9HDPalMmOq0ihYuF071mESEdLr413bFq8K8bqWRwGUM9mEoeA/If2iw==
X-Received: by 2002:a63:511b:: with SMTP id f27mr4023962pgb.135.1561645945366; 
 Thu, 27 Jun 2019 07:32:25 -0700 (PDT)
Received: from asus.site ([2601:647:4000:5dd1:f10e:6218:72d9:c2d6])
 by smtp.gmail.com with ESMTPSA id y193sm2812037pgd.41.2019.06.27.07.32.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 07:32:24 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v4 2/3] nvmet: Export NVMe namespace attributes
Date: Thu, 27 Jun 2019 07:32:14 -0700
Message-Id: <20190627143215.27443-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627143215.27443-1-bvanassche@acm.org>
References: <20190627143215.27443-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_073226_326212_5225B268 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Make the NVMe NAWUN, NAWUPF, NACWU, NPWG, NPWA, NPDG and NOWS attributes
available to initator systems for the block backend.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/target/admin-cmd.c   |  5 ++++
 drivers/nvme/target/io-cmd-bdev.c | 45 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-file.c | 12 +++++++++
 drivers/nvme/target/nvmet.h       |  2 ++
 4 files changed, 64 insertions(+)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 9f72d515fc4b..2558ed333d29 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -442,6 +442,11 @@ static void nvmet_execute_identify_ns(struct nvmet_req *req)
 		break;
         }
 
+	if (ns->file)
+		nvmet_file_set_limits(ns->file, id);
+	else if (ns->bdev)
+		nvmet_bdev_set_limits(ns->bdev, id);
+
 	/*
 	 * We just provide a single LBA format that matches what the
 	 * underlying device reports.
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 7a1cf6437a6a..6e57d0d4f4e9 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -8,6 +8,51 @@
 #include <linux/module.h>
 #include "nvmet.h"
 
+/* Convert a 32-bit number to a 16-bit 0's based number */
+static __le16 to0based(u32 a)
+{
+	return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
+}
+
+void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
+{
+	const struct queue_limits *ql = &bdev_get_queue(bdev)->limits;
+	/* Number of physical blocks per logical block. */
+	const u32 ppl = ql->physical_block_size / ql->logical_block_size;
+	/* Physical blocks per logical block, 0's based. */
+	const __le16 ppl0b = to0based(ppl);
+
+	/*
+	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
+	 * NAWUPF, and NACWU are defined for this namespace and should be
+	 * used by the host for this namespace instead of the AWUN, AWUPF,
+	 * and ACWU fields in the Identify Controller data structure. If
+	 * any of these fields are zero that means that the corresponding
+	 * field from the identify controller data structure should be used.
+	 */
+	id->nsfeat |= 1 << 1;
+	id->nawun = ppl0b;
+	id->nawupf = ppl0b;
+	id->nacwu = ppl0b;
+
+	/*
+	 * For NVMe 1.4 and later, bit 4 indicates that the fields NPWG,
+	 * NPWA, NPDG, NPDA, and NOWS are defined for this namespace and
+	 * should be used by the host for I/O optimization.
+	 */
+	id->nsfeat |= 1 << 4;
+	/* NPWG = Namespace Preferred Write Granularity. 0's based */
+	id->npwg = ppl0b;
+	/* NPWA = Namespace Preferred Write Alignment. 0's based */
+	id->npwa = id->npwg;
+	/* NPDG = Namespace Preferred Deallocate Granularity. 0's based */
+	id->npdg = to0based(ql->discard_granularity / ql->logical_block_size);
+	/* NPDG = Namespace Preferred Deallocate Alignment */
+	id->npda = id->npdg;
+	/* NOWS = Namespace Optimal Write Size */
+	id->nows = to0based(ql->io_opt / ql->logical_block_size);
+}
+
 int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 {
 	int ret;
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index 05453f5d1448..8e59c107ec38 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -13,6 +13,18 @@
 #define NVMET_MAX_MPOOL_BVEC		16
 #define NVMET_MIN_MPOOL_OBJ		16
 
+void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
+{
+	/*
+	 * Since the file backend uses buffered I/O and since the NVMe spec
+	 * does not allow to report that atomic commands are not supported by
+	 * a namespace, do not set any of the namespace specific atomic
+	 * properties. This will cause the initiator to rely on the atomic
+	 * properties reported by the controller. To do: discuss whether or
+	 * not the file backend should use direct I/O instead of buffered I/O.
+	 */
+}
+
 void nvmet_file_ns_disable(struct nvmet_ns *ns)
 {
 	if (ns->file) {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index dc270944bb25..552af334fe1d 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -365,6 +365,8 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask);
 void nvmet_execute_async_event(struct nvmet_req *req);
 
 u16 nvmet_parse_connect_cmd(struct nvmet_req *req);
+void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id);
+void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id);
 u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_file_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_parse_admin_cmd(struct nvmet_req *req);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
