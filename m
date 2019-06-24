Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD8750E07
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 16:30:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6t4livaeYw5VP6KdFI9JFwzcDSHF3434pJDvMycahk=; b=TxjlJ11TNimySE
	IobwEkWF6m+ar/3HycB2xw5XHB/Oc1SeLuxhJH8MSo7mpqhoemBjKzEqCw2XVR/gsdXjBu71sMTgg
	27bW9yMtpoL/fPMljuGUgkNJfbuHLiGgp7dbVlOIwBAp9VPzniRp12uV46kCgCSQmU9XnGmLzm+Va
	9DGE5sPWqW2Fm2hcG3hlQktvO+OWplPGQWkJpfniKhkBSFh7G3TiORl89E7QISfWxiiSZQ/tUONOU
	epHxBIE3+NctPO4LEmSzUYabFwusxgJ/L72qwZ5r8Bq2VZxrpg1KDPCOACI/QQCYpFE5onHK0H650
	VguI0GKov8zPOm7qcGpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPyq-0001kd-Rr; Mon, 24 Jun 2019 14:30:01 +0000
Received: from mx2.didichuxing.com ([36.110.17.22] helo=bsf02.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPyG-0001Xi-Fm
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 14:29:38 +0000
X-ASG-Debug-ID: 1561386560-0e41086a0c1785e0001-VMfPqL
Received: from BJEXCAS07.didichuxing.com (bogon [172.20.36.204]) by
 bsf02.didichuxing.com with ESMTP id fq8g7KvknyPVSe5D;
 Mon, 24 Jun 2019 22:29:20 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 22:29:20 +0800
Date: Mon, 24 Jun 2019 22:29:19 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>, <bvanassche@acm.org>,
 <keith.busch@intel.com>, <minwoo.im.dev@gmail.com>
Subject: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues to
 read_queues
Message-ID: <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues
 to read_queues
Mail-Followup-To: axboe@kernel.dk, tj@kernel.org, hch@lst.de,
 bvanassche@acm.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS03.didichuxing.com (172.20.36.245) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: bogon[172.20.36.204]
X-Barracuda-Start-Time: 1561386560
X-Barracuda-URL: https://bsf02.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 2354
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
 SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73067
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072926_074754_BD8594F0 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [36.110.17.22 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
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
Cc: linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now nvme support three type hardware queues, read, poll and default,
this patch rename write_queues to read_queues to set the number of
read queues more explicitly. This patch alos is prepared for nvme
support WRR(weighted round robin) that we can get the number of
each queue type easily.

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 drivers/nvme/host/pci.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 5d84241f0214..a3c9bb72d90e 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -68,10 +68,10 @@ static int io_queue_depth = 1024;
 module_param_cb(io_queue_depth, &io_queue_depth_ops, &io_queue_depth, 0644);
 MODULE_PARM_DESC(io_queue_depth, "set io queue depth, should >= 2");
 
-static int write_queues;
-module_param(write_queues, int, 0644);
-MODULE_PARM_DESC(write_queues,
-	"Number of queues to use for writes. If not set, reads and writes "
+static int read_queues;
+module_param(read_queues, int, 0644);
+MODULE_PARM_DESC(read_queues,
+	"Number of queues to use for reads. If not set, reads and writes "
 	"will share a queue set.");
 
 static int poll_queues;
@@ -211,7 +211,7 @@ struct nvme_iod {
 
 static unsigned int max_io_queues(void)
 {
-	return num_possible_cpus() + write_queues + poll_queues;
+	return num_possible_cpus() + read_queues + poll_queues;
 }
 
 static unsigned int max_queue_count(void)
@@ -2021,18 +2021,16 @@ static void nvme_calc_irq_sets(struct irq_affinity *affd, unsigned int nrirqs)
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
-- 
2.14.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
