Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8332E16AC0C
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 17:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0lGG+9vTnNmhwU3AECdqv39scJmAYFi8IjpLMeUeeo=; b=qrth2p9BHZyVaE
	NixYvNzIbZvqvOCARKsGGbAqeo6wkllh8GoIriTTajK52H37EMLsHrSbxxBVcRerEUSRw8JMElkCB
	GDhvBvSRFL6W62mCNLIZ3mXziVL4D92EfTNYDqUvUKMYs1V2g0PAVsRvhbpQmguu9GskazvMjrF4I
	qwkKWqA0lj9ENaNvL+lNrd3coskEHzx6p8L1+D5BoTEUum+qxEjnJOt9s6yQ5IpClInnjfMFSJj9U
	J1/fn3Fa44W0yMM8KXw81bO9ZDSVBqFsv4HwyPNWlU1/9+qrJKLU1xGCzTRYAGKJJV+raUqAWp7qY
	wsrG6pOfw3/qVofO3MpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Gtb-0002kl-G5; Mon, 24 Feb 2020 16:47:51 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Gro-0001Mn-Nl
 for linux-nvme@bombadil.infradead.org; Mon, 24 Feb 2020 16:46:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=dSAsyR7/gzfJ7uqrRVQHeLA4KGykz6yPPEsyB6aCZp8=; b=FgISzfJcNcFL6BrTkFfrSEGBHJ
 VpTRmWzH71/JVQeBbSRsxV9fx33Ob3R8zr5iWP2OaV+urCUyI8Vl6UdAw2fk2ELQBFFnoCSWBAijE
 Ae43Uqii5iJqxET0FzzLhzxF2QKbp0A5ceaZiAqO4u3tja7erBcaw8cOofairyJuVjNmQS60VIvgE
 DQUpku+9z0vKGuxgPsbOK8K7Nkyp0i6SxZPeoXVMhC0mYKiDKWJlBr7bGP+m0s0unXGIrOxXLHpsY
 stVf0qUsHZ4zvx1/bAFW3ittLoH9sZRxxfqZ8JxmhbJSIXeN6QAvGdvFNLVYdAy0XgMlbJDv2UuVY
 7MAvezjA==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Grl-0002EY-6A
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 16:46:00 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Feb 2020 18:45:45 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 01OGji9O013647;
 Mon, 24 Feb 2020 18:45:45 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me,
 linux-rdma@vger.kernel.org, kbusch@kernel.org, hch@lst.de,
 martin.petersen@oracle.com
Subject: [PATCH 02/19] nvme: Add has_pi field to the nvme_req structure
Date: Mon, 24 Feb 2020 18:45:27 +0200
Message-Id: <20200224164544.219438-4-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200224164544.219438-1-maxg@mellanox.com>
References: <20200224164544.219438-1-maxg@mellanox.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

Transport drivers will use this field to determine if the request has PI.

Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/core.c | 6 ++++--
 drivers/nvme/host/nvme.h | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3a754e0..15d0863 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -470,6 +470,7 @@ static inline void nvme_clear_nvme_request(struct request *req)
 	if (!(req->rq_flags & RQF_DONTPREP)) {
 		nvme_req(req)->retries = 0;
 		nvme_req(req)->flags = 0;
+		nvme_req(req)->has_pi = false;
 		req->rq_flags |= RQF_DONTPREP;
 	}
 }
@@ -703,6 +704,8 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 		nvme_assign_write_stream(ctrl, req, &control, &dsmgmt);
 
 	if (ns->ms) {
+		nvme_req(req)->has_pi =
+			ns->features & NVME_NS_MD_CTRL_SUPPORTED;
 		/*
 		 * If formated with metadata, the block layer always provides a
 		 * metadata buffer if CONFIG_BLK_DEV_INTEGRITY is enabled.  Else
@@ -710,8 +713,7 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 		 * namespace capacity to zero to prevent any I/O.
 		 */
 		if (!blk_integrity_rq(req)) {
-			if (WARN_ON_ONCE(!(ns->features &
-					   NVME_NS_MD_CTRL_SUPPORTED)))
+			if (WARN_ON_ONCE(!nvme_req(req)->has_pi))
 				return BLK_STS_NOTSUPP;
 			control |= NVME_RW_PRINFO_PRACT;
 		}
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index fea20f1..99340d7 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -139,6 +139,7 @@ struct nvme_request {
 	u8			flags;
 	u16			status;
 	struct nvme_ctrl	*ctrl;
+	bool			has_pi;
 };
 
 /*
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
