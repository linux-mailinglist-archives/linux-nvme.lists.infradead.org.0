Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AE88B9DB
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 15:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6PA6fzDmS34KfnB7538Am2j/fpfovjyz0MoyboMF7Pg=; b=lK8EAbTv/iPJhfAdKmcfsAVRJR
	AEDHI2/3YGe7mQB8GNH4sY1UfymBdn3S8gVIP2lvfqSI54DVkJWGuvntQMrPR0d4H41f6N5xij14v
	UmiJgWKYo2ZDtSQslzBeqQQ2hh4cQEyc07AZ6JmIslN14qdeT3W+neR2YvpsXB2M+rNy379MFBUPY
	zpXgttiqSV4paqot0r0LHwoVxDv3dKmgaQODEUik+Ej/hyS1fOVzWDxuTf8bDxmENg5gmsCtIdMbL
	jnwpBm0seOR4filPY91O11LiRPl/Nhj05igNPtULyXkKFRC2NBuwt65fChvkS5PhCZzlEDoHi5SLt
	HPGABQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWgN-0004du-Eu; Tue, 13 Aug 2019 13:17:47 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWgG-0004Xl-4i
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 13:17:41 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Aug 2019 16:17:33 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7DDHXgv029568;
 Tue, 13 Aug 2019 16:17:33 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 1/5] nvme-fabrics: Add type of service (TOS) configuration
Date: Tue, 13 Aug 2019 16:17:27 +0300
Message-Id: <1565702251-17198-3-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
References: <1565702251-17198-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_061740_602990_5214E200 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

TOS is user-defined and needs to be configured via nvme-cli.
It must be set before initiating any traffic and once set the TOS
cannot be changed.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/fabrics.c | 16 +++++++++++++++-
 drivers/nvme/host/fabrics.h |  3 +++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 1994d5b..9e9ee07 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -611,6 +611,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 	{ NVMF_OPT_DATA_DIGEST,		"data_digest"		},
 	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
 	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
+	{ NVMF_OPT_TOS,			"tos=%d"		},
 	{ NVMF_OPT_ERR,			NULL			}
 };
 
@@ -632,6 +633,7 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 	opts->duplicate_connect = false;
 	opts->hdr_digest = false;
 	opts->data_digest = false;
+	opts->tos = -1; /* < 0 == use transport default */
 
 	options = o = kstrdup(buf, GFP_KERNEL);
 	if (!options)
@@ -856,6 +858,18 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 			}
 			opts->nr_poll_queues = token;
 			break;
+		case NVMF_OPT_TOS:
+			if (match_int(args, &token)) {
+				ret = -EINVAL;
+				goto out;
+			}
+			if (token < 0 || token > 255) {
+				pr_err("Invalid type of service %d\n", token);
+				ret = -EINVAL;
+				goto out;
+			}
+			opts->tos = token;
+			break;
 		default:
 			pr_warn("unknown parameter or missing value '%s' in ctrl creation request\n",
 				p);
@@ -975,7 +989,7 @@ void nvmf_free_options(struct nvmf_ctrl_options *opts)
 #define NVMF_ALLOWED_OPTS	(NVMF_OPT_QUEUE_SIZE | NVMF_OPT_NR_IO_QUEUES | \
 				 NVMF_OPT_KATO | NVMF_OPT_HOSTNQN | \
 				 NVMF_OPT_HOST_ID | NVMF_OPT_DUP_CONNECT |\
-				 NVMF_OPT_DISABLE_SQFLOW)
+				 NVMF_OPT_DISABLE_SQFLOW | NVMF_OPT_TOS)
 
 static struct nvme_ctrl *
 nvmf_create_ctrl(struct device *dev, const char *buf)
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index 3044d8b..93f08d7 100644
--- a/drivers/nvme/host/fabrics.h
+++ b/drivers/nvme/host/fabrics.h
@@ -55,6 +55,7 @@ enum {
 	NVMF_OPT_DATA_DIGEST	= 1 << 16,
 	NVMF_OPT_NR_WRITE_QUEUES = 1 << 17,
 	NVMF_OPT_NR_POLL_QUEUES = 1 << 18,
+	NVMF_OPT_TOS		= 1 << 19,
 };
 
 /**
@@ -87,6 +88,7 @@ enum {
  * @data_digest: generate/verify data digest (TCP)
  * @nr_write_queues: number of queues for write I/O
  * @nr_poll_queues: number of queues for polling I/O
+ * @tos: type of service
  */
 struct nvmf_ctrl_options {
 	unsigned		mask;
@@ -108,6 +110,7 @@ struct nvmf_ctrl_options {
 	bool			data_digest;
 	unsigned int		nr_write_queues;
 	unsigned int		nr_poll_queues;
+	int			tos;
 };
 
 /*
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
