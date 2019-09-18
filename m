Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04DDB6FBA
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 01:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7daerHtXcrAFNwO1MXZ3bz/tILLuVEbiBOaTZxpM2po=; b=eIVc3u0JiPrKbd
	x5LMeeAX8WD6+l6N/2lwSoiHTzRosgcbKYt8ZskElS830qWa1+BS2hqK01gMNaNxRCqpJQ+oqE6/G
	95ZJqX0/hTxeiSuFbtrz5D1+IHD8oYJMMbTAaJTH5DnCIj+SSzynetxRcA0Qf7Bti9untjrlkUSBE
	u7kBgX6xOAqnYYszW/wL6CacyS7Y7SlTbx+lar8/XP+rs/+7hRZcF5M+D71uO+ERgT4w6dTRE/PjJ
	i49h+STImBXssyvWFWSz6Q+Fbq6e8lt9o8OYM67vmoNljijoNjkrGVGQhYroVF+VU/w6FNPdVnU+v
	f4wmBA3EqpJtaeBqon0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAjVH-0004bF-SF; Wed, 18 Sep 2019 23:36:56 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAjV3-0004aV-9V
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 23:36:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 16:36:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="271026312"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 16:36:38 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 16:36:38 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.204]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.232]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 16:36:38 -0700
From: "Wunderlich, Mark" <mark.wunderlich@intel.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Subject: [PATCH v2] nvme-tcp: fix wrong stop condition in io_work
Thread-Topic: [PATCH v2] nvme-tcp: fix wrong stop condition in io_work
Thread-Index: AdVueUaQW3QpxammTQWoZLFm/AcNLQ==
Date: Wed, 18 Sep 2019 23:36:37 +0000
Message-ID: <B33B37937B7F3D4CB878107E305D4916D35C21@ORSMSX104.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWY5NTIwMGEtZWY4My00MjMyLWI4YTctNTEyMTFkNjg1MTZlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRTRKZlpUQUJYYUpuMkMrMzgxSVIxcW9EK3BDNXl3SWRFMmZwQXhvMFJwK0FMRERJMTgxbG13MWdRSFBtM2tnSCJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_163641_357108_5D963637 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme-tcp: fix wrong stop condition in io_work

Allow the do/while statement to continue if current time
is not after the proposed time 'deadline'. Intent is to
allow loop to proceed for a specific time period. Currently
the loop, as coded, will exit after first pass.

Signed-off-by: Mark Wunderlich <mark.wunderlich@intel.com>
---
 drivers/nvme/host/tcp.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501..1a6de2f 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1032,7 +1032,7 @@ static void nvme_tcp_io_work(struct work_struct *w)
 {
 	struct nvme_tcp_queue *queue =
 		container_of(w, struct nvme_tcp_queue, io_work);
-	unsigned long start = jiffies + msecs_to_jiffies(1);
+	unsigned long deadline = jiffies + msecs_to_jiffies(1);
 
 	do {
 		bool pending = false;
@@ -1057,7 +1057,7 @@ static void nvme_tcp_io_work(struct work_struct *w)
 		if (!pending)
 			return;
 
-	} while (time_after(jiffies, start)); /* quota is exhausted */
+	} while (!time_after(jiffies, deadline)); /* quota is exhausted */
 
 	queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
 }


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
