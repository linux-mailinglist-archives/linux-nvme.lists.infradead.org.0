Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A858D79D
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 18:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zGqgsS+n4BqUmcKmhI1U7IIROdikZovLaXt++6IA5+0=; b=dvu
	YyTcDnuSn/8RXKGga7gT56ChAnQXECmqoqOKGDV11sbaFkpCXsEVpI+1TPMF0C/9jvq58IqHuzlfe
	jB/zOCkDAgPzZwQnA5t8Qz2oQLEb8/2MEZ9pSj+hp6G0+uGrVRfHwGRhZfrF9mPSnSy4Bi5l6QNX7
	yV9u7eG7l9gWoVxXTm/5OGq6PQm/9GLqH0bburBafdW0nMw2aNm0YLL9qA0/LOaio7j56fqaiUfVP
	t1b4IvGCRn/nm2/wPDYexPeR5Rd/WBOeEMoAEYXPlL+ttRBPp1QUKDH325daGNXipKYn3lKUnwoBU
	geAOo3/rFQs+DkoHuNtL57GVXQwa9+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvmu-0001rY-8X; Wed, 14 Aug 2019 16:06:12 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvmn-0001qk-3q
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 16:06:08 +0000
Received: from pps.filterd (m0170393.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EG0P9N020892
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:06:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=H42DR47df8ElRFvzxdqBTjD/Mndv2GKa5zPkZ4jEeOE=;
 b=Kg7xatecRmVWoyvgv6t64Wtg+XTPXrTY7Hh4e2kuYLhbqxwnBfd9Xb82mGRe8vynDrFj
 Mq6kaqn+lGGTvTCslcHLWQL1V4WI+cx7YuLj0H+hCx3rLjvFc6sAkoyv5fYRt5yWjAz3
 +/vlGV/X9ZNc3/0G0jtQL/g0CtC+VU++zoo5HJZeqrJ4wxgkkNrcZ/OeAi+2Fy3EhluJ
 vxnAA8v53/FP/Rqcx3eEBUjmpVDdYDRa59KgbLI9Zzs5QwEL1cwgUeFhW/XjOvWz68kN
 caDI42dA7Y6b9SIy9cQEO61UBsrgbeaPykkPOeQhCicJgcAG7goQO28goAGZUxi/zIQP 4g== 
Received: from mx0b-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2uc19cn610-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:06:02 -0400
Received: from pps.filterd (m0090350.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EFvmmJ013564
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:06:02 -0400
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
 [143.166.148.223])
 by mx0b-00154901.pphosted.com with ESMTP id 2ucjgrumbr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 12:06:01 -0400
X-LoopCount0: from 10.173.37.27
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="382587204"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW 22301111
Date: Wed, 14 Aug 2019 11:05:49 -0500
Message-Id: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.7.4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=921 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908140155
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908140155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_090605_210895_BE870BD4 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <mario.limonciello@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

One of the components in LiteON CL1 device has limitations that
can be encountered based upon boundary race conditions using the
nvme bus specific suspend to idle flow.

When this situation occurs the drive doesn't resume properly from
suspend-to-idle.

LiteON has confirmed this problem and fixed in the next firmware
version.  As this firmware is already in the field, avoid running
nvme specific suspend to idle flow.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Link: http://lists.infradead.org/pipermail/linux-nvme/2019-July/thread.html
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
Signed-off-by: Charles Hyde <charles.hyde@dellteam.com>
---
 drivers/nvme/host/core.c | 23 +++++++++++++++++++++++
 drivers/nvme/host/nvme.h |  5 +++++
 drivers/nvme/host/pci.c  |  4 +++-
 3 files changed, 31 insertions(+), 1 deletion(-)

This patch is the spiritual successor to the previously submitted
patch "[PATCH] drivers/nvme: save/restore HMB on suspend/resume".

After discussion with LiteON, they agreed to resolve the issue
in their next firwmare release.

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5..47c7754 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2251,6 +2251,29 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x1179,
 		.mn = "THNSF5256GPUK TOSHIBA",
 		.quirks = NVME_QUIRK_NO_APST,
+	},
+	/*
+	 * This LiteON CL1 firmware version has a race condition associated with
+	 * actions related to suspend to idle.  LiteON has resolved the problem
+	 * in future firmware.
+	 */
+	{
+		.vid = 0x14a4,
+		.mn = "CL1-3D128-Q11 NVMe LITEON 128GB",
+		.fr = "22301111",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
+	},
+	{
+		.vid = 0x14a4,
+		.mn = "CL1-3D256-Q11 NVMe LITEON 256GB",
+		.fr = "22301111",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
+	},
+	{
+		.vid = 0x14a4,
+		.mn = "CL1-3D512-Q11 NVMe LITEON 512GB",
+		.fr = "22301111",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
 	}
 };
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 26b563f..fe1ca0d 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -92,6 +92,11 @@ enum nvme_quirks {
 	 * Broken Write Zeroes.
 	 */
 	NVME_QUIRK_DISABLE_WRITE_ZEROES		= (1 << 9),
+
+	/*
+	 * Force simple suspend/resume path.
+	 */
+	NVME_QUIRK_SIMPLE_SUSPEND		= (1 << 10),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 108e109..55effb5 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2847,6 +2847,7 @@ static int nvme_resume(struct device *dev)
 	struct nvme_ctrl *ctrl = &ndev->ctrl;
 
 	if (ndev->last_ps == U32_MAX ||
+	    (ndev->ctrl.quirks & NVME_QUIRK_SIMPLE_SUSPEND) ||
 	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
 		nvme_reset_ctrl(ctrl);
 	return 0;
@@ -2875,7 +2876,8 @@ static int nvme_suspend(struct device *dev)
 	 * state (which may not be possible if the link is up).
 	 */
 	if (pm_suspend_via_firmware() || !ctrl->npss ||
-	    !pcie_aspm_enabled(pdev)) {
+	    !pcie_aspm_enabled(pdev) ||
+	    (ndev->ctrl.quirks & NVME_QUIRK_SIMPLE_SUSPEND)) {
 		nvme_dev_disable(ndev, true);
 		return 0;
 	}
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
