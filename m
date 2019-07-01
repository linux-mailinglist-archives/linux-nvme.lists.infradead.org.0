Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC3550DFB
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 16:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs6lEFH1PwzRXECA1z3BbsTzRVp/DXjVrlaDPBJBLso=; b=ovg82Xv4uOyjqI
	eak0Z6GtwgB7PdvL3kjX54XIPTHNGysyrPgYoJMxt6lQJExYo+ViDexiUA7O2miHJk5E0rSxmR03t
	6Z5rVQux7DWlVLSAcI9sCyR4I4AnlmbsW+lzmG1xxgrscFuTL763q+Q0eBsTmCxTRus/szzuek/ni
	vFB0VIHkdXfJk9gMT40Xfs+X01GdkLmDoFfW+UtmeAVKDnUdhqMnpH1Y7ozchyaDUZtee8EnTkb+Y
	0ObNjpW7oPtT7VPr7aCite6UjisD8n6p0qWmBA2a3gpoiPI9hLlwEsr0uAdZHqsrqQTN28gk6Xizg
	gdyrx80xqYlSyPB9KL+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPyA-0001HL-6h; Mon, 24 Jun 2019 14:29:18 +0000
Received: from mx2.didichuxing.com ([36.110.17.22] helo=bsf02.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPxr-0001B3-70
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 14:29:02 +0000
X-ASG-Debug-ID: 1561386532-0e41086a09178520001-VMfPqL
Received: from BJEXCAS03.didichuxing.com (bogon [172.20.36.245]) by
 bsf02.didichuxing.com with ESMTP id 5k0ei3O7iq5IFBJK;
 Mon, 24 Jun 2019 22:28:52 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 22:28:52 +0800
Date: Mon, 24 Jun 2019 22:28:51 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>, <bvanassche@acm.org>,
 <keith.busch@intel.com>, <minwoo.im.dev@gmail.com>
Subject: [PATCH v3 1/5] block: add weighted round robin for blkcgroup
Message-ID: <1333161d2c64dbe93f9dcd0814ffaf6d00216d58.1561385989.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v3 1/5] block: add weighted round robin for blkcgroup
Mail-Followup-To: axboe@kernel.dk, tj@kernel.org, hch@lst.de,
 bvanassche@acm.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS03.didichuxing.com (172.20.36.245) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: bogon[172.20.36.245]
X-Barracuda-Start-Time: 1561386532
X-Barracuda-URL: https://bsf02.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 10653
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -1.52
X-Barracuda-Spam-Status: No,
 SCORE=-1.52 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE7568M
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73067
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.50 BSF_RULE7568M          Custom Rule 7568M
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072900_185721_20A192F6 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [36.110.17.22 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Each block cgroup can select a weighted round robin type to make
its io requests go to the specified haredware queue. Now we support
three round robin type high, medium, low like what nvme specification
donse.

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 block/blk-cgroup.c         | 89 ++++++++++++++++++++++++++++++++++++++++++++++
 block/blk-mq-debugfs.c     |  4 +++
 block/blk-mq-sched.c       |  6 +++-
 block/blk-mq-tag.c         |  4 +--
 block/blk-mq-tag.h         |  2 +-
 block/blk-mq.c             | 12 +++++--
 block/blk-mq.h             | 20 +++++++++--
 block/blk.h                |  2 +-
 include/linux/blk-cgroup.h |  2 ++
 include/linux/blk-mq.h     | 14 ++++++++
 10 files changed, 145 insertions(+), 10 deletions(-)

diff --git a/block/blk-cgroup.c b/block/blk-cgroup.c
index 440797293235..723a27417754 100644
--- a/block/blk-cgroup.c
+++ b/block/blk-cgroup.c
@@ -1014,6 +1014,90 @@ static int blkcg_print_stat(struct seq_file *sf, void *v)
 	return 0;
 }
 
