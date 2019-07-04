Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7022861E26
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 14:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5MynrGNEOeUi8Uj1ApX48/l5iu41JSvljZSBMD+KxNk=; b=W/kR+1kIROjEbKM5ObkXwESwrH
	upRPsD065/QWfXIH/HDGVCxLSFps/UZarlxRPgK5oSgsBfRCrDBmoqfnP1u4Dvh/CdLOC02Cles6k
	tH8JxxqX4RLKUKB/U1Y43iVK2NojVUpwjghuQ8ISh9uhsoOqf2uIVULtILA9NLVQboPEch1zqVIey
	2E9Z7c4fB4Jq4cBYiLS4V1d+WOeGjNw4AVdTnCYwRMGonUUXud+GrC6GJzPlYPsPEwReUILKAGch8
	sZbfal7VDXVGsHt+MH19bipJKkfW7Q+sIDcsX4IRKoWg9w2o/S8frQ7iGowTT5773Co+OdA2FO1xF
	Y1S/ZNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkSP7-0001np-HY; Mon, 08 Jul 2019 12:05:57 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkSOu-0001kx-Ku
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 12:05:46 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 467BF180081;
 Mon,  8 Jul 2019 12:05:43 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Mon, 8 Jul 2019
 13:05:21 +0100
References: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v2 1/2] nvme-tcp: set the STABLE_WRITES flag when data digests
 are enabled
In-Reply-To: <cover.1562586804.git.mskorzhinskiy@solarflare.com>
Date: Thu, 4 Jul 2019 09:59:18 +0200
Message-ID: <c34300a7199db40be3cfe0ac729ffabe77fb8a1d.1562586804.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24746.003
X-TM-AS-Result: No-3.264600-8.000000-10
X-TMASE-MatchedRID: H72oiAsyMSzc5n2VK8E61MEvKlG0CjjIZuIkqHI0nbuPiMW+3YzkgsNs
 x6mgbAHnmFQi2KYl+PZhrvaV3ciSdkohWBZ4QV+6bWsCUkrA4EkiQsfhXZBaxHP8Ky4DxHO58hL
 yt3x1lpK3gQa8Gl5ct0v+98FceHosmUQSrI/466uQ9kHf42ybZPaS52LUPfcSHdFjikZMLIcrrw
 B6Oe15C/gqvgaKLRVboZ3kyPkGlHgsaaYlMvaOHAPZZctd3P4BjWP6asaL88U4WKr1PmPdtf7SG
 Z5JTlJI8/FuzBSKGg28wl+jvj0E1XHj330r7L1gNDrSVZCgbStzwDh4RTtcHA/IkE24TlvrHAz4
 CE8it+/i8zVgXoAltsIJ+4gwXrEtwrbXMGDYqV/1U8NF4Dst2nSEh1uF17scMPZJCGbk3I4ISUE
 NOFCVhaWoemo8qaL2yf3CiTu7cAvO+wc0wLqA0RO8vd5+AsRWmYXBdzUXKn4e4+C75x14WMbG0b
 MSRYDWFhnoKW4f7Mf1c8RJIeS1QEXUWIU/uTt9wL6SxPpr1/I=
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--3.264600-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24746.003
X-MDID: 1562587544-LULBWT-gXxZ8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_050544_841729_69B9854C 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received:
 date
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
Cc: Mike Playle <mplayle@solarflare.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

There was a few false alarms sighted on target side about wrong data
digest while performing high throughput load to XFS filesystem shared
through NVMoF TCP.

This flag tells the rest of the kernel to ensure that the data buffer does
not change while the write is in flight. It incurs a performance penalty,
so only enable it when it is actually needed, i.e. when we are calculating
data digests.

Although even with this change in place, ext2 users can steel experience
false positives, as ext2 is not respecting this flag. This may be apply to
vfat as well.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Signed-off-by: Mike Playle <mplayle@solarflare.com>

---

https://lwn.net/Articles/528031/
https://www.redhat.com/archives/dm-devel/2015-May/msg00158.html
---
 drivers/nvme/host/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5417110cbf1b..f4340dc1d399 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -11,6 +11,7 @@
 #include <linux/hdreg.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/backing-dev.h>
 #include <linux/list_sort.h>
 #include <linux/slab.h>
 #include <linux/types.h>
@@ -3304,6 +3305,10 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_ns;
 	}
 
+	if (ctrl->opts->data_digest)
+		ns->queue->backing_dev_info->capabilities
+			|= BDI_CAP_STABLE_WRITES;
+
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, ns->queue);
 	if (ctrl->ops->flags & NVME_F_PCI_P2PDMA)
 		blk_queue_flag_set(QUEUE_FLAG_PCI_P2PDMA, ns->queue);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
