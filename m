Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B140170EC3
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Feb 2020 03:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zh1mItgfITzXI9pfHV/VoBtP1Cb6FEdDw89c5LWJr3Q=; b=IlZqVKwfY1FgC+
	oihAqIsv4Wp2XwWQt+Bhu5WrDbdCRTlkMlvwVyHNKboMKOsv8wsiW/JznwZYAsTc9DMmxzvZb63fu
	0v2T9xIgEOe2LNDCbyHlPGgzlkewOsK0Ymqa7ejozpVVXoLlYY3BeYeOalzMKE3jsSC/U2m5k86p9
	A9t+/16NAUamkGuzq3xbIfU21kXAw0avQMbqOZm+ggY8VdlpuM70SNY3eSgfaYukLsTqziyDmAONI
	woO/JanphnyCOLIzfBZi/nYI+zW4WGrotu+ajTuN9GcRc9b8Thzo1+Y7hcVPCqZXCck1YBCFfZFuV
	f3ZYKijYIayK9V7IRR/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j79JO-0003Se-OJ; Thu, 27 Feb 2020 02:54:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j79JL-0003SI-8L
 for linux-nvme@lists.infradead.org; Thu, 27 Feb 2020 02:54:04 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01R2qjKf179126
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 02:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : subject : date : message-id; s=corp-2020-01-29;
 bh=CPLgKN3BaI46ZRsSou2gUI/PEEngae4wOVuhuOBjGIk=;
 b=zQDeGHzZvDXUCOTOzAF3odfe8un2W0D4HmFZb/huXpMTWi+d17lbN4d+RXgFTxUhkPRu
 0HfsSeqANv4AQDJoXNN+R21W4ssBUlMsWbJXRi1I4e1W1uiCEIwfG0T624ueJRfu7gM+
 QlRK7qx5/l5dQZUWmg5Nk+LFeDI7Eo6LAWPigjMvyk6t9dFOWTp9icd7miHJDAdq2Q7a
 mV0G60tDEFMnl1/uW/X6UCNyuXNLZL2D/r6ABgOtrQkvOqIG/VYB4mty/XwOrdbkGtW0
 l2LRaYf8nAf8uLs6G423h2Tk0Ze/vmPQJvq4Lv2K/gax6cVrrrTYcFZPA39W4gUfUFV3 qw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2ydct37xdr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 02:54:02 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01R2qIcv116698
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 02:54:01 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2ydcs77sw9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 02:54:01 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01R2s10u004094
 for <linux-nvme@lists.infradead.org>; Thu, 27 Feb 2020 02:54:01 GMT
Received: from ca-ldom147.us.oracle.com (/10.129.68.131)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Feb 2020 18:54:00 -0800
From: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/1] nvme-pci: Hold cq_poll_lock while completing CQEs
Date: Wed, 26 Feb 2020 18:53:43 -0800
Message-Id: <1582772023-67704-1-git-send-email-bijan.mottahedeh@oracle.com>
X-Mailer: git-send-email 1.8.3.1
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 suspectscore=3 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002270019
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 suspectscore=3 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002270019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_185403_336230_63223710 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Avoid scheduling a polling thread if it has cqe's to complete, otherwise
another thread may free enough tags out of order, allowing a queue wrap.

This is an interim solution. Longer term, the two-pass completion should
be fixed.  It was done that way when submit and complete processing were
using the same spinlock, so reducing the critical section was helpful,
but that's not needed anymore.

Fixes: dabcefab45d3 ("nvme: provide optimized poll function for separate poll queues")
Signed-off-by: Bijan Mottahedeh <bijan.mottahedeh@oracle.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Jens Axboe <axboe@kernel.dk>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index ace4dd9..d3f23d6 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1078,9 +1078,9 @@ static int nvme_poll(struct blk_mq_hw_ctx *hctx)
 
 	spin_lock(&nvmeq->cq_poll_lock);
 	found = nvme_process_cq(nvmeq, &start, &end, -1);
+	nvme_complete_cqes(nvmeq, start, end);
 	spin_unlock(&nvmeq->cq_poll_lock);
 
-	nvme_complete_cqes(nvmeq, start, end);
 	return found;
 }
 
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
