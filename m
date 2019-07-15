Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08456862B
	for <lists+linux-nvme@lfdr.de>; Mon, 15 Jul 2019 11:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PR34ME6N/kJ+QnZOOmDK11D/LJua2QHWw0ZmjCCRjuI=; b=HzT
	6rMXwRh/q4RIk4Fq0bLpE49MEPMWn4jRZle6q9z6fichHttk81NlP9IIqZ6FxavVciVn4/XGM8uu4
	rRxpORpXeMl4CGD1JgBBZizh2FgvlI9JhJknIbBqJIuoQZeg/nhfuope2lY1/NcC1vtokSzPPh/EA
	Gkft0LkSvQyQOwsVaZOVXiXBUi8HKtsDt64J5M56t9vx9TaRVwGaEv9teMxT+BDVYpZHyLg6m5czl
	TIBX08JFna9GXdQ4I+LfXaikCWRRl23UtwR70N4qbU7A8U11fz7TiCurf1175jb/ZLwngTWbyVYg6
	xAEDmC+urt7+cPcFnln1BrYnyCNwXUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmx8x-0007k1-R7; Mon, 15 Jul 2019 09:19:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmx8m-0007jM-Lo
 for linux-nvme@lists.infradead.org; Mon, 15 Jul 2019 09:19:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so7994549plp.2
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 02:19:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=TrEXUU61RpZVZkUvqS8Bi7os+pnmnhbBq4bW/URe3Ik=;
 b=H9tsSOoV0IJ3B7/3mbdWkPosrSIEJljA0s+qIGlLKjZLaV++WBygrmEbGPD+GBUVbM
 JxmCUcitjuWJJPZPHYxHvJt3Qhdz1sFPVRAV3ZMeejQYBRD+i8eoY5ryDS2tlkpPAeOq
 rRxa0t0S3K8qI88CZiH/ytC9NQnPRitDR5CFs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TrEXUU61RpZVZkUvqS8Bi7os+pnmnhbBq4bW/URe3Ik=;
 b=a3wtKeDzErp763Be13b+0Wrc9TBKx3NoYPBtyMxUnL+vU5onTiHOITc9G/G/BNi6A0
 ghCIv84T1HyAaHqDJHAg3a5xI53J528MHLQ9MLEMFOfR5KM2n1qJsektALxCYlbAHMru
 IG5NfyAZXTnk0nKuu5wH0aSV/H+x/o5iYXu8pupT4Y+9JMpuqizDaDinoF7LX/G/e9Fz
 EpULG7Rhdvu78p46iGK4BrQ3VXdSDE6PdQYyco9bIhDupUOHLL5sBmlblBA9vwsgzVda
 Elt3grhmj1VVMMu32ihV77SQp35dapleaXCyrx0SIwWL6mZ8MXahoPgfpE629ik7Dzdq
 +PGg==
X-Gm-Message-State: APjAAAUOkKdKbK80C2ZNwRIChWihbLH9a/RMxgwqAVmvTw1rHeTuhLjn
 0AwLyw0KOXJu3XV7716DnBtnDA==
X-Google-Smtp-Source: APXvYqzKiEWAmmw3qEMdru564l6cHmeKw4UryFWk9aENVnA3eCGAP0ieE4vCFSlDERSw5J+vi+gjdA==
X-Received: by 2002:a17:902:2be8:: with SMTP id
 l95mr24519765plb.231.1563182363163; 
 Mon, 15 Jul 2019 02:19:23 -0700 (PDT)
Received: from dhcp-10-123-153-34.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id 185sm16026344pga.68.2019.07.15.02.19.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 02:19:22 -0700 (PDT)
From: Selvin Xavier <selvin.xavier@broadcom.com>
To: linux-rdma@vger.kernel.org,
	dledford@redhat.com,
	jgg@ziepe.ca
Subject: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Date: Mon, 15 Jul 2019 05:19:13 -0400
Message-Id: <20190715091913.15726-1-selvin.xavier@broadcom.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_021924_724075_1E1D5627 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Selvin Xavier <selvin.xavier@broadcom.com>, stable@vger.kernel.org,
 linux-nvme@lists.infradead.org, Parav Pandit <parav@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

GID entry consist of GID, vlan, netdev and smac.
Extend GID duplicate check companions to consider vlan_id as well
to support IPv6 VLAN based link local addresses. Introduce
a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.

The issue is discussed in the following thread
https://www.spinics.net/lists/linux-rdma/msg81594.html

Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
Cc: <stable@vger.kernel.org> # v5.2+
Reported-by: Yi Zhang <yi.zhang@redhat.com>
Co-developed-by: Parav Pandit <parav@mellanox.com>
Signed-off-by: Parav Pandit <parav@mellanox.com>
Signed-off-by: Selvin Xavier <selvin.xavier@broadcom.com>
---
 drivers/infiniband/hw/bnxt_re/ib_verbs.c  |  7 +++++--
 drivers/infiniband/hw/bnxt_re/qplib_res.c | 13 +++++++++----
 drivers/infiniband/hw/bnxt_re/qplib_res.h |  2 +-
 drivers/infiniband/hw/bnxt_re/qplib_sp.c  | 14 +++++++++-----
 drivers/infiniband/hw/bnxt_re/qplib_sp.h  |  7 ++++++-
 5 files changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/infiniband/hw/bnxt_re/ib_verbs.c b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
