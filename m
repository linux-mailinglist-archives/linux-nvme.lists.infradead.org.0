Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C40AA2969
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xfaYY68hO+uJ7RtF4/nHeicLH6LU8AfL0ZSc1w3eoK4=; b=BTvzuJD9cdqAMbwrAMqHeKXNIy
	i/EMs7a+4Gro7u5wfYhs3aYMIn0TETqxNV00pHWQ/PFvz5AMYW4HxXUwB9g+t9bWNf40bz6NRk8bI
	UuMoXVGNnsj0N7J3XMGAIMv3jNkVF224v8A6Ek8hr+bFij22BYMBkAT/MmyQOrM+42OrbJb3kVZ/f
	DhXxX1LLgZRYiRTme+d15eORn6WMMyin42ZxRwtbWP4Z1ebGHGFB4w8Pw+5s9sWfjUAjFxV6DkZSH
	qsit0koAIwVvpBP8GPKlyyGRUvCG/hJm0323+Wye+vhDDxw996sLu6p+B3mLOXvECthRGZh7q3UeX
	0UD7VsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SaM-0000Pq-DY; Thu, 29 Aug 2019 22:08:06 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ7-0007dt-E6; Thu, 29 Aug 2019 22:06:49 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 7/9] nvme: pass status to nvme_error_status
Date: Thu, 29 Aug 2019 15:06:43 -0700
Message-Id: <20190829220645.5480-8-sagi@grimberg.me>
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

No need for the full blown request structure.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 0916c0e8d572..8f0881dec907 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -197,9 +197,9 @@ static inline bool nvme_ns_has_pi(struct nvme_ns *ns)
 	return ns->pi_type && ns->ms == sizeof(struct t10_pi_tuple);
 }
 
-static blk_status_t nvme_error_status(struct request *req)
+static blk_status_t nvme_error_status(u16 status)
 {
-	switch (nvme_req(req)->status & 0x7ff) {
+	switch (status & 0x7ff) {
 	case NVME_SC_SUCCESS:
 		return BLK_STS_OK;
 	case NVME_SC_CAP_EXCEEDED:
@@ -262,7 +262,7 @@ static void nvme_retry_req(struct request *req)
 
 void nvme_complete_rq(struct request *req)
 {
-	blk_status_t status = nvme_error_status(req);
+	blk_status_t status = nvme_error_status(nvme_req(req)->status);
 
 	trace_nvme_complete_rq(req);
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
