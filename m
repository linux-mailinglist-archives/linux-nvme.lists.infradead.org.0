Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190316AC04
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 17:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/89XQDB3xGPaq4EwQm6+0QqESihYqe+wLMvU/iHNq7Y=; b=PAPBW1Ttc0QK8d
	e639hDa5TsuTt9eC1yfm41N6nKpXbWUiPWHGsl854/GZhnQJ+p3SLIsqmFREcR58wlnj7ahPtd260
	J+DrNXzlXhS9q4gWXDPEaWYsoaasIBA4drqgFpwM86ZrtR6ucaVcKjrczjYg9mlOiDBKJfmwUSVBV
	QVofBnxyd+T92vTEaiclkKAZeteQJrpHrvqavzTJMMgoGNdjAEEc5xa4QIfilwB+XcuQPk45ixh3c
	GYmt1ogX8Vo/Wn/gYqt1vqfQj8pXmHXQ9s+XB0wySTJeM9/54qWOEa2AlkH9o7zSUEn4BSBd001B+
	uZQo/wslgQuqTxiu+hDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Gt4-0002Lp-T8; Mon, 24 Feb 2020 16:47:18 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gri-0001EB-Ua
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 16:45:59 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Feb 2020 18:45:45 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 01OGji9R013647;
 Mon, 24 Feb 2020 18:45:45 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me,
 linux-rdma@vger.kernel.org, kbusch@kernel.org, hch@lst.de,
 martin.petersen@oracle.com
Subject: [PATCH 05/19] nvme-fabrics: Allow user enabling metadata/T10-PI
 support
Date: Mon, 24 Feb 2020 18:45:30 +0200
Message-Id: <20200224164544.219438-7-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200224164544.219438-1-maxg@mellanox.com>
References: <20200224164544.219438-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_084555_390009_EF7F40C3 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, maxg@mellanox.com
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
index ab25128..c7933a8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1869,7 +1869,8 @@ static int __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
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
index 74b8818..c09230e 100644
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
