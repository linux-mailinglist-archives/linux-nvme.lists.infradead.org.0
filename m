Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070D81514A6
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Feb 2020 04:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHifPEKhErf5OY/uhjpH4TYA+nPlMRwwvc3AqIBPjKY=; b=ba7Fa8oC76RB+N
	2EtUwuBJ4lpBPD4kUFpkWO+nG8YpG98tp6Jg5SNYmV1B1mdcbEdv9hWQE6v3JdRtxlPy8dzkPslzK
	F7c5kD3RA3IWxcOIH2eMnVq/d1seltPVUQXAbRusHLuh2WN/yjt4LqpiQgUxPhDNOwZhDs/Tt4gqG
	rx6mYDPieRMDdf7JEcQpwtbZn2lVuUhrRuUnKr3qT3r6OX/lT3Ho8c+dKao64/6v0M6vOTcAOx2jj
	tursWfmAR9RDXEKowP+Cxo6F7IL2SmCUYAL3XBfwkjWTOHVXxLH0kgQfXeI6Cf2nGjDkgY+njWJTW
	MRACBmAuVJ84yckcJLmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyowX-0003jr-7G; Tue, 04 Feb 2020 03:32:05 +0000
Received: from mx1.didichuxing.com ([111.202.154.82]
 helo=bsf01.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyow5-0003Ws-16
 for linux-nvme@lists.infradead.org; Tue, 04 Feb 2020 03:31:45 +0000
X-ASG-Debug-ID: 1580787094-0e40884f73171f140001-VMfPqL
Received: from mail.didiglobal.com (bogon [172.20.36.143]) by
 bsf01.didichuxing.com with ESMTP id fiqcEvVRpsbRbBJm;
 Tue, 04 Feb 2020 11:31:34 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 4 Feb
 2020 11:31:34 +0800
Date: Tue, 4 Feb 2020 11:31:33 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>, <bvanassche@acm.org>,
 <kbusch@kernel.org>, <minwoo.im.dev@gmail.com>, <tglx@linutronix.de>,
 <ming.lei@redhat.com>, <edmund.nadolski@intel.com>
Subject: [PATCH v5 3/4] nvme-pci: rename module parameter write_queues to
 read_queues
Message-ID: <2ff979c6ee5469ae4f6f652e95974e3cf6bce99a.1580786525.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v5 3/4] nvme-pci: rename module parameter write_queues
 to read_queues
Mail-Followup-To: axboe@kernel.dk, tj@kernel.org, hch@lst.de,
 bvanassche@acm.org, kbusch@kernel.org, minwoo.im.dev@gmail.com,
 tglx@linutronix.de, ming.lei@redhat.com, edmund.nadolski@intel.com,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <cover.1580786525.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1580786525.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS02.didichuxing.com (172.20.36.211) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: bogon[172.20.36.143]
X-Barracuda-Start-Time: 1580787094
X-Barracuda-URL: https://bsf01.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 2764
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
 SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.79763
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_193137_464399_5FFD7962 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [111.202.154.82 listed in list.dnswl.org]
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
Cc: linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now nvme support three type hardware queues, read, poll and default,
this patch rename write_queues to read_queues to set the number of
read queues more explicitly. This patch alos is prepared for nvme
support WRR(weighted round robin) that we can get the number of
each queue type easily.

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 drivers/nvme/host/pci.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e460c7310187..1002f3f0349c 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -68,10 +68,10 @@ static int io_queue_depth = 1024;
 module_param_cb(io_queue_depth, &io_queue_depth_ops, &io_queue_depth, 0644);
 MODULE_PARM_DESC(io_queue_depth, "set io queue depth, should >= 2");
 
-static unsigned int write_queues;
-module_param(write_queues, uint, 0644);
-MODULE_PARM_DESC(write_queues,
-	"Number of queues to use for writes. If not set, reads and writes "
+static unsigned int read_queues;
+module_param(read_queues, uint, 0644);
+MODULE_PARM_DESC(read_queues,
+	"Number of queues to use for read. If not set, reads and writes "
 	"will share a queue set.");
 
 static unsigned int poll_queues;
@@ -211,7 +211,7 @@ struct nvme_iod {
 
 static unsigned int max_io_queues(void)
 {
-	return num_possible_cpus() + write_queues + poll_queues;
+	return num_possible_cpus() + read_queues + poll_queues;
 }
 
 static unsigned int max_queue_count(void)
@@ -2016,18 +2016,16 @@ static void nvme_calc_irq_sets(struct irq_affinity *affd, unsigned int nrirqs)
 	 * If only one interrupt is available or 'write_queue' == 0, combine
 	 * write and read queues.
 	 *
-	 * If 'write_queues' > 0, ensure it leaves room for at least one read
+	 * If 'read_queues' > 0, ensure it leaves room for at least one write
 	 * queue.
 	 */
-	if (!nrirqs) {
+	if (!nrirqs || nrirqs == 1) {
 		nrirqs = 1;
 		nr_read_queues = 0;
-	} else if (nrirqs == 1 || !write_queues) {
-		nr_read_queues = 0;
-	} else if (write_queues >= nrirqs) {
-		nr_read_queues = 1;
+	} else if (read_queues >= nrirqs) {
+		nr_read_queues = nrirqs - 1;
 	} else {
-		nr_read_queues = nrirqs - write_queues;
+		nr_read_queues = read_queues;
 	}
 
 	dev->io_queues[HCTX_TYPE_DEFAULT] = nrirqs - nr_read_queues;
@@ -3143,7 +3141,7 @@ static int __init nvme_init(void)
 	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
 	BUILD_BUG_ON(IRQ_AFFINITY_MAX_SETS < 2);
 
-	write_queues = min(write_queues, num_possible_cpus());
+	read_queues = min(read_queues, num_possible_cpus());
 	poll_queues = min(poll_queues, num_possible_cpus());
 	return pci_register_driver(&nvme_driver);
 }
-- 
2.14.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
