Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A8214B3C7
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Jan 2020 12:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6Uu0JhRNXr/I7a+1VtaA9rpjugu3RHS6wn6Ekfi0jY=; b=dhS6qy4A4S4TM8
	W0CgU4Xq3Ig9Ryi8ZoTxuG/cWFCjTpD72j8TAqygSEMUAhe8zaN4OHDFJTi9ej9NoQD/2JPx75/Wc
	reOdRGvj5yNNYMoxOvXZZ2e0/NjkluZm5KPhx1GrXF/ZMXMfzSxeuvGUjFCfh28qGwdzWbqX/xjAG
	SIAIFuxT0VRgSOAzMEL2ajOKlYzT+jUk5/58A9zp7o/O/TCDg4FzL+Y5tvzqKjTDKMD9NPkFr6wO1
	fjx+4cXHcOUvdThZwwmCxX0C7ddCcufuRxOFf2kCowckD2EPaXvAM1zEPKlmVgxa9xKEvS5wuPyY5
	lrMsvSfx+9sPQbp+hn2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwPQu-0002AL-5b; Tue, 28 Jan 2020 11:53:28 +0000
Received: from mx2.didiglobal.com ([111.202.154.82] helo=bsf01.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwPQn-00029u-Fv
 for linux-nvme@lists.infradead.org; Tue, 28 Jan 2020 11:53:23 +0000
X-ASG-Debug-ID: 1580212398-0e40884f7214c6cd0001-VMfPqL
Received: from mail.didiglobal.com (localhost [172.20.36.192]) by
 bsf01.didichuxing.com with ESMTP id Xs4FY41PjgkVZAf7;
 Tue, 28 Jan 2020 19:53:18 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Jan
 2020 19:53:18 +0800
Date: Tue, 28 Jan 2020 19:53:17 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>, <bvanassche@acm.org>,
 <keith.busch@intel.com>, <minwoo.im.dev@gmail.com>, <tglx@linutronix.de>,
 <edmund.nadolski@intel.com>
Subject: [PATCH v4 2/5] nvme: add get_ams for nvme_ctrl_ops
Message-ID: <c52934f8c18130b32749d3096a7951daa48bb35e.1580211965.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v4 2/5] nvme: add get_ams for nvme_ctrl_ops
Mail-Followup-To: axboe@kernel.dk, tj@kernel.org, hch@lst.de,
 bvanassche@acm.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 tglx@linutronix.de, edmund.nadolski@intel.com,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <cover.1580211965.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1580211965.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS01.didichuxing.com (172.20.36.235) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: localhost[172.20.36.192]
X-Barracuda-Start-Time: 1580212398
X-Barracuda-URL: https://bsf01.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 3211
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
 SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.79617
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_035321_935874_D2142CF3 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [111.202.154.82 listed in list.dnswl.org]
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
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The get_ams() will return the AMS(Arbitration Mechanism Selected)
from the driver.

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 drivers/nvme/host/core.c | 9 ++++++++-
 drivers/nvme/host/nvme.h | 1 +
 drivers/nvme/host/pci.c  | 6 ++++++
 include/linux/nvme.h     | 1 +
 4 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6ec03507da68..2275f1756369 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2119,6 +2119,7 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl)
 	 */
 	unsigned dev_page_min, page_shift = 12;
 	int ret;
+	u32 ams = NVME_CC_AMS_RR;
 
 	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
 	if (ret) {
@@ -2134,11 +2135,17 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl)
 		return -ENODEV;
 	}
 
+	/* get Arbitration Mechanism Selected */
+	if (ctrl->ops->get_ams) {
+		ctrl->ops->get_ams(ctrl, &ams);
+		ams &= NVME_CC_AMS_MASK;
+	}
+
 	ctrl->page_size = 1 << page_shift;
 
 	ctrl->ctrl_config = NVME_CC_CSS_NVM;
 	ctrl->ctrl_config |= (page_shift - 12) << NVME_CC_MPS_SHIFT;
-	ctrl->ctrl_config |= NVME_CC_AMS_RR | NVME_CC_SHN_NONE;
+	ctrl->ctrl_config |= ams | NVME_CC_SHN_NONE;
 	ctrl->ctrl_config |= NVME_CC_IOSQES | NVME_CC_IOCQES;
 	ctrl->ctrl_config |= NVME_CC_ENABLE;
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 1024fec7914c..a1df74f2eed3 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -407,6 +407,7 @@ struct nvme_ctrl_ops {
 	void (*submit_async_event)(struct nvme_ctrl *ctrl);
 	void (*delete_ctrl)(struct nvme_ctrl *ctrl);
 	int (*get_address)(struct nvme_ctrl *ctrl, char *buf, int size);
+	void (*get_ams)(struct nvme_ctrl *ctrl, u32 *ams);
 };
 
 #ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 445c2ee2a01d..e460c7310187 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2688,6 +2688,11 @@ static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
 	return snprintf(buf, size, "%s", dev_name(&pdev->dev));
 }
 
+static void nvme_pci_get_ams(struct nvme_ctrl *ctrl, u32 *ams)
+{
+	*ams = NVME_CC_AMS_RR;
+}
+
 static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
 	.name			= "pcie",
 	.module			= THIS_MODULE,
@@ -2699,6 +2704,7 @@ static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
 	.free_ctrl		= nvme_pci_free_ctrl,
 	.submit_async_event	= nvme_pci_submit_async_event,
 	.get_address		= nvme_pci_get_address,
+	.get_ams		= nvme_pci_get_ams,
 };
 
 static int nvme_dev_map(struct nvme_dev *dev)
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 3d5189f46cb1..6fe9121e4d27 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -171,6 +171,7 @@ enum {
 	NVME_CC_AMS_RR		= 0 << NVME_CC_AMS_SHIFT,
 	NVME_CC_AMS_WRRU	= 1 << NVME_CC_AMS_SHIFT,
 	NVME_CC_AMS_VS		= 7 << NVME_CC_AMS_SHIFT,
+	NVME_CC_AMS_MASK	= 7 << NVME_CC_AMS_SHIFT,
 	NVME_CC_SHN_NONE	= 0 << NVME_CC_SHN_SHIFT,
 	NVME_CC_SHN_NORMAL	= 1 << NVME_CC_SHN_SHIFT,
 	NVME_CC_SHN_ABRUPT	= 2 << NVME_CC_SHN_SHIFT,
-- 
2.14.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