+static const char *blk_wrr_name[BLK_WRR_COUNT] = {
+	[BLK_WRR_NONE]		= "none",
+	[BLK_WRR_LOW]		= "low",
+	[BLK_WRR_MEDIUM]	= "medium",
+	[BLK_WRR_HIGH]		= "high",
+	[BLK_WRR_URGENT]	= "urgent",
+};
+
+static inline const char *blk_wrr_to_name(int wrr)
+{
+	if (wrr < BLK_WRR_NONE || wrr >= BLK_WRR_COUNT)
+		return "wrong";
+
+	return blk_wrr_name[wrr];
+}
+
+static ssize_t blkcg_wrr_write(struct kernfs_open_file *of,
+			 char *buf, size_t nbytes, loff_t off)
+{
+	struct blkcg *blkcg = css_to_blkcg(of_css(of));
+	struct gendisk *disk;
+	struct request_queue *q;
+	struct blkcg_gq *blkg;
+	unsigned int major, minor;
+	int wrr, key_len, part, ret;
+	char *body;
+
+	if (sscanf(buf, "%u:%u%n", &major, &minor, &key_len) != 2)
+		return -EINVAL;
+
+	body = buf + key_len;
+	if (!isspace(*body))
+		return -EINVAL;
+	body = skip_spaces(body);
+	wrr = sysfs_match_string(blk_wrr_name, body);
+	if (wrr == BLK_WRR_COUNT)
+		return -EINVAL;
+
+	disk = get_gendisk(MKDEV(major, minor), &part);
+	if (!disk)
+		return -ENODEV;
+	if (part) {
+		ret = -EINVAL;
+		goto fail;
+	}
+
+	q = disk->queue;
+
+	blkg = blkg_lookup_create(blkcg, q);
+
+	atomic_set(&blkg->wrr, wrr);
+	put_disk_and_module(disk);
+
+	return nbytes;
+fail:
+	put_disk_and_module(disk);
+	return ret;
+}
+
+static int blkcg_wrr_show(struct seq_file *sf, void *v)
+{
+	struct blkcg *blkcg = css_to_blkcg(seq_css(sf));
+	struct blkcg_gq *blkg;
+
+	rcu_read_lock();
+
+	hlist_for_each_entry_rcu(blkg, &blkcg->blkg_list, blkcg_node) {
+		const char *dname;
+		char *buf;
+		size_t size = seq_get_buf(sf, &buf), off = 0;
+
+		dname = blkg_dev_name(blkg);
+		if (!dname)
+			continue;
+
+		off += scnprintf(buf+off, size-off, "%s %s\n", dname,
+			blk_wrr_to_name(atomic_read(&blkg->wrr)));
+		seq_commit(sf, off);
+	}
+
+	rcu_read_unlock();
+	return 0;
+}
+
 static struct cftype blkcg_files[] = {
 	{
 		.name = "stat",
@@ -1028,6 +1112,11 @@ static struct cftype blkcg_legacy_files[] = {
 		.name = "reset_stats",
 		.write_u64 = blkcg_reset_stats,
 	},
+	{
+		.name = "wrr",
+		.write = blkcg_wrr_write,
+		.seq_show = blkcg_wrr_show,
+	},
 	{ }	/* terminate */
 };
 
diff --git a/block/blk-mq-debugfs.c b/block/blk-mq-debugfs.c
index 5d940ff124a5..53dcfca015cd 100644
--- a/block/blk-mq-debugfs.c
+++ b/block/blk-mq-debugfs.c
@@ -436,6 +436,10 @@ static int hctx_busy_show(void *data, struct seq_file *m)
 static const char *const hctx_types[] = {
 	[HCTX_TYPE_DEFAULT]	= "default",
 	[HCTX_TYPE_READ]	= "read",
+	[HCTX_TYPE_WRR_LOW]	= "wrr_low",
+	[HCTX_TYPE_WRR_MEDIUM]	= "wrr_medium",
+	[HCTX_TYPE_WRR_HIGH]	= "wrr_high",
+	[HCTX_TYPE_WRR_URGENT]	= "wrr_urgent",
 	[HCTX_TYPE_POLL]	= "poll",
 };
 
diff --git a/block/blk-mq-sched.c b/block/blk-mq-sched.c
index 2766066a15db..8a6c564877d0 100644
--- a/block/blk-mq-sched.c
+++ b/block/blk-mq-sched.c
@@ -7,6 +7,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/blk-mq.h>
+#include <linux/blk-cgroup.h>
 
 #include <trace/events/block.h>
 
@@ -322,10 +323,13 @@ bool __blk_mq_sched_bio_merge(struct request_queue *q, struct bio *bio)
 {
 	struct elevator_queue *e = q->elevator;
 	struct blk_mq_ctx *ctx = blk_mq_get_ctx(q);
-	struct blk_mq_hw_ctx *hctx = blk_mq_map_queue(q, bio->bi_opf, ctx);
+	struct blk_mq_hw_ctx *hctx;
+	struct blkcg_gq *blkg = bio->bi_blkg;
+	int wrr = blkg ? atomic_read(&blkg->wrr) : BLK_WRR_NONE;
 	bool ret = false;
 	enum hctx_type type;
 
+	hctx = blk_mq_map_queue(q, bio->bi_opf, ctx, wrr);
 	if (e && e->type->ops.bio_merge) {
 		blk_mq_put_ctx(ctx);
 		return e->type->ops.bio_merge(hctx, bio);
diff --git a/block/blk-mq-tag.c b/block/blk-mq-tag.c
index 7513c8eaabee..6fd5261c4fbc 100644
--- a/block/blk-mq-tag.c
+++ b/block/blk-mq-tag.c
@@ -106,7 +106,7 @@ static int __blk_mq_get_tag(struct blk_mq_alloc_data *data,
 		return __sbitmap_queue_get(bt);
 }
 
-unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data)
+unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data, int wrr)
 {
 	struct blk_mq_tags *tags = blk_mq_tags_from_data(data);
 	struct sbitmap_queue *bt;
@@ -171,7 +171,7 @@ unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data)
 
 		data->ctx = blk_mq_get_ctx(data->q);
 		data->hctx = blk_mq_map_queue(data->q, data->cmd_flags,
-						data->ctx);
+						data->ctx, wrr);
 		tags = blk_mq_tags_from_data(data);
 		if (data->flags & BLK_MQ_REQ_RESERVED)
 			bt = &tags->breserved_tags;
