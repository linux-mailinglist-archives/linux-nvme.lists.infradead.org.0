Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA38FA3E4E
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 21:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BOTkCeIUZs9CAJl686FPqVjpMWgLMb93Nz72cB4eI+A=; b=uezOV/MYIkkJxdFAZEjiwWTzO6
	Xkdl89QO+JouZTzpFGJCFRDwYPG0acjwJvr9BS64chOAr2Tn8kYXORXpo/mMCctAUWsR9fAhP01yu
	HzsI2ASKPeX+ObTn9j15LG43Ib5qVIKgjnVbI6zicrWI/cnim1sZb1KD7Tr1SQOunue0ADhoNkmBJ
	8iyWqon5D4mNQkD5EevqE3I0wYU80JSBofjVwHx9822TI5TMwqgKplqJq9EJ3TUCBZVoFJ9g0ek/q
	nBUpbLDjRaO0BIKkjKSH9fwjiKMgV85mUdOOYMm9I6f5yLvxCUkYBPFim7d15U+dIFO28Q7ZoXZDY
	esKNDe8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mRP-0003hn-7I; Fri, 30 Aug 2019 19:20:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mQV-00030j-PE; Fri, 30 Aug 2019 19:19:15 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v10 4/7] nvme: pass status to nvme_error_status
Date: Fri, 30 Aug 2019 12:19:11 -0700
Message-Id: <20190830191914.29713-5-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830191914.29713-1-sagi@grimberg.me>
References: <20190830191914.29713-1-sagi@grimberg.me>
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

No need for the full blown request structure.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 11ef174e8399..5e5ff7aab3ca 100644
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
