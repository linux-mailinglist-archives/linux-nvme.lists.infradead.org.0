Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9E3B0846
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Sep 2019 07:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yNFdB1kk8gB3MgxKFV6KQ3p8om1xMSyamboA8ubP/ts=; b=hV1
	jAsO+JfaRX5nCF6vodc4vFcMlwDxnM6iZdcP+TlgoOMOjekEyXq+OSZZWNhTY70Sn7/9g0BQz3+nQ
	JwGGlC1Gz2NEvvt3I6XRw5N+NT4GalI6AOp1pa78r7DZgp+l7y35KR0U4pCMvK8eBLD+8UPFID+mu
	TaEO/O5DL7DvT8mxT6RAKRA2iHx+IGbYriPegC4M54wklE6Vj3TN2yj70BUVklGKZfWvQ40kluFWX
	ssD9RCPaD/EnJXLAIDRZVh0ETpTZHGNwMntXgh8t0dFJHSQoz5ZEAJLYoyEg286R+yOU15kK6ScWu
	CFe66+THdye2IfZwCuePTGu3FKpvezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Hhd-0001TL-3r; Thu, 12 Sep 2019 05:31:33 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8HhX-0001Sx-Ft
 for linux-nvme@lists.infradead.org; Thu, 12 Sep 2019 05:31:28 +0000
Received: from pps.filterd (m0170389.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8C5TilM015117; Thu, 12 Sep 2019 01:31:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=3d8vOt7K7x+K48AvzoC58HqLCJS4FWuVT92g25am34Q=;
 b=sk9MaVV2SjpfmjEXCzxK1fEF+PEnRSqFwD8BaP3rfgVzSRcr4Lfq1TCY5bDQKrz4dHlY
 t2yF8Ezp5AVkYn5MwK1wQb50gsYQ5w7f+AqlO5WOgTIPa4uuNDSfF5gfuKRY7ICvoE4w
 9/zu519TWmf+0Qp8MgFUdoeHMSAxsMzzgq8XOJ52cUlpuxtJaq3/AqXItT/ykCx2JthQ
 4wZRWTQGp+PXMUXP+oy8yV/nvmRLapgGwK8GejEPwGIG8hQVv9dNtqDcWpz0YmjNiBYo
 MBGJGpW/yhrabnY+KpBTJ3bx459XAWv8OI4RJ84I/JdKYr+Pn0WOo9/YxCRcp7PhzXtB RA== 
Received: from mx0b-00154901.pphosted.com (mx0b-00154901.pphosted.com
 [67.231.157.37])
 by mx0a-00154904.pphosted.com with ESMTP id 2uxb63j7m7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Sep 2019 01:31:11 -0400
Received: from pps.filterd (m0134318.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8C5S80o077485; Thu, 12 Sep 2019 01:31:10 -0400
Received: from mailuogwdur.emc.com (mailuogwdur.emc.com [128.221.224.79])
 by mx0a-00154901.pphosted.com with ESMTP id 2uv76f7hj1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Sep 2019 01:31:10 -0400
Received: from emc.com (localhost [127.0.0.1])
 by mailuogwprd54.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x8C5V9QN015987; Thu, 12 Sep 2019 01:31:09 -0400
Received: from maildlpprd54.lss.emc.com ([maildlpprd54.lss.emc.com
 [10.106.48.158]]) by mailuogwprd54.lss.emc.com with ESMTP id x8C5UTQv015658 ; 
 Thu, 12 Sep 2019 01:30:52 -0400
Received: from mailsyshubprd51.lss.emc.com (mailsyshubprd51.lss.emc.com
 [10.106.48.26]) by maildlpprd54.lss.emc.com (RSA Interceptor);
 Thu, 12 Sep 2019 01:29:42 -0400
Received: from vd-amite.xiolab.lab.emc.com (vd-amite.xiolab.lab.emc.com
 [10.64.137.6])
 by mailsyshubprd51.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x8C5Tf3L014378; Thu, 12 Sep 2019 01:29:41 -0400
From: amit.engel@dell.com
To: sagi@grimberg.me, linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: fix a wrong error status returned in error log page
Date: Thu, 12 Sep 2019 08:29:39 +0300
Message-Id: <20190912052939.105578-1-amit.engel@dell.com>
X-Mailer: git-send-email 2.16.5
X-RSA-Classifications: public
X-Sentrion-Hostname: mailuogwprd54.lss.emc.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-12_01:2019-09-11,2019-09-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015
 lowpriorityscore=0 impostorscore=0 suspectscore=0 mlxlogscore=940
 bulkscore=0 malwarescore=0 phishscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909120056
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 malwarescore=0 adultscore=0 mlxscore=0 mlxlogscore=999
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1909120057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_223127_583945_14AD4A51 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.133.20 listed in list.dnswl.org]
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Amit <Amit.Engel@Dell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Amit <amit.engel@emc.com>

When the command data_len cannot hold all the controller errors,
we should simply return as much errors as we can fit
instead of failing the command.

Signed-off-by: Amit Engel <amit.engel@dell.com>
---
 drivers/nvme/target/admin-cmd.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 51800a9ce9a9..831a062d27cb 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -37,7 +37,6 @@ static void nvmet_execute_get_log_page_noop(struct nvmet_req *req)
 static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
-	u16 status = NVME_SC_SUCCESS;
 	unsigned long flags;
 	off_t offset = 0;
 	u64 slot;
@@ -47,9 +46,8 @@ static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
 	slot = ctrl->err_counter % NVMET_ERROR_LOG_SLOTS;
 
 	for (i = 0; i < NVMET_ERROR_LOG_SLOTS; i++) {
-		status = nvmet_copy_to_sgl(req, offset, &ctrl->slots[slot],
-				sizeof(struct nvme_error_slot));
-		if (status)
+		if (nvmet_copy_to_sgl(req, offset, &ctrl->slots[slot],
+				sizeof(struct nvme_error_slot)))
 			break;
 
 		if (slot == 0)
@@ -59,7 +57,7 @@ static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
 		offset += sizeof(struct nvme_error_slot);
 	}
 	spin_unlock_irqrestore(&ctrl->error_lock, flags);
-	nvmet_req_complete(req, status);
+	nvmet_req_complete(req, 0);
 }
 
 static u16 nvmet_get_smart_log_nsid(struct nvmet_req *req,
-- 
2.16.5


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
