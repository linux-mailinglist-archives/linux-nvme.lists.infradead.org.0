Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AE2A2962
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xPvxigyiS0FPKg0cV3fLztFvFaQoom+r9p1hVkxodtk=; b=AJy3kSBA8FZMS3tL1CSibfEtGa
	OE1f/U6aUmajn3GLwOXlnveU/hMks4Twb9LiyLltVLaNhvl5v3k1uDsEmUiKmL3dh8jQkGMVxNZn+
	aVM/f7TZ9E+Ow/jh9drrfdrHgHYzENVjLUXU8QszKru6tfk5XO9KXJA3JnDsJ1GMbGdJY6fAXP4Be
	CRcavP4HUE1VPFg4vww36rnuTebesyiIJR4UDLfLihrK0aH2BOzR759XoYUqZLP7tojmffkZXI7r4
	1mASGy27dCmnGZ7EMdvAmJ6J2js5+Hc648ccmjzHM1/xzKG8TeR7cVOgFDhUp2VS2SSJeaPwBn4qJ
	Qvtz1rgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SZB-0007fE-Mk; Thu, 29 Aug 2019 22:06:53 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ6-0007dt-3h; Thu, 29 Aug 2019 22:06:48 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 1/9] nvme: fail cancelled commands with
 NVME_SC_HOST_PATH_ERROR
Date: Thu, 29 Aug 2019 15:06:37 -0700
Message-Id: <20190829220645.5480-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829220645.5480-1-sagi@grimberg.me>
References: <20190829220645.5480-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVME_SC_ABORT_REQ means that the request was aborted due to
an abort command received. In our case, this is a transport
cancellation, so host pathing error is much more appropriate.

Also, convert NVME_SC_HOST_PATH_ERROR to BLK_STS_TRANSPORT for
such that callers can understand that the status is a transport
related error. This will be used by the ns scanning code to
understand if it got an error from the controller or that the
controller happens to be unreachable by the transport.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 0eb5c1bb2f48..11ef174e8399 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -226,6 +226,8 @@ static blk_status_t nvme_error_status(struct request *req)
 		return BLK_STS_PROTECTION;
 	case NVME_SC_RESERVATION_CONFLICT:
 		return BLK_STS_NEXUS;
+	case NVME_SC_HOST_PATH_ERROR:
+		return BLK_STS_TRANSPORT;
 	default:
 		return BLK_STS_IOERR;
 	}
@@ -294,7 +296,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 	if (blk_mq_request_completed(req))
 		return true;
 
-	nvme_req(req)->status = NVME_SC_ABORT_REQ;
+	nvme_req(req)->status = NVME_SC_HOST_PATH_ERROR;
 	blk_mq_complete_request(req);
 	return true;
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
