Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581445A172
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 18:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyUnjjKtM3ApHVIymj3tE9PA8snJXBGoSZ9htcDX2Do=; b=R0LSVyGWtJwsyr
	dcfeIzuRcECMzIXb9k7Gh+btba2geMqWlkTqgiBMQB+t8NDZ2gKixA/YzCwM5qPxCoJ83Bn8N4x/M
	MJDFIzfM6h5I/+aMHP86gS52Osjsk7hLnwRYs+7VNcYikp8kciH4rbGn28SBJ8/f6pSOh3vRg23hP
	A1CfAxdGLwkMGZRhhDj9bjK8xkLYcRkbTmwCZYlnLhQLFldmC2eTAn8wfo8g6u4186CouTsSCBHSj
	SMWy8PuPotfs3i8bqLect/SrrBGZJzi34NZ1QR2MtHVmHOOqV5ZCBHFlR/CKeChNaCTq3ZvZMTH/J
	ZWfoemkW7mMgj2RYakPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgu8h-0002Jb-4z; Fri, 28 Jun 2019 16:54:19 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgu88-00022R-TU
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 16:53:47 +0000
Received: by mail-pg1-f196.google.com with SMTP id v9so2819638pgr.13
 for <linux-nvme@lists.infradead.org>; Fri, 28 Jun 2019 09:53:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bg1QRXRoPWuxfygjYFPdUQaOSDnhYHnTU6ZOV0pjNZY=;
 b=rggXZXrcjgL4m2afVuj6VqUktY7lK+ll9jS/lBR3ap4FWzotP1U1M7x+20ZRurw+vq
 AhXToo4YqEzNmtzQWzwuWyDCfjskJj3n2ev7bzobdDC1BJ6NtWucMU4+Yv/e6uqNBkp6
 EDvVWBUShvj2TBI2E0Hf8fjEHbovx3KwWg/gvKiLm5S4vHlps4PjtM9RpZGfBK0KEjqK
 gTymRAkrgT4Bxm7rjXhcezkMsFkRytulcZ7Dj2z4z0Bg/8zVxnsdgEu7Ssshu3yJ6ts+
 SnVAKi9/QVGLr1krQc8JhsKIdlb8iOeyn/cWaQP0zmnIRbrvPAYc7xdoATA4n/IFt/el
 YTrQ==
X-Gm-Message-State: APjAAAWZpI7oEgubDBxSQ5bxrqc1Equi+ZjhITFwgn+boiHA+CvoQ6yp
 rV52/ZV9uTzR/AuVZXIX9rk=
X-Google-Smtp-Source: APXvYqxrgZbAJDycNYV49gQk6rhYgTgkHGr+8/mfOFmhcHSkE5PR7Ol5GSvyXyGtVePI97patTsbiw==
X-Received: by 2002:a17:90a:a008:: with SMTP id
 q8mr14519671pjp.114.1561740821581; 
 Fri, 28 Jun 2019 09:53:41 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y5sm2100700pgv.12.2019.06.28.09.53.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 09:53:40 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v5 2/3] nvmet: Export NVMe namespace attributes
Date: Fri, 28 Jun 2019 09:53:30 -0700
Message-Id: <20190628165331.163919-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190628165331.163919-1-bvanassche@acm.org>
References: <20190628165331.163919-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_095344_952212_5B277EC6 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
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
available to initator systems for the block backend.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Martin K. Petersen <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/target/admin-cmd.c   |  3 +++
 drivers/nvme/target/io-cmd-bdev.c | 39 +++++++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  8 +++++++
 3 files changed, 50 insertions(+)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 9f72d515fc4b..4dc12ea52f23 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -442,6 +442,9 @@ static void nvmet_execute_identify_ns(struct nvmet_req *req)
 		break;
         }
 
+	if (ns->bdev)
+		nvmet_bdev_set_limits(ns->bdev, id);
+
 	/*
 	 * We just provide a single LBA format that matches what the
 	 * underlying device reports.
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 7a1cf6437a6a..de0bff70ebb6 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -8,6 +8,45 @@
 #include <linux/module.h>
 #include "nvmet.h"
 
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
+	 * Bit 4 indicates that the fields NPWG, NPWA, NPDG, NPDA, and
+	 * NOWS are defined for this namespace and should be used by
+	 * the host for I/O optimization.
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
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index dc270944bb25..6ee66c610739 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -365,6 +365,7 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask);
 void nvmet_execute_async_event(struct nvmet_req *req);
 
 u16 nvmet_parse_connect_cmd(struct nvmet_req *req);
+void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id);
 u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_file_parse_io_cmd(struct nvmet_req *req);
 u16 nvmet_parse_admin_cmd(struct nvmet_req *req);
@@ -492,4 +493,11 @@ static inline u32 nvmet_rw_len(struct nvmet_req *req)
 }
 
 u16 errno_to_nvme_status(struct nvmet_req *req, int errno);
+
+/* Convert a 32-bit number to a 16-bit 0's based number */
+static inline __le16 to0based(u32 a)
+{
+	return cpu_to_le16(max(1U, min(1U << 16, a)) - 1);
+}
+
 #endif /* _NVMET_H */
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
