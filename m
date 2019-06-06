Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB30A37F96
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 23:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cHgnWdyUrEUNWI4Y0Jh9tGyeFK3+p0/36sIROR5yMk=; b=PMMdaGJ0tCZmHB
	ghSgq6VWjJhdW7G2/jDMmI1M4pGRR3NnmtvhtHpvUjsdKN+PWwfCDhSudYE++3efwi3rw5IjKMdZq
	km9PiZ4HfdSEfk9M9BOjFiGZQdXEqzqSWCQsHTs0XUUOK+Aq1KGYGNVdVDL1mSziS5ts14Xb7314P
	IDF3NZc2jjuVIKc1QBWjYOvHYgjQjUrs8rI5x66xXvKxp1nlXji/SHamQd1AKyuST742qSe2wGcTK
	JtkwNo/PbJfAqcEqA50pvwoy2BF8R/La+bS6cxEOfS9P6v9uLVbFapJXSuSJcQgOdcuWU0vvedOmq
	vVVKsMMmdoYOk+WnRzHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzwy-0007AT-5t; Thu, 06 Jun 2019 21:29:32 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzwc-0006r0-Oa
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 21:29:12 +0000
Received: by mail-pf1-f193.google.com with SMTP id s11so2260448pfm.12
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 14:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4768zl+yanzm8Awi1udiiwprdh8wV2N3L1ATkK3bV+g=;
 b=NFoIHyKvCUTHfh4Rpq7ZC3jDv1WHQpflLyb8UqaTMbaC3qD1fPlJ42ZEZkHkjdqFqz
 VSSdnBHrHtvsN4fV8A40X/T7QAw/8KtKE7gv+5eJ4hr2EIj77q5h7i/CnMBaPoexlgQf
 V1ESmjgBHJ2dVidVvlJ1OcgmJRtINcF+Dv6OZAN99QBw3m30AcNm0z8h70k3SKQwPGo3
 Pt3GsdtMnivOZ8Dhx9nd61oW8NpMxyBvNGhRIHD3qO5zd2eprTEkqKQPaOjb3cMap2Uo
 kZilygd9dnoMmJVNdj3iDQOWyv6cJ9ZIaCX476Kt4dd1blp92zHTu7Oi+1cprvMANoUz
 oXuw==
X-Gm-Message-State: APjAAAX5UCP8h9Uh5Qi1zxH+X9g44YUPhL3v5wPbvZ1xyXTdZdEGeLgy
 ECyPAupW7hsEMy4QaZEO6DQ=
X-Google-Smtp-Source: APXvYqzYBdUj7KOcFrISfHThETNo1YPzb/5FtpuRY5YStyepBJZDdq8SciAhVZByEEL/EaHSwVBkLw==
X-Received: by 2002:a17:90a:ad05:: with SMTP id
 r5mr1943107pjq.41.1559856546954; 
 Thu, 06 Jun 2019 14:29:06 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id u1sm85940pfh.85.2019.06.06.14.29.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 14:29:06 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 2/2] nvme: Set physical block size and optimal I/O size
 according to NVMe 1.4
Date: Thu,  6 Jun 2019 14:28:54 -0700
Message-Id: <20190606212854.122478-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190606212854.122478-1-bvanassche@acm.org>
References: <20190606212854.122478-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_142910_793353_0F324774 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Hannes Reinecke <hare@suse.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Bart Van Assche <bvanassche@acm.org>
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

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/host/core.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..c67f2fc8c5c0 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1608,6 +1608,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 {
 	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
+	uint32_t phys_bs, io_opt;
 
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
@@ -1616,9 +1617,18 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
+	phys_bs = bs;
+	io_opt = bs;
+	if (id->nsfeat & (1 << 4)) {
+		/* NPWG = Namespace Preferred Write Granularity */
+		phys_bs *= 1 + le16_to_cpu(id->npwg);
+		/* NOWS = Namespace Optimal Write Size */
+		io_opt *= 1 + le16_to_cpu(id->nows);
+	}
 	blk_queue_logical_block_size(disk->queue, bs);
-	blk_queue_physical_block_size(disk->queue, bs);
-	blk_queue_io_min(disk->queue, bs);
+	blk_queue_physical_block_size(disk->queue, phys_bs);
+	blk_queue_io_min(disk->queue, phys_bs);
+	blk_queue_io_opt(disk->queue, io_opt);
 
 	if (ns->ms && !ns->ext &&
 	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
