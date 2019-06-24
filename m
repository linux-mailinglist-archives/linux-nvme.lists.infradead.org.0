Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DD550E0F
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 16:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PNzutJ29UotCPltnvh9uC6LTf6VstcPYUO14pDunJM=; b=tAsbxN3WvWwQNB
	IrRlEuajuCO9ZtfsfbioXtKCMPT5Fis0ISFg6vdQIVOXtAzFut7LRmWaaOcrsIexS3S68lSq43XxS
	WDNGl0i2fvb3DUWQYDM/O2pJZZW1AGVqyuevBH1m9bZuutThkFCViomzUL+4cwS5+ln/BG1lwXI84
	KOzq/ITNfeiuQugp7mV+AP7E5RzxPBueXe26A/4HOgycedMfUjUKefBNbUNyVPPeyljsemMYu2rNM
	D6sFyNcrURKkkLZ9hHr++2wO7eZo2d6HooYVq4wAdQsGPe7ckllg3T+fU76WFVRWtGSCWuqgruHQq
	PXfzGJlPB/RQa2X9bs5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPzW-0003Pi-4r; Mon, 24 Jun 2019 14:30:42 +0000
Received: from mx2.didichuxing.com ([36.110.17.22] helo=bsf01.didichuxing.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPyZ-0001iU-Jn
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 14:29:59 +0000
X-ASG-Debug-ID: 1561386577-0e40886efc18f480001-VMfPqL
Received: from BJEXCAS08.didichuxing.com (bogon [172.20.36.203]) by
 bsf01.didichuxing.com with ESMTP id UooTDiNe2MZyyI4j;
 Mon, 24 Jun 2019 22:29:37 +0800 (CST)
X-Barracuda-Envelope-From: zhangweiping@didiglobal.com
Received: from 192.168.3.9 (172.22.50.20) by BJSGEXMBX03.didichuxing.com
 (172.20.15.133) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 24 Jun
 2019 22:29:37 +0800
Date: Mon, 24 Jun 2019 22:29:36 +0800
From: Weiping Zhang <zhangweiping@didiglobal.com>
To: <tglx@linutronix.de>, <axboe@kernel.dk>, <tj@kernel.org>, <hch@lst.de>,
 <bvanassche@acm.org>, <keith.busch@intel.com>, <minwoo.im.dev@gmail.com>
Subject: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous affinity
 set
Message-ID: <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
X-ASG-Orig-Subj: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous
 affinity set
Mail-Followup-To: tglx@linutronix.de, axboe@kernel.dk, tj@kernel.org,
 hch@lst.de, bvanassche@acm.org, keith.busch@intel.com,
 minwoo.im.dev@gmail.com, linux-block@vger.kernel.org,
 cgroups@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Originating-IP: [172.22.50.20]
X-ClientProxiedBy: BJEXCAS03.didichuxing.com (172.20.36.245) To
 BJSGEXMBX03.didichuxing.com (172.20.15.133)
X-Barracuda-Connect: bogon[172.20.36.203]
X-Barracuda-Start-Time: 1561386577
X-Barracuda-URL: https://bsf01.didichuxing.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at didichuxing.com
X-Barracuda-Scan-Msg-Size: 756
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0002 1.0000 -2.0200
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
 SCORE=-2.02 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73067
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072943_976047_4C2EA2BF 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The driver may implement multiple affinity set, and some of
are empty, for this case we just skip them.

Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>
---
 kernel/irq/affinity.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index f18cd5aa33e8..6d964fe0fbd8 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -295,6 +295,10 @@ irq_create_affinity_masks(unsigned int nvecs, struct irq_affinity *affd)
 		unsigned int this_vecs = affd->set_size[i];
 		int ret;
 
+		/* skip empty affinity set */
+		if (this_vecs == 0)
+			continue;
+
 		ret = irq_build_affinity_masks(affd, curvec, this_vecs,
 					       curvec, masks);
 		if (ret) {
-- 
2.14.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
