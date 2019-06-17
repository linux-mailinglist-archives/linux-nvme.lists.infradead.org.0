Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145A148872
	for <lists+linux-nvme@lfdr.de>; Mon, 17 Jun 2019 18:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Drn0OourWuGWLOo3z3YIC2ECaylAavDeVmq03GPj/yo=; b=s/aQ3uwjNGm9/B
	ZwihUz6y7uRLAEVkGgicadY0TaJLZeJ3z8j9dbcnMzQADD5Xgs8nf886s6rR8bSFugJ7+W14Hf4ER
	2zqS2qFWZS+zaV27gMibIrnyMOE51uMJss+aan1GhG0G9sRnWDkDQlUx1rcvdE9BcN+rWpyc5PL9l
	Ulf4hcX3MT6uAgBcHNq4Bv270ESrrC5zyU1RJPlA4BvblgpJivTayBODIbLsFcg9/keWt2J8Ddbu4
	CvmkRc/JzUJcp+1ECpnChAY3v0cEPJ1fMaUJXDVhX45YdM21cxF+HekDEMoIv06H751OffWTjhSAY
	/+ZRDsM8e+VnDlcPo1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuG0-0002Pv-EB; Mon, 17 Jun 2019 16:13:20 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuFF-0001xb-Cl
 for linux-nvme@lists.infradead.org; Mon, 17 Jun 2019 16:12:35 +0000
Received: by mail-pg1-f194.google.com with SMTP id n2so6071255pgp.11
 for <linux-nvme@lists.infradead.org>; Mon, 17 Jun 2019 09:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pKLCdQCtXvphKk1+cb5ewNrkWE7PKWEDYoBDUKqXEZI=;
 b=XmKRjFxjuELwg+cw0KT7DuATIsWEU3c2F9RuV0LSd/LX8M7OvNsJOfC9D6aAR2GQ4z
 HAK0IYxcBphhJN0xz/3SfuxeyiOF7qV8II9ciXATZz1+6deqtORHBwSkMFfnRM4tw5FD
 LYjD1mPhaawjqRpyxZNZ+bt+ZF5YHZOlCn7Tra3qVpQgr4QzYfFuL4vljtR7IUaqktI1
 zyMJOgObRDGh3Qn+y4bS8v4hMebk3Is98zX+bP4c3UUj4CnF3VchxsfsTj117hrQsPtn
 dJhoszmHx2fC1ZHWeL31Lb818UwsbV7AfPzgYQ5PkhV7sbxY+qlaAkf5GYOZYu4UWABL
 1u9g==
X-Gm-Message-State: APjAAAVMAGGSjnwl0DKUDoGbHd5zq8cmB+pRhGi0uld9AUXf8ZtrCTsf
 KdRKRSDJxVWEZHfPOceemwE=
X-Google-Smtp-Source: APXvYqyABnzNgiD8NDvmtKQFQHCYYwRdbzgvPbLlFwOlJ4xeyLi3S0V1gfJjLbNoFOPhtxzQZZyozA==
X-Received: by 2002:a63:4d05:: with SMTP id a5mr46484475pgb.19.1560787952827; 
 Mon, 17 Jun 2019 09:12:32 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y19sm11416069pfe.150.2019.06.17.09.12.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 09:12:32 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v3 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Date: Mon, 17 Jun 2019 09:12:22 -0700
Message-Id: <20190617161222.253849-4-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190617161222.253849-1-bvanassche@acm.org>
References: <20190617161222.253849-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091233_681185_FB3817FC 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
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
 drivers/nvme/host/core.c | 30 ++++++++++++++++++++++++++++--
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..5b92d875a1a6 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1608,6 +1608,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 {
 	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
+	u32 atomic_bs, phys_bs, io_opt;
 
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
@@ -1616,9 +1617,33 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
+	/*
+	 * Bit 1 indicates whether NAWUPF is defined for this namespace
+	 * and whether it should be used instead of AWUPF. If NAWUPF == 0
+	 * then AWUPF must be used instead.
+	 */
+	if (id->nsfeat & (1 << 1) && id->nawupf)
+		atomic_bs = (1 + id->nawupf) * bs;
+	else
+		atomic_bs = (1 + ns->ctrl->subsys->awupf) * bs;
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
+	blk_queue_physical_block_size(disk->queue, min(phys_bs, atomic_bs));
+	blk_queue_io_min(disk->queue, phys_bs);
+	blk_queue_io_opt(disk->queue, io_opt);
 
 	if (ns->ms && !ns->ext &&
 	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
@@ -2415,6 +2440,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
