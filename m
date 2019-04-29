Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511A7E93C
	for <lists+linux-nvme@lfdr.de>; Mon, 29 Apr 2019 19:35:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lh4pjsYr4UArpuz9E21BcOniXpJU0597zG0vPZvZFU=; b=HpPXPd6/A6smtC
	/2+rE9Mo4m06LSDUrpU1DY1wdDh/lwLXl33UrrBg0kJ7F/gVqmJ0hRZ7Ho+d1ct0aIjDMcdIAgfps
	XA+/AExKEteE6BFimHQLfYBVdkNk7YnGT2lH3Quee9vU/WlNIhvI/OZI7h7CMK0aYqOrH9CQf/pHn
	s3cypaDRx2K8/KcZ80pPFRI+qUJQh+hgeka3a/xMRLsHwyD+UjKX4ZKmOsw7yVmFfrqJ8NBf8aazR
	csCcDMEyjn6q0EWjcyMQ+YDk5nuIdL/uMwFJSDDNngoYOPtqSRAYEG4ZlR6EiKW44ZKUoqXdchVI8
	nV0KOAg7qM2vTf6gNexQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAC1-0003ff-Nh; Mon, 29 Apr 2019 17:35:53 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLABj-0003O7-AB
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 17:35:36 +0000
Received: from localhost.corp.microsoft.com (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 5BB81302E6E2;
 Mon, 29 Apr 2019 10:35:34 -0700 (PDT)
From: Edmund Nadolski <ednadols@linux.microsoft.com>
To: linux-nvme@lists.infradead.org,
	ednadols@linux.microsoft.com
Subject: [PATCH 1/2] nvme: nvme_set_queue_count should use descriptive macros
Date: Mon, 29 Apr 2019 10:35:32 -0700
Message-Id: <20190429173533.10366-2-ednadols@linux.microsoft.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190429173533.10366-1-ednadols@linux.microsoft.com>
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103535_375426_5C470AB6 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
masking/shifting code which is harder to read and more error prone to
maintain.

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
