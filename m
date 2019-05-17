Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C316A211FA
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 04:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wbwzb4yEa2wV0fNVQWyHuEloFhXQt/PyinGDJN9aiDY=; b=eUgZWJCeoaI7i+
	wUxmcivU2uZhFy8lTIH1Y5FhK5y9Wv/zc4N9Nl5v5fDF4uC3Q5c0XiPl8vB8ZWX7YHH7mtJzN/oIe
	b7Twb3+qignwcpPo+WHUx+z+brZST/iIBWqbvKr5lgvs8nb+79pUMzt3yZ9sbvYOMlumhVYm2wKJb
	I73cPtGpEnbnN4oilNiTBRyylNI6IJsERH3e+rdkFLEdmkHCewx2G2o7VIs/16Xt8udC4/By6YsVF
	N7BPTepz1QpHcNyAeSFtclJbHDrauhPfFq4T69ZHSqOxH9toEUVHsqn1o41aNUB4DynbBSmbv9cQN
	e4XM9G0h0sq0KZQYYAWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRSYe-00067h-3q; Fri, 17 May 2019 02:25:16 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRSYY-00067J-Do
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 02:25:11 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4B30B7953B1B153A8576;
 Fri, 17 May 2019 10:25:05 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Fri, 17 May 2019
 10:25:00 +0800
From: Yufen Yu <yuyufen@huawei.com>
To: <hch@lst.de>, <sagi@grimberg.me>, <keith.busch@intel.com>,
 <linux-nvme@lists.infradead.org>
Subject: [PATCH v2] nvme: fix memory leak for power latency tolerance req
Date: Fri, 17 May 2019 10:30:07 +0800
Message-ID: <20190517023007.140656-1-yuyufen@huawei.com>
X-Mailer: git-send-email 2.16.2.dirty
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_192510_693607_D2FCD712 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: luto@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_init_ctrl() initialize latency tolerance controls and
kzalloc structdev_pm_qos_request 'req' in nvme_init_ctrl().
The only way to free the 'req' is nvme_init_identify(), when
apst is disable and prev_apst is enable.

But, prev_apst is disable when device probe, and we will
miss to free it when the device does't support APST.

To fix the problem, we need to hide latency tolerance and
free 'req' in nvme_uninit_ctrl().

Fixes: c5552fde102fc("nvme: Enable autonomous power state transitions")
Suggested-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Yufen Yu <yuyufen@huawei.com>
---
 drivers/nvme/host/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 15d114787d6a..e13670dcf590 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3687,6 +3687,7 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
 void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 {
+	dev_pm_qos_hide_latency_tolerance(ctrl->device);
 	cdev_device_del(&ctrl->cdev, ctrl->device);
 }
 EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
-- 
2.16.2.dirty


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