diff --git a/block/blk-mq-tag.h b/block/blk-mq-tag.h
index 61deab0b5a5a..ef43f819ead8 100644
--- a/block/blk-mq-tag.h
+++ b/block/blk-mq-tag.h
@@ -25,7 +25,7 @@ struct blk_mq_tags {
 extern struct blk_mq_tags *blk_mq_init_tags(unsigned int nr_tags, unsigned int reserved_tags, int node, int alloc_policy);
 extern void blk_mq_free_tags(struct blk_mq_tags *tags);
 
-extern unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data);
+extern unsigned int blk_mq_get_tag(struct blk_mq_alloc_data *data, int wrr);
 extern void blk_mq_put_tag(struct blk_mq_hw_ctx *hctx, struct blk_mq_tags *tags,
 			   struct blk_mq_ctx *ctx, unsigned int tag);
 extern bool blk_mq_has_free_tags(struct blk_mq_tags *tags);
diff --git a/block/blk-mq.c b/block/blk-mq.c
index ce0f5f4ede70..8e8e743c4c0d 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -356,6 +356,12 @@ static struct request *blk_mq_get_request(struct request_queue *q,
 	struct request *rq;
 	unsigned int tag;
 	bool put_ctx_on_error = false;
+	int wrr;
+
+	if (bio && bio->bi_blkg)
+		wrr = atomic_read(&bio->bi_blkg->wrr);
+	else
+		wrr = BLK_WRR_NONE;
 
 	blk_queue_enter_live(q);
 	data->q = q;
@@ -365,7 +371,7 @@ static struct request *blk_mq_get_request(struct request_queue *q,
 	}
 	if (likely(!data->hctx))
 		data->hctx = blk_mq_map_queue(q, data->cmd_flags,
-						data->ctx);
+						data->ctx, wrr);
 	if (data->cmd_flags & REQ_NOWAIT)
 		data->flags |= BLK_MQ_REQ_NOWAIT;
 
@@ -385,7 +391,7 @@ static struct request *blk_mq_get_request(struct request_queue *q,
 		blk_mq_tag_busy(data->hctx);
 	}
 
