Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0E2195C69
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 18:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6428Ck2GsJNsZNHxZTVwA6EfKYTs0JP6jf8wQ3eaXeg=; b=DgM/xGePYMn9Xk
	7OBm5+5Tbuz5YfiwwHC0XAlkmQsJRRaUXxPaO2N3WYFpVJTrQiD0BTLtDxbcWJL4juKmoNNSmzt4Y
	eU3jbSqrGyZODy9nxgnmxBEXMNBwX72VQgsIwn4t11V3BBop3U+a0OPKoR3o6Cx0yRJ940cg62KsG
	uQDrEPVuPqctxu4J7EQxbiRJbRss8fchB+zW7mI7qZIZXRtN74wMqj/F94OUKtCcfaAvEXLkqa2RO
	w9gsQWwN2hhYhlLlzo5C7epSGz409s6bhQi6ZN1BySZ784n29Qnq/qfZgtVO0qCeSe5G6332s1S8S
	nemg9b31XQIaarvZ7+tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsdn-0002I0-B0; Fri, 27 Mar 2020 17:19:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsaV-00086T-Mj
 for linux-nvme@bombadil.infradead.org; Fri, 27 Mar 2020 17:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=dgRXieEy93Rq4Ca9cHkiXnjbARHgf9KltI6FeYL3SRM=; b=lDLLkxMbPfeV/ciKoCB3tguXP+
 VYYVbhSGFFqfRyXBfkmklopii2zFcelDTc8tQT0Rvi2C9X9Ui0nGZ+3+5ZWEOl6CImT0057vljp4w
 6pfpXWE+J7O0skhhxCJ/2cVC5Csm+W4lEiC0c9pYIN2/PAhrsPztRBN8pyxbXllXcLTYTHQZVY5FP
 kQjgBfvgS556fmqhTpmWZALORqoyzhw7yzrSHYlPqcGy4631rna9q+7vpF4xAk9xqq34TIHux9UZ7
 dGRP7SGUAhBQ5pDS3koVuegJuJAfFKXD1c+75C3us8LJ/8KvdRAdu4tJwVH7QE9h2dK9ounzPs2/A
 k8SKffww==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsaO-0005Dl-4k
 for linux-nvme@lists.infradead.org; Fri, 27 Mar 2020 17:16:06 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 27 Mar 2020 20:15:46 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02RHFjj8004869;
 Fri, 27 Mar 2020 20:15:46 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com, jsmart2021@gmail.com,
 linux-rdma@vger.kernel.org
Subject: [PATCH 05/17] nvme-fabrics: Allow user enabling metadata/T10-PI
 support
Date: Fri, 27 Mar 2020 20:15:33 +0300
Message-Id: <20200327171545.98970-7-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200327171545.98970-1-maxg@mellanox.com>
References: <20200327171545.98970-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_171600_765103_A11CC470 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, jgg@mellanox.com, oren@mellanox.com,
 maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

Preparation for adding metadata (T10-PI) over fabric support. This will
allow end-to-end protection information passthrough and validation for
NVMe over Fabric.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/core.c    |  3 ++-
 drivers/nvme/host/fabrics.c | 11 +++++++++++
 drivers/nvme/host/fabrics.h |  3 +++
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2feb7fb..0b4d847 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1900,7 +1900,8 @@ static int __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 		 * controller.
 		 */
 		if (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED) {
-			if (ns->ctrl->ops->flags & NVME_F_FABRICS ||
+			if ((ns->ctrl->ops->flags & NVME_F_FABRICS &&
+			     ns->ctrl->opts->pi_enable) ||
 			    !(ns->features & NVME_NS_EXT_LBAS))
 				ns->features |= NVME_NS_MD_HOST_SUPPORTED;
 		}
diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 2a6c819..38f4213 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -612,6 +612,7 @@ bool __nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
 	{ NVMF_OPT_NR_WRITE_QUEUES,	"nr_write_queues=%d"	},
 	{ NVMF_OPT_NR_POLL_QUEUES,	"nr_poll_queues=%d"	},
 	{ NVMF_OPT_TOS,			"tos=%d"		},
+	{ NVMF_OPT_PI_ENABLE,		"pi_enable"		},
 	{ NVMF_OPT_ERR,			NULL			}
 };
 
@@ -634,6 +635,7 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 	opts->hdr_digest = false;
 	opts->data_digest = false;
 	opts->tos = -1; /* < 0 == use transport default */
+	opts->pi_enable = false;
 
 	options = o = kstrdup(buf, GFP_KERNEL);
 	if (!options)
@@ -867,6 +869,15 @@ static int nvmf_parse_options(struct nvmf_ctrl_options *opts,
 			}
 			opts->tos = token;
 			break;
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+		case NVMF_OPT_PI_ENABLE:
+			if (opts->discovery_nqn) {
+				pr_debug("Ignoring pi_enable value for discovery controller\n");
+				break;
+			}
+			opts->pi_enable = true;
+			break;
+#endif
 		default:
 			pr_warn("unknown parameter or missing value '%s' in ctrl creation request\n",
 				p);
diff --git a/drivers/nvme/host/fabrics.h b/drivers/nvme/host/fabrics.h
index a0ec40a..773f748 100644
--- a/drivers/nvme/host/fabrics.h
+++ b/drivers/nvme/host/fabrics.h
@@ -56,6 +56,7 @@ enum {
 	NVMF_OPT_NR_WRITE_QUEUES = 1 << 17,
 	NVMF_OPT_NR_POLL_QUEUES = 1 << 18,
 	NVMF_OPT_TOS		= 1 << 19,
+	NVMF_OPT_PI_ENABLE	= 1 << 20,
 };
 
 /**
@@ -89,6 +90,7 @@ enum {
  * @nr_write_queues: number of queues for write I/O
  * @nr_poll_queues: number of queues for polling I/O
  * @tos: type of service
+ * @pi_enable: Enable metadata (T10-PI) support
  */
 struct nvmf_ctrl_options {
 	unsigned		mask;
@@ -111,6 +113,7 @@ struct nvmf_ctrl_options {
 	unsigned int		nr_write_queues;
 	unsigned int		nr_poll_queues;
 	int			tos;
+	bool			pi_enable;
 };
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
