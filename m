Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3EA86DDB
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x5+oWvIE/TAG+FXEx+xjSUs1qZYhbwQDYiQtG4/CP4U=; b=ZSaUGxlH/oMFGrjoRWQD0Oj2uG
	Uphip5j2SCyzAk7lpbRO1jktH8dS+U7n/tvoraa13XbOJJNZ1xjNiio/8MVTAccoj6CT6SyK9ckXZ
	Ed5W4/UgucOqyVfvlXlQoBcrNn/dYgmXvexsxFBLHZmao/xL4ngPcqFy70nkZzElgTjnc2z0h7FyE
	nPY5fM4dD+AFuvhGFJrg5dCVDprQOP76R+fjeyE0UMk72Kg16c85qCLE26HMCLLpjPwx4g3Sy6Z+r
	0C5OiC8AiUkvjxvxUgNWTYQs2DdcJTtU4T0LDbtggXp3afjA7aVqBTC+1ln/jy00ptgq8x4OnK+dZ
	Cz9V79Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrn1-0000i6-TA; Thu, 08 Aug 2019 23:25:47 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrmw-0000h8-8d; Thu, 08 Aug 2019 23:25:42 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 1/7] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
Date: Thu,  8 Aug 2019 16:25:30 -0700
Message-Id: <20190808232536.4258-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808232536.4258-1-sagi@grimberg.me>
References: <20190808232536.4258-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVME_SC_ABORT_REQ means that the request was aborted due to
an abort command received. In our case, this is a transport
cancellation, so host pathing error is much more appropriate.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
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
