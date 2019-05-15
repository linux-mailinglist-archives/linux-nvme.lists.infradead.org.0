Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7041F8CD
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 18:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ebznPSxg2L7v4H4DHz9vzusdlT3Hn8g+gogufZDFkRg=; b=tYYJ1HEaVyLvuk5LiMfXwQxkqI
	WHlbbfmaEBeESutxsDRk+fXFsiUNV6w6ceCg73mzJX/wvhmTSJJz4BlZH19n7iSflVARya5/0RPUJ
	zKeGqaoJn9emx0V6CSLpCtMjmctKr2FwUMJ8P1C1gxSRQpSF5BXr0CKSHbfvH/DDZBKWkUvcwHI0x
	AOf/c2+FHBKoNr88gkpdAFnA6MDhWXMQhIE+lby6y3hbDuGdhuXSCHfRbshP72jQ43DmSqzSlJ/NX
	QJ3iaG+9VTXXDGGUpFvIX3vNzwKP8MR9oGXVuTuP5r/5mz3KdO6KKbiATEoeeA4aiB99lYYFs03Fc
	HKrihMig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwyZ-0006gz-C8; Wed, 15 May 2019 16:41:55 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwyU-0006fj-1N
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 16:41:51 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 09:41:48 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2019 09:41:48 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH 2/6] nvme-pci: Don't disable on timeout in reset state
Date: Wed, 15 May 2019 10:36:21 -0600
Message-Id: <20190515163625.21776-2-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190515163625.21776-1-keith.busch@intel.com>
References: <20190515163625.21776-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094150_236602_1BF54B34 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Rafael Wysocki <rafael@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The driver doesn't dispatch commands that it needs to wait for in the reset
state anymore. If a timeout occurs in this state, the reset work is
already disabling the controller, so just reset the request's timer.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index d4e442160048..c72755311ffa 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1298,13 +1298,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 		shutdown = true;
 		/* fall through */
 	case NVME_CTRL_CONNECTING:
-	case NVME_CTRL_RESETTING:
 		dev_warn_ratelimited(dev->ctrl.device,
 			 "I/O %d QID %d timeout, disable controller\n",
 			 req->tag, nvmeq->qid);
 		nvme_dev_disable(dev, shutdown);
 		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
 		return BLK_EH_DONE;
+	case NVME_CTRL_RESETTING:
+		return BLK_EH_RESET_TIMER;
 	default:
 		break;
 	}
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
