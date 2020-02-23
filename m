Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0219F16939E
	for <lists+linux-nvme@lfdr.de>; Sun, 23 Feb 2020 03:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1yvYEIrGPGr9kcryvddYeUVAuN/WjJUOUmtoFdyGaA=; b=pXiN2tXJWwTtlT
	3+wJY+4V+J8jhc2wG/vB1IaiNt06Y3jvj1/s4bWjSaQtY/1YMht53TB6M1yQosG/Ffztn3KQoFqZP
	QH3CcpBh03ERHCJFxuvoyhyipbNdDy/jloLPtO+AGOX+2pMKNsbt7e1uG1lPhoFu++7V99cPhiD2a
	9yZLrnczTEATrFzU8a/jP/dHCMns6fY7ml180zKTTbld1aJVdVVB/I/HleRjTssj6jDPGSpyXpclZ
	4ShjPz3PkJVQXyIAU6aIyhbba2jLw6jl6TEKAbCtvxL0dYx8StxnycHO1kGtf4vRUVt8DrWjW4f23
	11nbE35oZVJ7NwhyeMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5gwL-0003H5-2U; Sun, 23 Feb 2020 02:24:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gve-0002pj-LL
 for linux-nvme@lists.infradead.org; Sun, 23 Feb 2020 02:23:36 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77FE62071E;
 Sun, 23 Feb 2020 02:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424614;
 bh=cACRJLPYJUGqekbbL6xWCecdMYb50zkd2HoNIw//Oyc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b6XNaKwCrdR/zoLjg2tZ1IgNynM8WaXGtIOia6IA2gPnu1OqLzaIvUDDOYcMU46GV
 Wmq394k3rCrqeQvuiAC0VPsi5qm5MlOYP9okXRKoTd8XP+RY3GKOPeZJFtOwy+jBWX
 QgPhPoGrigHjyyAMYsvCSdt76QhVAciOvFO3sUiw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 48/50] nvme/tcp: fix bug on double requeue when
 send fails
Date: Sat, 22 Feb 2020 21:22:33 -0500
Message-Id: <20200223022235.1404-48-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022235.1404-1-sashal@kernel.org>
References: <20200223022235.1404-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_182334_735664_F45A23E6 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Anton Eidelman <anton@lightbitslabs.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Anton Eidelman <anton@lightbitslabs.com>

[ Upstream commit 2d570a7c0251c594489a2c16b82b14ae30345c03 ]

When nvme_tcp_io_work() fails to send to socket due to
connection close/reset, error_recovery work is triggered
from nvme_tcp_state_change() socket callback.
This cancels all the active requests in the tagset,
which requeues them.

The failed request, however, was ended and thus requeued
individually as well unless send returned -EPIPE.
Another return code to be treated the same way is -ECONNRESET.

Double requeue caused BUG_ON(blk_queued_rq(rq))
in blk_mq_requeue_request() from either the individual requeue
of the failed request or the bulk requeue from
blk_mq_tagset_busy_iter(, nvme_cancel_request, );

Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/tcp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 7544be84ab358..a870144542159 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1054,7 +1054,12 @@ static void nvme_tcp_io_work(struct work_struct *w)
 		} else if (unlikely(result < 0)) {
 			dev_err(queue->ctrl->ctrl.device,
 				"failed to send request %d\n", result);
-			if (result != -EPIPE)
+
+			/*
+			 * Fail the request unless peer closed the connection,
+			 * in which case error recovery flow will complete all.
+			 */
+			if ((result != -EPIPE) && (result != -ECONNRESET))
 				nvme_tcp_fail_request(queue->request);
 			nvme_tcp_done_send_req(queue);
 			return;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
