Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF57B409
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 22:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3jJ4aiNWySMAc6aXCI420Sj2XfyIVnRrDb9SCwjyTM8=; b=g/Q9nUAR0phgbF
	PN6l8/CBq+QFfy7tcJzg/m4WSIrEg9tRZKYDRsVNFL0v913+HgtO0BbxVh8Ks1bXF+Cbki5skZY2C
	QOq0gY5B8mUGjiqXtmqOyh6cEVrFanNqQy5hwHUre/kudjlBFLawVgIb1EDT4VX1Vhs+H2piSy4lH
	1U938fqPRjq8GQ9hHpwDla/pNhx6yxKJYnBH1fT9EZlHyc2qjQUhJZ3c5wBvQOThWBKHblcmX4GXm
	75UXTeMtWY8cN5EESdbHpVtFadOhBupUxFqxG54ae5074+GQN1YarRqZ9LLVDogh2c/kV+pSz+fOP
	9VIXOXvdvP2VtQm9Mg1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYR9-0000uM-Ea; Tue, 30 Jul 2019 20:09:31 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYR1-0000nM-Ka
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 20:09:25 +0000
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UK4gEf019406
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:09:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dellteam.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=smtpout1; bh=oLOYVYGSHNuicb0JyMppZmIdtioAmfp5A+FQTnY3n90=;
 b=F/6xXtzexYrybKD168HRIk4yRlaNzpsDT4bUSAZsyf1DTaXfRJrnbwwRWGPYZwJr8zdC
 5zsJjcdGouNI4BlW9HWbYoFkxXFVBv2jKWfA5plQg+/7+7y4AyAxNerNa4D/HGWV+pOk
 i56E0OsEwm1IPG+FA9QiphaY/K4c6ce6d+7/6MplJzAGRr83ILYtfiZ/azFTeUaic/SA
 qR11dLpHSJO5vr+d6xxnaYZQVt9CGmVZLTvJeXhEAQMse4zPjbD8/FYkQfTvRL5ndEA9
 FATI4v8NBj0kuCA+QLmd46jOCrOAl7DfeE+CLBjYulOuSyrI7TXfAcGOSk/Z89Y3s6jf nQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2u2kxttm8h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:09:18 -0400
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6UK7ltb092358
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:09:17 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0a-00154901.pphosted.com with ESMTP id 2u2tp4syc8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Tue, 30 Jul 2019 16:09:17 -0400
X-LoopCount0: from 10.166.132.127
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,346,1549951200"; d="scan'208";a="1279507108"
From: <Charles.Hyde@dellteam.com>
To: <kbusch@kernel.org>, <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>
Subject: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Thread-Topic: [PATCH] drivers/nvme: save/restore HMB on suspend/resume
Thread-Index: AQHVRxKpg+vYRJMybEG1wHJP+W8gIw==
Date: Tue, 30 Jul 2019 20:09:15 +0000
Message-ID: <362aad7f1cf547c2a73e1c4f564984db@AUSX13MPS303.AMER.DELL.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.177.49.166]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-30_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=923 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907300205
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1907300204
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_130923_858345_589E545A 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.137.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-nvme@lists.infradead.org, Mario.Limonciello@dell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

LiteOn CL1 devices allocate host memory buffer at initialization.
This patch saves and restores the host memory buffer allocation
for any NVMe device which has HMB.  Devices which have on-board
memory buffers are not impacted.  This patch has been tested locally
with the following devices: LiteOn CL1 and CA3, Hynix BC511 and
PC601, WDC SN520 and SN720.  This patch has also been tested by
our partners at Wistron and Compal.

Signed-off-by: Charles Hyde <charles_hyde@dellteam.com>
Cc: Mario Limonciello <mario.limonciello@dell.com>
Cc: Rajat Jain <rajatja@google.com>
---
 drivers/nvme/host/pci.c | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index db160cee42ad..7c07d6ddbbac 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2847,8 +2847,20 @@ static int nvme_resume(struct device *dev)
 	struct nvme_ctrl *ctrl = &ndev->ctrl;
 
 	if (pm_resume_via_firmware() || !ctrl->npss ||
-	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
-		nvme_reset_ctrl(ctrl);
+	    nvme_set_power_state(ctrl, ndev->last_ps) != 0) {
+		goto reset;
+	}
+
+	/*
+	 * If the device has allocated system memory for host memory buffer,
+	 * such as LiteOn CL1 devices, deal with it.
+	 */
+	if (ndev->host_mem_descs) {
+		if (nvme_setup_host_mem(ndev) != 0) {
+reset:
+			nvme_reset_ctrl(ctrl);
+		}
+	}
 	return 0;
 }
 
@@ -2880,6 +2892,16 @@ static int nvme_suspend(struct device *dev)
 	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
 		goto unfreeze;
 
+	/*
+	 * If the device has allocated system memory for host memory buffer,
+	 * such as LiteOn CL1 devices, we need to deal with that.
+	 */
+	if (ndev->host_mem_descs) {
+		ret = nvme_set_host_mem(ndev, 0);
+		if (ret < 0)
+			goto unfreeze;
+	}
+
 	ndev->last_ps = 0;
 	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
 	if (ret < 0)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
