Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DF587843
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 13:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oObWwgVd9ttZi9Srd7tR3VlbhuiS3cofr6FcES/1HaY=; b=XeOGUv/XNRcy2R
	EoWIAYeqT1HQWCR3lM2S1E4tL0fJaSUKfwkO+hO8RjKW9SZo4Zbv5eucZSTjwYHF4/JsEgLybmAVG
	FRjxM1Wk0T8R4v/xDI6Zp9wD5ffxm7glGBjMEUEiV+cdUdW0KZxehH8I8z7c5ntkANTRaxFh7+cSM
	eL5B0UboApDevc/ntLlU93A/0G/NRHeB00yvS/YbZAya2fHgjXOuFQ9EovFkqYSju4tSdIvqf3mTo
	wCZ2wcfl4P7RNmNgp8E5YRmlxEMvIcwasqQTKYuyy3clpW5L2v3rQlcEWB3klQMCgUEXBvmlA4V2n
	i2w8k4Zl4NGVZ4k4bDWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2pb-0001fq-4o; Fri, 09 Aug 2019 11:13:11 +0000
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2pQ-0001fT-Qq
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 11:13:02 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id A13CB4C005E;
 Fri,  9 Aug 2019 11:12:50 +0000 (UTC)
Received: from linux-m89u (91.220.146.112) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Fri, 9 Aug 2019
 12:12:45 +0100
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH v2] nvme: exclude completion trace from non-multipath builds
Date: Thu, 8 Aug 2019 17:35:02 +0200
Message-ID: <01a54b2ad1810fc9354c1586ebcb104364c0234a.1565348491.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [91.220.146.112]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24836.000
X-TM-AS-Result: No-6.223500-8.000000-10
X-TMASE-MatchedRID: p1A4x3TSosyS0tPiucGxC/KUR83BvqItEhHgAtjqBcljLp8Cm8vwF0Ac
 6DyoS2rIj6kCfX0Edc6Q9+qvPFYkdf8HOAZkrPDd6L2XbjtgBfdvV3/OnMClWj8+jJyNeEYpfuh
 AcjCJZ/d9LQinZ4QefPcjNeVeWlqY+gtHj7OwNO2BSJy8ngwKGX1GF/Cl9IdKHf5iw27lAFCd2g
 ahaMip9cQjnmWo1g2bwsBBga2wgM4=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--6.223500-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24836.000
X-MDID: 1565349174-JsUbC7ZOscrp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_041300_932941_5B14A2CC 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.154.164 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
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
