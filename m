Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6494497256
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 08:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PLWT+1OuT8qWeMPRmvSDyeZZ40dafbxs8aU+VwQg2Wk=; b=CyF
	tjUwsvIusot0p6v4iJFhgdpS/eWDbXgiZ7FuWTB1XQhKknnXrwdRWeHBa7H3yEXBb8IdVbsDDxHzE
	pW4mfvGdMmXIglir4U12RojGByu4Q4ZAZVjPkLCW+VrNYY29VRzmB2/on2S4gqvtkS/N3x8Bwdy2F
	e3JEos9WacWn4jSlH0xbI8xKHCnY1u55RDU/vMgqdYtamwoiXGhERYw/DKA64PKHFxSOh1mKB3HzR
	388Lg/q+Dq2eluer85BjpIrDk6ZCz8mdjvufuDVv7+6LXcbLmv+QduwmCTQqtAAm4hx9LqRKIwDKQ
	8k7RyUWIOZiNoN46QdSm3QEO8xl7JfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KGh-0004wC-GB; Wed, 21 Aug 2019 06:38:51 +0000
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0KGN-0004sa-DB
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 06:38:32 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L6ZJoe025317; Wed, 21 Aug 2019 02:38:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc : subject : date : message-id; s=smtpout1;
 bh=soRJiNgaFYW1yT8KOKXqzwHDBCUc75A8wUhj4syY/Bk=;
 b=KHrfsLAbD3kZ8ySEHYi474GJ0k335bOVxbfI+QnnQHwvS081o99CthUFDmPh16vEIldd
 HNV8QfLVb1h1rYbflwoc347ybhauS0X2FCOLRktytFtoQ0RWViLsthuJquzvA3/qvkmw
 xAopHoaJL5ZnXkdf8oA3AkxAo/eo6TsqI9ahqsFM9Oem0OEYGoC1td7Jr0DwaCFwKPMs
 zMIVAgKrXgnmXiANs6pNT3H8g7rB+kFKfb6yLX0ezOX56DSq59+eSCj5yr++Qn1KtXOQ
 AoECLUk4pqD1xXCbnT8fataGK5yX2ysbh83F6LpwZxb3OrlXlnbY3WTFCW4eHRk5mRmL ZQ== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 2ugfdm4g9e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 21 Aug 2019 02:38:24 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L6cOVZ034661; Wed, 21 Aug 2019 02:38:24 -0400
Received: from mailuogwhop.emc.com (mailuogwhop.emc.com [168.159.213.141])
 by mx0b-00154901.pphosted.com with ESMTP id 2uh0b00ery-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 02:38:24 -0400
Received: from emc.com (localhost [127.0.0.1])
 by mailuogwprd03.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7L6arHF022761; Wed, 21 Aug 2019 02:38:23 -0400
Received: from maildlpprd06.lss.emc.com ([maildlpprd06.lss.emc.com
 [10.253.24.38]]) by mailuogwprd03.lss.emc.com with ESMTP id x7L6buT9023133 ; 
 Wed, 21 Aug 2019 02:38:12 -0400
Received: from mailsyshubprd52.lss.emc.com (mailsyshubprd52.lss.emc.com
 [10.106.48.27]) by maildlpprd06.lss.emc.com (RSA Interceptor);
 Wed, 21 Aug 2019 02:37:18 -0400
Received: from vd-amite.xiolab.lab.emc.com (vd-amite.xiolab.lab.emc.com
 [10.64.137.6])
 by mailsyshubprd52.lss.emc.com (Sentrion-MTA-4.3.1/Sentrion-MTA-4.3.0) with
 ESMTP id x7L6bFIJ003637; Wed, 21 Aug 2019 02:37:17 -0400
From: amit.engel@dell.com
To: sagi@grimberg.me, linux-nvme@lists.infradead.org
Subject: [PATCH] nvme/target/admin-cmd.c: Fix a bug in
 'nvmet_execute_get_log_page_error'
Date: Wed, 21 Aug 2019 09:37:11 +0300
Message-Id: <20190821063711.1252-1-amit.engel@dell.com>
X-Mailer: git-send-email 2.16.2
X-RSA-Classifications: public
X-Sentrion-Hostname: mailuogwprd03.lss.emc.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=591 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210073
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=670 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908210073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_233831_501888_13EF417E 
X-CRM114-Status: GOOD (  13.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

ensure that nvmet_copy_to_sgl does not exceed data_len

Signed-off-by: Amit <amit.engel@emc.com>
---
 drivers/nvme/target/admin-cmd.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 51800a9ce9a9..f7753b8a485c 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -40,13 +40,16 @@ static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
 	u16 status = NVME_SC_SUCCESS;
 	unsigned long flags;
 	off_t offset = 0;
+	size_t num_of_sgl_slots;
 	u64 slot;
 	u64 i;
 
+	num_of_sgl_slots = do_div(req->data_len, sizeof(struct nvme_error_slot));
+
 	spin_lock_irqsave(&ctrl->error_lock, flags);
 	slot = ctrl->err_counter % NVMET_ERROR_LOG_SLOTS;
 
-	for (i = 0; i < NVMET_ERROR_LOG_SLOTS; i++) {
+	for (i = 0; i < NVMET_ERROR_LOG_SLOTS && i < num_of_sgl_slots; i++) {
 		status = nvmet_copy_to_sgl(req, offset, &ctrl->slots[slot],
 				sizeof(struct nvme_error_slot));
 		if (status)
-- 
2.16.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