index 2c3685faa57a..a4a9f90f2482 100644
--- a/drivers/infiniband/hw/bnxt_re/ib_verbs.c
+++ b/drivers/infiniband/hw/bnxt_re/ib_verbs.c
@@ -308,6 +308,7 @@ int bnxt_re_del_gid(const struct ib_gid_attr *attr, void **context)
 	struct bnxt_re_dev *rdev = to_bnxt_re_dev(attr->device, ibdev);
 	struct bnxt_qplib_sgid_tbl *sgid_tbl = &rdev->qplib_res.sgid_tbl;
 	struct bnxt_qplib_gid *gid_to_del;
+	u16 vlan_id = 0xFFFF;
 
 	/* Delete the entry from the hardware */
 	ctx = *context;
@@ -317,7 +318,8 @@ int bnxt_re_del_gid(const struct ib_gid_attr *attr, void **context)
 	if (sgid_tbl && sgid_tbl->active) {
 		if (ctx->idx >= sgid_tbl->max)
 			return -EINVAL;
-		gid_to_del = &sgid_tbl->tbl[ctx->idx];
+		gid_to_del = &sgid_tbl->tbl[ctx->idx].gid;
+		vlan_id = sgid_tbl->tbl[ctx->idx].vlan_id;
 		/* DEL_GID is called in WQ context(netdevice_event_work_handler)
 		 * or via the ib_unregister_device path. In the former case QP1
 		 * may not be destroyed yet, in which case just return as FW
@@ -335,7 +337,8 @@ int bnxt_re_del_gid(const struct ib_gid_attr *attr, void **context)
 		}
 		ctx->refcnt--;
 		if (!ctx->refcnt) {
-			rc = bnxt_qplib_del_sgid(sgid_tbl, gid_to_del, true);
+			rc = bnxt_qplib_del_sgid(sgid_tbl, gid_to_del,
+						 vlan_id,  true);
 			if (rc) {
 				dev_err(rdev_to_dev(rdev),
 					"Failed to remove GID: %#x", rc);
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.c b/drivers/infiniband/hw/bnxt_re/qplib_res.c
index 37928b1111df..bdbde8e22420 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_res.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_res.c
@@ -488,7 +488,7 @@ static int bnxt_qplib_alloc_sgid_tbl(struct bnxt_qplib_res *res,
 				     struct bnxt_qplib_sgid_tbl *sgid_tbl,
 				     u16 max)
 {
-	sgid_tbl->tbl = kcalloc(max, sizeof(struct bnxt_qplib_gid), GFP_KERNEL);
+	sgid_tbl->tbl = kcalloc(max, sizeof(*sgid_tbl->tbl), GFP_KERNEL);
 	if (!sgid_tbl->tbl)
 		return -ENOMEM;
 
@@ -526,9 +526,10 @@ static void bnxt_qplib_cleanup_sgid_tbl(struct bnxt_qplib_res *res,
 	for (i = 0; i < sgid_tbl->max; i++) {
 		if (memcmp(&sgid_tbl->tbl[i], &bnxt_qplib_gid_zero,
 			   sizeof(bnxt_qplib_gid_zero)))
-			bnxt_qplib_del_sgid(sgid_tbl, &sgid_tbl->tbl[i], true);
+			bnxt_qplib_del_sgid(sgid_tbl, &sgid_tbl->tbl[i].gid,
+					    sgid_tbl->tbl[i].vlan_id, true);
 	}
-	memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid) * sgid_tbl->max);
+	memset(sgid_tbl->tbl, 0, sizeof(*sgid_tbl->tbl) * sgid_tbl->max);
 	memset(sgid_tbl->hw_id, -1, sizeof(u16) * sgid_tbl->max);
 	memset(sgid_tbl->vlan, 0, sizeof(u8) * sgid_tbl->max);
 	sgid_tbl->active = 0;
@@ -537,7 +538,11 @@ static void bnxt_qplib_cleanup_sgid_tbl(struct bnxt_qplib_res *res,
 static void bnxt_qplib_init_sgid_tbl(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 				     struct net_device *netdev)
 {
-	memset(sgid_tbl->tbl, 0, sizeof(struct bnxt_qplib_gid) * sgid_tbl->max);
+	u32 i;
+
+	for (i = 0; i < sgid_tbl->max; i++)
+		sgid_tbl->tbl[i].vlan_id = 0xffff;
+
 	memset(sgid_tbl->hw_id, -1, sizeof(u16) * sgid_tbl->max);
 }
 
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_res.h b/drivers/infiniband/hw/bnxt_re/qplib_res.h
index 30c42c92fac7..fbda11a7ab1a 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_res.h
+++ b/drivers/infiniband/hw/bnxt_re/qplib_res.h
@@ -111,7 +111,7 @@ struct bnxt_qplib_pd_tbl {
 };
 
 struct bnxt_qplib_sgid_tbl {
-	struct bnxt_qplib_gid		*tbl;
+	struct bnxt_qplib_gid_info	*tbl;
 	u16				*hw_id;
 	u16				max;
 	u16				active;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.c b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
index 48793d3512ac..40296b97d21e 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.c
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.c
@@ -213,12 +213,12 @@ int bnxt_qplib_get_sgid(struct bnxt_qplib_res *res,
 			index, sgid_tbl->max);
 		return -EINVAL;
 	}
-	memcpy(gid, &sgid_tbl->tbl[index], sizeof(*gid));
+	memcpy(gid, &sgid_tbl->tbl[index].gid, sizeof(*gid));
 	return 0;
 }
 
 int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
-			struct bnxt_qplib_gid *gid, bool update)
+			struct bnxt_qplib_gid *gid, u16 vlan_id, bool update)
 {
 	struct bnxt_qplib_res *res = to_bnxt_qplib(sgid_tbl,
 						   struct bnxt_qplib_res,
@@ -236,7 +236,8 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 		return -ENOMEM;
 	}
 	for (index = 0; index < sgid_tbl->max; index++) {
-		if (!memcmp(&sgid_tbl->tbl[index], gid, sizeof(*gid)))
+		if (!memcmp(&sgid_tbl->tbl[index].gid, gid, sizeof(*gid)) &&
+		    vlan_id == sgid_tbl->tbl[index].vlan_id)
 			break;
 	}
 	if (index == sgid_tbl->max) {
@@ -262,8 +263,9 @@ int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 		if (rc)
 			return rc;
 	}
-	memcpy(&sgid_tbl->tbl[index], &bnxt_qplib_gid_zero,
+	memcpy(&sgid_tbl->tbl[index].gid, &bnxt_qplib_gid_zero,
 	       sizeof(bnxt_qplib_gid_zero));
+	sgid_tbl->tbl[index].vlan_id = 0xFFFF;
 	sgid_tbl->vlan[index] = 0;
 	sgid_tbl->active--;
 	dev_dbg(&res->pdev->dev,
@@ -296,7 +298,8 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 	}
 	free_idx = sgid_tbl->max;
 	for (i = 0; i < sgid_tbl->max; i++) {
-		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid))) {
+		if (!memcmp(&sgid_tbl->tbl[i], gid, sizeof(*gid)) &&
+		    sgid_tbl->tbl[i].vlan_id == vlan_id) {
 			dev_dbg(&res->pdev->dev,
 				"SGID entry already exist in entry %d!\n", i);
 			*index = i;
@@ -351,6 +354,7 @@ int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 	}
 	/* Add GID to the sgid_tbl */
 	memcpy(&sgid_tbl->tbl[free_idx], gid, sizeof(*gid));
+	sgid_tbl->tbl[free_idx].vlan_id = vlan_id;
 	sgid_tbl->active++;
 	if (vlan_id != 0xFFFF)
 		sgid_tbl->vlan[free_idx] = 1;
diff --git a/drivers/infiniband/hw/bnxt_re/qplib_sp.h b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
index 0ec3b12b0bcd..13d9432d5ce2 100644
--- a/drivers/infiniband/hw/bnxt_re/qplib_sp.h
+++ b/drivers/infiniband/hw/bnxt_re/qplib_sp.h
@@ -84,6 +84,11 @@ struct bnxt_qplib_gid {
 	u8				data[16];
 };
 
+struct bnxt_qplib_gid_info {
+	struct bnxt_qplib_gid gid;
+	u16 vlan_id;
+};
+
 struct bnxt_qplib_ah {
 	struct bnxt_qplib_gid		dgid;
 	struct bnxt_qplib_pd		*pd;
@@ -221,7 +226,7 @@ int bnxt_qplib_get_sgid(struct bnxt_qplib_res *res,
 			struct bnxt_qplib_sgid_tbl *sgid_tbl, int index,
 			struct bnxt_qplib_gid *gid);
 int bnxt_qplib_del_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
-			struct bnxt_qplib_gid *gid, bool update);
+			struct bnxt_qplib_gid *gid, u16 vlan_id, bool update);
 int bnxt_qplib_add_sgid(struct bnxt_qplib_sgid_tbl *sgid_tbl,
 			struct bnxt_qplib_gid *gid, u8 *mac, u16 vlan_id,
 			bool update, u32 *index);
-- 
2.18.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
