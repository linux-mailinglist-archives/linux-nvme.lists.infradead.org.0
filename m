Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDFC1147DF
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Dec 2019 20:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+m3BJ8FnoMU5lp8tohGTNmjITvxGjXLUDlBYryM1/8=; b=QqwI4q4y0jUpIX
	LAoMmHzm3xZODjtfvLAG0qM7Umx5vpUN6gGOT3sCWFy3LDs5RnEipJZG2PEVY4owtE8G9wm+WX2vq
	xPQ9x5uj7Lu/lSLdijiP4ZoeOWhxyO3gT0Dto826/BaJhNEamOSSP4VzFBo7XwK/Wzr2tcPRYlQ/s
	vXKybbG7BUrwLVVrLtM6cR8S4eEjYqR+S/T4vgLNr7nLtEkkzAuKRKQ+baNkUqNK4gru7Ou/sWv6a
	o+qEavqARiH2XqrSVjD638cfGflCyFo8qNaS5RLsAKZ2ODDMxZWlzYz5pZGoIlV+tZEDd/Tuq7/SK
	avLyTdKzczX6JRPg64eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxGC-0007ci-SZ; Thu, 05 Dec 2019 19:58:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxG8-0007bz-1p
 for linux-nvme@lists.infradead.org; Thu, 05 Dec 2019 19:57:58 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A2A620707;
 Thu,  5 Dec 2019 19:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575575870;
 bh=2CZ/7IK0hdwNECdWCHdyeQ2R92hFqMaeuEWhGbYELLM=;
 h=From:To:Cc:Subject:Date:From;
 b=wh4TQ0QkMeF8UUqbt/hTXcFUmgSLdOcccShWAKOSI12FnNxFraYLPOllOgXsxiI1I
 6kH1PwIdCrK06ZgiHxt+QVsUhuR0edYv7hGXIyQrbhwnRcnmtvmIDbTkXxfJtD7v8w
 xbOlB5l2fua9P0Uw5DBwqSD9gYdHDPEO5ZTSTCqU=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme: Translate more status codes to blk_status_t
Date: Fri,  6 Dec 2019 04:57:30 +0900
Message-Id: <20191205195730.5774-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_115756_113154_C6603434 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Hannes Reinecke <hare@suse.de>,
 John Meneghini <John.Meneghini@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Decode interrupted command and not ready namespace nvme status codes to
BLK_STS_TARGET. These are not generic IO errors and should use a non-path
specific error so that it can use the non-failover retry path.

Reported-by: John Meneghini <John.Meneghini@netapp.com>
Cc: Hannes Reinecke <hare@suse.de>
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2a84e1402244..f1731d847e38 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -222,6 +222,8 @@ static blk_status_t nvme_error_status(u16 status)
 	case NVME_SC_CAP_EXCEEDED:
 		return BLK_STS_NOSPC;
 	case NVME_SC_LBA_RANGE:
+	case NVME_SC_CMD_INTERRUPTED:
+	case NVME_SC_NS_NOT_READY:
 		return BLK_STS_TARGET;
 	case NVME_SC_BAD_ATTRIBUTES:
 	case NVME_SC_ONCS_NOT_SUPPORTED:
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
