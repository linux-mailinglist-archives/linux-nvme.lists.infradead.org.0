Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AE99094A
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 22:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YXxIxBioRKiAt1IDbFtu0wLxCmMpX0YnWpbWPDXTui0=; b=h2X
	PwuxDaWg4N71ZqaninSAwZA48E7iHuAL5DxEEuhOYf32r1kAWdEK1sosr2w1mm9EK5mLYI6ANHWUt
	xUmDy8enJrlbLGzsge66PUV03sGQZ1m9lYYmp+j8uLxc+cD8/mVSTC/CMGSDKcbGgDf8S+FY395AT
	uGpZ5cFuD35/VzGfKFF/ca30mS85Z8255yoWopXqe39clnz3LPy7VtBfxHGpUKBrP9rLz80uXyfH0
	njL+KaraBGutZx+o4QwqUzhc24oLd67aip2sQ1pNf4w2+2gmHQVn4ObuZSUGBiqV6gN7J9z89DK4D
	7Rbxn0XMqKEuaY42/W6GBVv+hvu+p9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyieH-0002cq-A4; Fri, 16 Aug 2019 20:16:33 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyie9-0002cW-NK
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 20:16:27 +0000
Received: from pps.filterd (m0170392.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7GKF8OD011675
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 16:16:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=byIyIAcsx9RfQFbu3qFPuEicP5xSR00LoS2Y9uj8ii0=;
 b=pC81BiAK5oniR6YMJj0GIYZ3K3PP/V3c1+qFgNfpedzAnQGAeFY4zmdI/8iAhJhFAk4Y
 YpvaCSQxFNJ+oq1p15KqiP2lrO5mEXmiARTs8JkFF1gdvzHJmBhlvXpkMDC8XKNuZpR0
 UKnI/z5VBsIGL6wQwZNcW8TwMLr4cg7ITmXHrmf9EnUG6PGyNPjlQ6ZOqMcR47kExMES
 raqV+caYfSXoF4QGKByvFHiSlEyc+J6ujPT86lbBeGZSrdw4Mam5H7LxmTbzbA1RS504
 x+dOKpIqgcYZ5KBwxtDpe22DSSiUrAAs7SVJ9PDHFwPQyB8VKlth26UEr6BVWHcVrRFG jA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2udcbm58bk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 16:16:23 -0400
Received: from pps.filterd (m0144103.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7GKD9V7004802
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 16:16:22 -0400
Received: from ausxippc110.us.dell.com (AUSXIPPC110.us.dell.com
 [143.166.85.200])
 by mx0b-00154901.pphosted.com with ESMTP id 2ue37b04eh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 16:16:22 -0400
X-LoopCount0: from 10.173.37.27
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,349,1549951200"; d="scan'208";a="844705379"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH v3] nvme: Add quirk for LiteON CL1 devices running FW 22301111
Date: Fri, 16 Aug 2019 15:16:19 -0500
Message-Id: <1565986579-10466-1-git-send-email-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.7.4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-16_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=971 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908160206
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908160207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_131625_815393_CFF51E02 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/nvme/host/core.c | 10 ++++++++++
 drivers/nvme/host/nvme.h |  5 +++++
 drivers/nvme/host/pci.c  |  3 ++-
 3 files changed, 17 insertions(+), 1 deletion(-)

This patch is the spiritual successor to the previously submitted
patch "[PATCH] drivers/nvme: save/restore HMB on suspend/resume".

After discussion with LiteON, they agreed to resolve the issue
in their next firmware release.

This patch is dependent upon commit
4eaefe8c621c6195c91044396ed8060c179f7aae
which is currently in Linus' tree for the next 5.3-rcX but not
yet in nvme-5.4.

changes from v2:
 * Fix whitespace to match other nearby code

changes from v1:
 * Group all 3 possible CL1 strings together
 * Remove the resume code because it's
   already implied by ndev->last_ps = U32_MAX

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5..a1c8c19 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2251,6 +2251,16 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x1179,
 		.mn = "THNSF5256GPUK TOSHIBA",
 		.quirks = NVME_QUIRK_NO_APST,
+	},
+	{
+		/*
+		 * This LiteON CL1-3D*-Q11 firmware version has a race
+		 * condition associated with actions related to suspend to idle
+		 * LiteON has resolved the problem in future firmware
+		 */
+		.vid = 0x14a4,
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
index 108e109..b366f54 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2875,7 +2875,8 @@ static int nvme_suspend(struct device *dev)
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
