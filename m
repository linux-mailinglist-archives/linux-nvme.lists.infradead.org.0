Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44ED29FD0
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 22:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z/VsLXUZTLVxqJXh3cAq5iGd3VTjX6Ur/2JQJTRxZRE=; b=MIN7CdB6F7TqKcxflgOFoWac34
	nGvzaY+7svhP96ylLq3elBDKN9XCGmzl/XDXEYZXN63z2VTCMAyfTSWE8k6sy/qdLCjMhtIVXXG+7
	pFuMKm4zOwSfgbcsR1R+qszrBtXBrM99iDz7Ar50UhNfSrxuV+leHJi3qjKenKWoXRQSKdsxuNKTe
	UQF3wfIvASouZ0g8Ze7uRXRAEzyI5df7mFZRe4CrRZQAQYky8NgJLnv07ytEhR9nRZygIW9Zvb5t8
	JE6kHqxCT1xAyCJoFMoYahpBLoFlLL2KuoeDZS6ZWMliE+h94RnRzqJrJLhQZ+VHJOrqO2O5elqA+
	94L1TXAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGlO-0006KR-Sv; Fri, 24 May 2019 20:26:02 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGl8-00067G-73
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 20:25:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 13:25:43 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 24 May 2019 13:25:43 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH 2/3] nvme: rearm fw notification in admin only state
Date: Fri, 24 May 2019 14:20:35 -0600
Message-Id: <20190524202036.17265-3-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190524202036.17265-1-keith.busch@intel.com>
References: <20190524202036.17265-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132546_289055_78D7FBA0 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

Getting the firmware log is an admin command, so admin-only or live
states are valid to rearm the activation notice.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..96dac2292897 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3615,7 +3615,8 @@ static void nvme_fw_act_work(struct work_struct *work)
 		msleep(100);
 	}
 
-	if (ctrl->state != NVME_CTRL_LIVE)
+	if (ctrl->state != NVME_CTRL_LIVE &&
+	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
 		return;
 
 	nvme_start_queues(ctrl);
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
