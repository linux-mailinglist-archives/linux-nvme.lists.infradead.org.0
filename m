Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9588040A
	for <lists+linux-nvme@lfdr.de>; Sat,  3 Aug 2019 04:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pxiMfY5fgWTFA2vHUcV6cvXWaD3bz+5FEumGyXOht+M=; b=AY1fol72QPYi8MXxx9ytfWYBZ+
	53jqaFB1mrvxtSsI7TY/XaBFWiYntSAUNvojTq8s20UEpne1VfCdlhxEeOObwl+UODRlo2CDfKvoc
	1z6PmhbJLlkYJpoGOrZEwHAdEYtMimdq3sWD3zB+YT+IjY/wTdVCjTlqb+icm0De671UMY0ASZndn
	tABUlnoLJUhascACqFewUSt7BbYVJH7kj2YcUKlVJHDzkkwZBsWvANC2TIygYu3LgDqFQc5Bj7she
	s5p5t728FQLKCAPmjYHOxQ58ve3wnGrMF0jZS06kbmnE69LH91upA9fMo3V/B94VgjEBZc+2/0pYH
	J3/+sExQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htk7S-0006C5-At; Sat, 03 Aug 2019 02:50:06 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htk7N-00060U-30; Sat, 03 Aug 2019 02:50:01 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Subject: [PATCH rfc v2 2/6] nvme: return nvme_error_status for sync commands
 failure
Date: Fri,  2 Aug 2019 19:49:51 -0700
Message-Id: <20190803024955.29508-3-sagi@grimberg.me>
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
