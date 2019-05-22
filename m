Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0ED26B46
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 21:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16/bmQHkrK/De/SNtQI5KnPcvZ3RufKPeNxqvVyjpQw=; b=aPiDk7GaYA6Glr
	E44ZQUo4p+u7DJ7shziO5jxEZK4CWvFkS9BlK3EjuNfckeTgagekWmXgp4Xwn06Mh2hQdIq9dAk38
	Dk7Fxr3A8oypu0rge7KvjTfsh9w8dn8ifLn2Fu1O82CDB0vQTeCY3IcDoz2b1a7b1X+N3Q52XxRzM
	n3rZ7Pzc1JCgj/kZS6YevnFRp0LM8ywf7qMrNuszFJjhgCYJ4SjCFF3JTYYMr6/VrGVPDpnL2UZjT
	Bf0rNsVm49HFmPXNh/ByIl7TjS1SEEvRF4yP/hvbKQ9Gh3EjUB/gBieF4/+7wHGablItu8TfT9+Wm
	RinHGtWm4OT99eRuXU9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWsM-0003ZL-BU; Wed, 22 May 2019 19:26:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWs5-0003Ly-5F
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 19:25:54 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4492A217F9;
 Wed, 22 May 2019 19:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558553152;
 bh=lmU9g21+k0C40muQus4b77NNYcsDPyTrcPmreAglkX8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0WN+tFWnCldHJFWb2VXDELux2bdm//DOEhGtqV3bQvwg/TQIe/3bG2FrWlgMe6USz
 fOpjafnhj0sidNSz+ogi4sAhC7Y+4Sj3iDNIk8f9HeT3TMGM0dfepBi5cF1Ex+KZiZ
 LQ2DhF6W2Y71tXVcj40OziXD+OzVJxMwJ2ZIp4pU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.0 080/317] nvme-tcp: fix a NULL deref when an admin
 connect times out
Date: Wed, 22 May 2019 15:19:41 -0400
Message-Id: <20190522192338.23715-80-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522192338.23715-1-sashal@kernel.org>
References: <20190522192338.23715-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_122553_211348_B37ED21C 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 7a42589654ae79e1177f0d74306a02d6cef7bddf ]

If we timeout the admin startup sequence we might not yet have
an I/O tagset allocated which causes the teardown sequence to crash.
Make nvme_tcp_teardown_io_queues safe by not iterating inflight tags
if the tagset wasn't allocated.

Fixes: 39d57757467b ("nvme-tcp: fix timeout handler")
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/tcp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 5f0a004252422..e71b0058c57bd 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1686,7 +1686,9 @@ static void nvme_tcp_teardown_admin_queue(struct nvme_ctrl *ctrl,
 {
 	blk_mq_quiesce_queue(ctrl->admin_q);
 	nvme_tcp_stop_queue(ctrl, 0);
-	blk_mq_tagset_busy_iter(ctrl->admin_tagset, nvme_cancel_request, ctrl);
+	if (ctrl->admin_tagset)
+		blk_mq_tagset_busy_iter(ctrl->admin_tagset,
+			nvme_cancel_request, ctrl);
 	blk_mq_unquiesce_queue(ctrl->admin_q);
 	nvme_tcp_destroy_admin_queue(ctrl, remove);
 }
@@ -1698,7 +1700,9 @@ static void nvme_tcp_teardown_io_queues(struct nvme_ctrl *ctrl,
 		return;
 	nvme_stop_queues(ctrl);
 	nvme_tcp_stop_io_queues(ctrl);
-	blk_mq_tagset_busy_iter(ctrl->tagset, nvme_cancel_request, ctrl);
+	if (ctrl->tagset)
+		blk_mq_tagset_busy_iter(ctrl->tagset,
+			nvme_cancel_request, ctrl);
 	if (remove)
 		nvme_start_queues(ctrl);
 	nvme_tcp_destroy_io_queues(ctrl, remove);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
