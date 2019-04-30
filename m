Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D09A10093
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 22:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmNTpwEReumDSWP4HEBRmDEveyh7BIBR8yvY95rJTIQ=; b=jVzT+PL/SeHczs
	iEQHkYkhSi15kZDoPviAY4jm/Xf9lbrdDoFxjG3A7fp1bKqbbE/IZeWvmXs9aJnzfntP4bsP5LEG0
	2MRBdEatOz1cTKsx/fSNiFB11Dj/qd/rddNDi/CSCsw3FgMuBkkOfdUdgjbYE0uny+4At8KKyXvJ/
	01e+0gZ0nj+YSN9SOKcykm+EM+vj1wkENBTpk9REvkUiqSqA70hOohDmRu9ZOFSztMdUJqBVoC446
	YPYXnzJVdpG1QFP+j3yKUX3Db6NXKv31giO72skUBu6JOpuaPAQhG2UkZpZsfzbOcTamJHZfORG8Z
	ljOwAb8uH90Z1UYyC9Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZ41-00035b-61; Tue, 30 Apr 2019 20:09:17 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZ3q-00031X-Vv
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 20:09:08 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id B80403022D42
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 13:09:05 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/2] nvme: nvme_set_queue_count should use descriptive
 macros
Date: Tue, 30 Apr 2019 13:09:04 -0700
Message-Id: <20190430200905.28341-2-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430200905.28341-1-ednadols@linux.microsoft.com>
References: <20190430200905.28341-1-ednadols@linux.microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_130907_042945_AA8DC18C 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Implement macros to set/get the number of submission and/or completion
queues requested by the Set Features command. This replaces the bit
masking/shifting code and reflects the field names used in the spec.

Signed-off-by: Edmund Nadolski <ednadols@linux.microsoft.com>
---
 drivers/nvme/host/core.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3dd043aa6d1f..b3804dbdcc30 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1132,9 +1132,13 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+#define SET_NUMQ(nsqr, ncqr)	(((nsqr) - 1) | (((ncqr) - 1) << 16))
+#define GET_NSQA(dw)		(((dw) & 0xffff) + 1)
+#define GET_NCQA(dw)		(((dw) >> 16) + 1)
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
-	u32 q_count = (*count - 1) | ((*count - 1) << 16);
+	u32 q_count = SET_NUMQ(*count, *count);
 	u32 result;
 	int status, nr_io_queues;
 
@@ -1152,7 +1156,7 @@ int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 		dev_err(ctrl->device, "Could not set queue count (%d)\n", status);
 		*count = 0;
 	} else {
-		nr_io_queues = min(result & 0xffff, result >> 16) + 1;
+		nr_io_queues = min(GET_NSQA(result), GET_NCQA(result));
 		*count = min(*count, nr_io_queues);
 	}
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
