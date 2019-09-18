Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15EFB6A57
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 20:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uIrTcRezIOtmcQJ9CpQP/MdsHxqwLhZSd0Q6AJy9ZSw=; b=HiY
	t3MuAlgKs7Qbe+/mOEKDt9vQV2JAw3UMUaA+VgR87yhqGFQN1ToqAqMnnyzhXbBL+qxf7ntQfHHSX
	4CjQrkk+ZtdOGOuRrDVI9/xIWpWocoWBJ/JsBM0V82pml135Zh9qI+87iAtJUqfU6K92qFpu38Qzy
	NK5LG56+LudaFDyK6Xq2d4eJvwQibDNaEeSzjtXPyOiN5e9CHgcagPS9CbLnYK0cTcztshccgqo9U
	1hTM203kiThRfjmKg9X0g7bxtCMlwZfB3bjW3VfEyKwiM5fskPjVjRbgqF012ZZ+OHvFkrq2bfhAa
	Q2vcrJhATsvlFp/eFAhKnSXcVt6xZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAeV6-0000Rg-BZ; Wed, 18 Sep 2019 18:16:24 +0000
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeV0-0000Qw-OL
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 18:16:20 +0000
Received: from pps.filterd (m0170395.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8II0ScU032010
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 14:16:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=A/GA2kt9PkFSXOdi/VLlD9hTYzR2T4fpkhomChyE9Co=;
 b=wtBDntCf5Mg7NkwRO3z1NSwe+wwKrvyJ1tO4RyzGpkjZmVAU8SyKMLn3x5ypui8BY6ol
 bfPdT3dlID39LPQ7hQfVE6jzfqgUIkuwu6AjkdnwEiSuoRfbqcNe1pfqqkXcJls6Gao7
 8pM3Iw49DJT6l551+PfrbkHNyDhXDMEQY5euUBhbh74bY9H9yV4RB977Vpdyc7EAm3Un
 ibT8iZaRP9RVkhR7/XSA+ad/1td7qZfWvPbqWuW5l5pxayStpcTD6OE5eZ+CY9F4GOmB
 YvduR+pfjd2vQzLIDb+zVAVyx4qxb1MXaFcWayKuweuRv2izOq2scZcZXsC1wBTtBLMj hQ== 
Received: from mx0b-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 2v37sv5pfk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 14:16:15 -0400
Received: from pps.filterd (m0090350.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8II2n4K069900
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 14:16:14 -0400
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
 [143.166.85.207])
 by mx0b-00154901.pphosted.com with ESMTP id 2v37hxrd94-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 14:16:14 -0400
X-LoopCount0: from 10.173.37.27
X-PREM-Routing: D-Outbound
X-IronPort-AV: E=Sophos;i="5.60,346,1549951200"; d="scan'208";a="1299619002"
From: Mario Limonciello <mario.limonciello@dell.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH v2] nvme-pci: Save PCI state before putting drive into deepest
 state
Date: Wed, 18 Sep 2019 13:15:55 -0500
Message-Id: <1568830555-11531-1-git-send-email-mario.limonciello@dell.com>
X-Mailer: git-send-email 2.7.4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-18_09:2019-09-18,2019-09-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 clxscore=1011 mlxlogscore=577 adultscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 bulkscore=8 suspectscore=0 lowpriorityscore=8
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909180161
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0 phishscore=0
 mlxlogscore=720 bulkscore=14 clxscore=1015 spamscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=14
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1909180161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_111618_963523_076E4C01 
X-CRM114-Status: GOOD (  15.40  )
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <mario.limonciello@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The action of saving the PCI state will cause numerous PCI configuration
space reads which depending upon the vendor implementation may cause
the drive to exit the deepest NVMe state.

In these cases ASPM will typically resolve the PCIe link state and APST
may resolve the NVMe power state.  However it has also been observed
that this register access after quiesced will cause PC10 failure
on some device combinations.

To resolve this, move the PCI state saving to before SetFeatures has been
called.  This has been proven to resolve the issue across a 5000 sample
test on previously failing disk/system combinations.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
---
 drivers/nvme/host/pci.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

Changes from v1:
 * Discard saved state in error scenario
 * Removed unneeded goto statement in error scenario

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 732d5b6..ef69013 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2894,11 +2894,21 @@ static int nvme_suspend(struct device *dev)
 	if (ret < 0)
 		goto unfreeze;
 
+	/*
+	 * A saved state prevents pci pm from generically controlling the
+	 * device's power. If we're using protocol specific settings, we don't
+	 * want pci interfering.
+	 */
+	pci_save_state(pdev);
+
 	ret = nvme_set_power_state(ctrl, ctrl->npss);
 	if (ret < 0)
 		goto unfreeze;
 
 	if (ret) {
+		/* discard the saved state */
+		pci_load_saved_state(pdev, NULL);
+
 		/*
 		 * Clearing npss forces a controller reset on resume. The
 		 * correct value will be resdicovered then.
@@ -2906,14 +2916,7 @@ static int nvme_suspend(struct device *dev)
 		nvme_dev_disable(ndev, true);
 		ctrl->npss = 0;
 		ret = 0;
-		goto unfreeze;
 	}
-	/*
-	 * A saved state prevents pci pm from generically controlling the
-	 * device's power. If we're using protocol specific settings, we don't
-	 * want pci interfering.
-	 */
-	pci_save_state(pdev);
 unfreeze:
 	nvme_unfreeze(ctrl);
 	return ret;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
