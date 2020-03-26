Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 250D2194C95
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Mar 2020 00:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0VXBZSk0Hqqmyvunw40yp0wTzOcy++F22mktW3hHFA=; b=FoOOux1AjHa+kz
	ZLZThZnW6r0bUEu3a6dPSjZr01kUI7zX9CamnKAiZXApqgb5PQVI0dQf/nsNesi5pHxuB4xd95z2u
	LcZyO6tUukUNUl6dYnpmGzZQBoIfgMWIJ1CU4QNMDZLkW+/+i8i9lFLu6EU7taX4h9z+X7x3a7Bbm
	xNS6BTsDdVPBtwHVb6A7D5Mtm8cW0pWG/au2D0LChr2zutg+cx/nQQVKvDV2O3tmULevtO1gHP98b
	PkvJ64qXJSzkO7USNQEgCs3U0hiuXEWbe/J/KAbnsG9DJOFBc7bWsCZvOONLpA/e/LtBYD7CQADQ/
	w16juRw/mo1+AWYzcs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbsd-0003OB-Li; Thu, 26 Mar 2020 23:25:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbrv-0001jz-3z
 for linux-nvme@lists.infradead.org; Thu, 26 Mar 2020 23:25:01 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CEA620409;
 Thu, 26 Mar 2020 23:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585265098;
 bh=1vNw19HI8j9c2EMi/E+spM3gRrZZKk18DlrDK2kPTUg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sra4RmPvNwLaqYNpRfIWP6PNVBOBCfdhqO+5GguhcyisOF7E2uz8xj1O1SoOLfkOs
 av0ZcpqKKBGBd/2fsMeR0LKHcGb9JvjWAHohueTPDhR14qltcp0N3Y/RmVEG+BML5y
 pyjmbsI2gUL4PN3SkUxsfuYRyeEWptkFfwf4QUPE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 02/15] nvme-rdma: Avoid double freeing of async
 event data
Date: Thu, 26 Mar 2020 19:24:42 -0400
Message-Id: <20200326232455.8029-2-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326232455.8029-1-sashal@kernel.org>
References: <20200326232455.8029-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162459_205034_CF5F9A2B 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-nvme@lists.infradead.org,
 Roland Dreier <roland@purestorage.com>, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <kbusch@kernel.org>, Prabhath Sajeepa <psajeepa@purestorage.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Prabhath Sajeepa <psajeepa@purestorage.com>

[ Upstream commit 9134ae2a2546cb96abddcd4469a79c77ee3a4480 ]

The timeout of identify cmd, which is invoked as part of admin queue
creation, can result in freeing of async event data both in
nvme_rdma_timeout handler and error handling path of
nvme_rdma_configure_admin queue thus causing NULL pointer reference.
Call Trace:
 ? nvme_rdma_setup_ctrl+0x223/0x800 [nvme_rdma]
 nvme_rdma_create_ctrl+0x2ba/0x3f7 [nvme_rdma]
 nvmf_dev_write+0xa54/0xcc6 [nvme_fabrics]
 __vfs_write+0x1b/0x40
 vfs_write+0xb2/0x1b0
 ksys_write+0x61/0xd0
 __x64_sys_write+0x1a/0x20
 do_syscall_64+0x60/0x1e0
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Reviewed-by: Roland Dreier <roland@purestorage.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Prabhath Sajeepa <psajeepa@purestorage.com>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/rdma.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index e4f167e35353f..9711bfbdf4316 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -815,9 +815,11 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (new)
 		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.admin_tagset);
 out_free_async_qe:
-	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
-		sizeof(struct nvme_command), DMA_TO_DEVICE);
-	ctrl->async_event_sqe.data = NULL;
+	if (ctrl->async_event_sqe.data) {
+		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
+			sizeof(struct nvme_command), DMA_TO_DEVICE);
+		ctrl->async_event_sqe.data = NULL;
+	}
 out_free_queue:
 	nvme_rdma_free_queue(&ctrl->queues[0]);
 	return error;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
