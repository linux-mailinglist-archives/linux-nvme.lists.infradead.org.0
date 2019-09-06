Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B1AABF33
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 20:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CVYwe+mSNYFnbAJMTsKwMlHDh4Ea8Ikm9Wqd/m5Mgdo=; b=smk6iebL/JH322xyD1EijqPKQE
	OsK2eWZcShqVRUwplfd2f3oUpZy8yeQ8vxlTee8R/rX6J44pVCwmY4akyQxtkBLSTxbeKuc1fuxF0
	MKLLIEL02+2hyQfOBuNz9ZH2fHU2WQgLHNo1xakkKbs6cxhzEl19kHn61GNhCSAAKOZcn09pbgEZG
	T+qWrtI7hE+VeYj6p2haMGc6sW9w2KQE+YX9n328YzWIcm9KG3LVHNGm3Ld6YdxO/LgQsFgMF2adL
	BLjlcVH+mWPigV+k4F/kYcY8LIYsTteWNxOvigFXTZ9hTPUGYjgpXE6bgNUfwDajjbgCuSz0IqTvx
	//bFCFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Ija-00025x-Ty; Fri, 06 Sep 2019 18:13:22 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Iiq-0001O2-Le; Fri, 06 Sep 2019 18:12:36 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v5 4/4] nvme: send discovery log page change events to
 userspace
Date: Fri,  6 Sep 2019 11:12:34 -0700
Message-Id: <20190906181235.20365-5-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906181235.20365-1-sagi@grimberg.me>
References: <20190906181235.20365-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the controller supports discovery log page change events,
we want to enable it. When we see a discovery log change event
we will send it up to userspace and expect it to handle it.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a00b4314f218..12bed1c77c8d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1185,7 +1185,8 @@ int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 EXPORT_SYMBOL_GPL(nvme_set_queue_count);
 
 #define NVME_AEN_SUPPORTED \
-	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | NVME_AEN_CFG_ANA_CHANGE)
+	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | \
+	 NVME_AEN_CFG_ANA_CHANGE | NVME_AEN_CFG_DISC_CHANGE)
 
 static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 {
@@ -3772,6 +3773,9 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 		queue_work(nvme_wq, &ctrl->ana_work);
 		break;
 #endif
+	case NVME_AER_NOTICE_DISC_CHANGED:
+		ctrl->aen_result = result;
+		break;
 	default:
 		dev_warn(ctrl->device, "async event result %08x\n", result);
 	}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
