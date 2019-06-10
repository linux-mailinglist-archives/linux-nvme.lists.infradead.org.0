Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF813BE08
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 23:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G9GhZlf1NF6a9Z4gZHoh/bdtHXNvztSgTjYc2x1Q4I=; b=niBwxaQLEhvd6s
	/VIqHuqGC/2RtQBN/zIuas4PYqcQ8bwIiPp11B0Xo0x/ZV58d3pAhumzdgjB0WP9PWalh3GYXFBfQ
	wP/O6gSTEDTxVyPvbIZDIB8DDxGYdF0XaYONZiJ8/26P+czrik+bsrILh+hD8cJbKYqV7ngeBqk0P
	vWLWZB9Bd4HSwjLcmGMIn0yhCaPt1QJLsNMTwtCLtiaT42KaUIs9qk+utWIXUjLXrnnMyi67z79cr
	+eqQDXmOlc6uzUXU7cmE2e3TGV6q4Sd8MsFwhpZB7xZGBoaTYjlcWdDuzs6o7qhMXGpwfURtuxwyR
	w3hkitGJ3BXM6wjutRjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRVd-0003Ia-LX; Mon, 10 Jun 2019 21:07:17 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRUo-0002qY-PD
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 21:06:28 +0000
Received: by mail-pf1-f195.google.com with SMTP id s11so5973437pfm.12
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 14:06:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=stJoqjNtqWrQS7beuALc7lXHdmv3hU7NRYr3wSNT1ik=;
 b=tvgLd9U3KOdsu0dyZddOq3JdcVyhdP5senOev1Jw97oLV05KX8+3HvErqCID/mBZhj
 EGSMGAogps5Vyt8y7KSEMOmcR3FwegPJC60b14gL3ywu/b8cKcr5oYc+iIZicret1HkV
 oFrxF2h7qonCjRqatmdJM93wXQG+G9cfALI5/pnZVhqodGlxHX+CHJ/+QYY656JJ0Gy+
 izSCiwnEFh05rcQTd8B3gxCA+0OJeKkufZLT8pMqk0s047K+ewdaz4M80RcF7u5GS7yD
 Kzp2XicuHSjZmjoip+xBab4s9Izjx3ixBAqprpnn4J7/shEXlD32ZZRiIB/piljy1JuJ
 9uaQ==
X-Gm-Message-State: APjAAAUA6v1bhJBc3NE1sF+Vg8a5oGhK+y/0m0tR1xFt9xJ7GiocLRlP
 0AyaRQDiTxYstIYeKJzupkU=
X-Google-Smtp-Source: APXvYqzHIFNZRvFQ1VrtMvt9QEZdG38QjJxmZEmSKI3lAB7zoGFtk7pGpA5LRe+oY0KUSw7Qt/TjZQ==
X-Received: by 2002:a62:5306:: with SMTP id h6mr77360678pfb.29.1560200786275; 
 Mon, 10 Jun 2019 14:06:26 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id d19sm332208pjs.22.2019.06.10.14.06.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 14:06:25 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Date: Mon, 10 Jun 2019 14:06:12 -0700
Message-Id: <20190610210612.103952-4-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190610210612.103952-1-bvanassche@acm.org>
References: <20190610210612.103952-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_140626_839446_E6C78807 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From the NVMe 1.4 spec:

NSFEAT bit 4 if set to 1: indicates that the fields NPWG, NPWA, NPDG, NPDA,
and NOWS are defined for this namespace and should be used by the host for
I/O optimization;
[ ... ]
Namespace Preferred Write Granularity (NPWG): This field indicates the
smallest recommended write granularity in logical blocks for this namespace.
This is a 0's based value. The size indicated should be less than or equal
to Maximum Data Transfer Size (MDTS) that is specified in units of minimum
memory page size. The value of this field may change if the namespace is
reformatted. The size should be a multiple of Namespace Preferred Write
Alignment (NPWA). Refer to section 8.25 for how this field is utilized to
improve performance and endurance.
[ ... ]
Each Write, Write Uncorrectable, or Write Zeroes commands should address a
multiple of Namespace Preferred Write Granularity (NPWG) (refer to Figure
245) and Stream Write Size (SWS) (refer to Figure 515) logical blocks (as
expressed in the NLB field), and the SLBA field of the command should be
aligned to Namespace Preferred Write Alignment (NPWA) (refer to Figure 245)
for best performance.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/host/core.c | 24 ++++++++++++++++++++++--
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..00bdab0e2d57 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1608,6 +1608,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 {
 	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
+	uint32_t nawupf, phys_bs, io_opt;
 
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
@@ -1616,9 +1617,27 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
+	nawupf = (1 + ns->ctrl->subsys->awupf) * bs;
+	if (id->nsfeat & (1 << 1))
+		nawupf = (1 + id->nawupf) * bs;
+	phys_bs = bs;
+	io_opt = bs;
+	if (id->nsfeat & (1 << 4)) {
+		/* NPWG = Namespace Preferred Write Granularity */
+		phys_bs *= 1 + le16_to_cpu(id->npwg);
+		/* NOWS = Namespace Optimal Write Size */
+		io_opt *= 1 + le16_to_cpu(id->nows);
+	}
+
 	blk_queue_logical_block_size(disk->queue, bs);
-	blk_queue_physical_block_size(disk->queue, bs);
-	blk_queue_io_min(disk->queue, bs);
+	/*
+	 * Linux filesystems assume writing a single physical block is
+	 * an atomic operation. Hence limit the physical block size to the
+	 * value of the Atomic Write Unit Power Fail parameter.
+	 */
+	blk_queue_physical_block_size(disk->queue, min(phys_bs, nawupf));
+	blk_queue_io_min(disk->queue, phys_bs);
+	blk_queue_io_opt(disk->queue, io_opt);
 
 	if (ns->ms && !ns->ext &&
 	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
@@ -2415,6 +2434,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	memcpy(subsys->firmware_rev, id->fr, sizeof(subsys->firmware_rev));
 	subsys->vendor_id = le16_to_cpu(id->vid);
 	subsys->cmic = id->cmic;
+	subsys->awupf = le16_to_cpu(id->awupf);
 #ifdef CONFIG_NVME_MULTIPATH
 	subsys->iopolicy = NVME_IOPOLICY_NUMA;
 #endif
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 55553d293a98..d93279fd5960 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -272,6 +272,7 @@ struct nvme_subsystem {
 	char			firmware_rev[8];
 	u8			cmic;
 	u16			vendor_id;
+	u16			awupf;	/* 0's based awupf value. */
 	struct ida		ns_ida;
 #ifdef CONFIG_NVME_MULTIPATH
 	enum nvme_iopolicy	iopolicy;
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
