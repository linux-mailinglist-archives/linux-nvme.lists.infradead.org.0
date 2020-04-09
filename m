Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC9F1A37CB
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJmDrB8NdqH1uAcTPUogYTaJZwPWaknbX1a2vEMC/+A=; b=Ix5zpOYogCuHs3
	oba/s0F+hAwjHwBwEDYbaMI9F8fuT9/TMlmnSyTPib9vZvMGtoj6c4LgU+wlZX7ydELUpwjJC8KrX
	3I2WRxBxelMlr3ILF8W78kKFbsjnuz1AmJ4RQvGLReBRqTawNWnYkYKwl4RErCkJEJo50n67mkWTK
	oqh7KO10PlLySSiqIFDxtnDWHhkjyDcyjO+Yehdvlli0yix8riyA2El341A5EqzPYN3k9G8pq0ol9
	aY3pjhQxAZPUbCqqi3foDAotE1bS2niRsNik8H5tsieX6ulBq2gfTvsV5V8O2EJQxwl02m+pCWAIw
	XHNW6umUVveA8N84bhMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZke-0002BQ-W3; Thu, 09 Apr 2020 16:10:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjs-0001Qz-9m
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:13 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A925A20B1F;
 Thu,  9 Apr 2020 16:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448552;
 bh=HdjLwQ7FiFGYCZyINRL8NdLRoZHOaJx+DTX2JPgu6g0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qc1IoP2cjQjITJbANWJ5sDiI3CH3FDhPlpB/ghTba8/yeD5qgfs+VsUsPifv2jeNl
 vleIgEhR/HACw2MDwQzLU7UEo8UKiXRDYaPuXjA5dGCjrOkflZueFg9Ta3dp42Nfhv
 nbOBM0xa9JvzqdhWm7PGCqajblAHVRUxcYkQktDY=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 04/10] nvme: check namespace head shared property
Date: Thu,  9 Apr 2020 09:09:02 -0700
Message-Id: <20200409160908.1889471-5-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090912_355060_4063F436 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reject a new shared namespace if a duplicate unshared namespace exists.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 3 ++-
 drivers/nvme/host/nvme.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index be2d856923e8..09ffb2d85854 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3496,8 +3496,9 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 			ret = PTR_ERR(head);
 			goto out_unlock;
 		}
+		head->shared = is_shared;
 	} else {
-		if (!is_shared) {
+		if (!is_shared || !head->shared) {
 			dev_err(ctrl->device,
 				"Duplicate unshared namespace %d\n",
 					nsid);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 36f44b79bb3b..6222439a0776 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -352,6 +352,7 @@ struct nvme_ns_head {
 	struct nvme_ns_ids	ids;
 	struct list_head	entry;
 	struct kref		ref;
+	bool			shared;
 	int			instance;
 #ifdef CONFIG_NVME_MULTIPATH
 	struct gendisk		*disk;
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
