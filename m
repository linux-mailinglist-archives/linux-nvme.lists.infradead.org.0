Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B77184085
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Mar 2020 06:30:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDfAvuNUNmL8T0bQtQOshzJKYGtLQBvAUSlTLvYOkWQ=; b=Q2LYnE0FcIXE3P
	KiSyn3JGcCgH7lAjgPj8mGxKboMG10oMvngCKfZInygLglu6LIn1j8eyuzyCT2w1tUEha4Sy9uAw2
	O+nRgDT48+wXmwKMv8FdJJly1yrOrVLdZ4um2d+VkYEr6fsJOxuov30/f48TLdnruaOkCekkAU9bc
	Kby5v1Me1B/phxKcFOHglncI9TfzxehaceWNst5NNKKbsBP3zjRcAjBlUGE/r4uKzi2NQA7N3jGfM
	bFtxCHT4xBcVlG7O4s5H/I75PHWt+KqHFIoH0nFR7N70BGIU42JdHPCyvakTeMGTmQp42FhcB4Hk2
	PU2A7WUYCVJWCyGHgqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCctw-0004ri-Ty; Fri, 13 Mar 2020 05:30:28 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCcts-0004qn-Q8
 for linux-nvme@lists.infradead.org; Fri, 13 Mar 2020 05:30:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1584077425; x=1615613425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=88Zx2T7WCBJVENwjrv8btKUmZjU2WnlNsWj7L+qkaVc=;
 b=au6TubrrnRZJ+X/zMLZKTOV+PZ4v+630IPVqwbxrbnaf3C4u/dwQvFAb
 ReyUYMhVCszk7RTqZa3pSXGcCboZSDfQKxm/HR4ZiNYVmky08l4xku5Er
 no9nWFgW7weynSSl3XnKEHA2TvgiuaJlmPacynAr2f/oh9/K5BrBoxdHC E=;
IronPort-SDR: g32NOkjyZPrHE+l6ytQQqlK1Lm2zjoAu14ly/4ojSH4IYga6i3V+2BWs5y6AZoe7rXTxYAuHjX
 lzVS0Wubks4A==
X-IronPort-AV: E=Sophos;i="5.70,547,1574121600"; d="scan'208";a="32358031"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1e-62350142.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 13 Mar 2020 05:30:21 +0000
Received: from EX13MTAUWA001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1e-62350142.us-east-1.amazon.com (Postfix) with ESMTPS
 id 07FF8A28FA; Fri, 13 Mar 2020 05:30:18 +0000 (UTC)
Received: from EX13D01UWA004.ant.amazon.com (10.43.160.99) by
 EX13MTAUWA001.ant.amazon.com (10.43.160.58) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Mar 2020 05:30:18 +0000
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13d01UWA004.ant.amazon.com (10.43.160.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 13 Mar 2020 05:30:18 +0000
Received: from localhost (10.2.75.237) by mail-relay.amazon.com
 (10.43.160.118) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 13 Mar 2020 05:30:18 +0000
From: Balbir Singh <sblbir@amazon.com>
To: <linux-kernel@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <linux-nvme@lists.infradead.org>
Subject: [PATCH v3 1/5] block/genhd: Notify udev about capacity change
Date: Fri, 13 Mar 2020 05:30:05 +0000
Message-ID: <20200313053009.19866-2-sblbir@amazon.com>
X-Mailer: git-send-email 2.16.6
In-Reply-To: <20200313053009.19866-1-sblbir@amazon.com>
References: <20200313053009.19866-1-sblbir@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_223024_892988_C20F51E1 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@kernel.dk, Someswarudu Sangaraju <ssomesh@amazon.com>, Balbir
 Singh <sblbir@amazon.com>, hch@lst.de, Chaitanya.Kulkarni@wdc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Allow block/genhd to notify user space (via udev) about disk size changes
using a new helper set_capacity_revalidate_and_notify(), which is a wrapper
on top of set_capacity(). set_capacity_revalidate_and_notify() will only
notify via udev if the current capacity or the target capacity is not zero
and iff the capacity changes.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Someswarudu Sangaraju <ssomesh@amazon.com>
Signed-off-by: Balbir Singh <sblbir@amazon.com>
Reviewed-by: Bob Liu <bob.liu@oracle.com>
---
 block/genhd.c         | 24 ++++++++++++++++++++++++
 include/linux/genhd.h |  2 ++
 2 files changed, 26 insertions(+)

diff --git a/block/genhd.c b/block/genhd.c
index ff6268970ddc..6a60131baffa 100644
--- a/block/genhd.c
+++ b/block/genhd.c
@@ -46,6 +46,30 @@ static void disk_add_events(struct gendisk *disk);
 static void disk_del_events(struct gendisk *disk);
 static void disk_release_events(struct gendisk *disk);
 
+/*
+ * Set disk capacity and notify if the size is not currently
+ * zero and will not be set to zero
+ */
+void set_capacity_revalidate_and_notify(struct gendisk *disk, sector_t size,
+					bool revalidate)
+{
+	sector_t capacity = get_capacity(disk);
+
+	set_capacity(disk, size);
+
+	if (revalidate)
+		revalidate_disk(disk);
+
+	if (capacity != size && capacity != 0 && size != 0) {
+		char *envp[] = { "RESIZE=1", NULL };
+
+		kobject_uevent_env(&disk_to_dev(disk)->kobj, KOBJ_CHANGE, envp);
+	}
+}
+
+EXPORT_SYMBOL_GPL(set_capacity_revalidate_and_notify);
+
+
 void part_inc_in_flight(struct request_queue *q, struct hd_struct *part, int rw)
 {
 	if (queue_is_mq(q))
diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 6fbe58538ad6..f77f5095f20b 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -461,6 +461,8 @@ static inline int get_disk_ro(struct gendisk *disk)
 extern void disk_block_events(struct gendisk *disk);
 extern void disk_unblock_events(struct gendisk *disk);
 extern void disk_flush_events(struct gendisk *disk, unsigned int mask);
+extern void set_capacity_revalidate_and_notify(struct gendisk *disk,
+			sector_t size, bool revalidate);
 extern unsigned int disk_clear_events(struct gendisk *disk, unsigned int mask);
 
 /* drivers/char/random.c */
-- 
2.16.6


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
