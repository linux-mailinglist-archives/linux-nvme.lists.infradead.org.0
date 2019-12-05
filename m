Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A89E114145
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Dec 2019 14:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0xR96+xKJ46qHrkbX8gSf1jjQTwCZdP/P7+nTGAB2Cw=; b=MuN
	DpDZJ9VxJP6aZugJIhjhDUoPh2arBB4JSiBAQKByWaw3kQBTeJCcmmYR7sHLy/bhIff7i7DIG6lKX
	KPpoy09Cw+uPMduV534UyZE7o2j96VLuGvD5y3M0tv5d7ifnBlaQPDlSQzNKsF3NaEHQ6OAjwu7DP
	XKVd53OgG4UW+bOnQHrcpHOmTV9+aMIk8P6RxyE6pH2f7RhmDE2eQsL78hKZk+q0j3fedv/A+kMx4
	3f4uxuU/y/ro6K/TqdI8Oxk3QYJo2WW9v7FcFYAnf3zLmgbBo3J2prJ1BcDT94JOlMnctY6KhFKL6
	RgfkyHnyuAQSK0Mlk9oEaeIy0LO3X4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icqxd-0006uj-DM; Thu, 05 Dec 2019 13:14:25 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icqxZ-0006uP-PU
 for linux-nvme@lists.infradead.org; Thu, 05 Dec 2019 13:14:23 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB5DAegi018816; Thu, 5 Dec 2019 08:14:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=Xynt//mmpPkNCGlaNJIopQXewfJ/7meSu/KPjTLpLMI=;
 b=M4E2aUDPRHKVK9ZHYBFmak9/Awkgi2f3Pq71/99OK2NRDYvcouN0fm1Q75PYWkL+/0vt
 NV4sMYrTicaLhbOPwBPv78Z+cSSbGCuOMS3HDFdJ+cMKyUMJ6L058rCKiRRYSn9d1AFh
 7JuchbnaFYDRlJaJoz+ud6fy/Omd9lQdxkxIzoSYreOELAywSjegpYcKKwXcp6p/7sy4
 8zewqUiy8I+qpU/U7UebQW1SXBdRxhjFDLRYsxnHWxXjoRndDweMm7B6UiT3X9ALbDzB
 nx+//mxSMnvlZog+JbMURVElcmSOKGs1uX50/9OJ8h7S3pUyAMGxmvzv1UrMeFb3J9s0 Cw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2wpe9bvsej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 05 Dec 2019 08:14:09 -0500
Received: from pps.filterd (m0142699.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB5D7xRW189602; Thu, 5 Dec 2019 08:14:09 -0500
Received: from mailuogwdur.emc.com (mailuogwdur-nat.lss.emc.com
 [128.221.224.79] (may be forged))
 by mx0a-00154901.pphosted.com with ESMTP id 2wpyckahgf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 05 Dec 2019 08:14:09 -0500
Received: from emc.com (localhost [127.0.0.1])
 by mailuogwprd51.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id xB5DE7xE002226; Thu, 5 Dec 2019 08:14:07 -0500
Received: from maildlpprd52.lss.emc.com ([maildlpprd52.lss.emc.com
 [10.106.48.156]]) by mailuogwprd51.lss.emc.com with ESMTP id xB5DDj5c001701 ; 
 Thu, 5 Dec 2019 08:13:52 -0500
Received: from mailapphubprd51.lss.emc.com (emcmail.lss.emc.com
 [10.106.83.170]) by maildlpprd52.lss.emc.com (RSA Interceptor);
 Thu, 5 Dec 2019 08:10:26 -0500
Received: from vd-amite.xiolab.lab.emc.com (vd-amite.xiolab.lab.emc.com
 [10.64.137.6])
 by mailapphubprd51.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id xB5DAadV023236; Thu, 5 Dec 2019 08:10:37 -0500
From: Amit <Amit.Engel@Dell.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: Fix req->data_len size in case of
 nvme_admin_get_features cmd, fid 0x81
Date: Thu,  5 Dec 2019 15:10:34 +0200
Message-Id: <20191205131034.62699-1-amit.engel@emc.com>
X-Mailer: git-send-email 2.16.5
X-RSA-Classifications: public
X-Sentrion-Hostname: mailuogwprd51.lss.emc.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-05_03:2019-12-04,2019-12-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxlogscore=814 malwarescore=0 mlxscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912050111
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 bulkscore=0
 phishscore=0 mlxlogscore=883 priorityscore=1501 mlxscore=0 spamscore=0
 malwarescore=0 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1912050111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_051421_876954_BF83624F 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: amit.engel@dell.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Amit Engel <amit.engel@dell.com>

In feature id 0x81 NVME_FEAT_HOST_ID, nvmet_copy_to_sgl is called
req->data_len shall hold a non-zero value which is
'sizeof(req->sq->ctrl->hostid)'

Signed-off-by: Amit Engel <amit.engel@dell.com>
---
 drivers/nvme/target/admin-cmd.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 56c21b501185..f09d5fdc995f 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -24,6 +24,15 @@ u32 nvmet_get_log_page_len(struct nvme_command *cmd)
 	return len;
 }
 
+u32 nvmet_feature_data_len(struct nvmet_req *req)
+{
+	u8 feature = req->cmd->common.cdw10 & 0xff;
+
+	if (feature == NVME_FEAT_HOST_ID)
+		return sizeof(req->sq->ctrl->hostid);
+	return 0;
+}
+
 u64 nvmet_get_log_page_offset(struct nvme_command *cmd)
 {
 	return le64_to_cpu(cmd->get_log_page.lpo);
@@ -778,7 +787,7 @@ static void nvmet_execute_get_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_data_len(req, nvmet_feature_data_len(req))
 		return;
 
 	switch (cdw10 & 0xff) {
-- 
2.16.5


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
