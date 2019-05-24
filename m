Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D184C29FCE
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 22:25:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iVpj2eI/ezGofSPxyanSZbgB99WXMFdvtYq1itbuypg=; b=Xp3lRMo0QriwVd4MofEt2gCTFj
	9a056LIEELBHBXRbpFYUYHcJYgTCu4yOr8OsMIEK3jHfjcLwmfrhMDe8hZ+bkMfiOnrT27tWRXg77
	lz9DNIowtmi4wgHtHRvTkx3qBrX2jIFFpSp25elWgi20VCwh131LFrMWEzaDQNIX0rLQsFMvYQxuS
	87K8MBTjwdUzTUhe/4DdbgP0ixvcvC/8020asVFlVfLWDijER2/IlbUK2ikKQ+lfaehcxYop9SMEs
	mUI3Di4XKfrxJRkwl7kdNM8/LDL3eXnSsfvyeExDaYEKyCl63FNHRm7EZViPNP0CzSBGOJCYJeu+U
	R6ywQ37g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGlB-00068U-OR; Fri, 24 May 2019 20:25:49 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGl7-00067L-1J
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 20:25:46 +0000
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
Subject: [PATCH 1/3] nvme-pci: reset timeout when processing is paused
Date: Fri, 24 May 2019 14:20:34 -0600
Message-Id: <20190524202036.17265-2-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190524202036.17265-1-keith.busch@intel.com>
References: <20190524202036.17265-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132545_085649_993EBB7E 
X-CRM114-Status: GOOD (  11.94  )
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

Do not escalate request timeout handling if the controller has
temporary paused command processing. We do not expect requests to
complete during this transient state, so just reset the timer.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f562154551ce..101e20522374 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1263,7 +1263,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	 * the recovery mechanism will surely fail.
 	 */
 	mb();
-	if (pci_channel_offline(to_pci_dev(dev->dev)))
+	if (pci_channel_offline(to_pci_dev(dev->dev)) || (csts & NVME_CSTS_PP))
 		return BLK_EH_RESET_TIMER;
 
 	/*
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
