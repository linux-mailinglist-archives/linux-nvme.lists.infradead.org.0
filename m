Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A5B8040B
	for <lists+linux-nvme@lfdr.de>; Sat,  3 Aug 2019 04:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3+qxPescGEuxqf2meTzFCsSpOycmh4tJWbarZcF9kM0=; b=FY/EPs20IJreRMqbCySs8DvXgZ
	WUojKBQfgMyMe1eHftP3rOWzrP7CWP5aVqyXCXTLh7jgEEDUqtKVB0Uc4nCVVzNEGfwl7+N6J15z9
	V3kvBvIzVXW+RyI7fRN6fykjiK8L4eP1bMcfMAfIZe7gXBjxGrwUim37G/HaH5sa/Nfz39TDo70R6
	iwOxIyv/RCqYRdzpi8cP23Q2W2zxYR0IOPMQA0gqkGZkSmpcemc7PNDh4N5CfuOzo1WhtL0cKeaeD
	h6MBW6/hFxFPP/DWelTTmRTtvrmTzaTCMZGQglUQ/wL6JyYUS01+IwslBTV3KzNSFh8J7l6xkHYK/
	IZ9/FqKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htk7e-0006pV-OY; Sat, 03 Aug 2019 02:50:19 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htk7M-00060U-Sx; Sat, 03 Aug 2019 02:50:00 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Subject: [PATCH rfc v2 1/6] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
Date: Fri,  2 Aug 2019 19:49:50 -0700
Message-Id: <20190803024955.29508-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190803024955.29508-1-sagi@grimberg.me>
References: <20190803024955.29508-1-sagi@grimberg.me>
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
Cc: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVME_SC_ABORT_REQ means that the request was aborted due to
an abort command received. In our case, this is a transport
cancellation, so host pathing error is much more appropriate.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6956041224ec..d2b4f57fa67e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -294,7 +294,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 	dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
 				"Cancelling I/O %d", req->tag);
 
-	nvme_req(req)->status = NVME_SC_ABORT_REQ;
+	nvme_req(req)->status = NVME_SC_HOST_PATH_ERROR;
 	blk_mq_complete_request_sync(req);
 	return true;
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
