Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DABFF80A36
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 11:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=awqvJqN0B2b1f85F7Plmv2YGcLk7C6JYE8ldA4jkbI0=; b=kiO
	LzWhE+12yaOGrYyi1vwMVr0aRHaXzu5hDxdmxO0zxGKrYw6eYECT4dhGz7LL+E3vR4dUgBcdcmUdz
	ul6gdCrCdlJ+uCK/BKQZzf00DF4XQMZlGLxSb4AoS8xEJbp5Cs0d/c4aZX9dQ8EvReTUnORyTf2Ss
	YdoXu22WzniZZdj5eDv70ktPOpqKQajK6bIEDTmKF/NMpk91p3TavQHwR0v7qyeMqVRBFxvxm1Z3m
	Hc60ETEkqWPsCPa5tsMzXwRhanPCKk9YqEcE5Z7pl6A1axFrFxwFWmWGLdmPO7XO680RdHDkta871
	hAfM3l2BXioWmoQJg38d7ThTONLRR3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huDFF-00034y-Ls; Sun, 04 Aug 2019 09:56:05 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1huDEz-000341-SA
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 09:55:51 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 Aug 2019 12:55:39 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x749tdhl028480;
 Sun, 4 Aug 2019 12:55:39 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 1/2] nvme-fabrics: Add type of service (TOS) configuration
Date: Sun,  4 Aug 2019 12:55:28 +0300
Message-Id: <1564912530-15404-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_025550_310646_17641BAD 
X-CRM114-Status: GOOD (  10.91  )
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
---
 drivers/nvme/host/fabrics.c | 16 +++++++++++++++-
 drivers/nvme/host/fabrics.h |  3 +++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 5838f7cd53ac..dbce7ffe6c2c 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -611,6 +611,7 @@ static const match_table_t opt_tokens = {
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
@@ -975,7 +989,7 @@ EXPORT_SYMBOL_GPL(nvmf_free_options);
 #define NVMF_ALLOWED_OPTS	(NVMF_OPT_QUEUE_SIZE | NVMF_OPT_NR_IO_QUEUES | \
 				 NVMF_OPT_KATO | NVMF_OPT_HOSTNQN | \
 				 NVMF_OPT_HOST_ID | NVMF_OPT_DUP_CONNECT |\
-				 NVMF_OPT_DISABLE_SQFLOW)
+				 NVMF_OPT_DISABLE_SQFLOW | NVMF_OPT_TOS)
 
 static struct nvme_ctrl *
 nvmf_create_ctrl(struct device *dev, const char *buf)
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index 3044d8b99a24..93f08d77c896 100644
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
2.16.3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
