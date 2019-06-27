Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F05848F
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 16:34:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aV+IiWDfiBnXgwNkjinkkUPcIzPX7qKH8INiHL9SIUI=; b=IYzg8aV3VzilXy
	DTwyG+vQ3zSajxmX15I2VgiZ+yT0Gm5wIBMwTN80ZyvG0IfyK7qqIvezsc0CvTm+YUFmcptmmf16d
	bvj9cwMadcOcd2+2A+Eibj92K+Doj7jS8GxBbcxOTud2xomXrujyVNf3SHLpUJhgPNlnyJhp6Kk2s
	VGmupA9liPVKLVRDwLmPUZ/z7xWqhKhgqgsnDvvkXG7accdYAIk35smPZgaqfbhUo6LIrW2gRWmfr
	6cyAcUVbaRMLaWu5cyBjN29B3AzSOMaPqDEbUPfdo9abaCeStiSB/E4oJ4aNzFJf+SiGyvoNeioGx
	fkSNX2lNaaHC8/rVShWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVTV-00059F-3M; Thu, 27 Jun 2019 14:34:09 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVRr-0004B5-VF
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 14:32:29 +0000
Received: by mail-pl1-f193.google.com with SMTP id m7so1402635pls.8
 for <linux-nvme@lists.infradead.org>; Thu, 27 Jun 2019 07:32:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pzAzSUAheeXcMA6MXlvRImng5wP5VeKRHSq74sob+hU=;
 b=l8zkYUMam87MmVF43bx74yk8m7Cq4V/kOfYAi+J000it9PDbMd128O0PWGgtsizaVr
 wibtx+YIpN5k3kHiPHsCDGtnDG/uNFRAXtVqwmVXwBz7BxYdraVAF0LPKMwXrdqcX7vY
 EX1mYaoqZiyLXAbwuPLm8F82a4Yd++C5lBPGZHSFm9Mcecqt+R9bkg1oN17gK276YvM2
 tI9wNw3tQLwZQC3gf1/gLKC/yJe7hzXYh0RUV6+XV/4GwA6OWigtndl+4gBKnl8esU8n
 t94h2WOHSPJter6MKgQSggC1/P08gA5+o+RCVpbv34UGek8GfhKERUVat0HkLtMvQfPf
 1BwA==
X-Gm-Message-State: APjAAAXGJLUNXma30XwmgLwd+bo/8FIlRaUPx3ZTqAZjxG7KfQF6paCJ
 XtyzTKYw3SW85y5re4H1lOkVbgBH
X-Google-Smtp-Source: APXvYqytTKRjpn5xBEen2u9w72X2ALKfBb89m1+KyZtKKj9m5rgc2omJeDZ6LT3kwP8sKhK4ZQY5Qw==
X-Received: by 2002:a17:902:b284:: with SMTP id
 u4mr5282573plr.36.1561645947153; 
 Thu, 27 Jun 2019 07:32:27 -0700 (PDT)
Received: from asus.site ([2601:647:4000:5dd1:f10e:6218:72d9:c2d6])
 by smtp.gmail.com with ESMTPSA id y193sm2812037pgd.41.2019.06.27.07.32.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 07:32:26 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH v4 3/3] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Date: Thu, 27 Jun 2019 07:32:15 -0700
Message-Id: <20190627143215.27443-4-bvanassche@acm.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627143215.27443-1-bvanassche@acm.org>
References: <20190627143215.27443-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_073228_034015_BF930D74 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
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
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
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
index b2dd4e391f5c..366492253c4e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1626,6 +1626,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 {
 	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
+	u32 atomic_bs, phys_bs, io_opt;
 
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
@@ -1634,9 +1635,33 @@ static void nvme_update_disk_info(struct gendisk *disk,
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
@@ -2433,6 +2458,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	memcpy(subsys->firmware_rev, id->fr, sizeof(subsys->firmware_rev));
 	subsys->vendor_id = le16_to_cpu(id->vid);
 	subsys->cmic = id->cmic;
+	subsys->awupf = le16_to_cpu(id->awupf);
 #ifdef CONFIG_NVME_MULTIPATH
 	subsys->iopolicy = NVME_IOPOLICY_NUMA;
 #endif
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index ea45d7d393ad..716a876119c8 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -283,6 +283,7 @@ struct nvme_subsystem {
 	char			firmware_rev[8];
 	u8			cmic;
 	u16			vendor_id;
+	u16			awupf;	/* 0's based awupf value. */
 	struct ida		ns_ida;
 #ifdef CONFIG_NVME_MULTIPATH
 	enum nvme_iopolicy	iopolicy;
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
