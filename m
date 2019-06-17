Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F47D4886D
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 18:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WU4yS9X0PsyP9hjov8CVFaIRn+fXVbl0BeXtqU+EtMY=; b=nAOCgu5sKGJONg
	G2nMLeEW+emSI5tVBtRKrrefOoAOjKxazlCg1CYCzMA8yBYUO5qz0Wipej6RPbVAJejSzykIkKxUu
	FgcCYq48Y5HnvJvttMD+NqeqwXtKmiQ0j4ZKmxBycjaW6FsIw71DpbQhpOu5l1/Uj30cxyumXGYW/
	Dhy1dYO2ugcA6O3WKZH49rIIPhzvl0xl9pWAXC94WVjYsajess3wy1Po/tQcDY0/TnBRLF83k6qtQ
	7GqAzTrV7JC2qcp2/v3KrxJYxL0PS4XhNeaB6LoxW7QxDrzABy//A9+P7ogWZQlLrrNUs2r9+FhbC
	Pnx/H1JNgo6pAmshVBow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuFl-0002Dz-7A; Mon, 17 Jun 2019 16:13:05 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuFF-0001x9-8L
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 16:12:35 +0000
Received: by mail-pf1-f196.google.com with SMTP id a186so5944037pfa.5
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 09:12:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2bTAkRWnPwTr2BmBYEJv9+w0clC9MhTkEjzpdGVexQ4=;
 b=neU/dscofzDLSiDqRDoVJ7lrajxhWbFO79JI7fgK5OAizsLeUepMiVkFqN74t44/wu
 m2OyF+NTSYK7QeIkaVKoG22qu0H4aHivO4DsDPoPfaJynwROvwRdzsnl9Dv/lXIR+tpM
 5p2ZtEV00ib+1R4vbrARsmJyBgekYK3fyuHVwuWZdlcnfIjpoJQlGUaM6QfnaXekJsdN
 gIorW50a3eRdFsAO/6RWKjJd7fkotFJwCdpVZsYzc2IDtxSld1CfcQFiWZx1utgGkvVl
 DKisaN10g+n20j/KLpGmTYbTk1bYdLTttecsFu6of+XSPZJh1C0iLk40E7sEUwvhkIP1
 UWeQ==
X-Gm-Message-State: APjAAAXauTaTd4e3Nw3zryGDaA6biLaIcbgQh1kW2cHXGWurR4WFJ+AV
 GkiphW6uKDR9QxndOY9JwzY=
X-Google-Smtp-Source: APXvYqyqK2u7GjjJgaF0rzfBVENGYfqDS41qrZMeu/uA6RADNWu5hDKrHEXvYElzNBpEPGMlQwSXsA==
X-Received: by 2002:a63:dc15:: with SMTP id s21mr50839831pgg.215.1560787951538; 
 Mon, 17 Jun 2019 09:12:31 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y19sm11416069pfe.150.2019.06.17.09.12.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 09:12:30 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v3 2/3] nvmet: Export NVMe namespace attributes
Date: Mon, 17 Jun 2019 09:12:21 -0700
Message-Id: <20190617161222.253849-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190617161222.253849-1-bvanassche@acm.org>
References: <20190617161222.253849-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091233_571075_8D114914 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Make the NVMe NAWUN, NAWUPF, NACWU, NPWG, NPWA, NPDG and NOWS attributes
available to initator systems.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/target/admin-cmd.c   |  5 ++++
 drivers/nvme/target/io-cmd-bdev.c | 45 +++++++++++++++++++++++++++++++
 drivers/nvme/target/io-cmd-file.c | 37 +++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  2 ++
 4 files changed, 89 insertions(+)

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
index 3efc52f9c309..5fe51e5d2f1b 100644
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
index 05453f5d1448..268dfc678567 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -13,6 +13,43 @@
 #define NVMET_MAX_MPOOL_BVEC		16
 #define NVMET_MIN_MPOOL_OBJ		16
 
+void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id)
+{
+	/*
+	 * Physical blocks per logical block, 0's based. Is it possible to
+	 * extract this information from the filesystem properties?
+	 */
+	const __le16 ppl0b = cpu_to_le16(0);
+
+	/*
+	 * For NVMe 1.2 and later, bit 1 indicates that the fields NAWUN,
+	 * NAWUPF, and NACWU are defined for this namespace and should be
+	 * used by the host for this namespace instead of the AWUN, AWUPF,
+	 * and ACWU fields in the Identify Controller data structure.
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
+	id->npdg = ppl0b;
+	/* NPDG = Namespace Preferred Deallocate Alignment */
+	id->npda = id->npdg;
+	/* NOWS = Namespace Optimal Write Size */
+	id->nows = ppl0b;
+}
+
 void nvmet_file_ns_disable(struct nvmet_ns *ns)
 {
 	if (ns->file) {
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..ed0362544932 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -363,6 +363,8 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask);
 void nvmet_execute_async_event(struct nvmet_req *req);
 
 u16 nvmet_parse_connect_cmd(struct nvmet_req *req);
+void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id);
+void nvmet_file_set_limits(struct file *file, struct nvme_id_ns *id);
 u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_file_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_parse_admin_cmd(struct nvmet_req *req);
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