-	tag = blk_mq_get_tag(data);
+	tag = blk_mq_get_tag(data, wrr);
 	if (tag == BLK_MQ_TAG_FAIL) {
 		if (put_ctx_on_error) {
 			blk_mq_put_ctx(data->ctx);
@@ -1060,7 +1066,7 @@ bool blk_mq_get_driver_tag(struct request *rq)
 		data.flags |= BLK_MQ_REQ_RESERVED;
 
 	shared = blk_mq_tag_busy(data.hctx);
-	rq->tag = blk_mq_get_tag(&data);
+	rq->tag = blk_mq_get_tag(&data, BLK_WRR_NONE);
 	if (rq->tag >= 0) {
 		if (shared) {
 			rq->rq_flags |= RQF_MQ_INFLIGHT;
diff --git a/block/blk-mq.h b/block/blk-mq.h
index 633a5a77ee8b..493a63e9f5ae 100644
--- a/block/blk-mq.h
+++ b/block/blk-mq.h
@@ -101,7 +101,8 @@ static inline struct blk_mq_hw_ctx *blk_mq_map_queue_type(struct request_queue *
  */
 static inline struct blk_mq_hw_ctx *blk_mq_map_queue(struct request_queue *q,
 						     unsigned int flags,
-						     struct blk_mq_ctx *ctx)
+						     struct blk_mq_ctx *ctx,
+						     int wrr)
 {
 	enum hctx_type type = HCTX_TYPE_DEFAULT;
 
@@ -110,7 +111,22 @@ static inline struct blk_mq_hw_ctx *blk_mq_map_queue(struct request_queue *q,
 	 */
 	if (flags & REQ_HIPRI)
 		type = HCTX_TYPE_POLL;
-	else if ((flags & REQ_OP_MASK) == REQ_OP_READ)
+	else if (wrr > BLK_WRR_NONE && wrr < BLK_WRR_COUNT) {
+		switch (wrr) {
+		case BLK_WRR_LOW:
+			type = HCTX_TYPE_WRR_LOW;
+			break;
+		case BLK_WRR_MEDIUM:
+			type = HCTX_TYPE_WRR_MEDIUM;
+			break;
+		case BLK_WRR_HIGH:
+			type = HCTX_TYPE_WRR_HIGH;
+			break;
+		default:
+			type = HCTX_TYPE_WRR_URGENT;
+			break;
+		}
+	} else if ((flags & REQ_OP_MASK) == REQ_OP_READ)
 		type = HCTX_TYPE_READ;
 	
 	return ctx->hctxs[type];
diff --git a/block/blk.h b/block/blk.h
index 7814aa207153..7779157c63ee 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -39,7 +39,7 @@ extern struct ida blk_queue_ida;
 static inline struct blk_flush_queue *
 blk_get_flush_queue(struct request_queue *q, struct blk_mq_ctx *ctx)
 {
-	return blk_mq_map_queue(q, REQ_OP_FLUSH, ctx)->fq;
+	return blk_mq_map_queue(q, REQ_OP_FLUSH, ctx, BLK_WRR_NONE)->fq;
 }
 
 static inline void __blk_get_queue(struct request_queue *q)
diff --git a/include/linux/blk-cgroup.h b/include/linux/blk-cgroup.h
index 76c61318fda5..0a6a9bcea590 100644
--- a/include/linux/blk-cgroup.h
+++ b/include/linux/blk-cgroup.h
@@ -141,6 +141,8 @@ struct blkcg_gq {
 	atomic64_t			delay_start;
 	u64				last_delay;
 	int				last_use;
+	/* weighted round robin */
+	atomic_t			wrr;
 };
 
 typedef struct blkcg_policy_data *(blkcg_pol_alloc_cpd_fn)(gfp_t gfp);
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 15d1aa53d96c..b5445a8f58d8 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -85,11 +85,25 @@ struct blk_mq_queue_map {
 enum hctx_type {
 	HCTX_TYPE_DEFAULT,	/* all I/O not otherwise accounted for */
 	HCTX_TYPE_READ,		/* just for READ I/O */
+	HCTX_TYPE_WRR_LOW,	/* blkcg: weighted round robin - low */
+	HCTX_TYPE_WRR_MEDIUM,	/* blkcg: weighted round robin - medium */
+	HCTX_TYPE_WRR_HIGH,	/* blkcg: weighted round robin - high */
+	HCTX_TYPE_WRR_URGENT,	/* blkcg: weighted round robin - urgent */
 	HCTX_TYPE_POLL,		/* polled I/O of any kind */
 
 	HCTX_MAX_TYPES,
 };
 
+enum blk_wrr {
+	BLK_WRR_NONE,
+	BLK_WRR_LOW,
+	BLK_WRR_MEDIUM,
+	BLK_WRR_HIGH,
+	BLK_WRR_URGENT,
+
+	BLK_WRR_COUNT,
+};
+
 struct blk_mq_tag_set {
 	/*
 	 * map[] holds ctx -> hctx mappings, one map exists for each type
-- 
2.14.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
