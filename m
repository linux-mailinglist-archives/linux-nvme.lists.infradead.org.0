Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2338F86BEF
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pxiMfY5fgWTFA2vHUcV6cvXWaD3bz+5FEumGyXOht+M=; b=e54rFeJc1h/2KYyNwVZ4kszHDY
	tY1SYzG5WnxNkWmoUHLw7/47W46KPQxmkrmLgMqTPiRNXRyKFUIZmt7VvxSQL9YHIHr8UTNoCgKxz
	syZURkRCGdJwXoxOncyBsNCNRI4hOQoT1XTalWbTlmwbPZC68f9j07axgremn1eD4ZUEFsFL9x8Qf
	CKv94jvVHSGFQ9H7v71LZCbJsNpebuzFtAH3F1CNEC5CG3NHC+NePSIRR3Yz4QIVr40tDkVzafvbB
	DewUfCd1Oki3zyxV/otNUczvTc2CT2EwhanADH6/v9ekqX1DN+qr9U20CmpAV5fXWJveHfFyKk8D1
	6JyPKlSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpQ3-0001RI-7b; Thu, 08 Aug 2019 20:53:55 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPf-00013b-RP; Thu, 08 Aug 2019 20:53:31 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 2/7] nvme: return nvme_error_status for sync commands
 failure
Date: Thu,  8 Aug 2019 13:53:20 -0700
Message-Id: <20190808205325.24036-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
References: <20190808205325.24036-1-sagi@grimberg.me>
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

callers should not rely on raw nvme status, blk_status_t
is more appropriate.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d2b4f57fa67e..f435c85c4062 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -803,7 +803,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 	if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
 		ret = -EINTR;
 	else
-		ret = nvme_req(req)->status;
+		ret = nvme_error_status(req);
  out:
 	blk_mq_free_request(req);
 	return ret;
@@ -894,7 +894,7 @@ static int nvme_submit_user_cmd(struct request_queue *q,
 	if (nvme_req(req)->flags & NVME_REQ_CANCELLED)
 		ret = -EINTR;
 	else
-		ret = nvme_req(req)->status;
+		ret = nvme_error_status(req);
 	if (result)
 		*result = le32_to_cpu(nvme_req(req)->result.u32);
 	if (meta && !ret && !write) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
