Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8B691E1A
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 09:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oObWwgVd9ttZi9Srd7tR3VlbhuiS3cofr6FcES/1HaY=; b=fhpvwUCzeyErlu
	YmWthzHMXqboxJ5JoBiax8vyaOmuipSQfvG0AZX8ruTQtdWKxdHVU0Q7c3zBpOOk8C1kndbxOuTZf
	bVpMwVNVuYC8O+wLFC93eJnVpU2vX9ZBvu2iFscrNImiuWMfEm6MnhTDR+fYqq1r9zmXjVglLcweC
	Nc4IyhVSyeKhhjfqFzhmyO5Wgcmwe0/J38nMgIta2TOlMPuJKN02AiE/Or0lVgPCUvcMZoZDVsrsB
	yplTKmDaiPNlTh59WX3QIou5aL44cWmIbu6tC+KHakv4cwRDDbYeLjvBKT6UX+E+tUBx1vY4DeZFP
	D1Uzf1BCCFwpHKpLepLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcIn-00050m-St; Mon, 19 Aug 2019 07:42:05 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcIP-0004t6-RD
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 07:41:44 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id BA5F770006D;
 Mon, 19 Aug 2019 07:41:40 +0000 (UTC)
Received: from linux-m89u (134.19.179.139) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 19 Aug
 2019 08:41:35 +0100
User-agent: mu4e 1.3.3; emacs 26.2
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH v2] nvme: exclude completion trace from non-multipath builds
Date: Mon, 19 Aug 2019 09:40:49 +0200
Message-ID: <87d0h138n2.fsf@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [134.19.179.139]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24856.003
X-TM-AS-Result: No-6.223500-8.000000-10
X-TMASE-MatchedRID: p1A4x3TSosyS0tPiucGxC/KUR83BvqItEhHgAtjqBcljLp8Cm8vwF0Ac
 6DyoS2rIj6kCfX0Edc6Q9+qvPFYkdf8HOAZkrPDd6L2XbjtgBfdvV3/OnMClWj8+jJyNeEYpfuh
 AcjCJZ/d9LQinZ4QefPcjNeVeWlqY+gtHj7OwNO2BSJy8ngwKGX1GF/Cl9IdKHf5iw27lAFCd2g
 ahaMip9cQjnmWo1g2bwsBBga2wgM4=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.223500-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24856.003
X-MDID: 1566200501-Y6df8d1Xkpa6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_004141_904621_A90AC06A 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This trace point have no meaning without native multipath support and
break compilation on configurations without enabled multipath.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
---
 drivers/nvme/host/core.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6956041224ec..1202b7461031 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -260,10 +260,24 @@ static void nvme_retry_req(struct request *req)
 	blk_mq_delay_kick_requeue_list(req->q, delay);
 }
 
+#ifdef CONFIG_NVME_MULTIPATH
+static void nvme_trace_bio_complete(struct request *req, blk_status_t status)
+{
+	struct nvme_ns *ns = req->q->queuedata;
+
+	if (req->bio && ns && ns->head->disk)
+		trace_block_bio_complete(ns->head->disk->queue,
+					 req->bio, status);
+}
+#else
+static void nvme_trace_bio_complete(struct request *req, blk_status_t status)
+{
+}
+#endif
+
 void nvme_complete_rq(struct request *req)
 {
 	blk_status_t status = nvme_error_status(req);
-	struct nvme_ns *ns = req->q->queuedata;
 
 	trace_nvme_complete_rq(req);
 
@@ -282,9 +296,8 @@ void nvme_complete_rq(struct request *req)
 			return;
 		}
 	}
-	if (req->bio && ns && ns->head->disk)
-		trace_block_bio_complete(ns->head->disk->queue,
-					 req->bio, status);
+
+	nvme_trace_bio_complete(req, status);
 	blk_mq_end_request(req, status);
 }
 EXPORT_SYMBOL_GPL(nvme_complete_rq);
-- 
2.22.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
