Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5233E1C8D40
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 16:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mwhG46uHqsYdt7lWeVD/mcG0bdtkcJLF3XBNZSGlxZ0=; b=d0xG57Cc1mGFfpuvDPiV7rKzu8
	S/+g8iYevgTERB1xTvtNs7kqwQqJI6yiRPHh43nHaPpKZmhlypqMCB0SLqSj43T2BPcdNw9A8qWtk
	CIg+BdG+mzYf3T9UNwuwUeVV9FOxBvwTUu2ObIGdgn1/wt0A5oejk0sIEzVDA58nWXvPknkP3hHGm
	bymPlRp7IKuMPdHuiXbfWZ7mHVL8qau7goe8Ej7OdqfmE2Sl4xQRWeRJfZpYqzIi/qzu+4gb+3WzK
	H0QJki7Lv5aCH8I2agBM0j4TfWr0LJcb1JejEeQbWN7XQa/zuG+rXSCVmiw7bGYUnA9JJvrfhihxd
	maF0XxpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh6s-0006t4-Hf; Thu, 07 May 2020 14:02:46 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh6k-0006oV-AR
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 14:02:42 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 yorayz@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 7 May 2020 17:02:26 +0300
Received: from dev-l-vrt-071.mtl.labs.mlnx (dev-l-vrt-071.mtl.labs.mlnx
 [10.134.71.1])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 047E2QST022772;
 Thu, 7 May 2020 17:02:26 +0300
From: Yoray Zack <yorayz@mellanox.com>
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/3] nvme-fabrics: Add support for padding alignment (pda)
 option on tcp
Date: Thu,  7 May 2020 17:02:02 +0300
Message-Id: <1588860124-40089-2-git-send-email-yorayz@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588860124-40089-1-git-send-email-yorayz@mellanox.com>
References: <1588860124-40089-1-git-send-email-yorayz@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070238_951652_3AD1853C 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yoray Zack <yorayz@mellanox.com>, Boris Pismenny <borisp@mellanox.com>,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Consume the pdu alignment from the nvme connect command according
to user-space directives.

Signed-off-by: Yoray Zack <yorayz@mellanox.com>
---
 drivers/nvme/host/fabrics.c | 14 ++++++++++++++
 drivers/nvme/host/fabrics.h |  4 ++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 2a6c819..4468b57 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -612,6 +612,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
 	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
 	{ NVMF_OPT_TOS,			"tos=%d"		},
+	{ NVMF_OPT_PDA,                 "pda_size=%d"           },
 	{ NVMF_OPT_ERR,			NULL			}
 };
 
@@ -634,6 +635,7 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 	opts->hdr_digest = false;
 	opts->data_digest = false;
 	opts->tos = -1; /* < 0 == use transport default */
+	opts->pda = 0; /* default no padding */
 
 	options = o = kstrdup(buf, GFP_KERNEL);
 	if (!options)
@@ -851,6 +853,18 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 			}
 			opts->nr_poll_queues = token;
 			break;
+		case NVMF_OPT_PDA:
+			if (match_int(args, &token)) {
+				ret = -EINVAL;
+				goto out;
+			}
+			if (token < 0 || token > NVMF_MAX_PDA_SIZE) {
+				pr_err("Invalid padding value ,should be 1-31 %d\n", token);
+				ret = -EINVAL;
+				goto out;
+			}
+			opts->pda = token;
+			break;
 		case NVMF_OPT_TOS:
 			if (match_int(args, &token)) {
 				ret = -EINVAL;
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index a0ec40a..f1e562c 100644
--- a/drivers/nvme/host/fabrics.h
+++ b/drivers/nvme/host/fabrics.h
@@ -9,6 +9,7 @@
 #include <linux/in.h>
 #include <linux/inet.h>
 
+#define NVMF_MAX_PDA_SIZE	31
 #define NVMF_MIN_QUEUE_SIZE	16
 #define NVMF_MAX_QUEUE_SIZE	1024
 #define NVMF_DEF_QUEUE_SIZE	128
@@ -56,6 +57,7 @@ enum {
 	NVMF_OPT_NR_WRITE_QUEUES = 1 << 17,
 	NVMF_OPT_NR_POLL_QUEUES = 1 << 18,
 	NVMF_OPT_TOS		= 1 << 19,
+	NVMF_OPT_PDA            = 1 << 20,
 };
 
 /**
@@ -89,6 +91,7 @@ enum {
  * @nr_write_queues: number of queues for write I/O
  * @nr_poll_queues: number of queues for polling I/O
  * @tos: type of service
+ * @pda: host pdu alignment (TCP)
  */
 struct nvmf_ctrl_options {
 	unsigned		mask;
@@ -111,6 +114,7 @@ struct nvmf_ctrl_options {
 	unsigned int		nr_write_queues;
 	unsigned int		nr_poll_queues;
 	int			tos;
+	int			pda;
 };
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
