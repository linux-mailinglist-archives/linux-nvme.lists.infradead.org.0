Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E49E5A9F
	for <lists+linux-nvme@lfdr.de>; Sat, 26 Oct 2019 15:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jh/4JQr5iuL7KhdDmzQuqGAvkiml3x1dzUxYKl+ti6Y=; b=d9VdCF4S7K9r/F
	l1+Uje9kuOVRnjOSWLlYOdb+kML/G8fkY0spLLPg9BaDlpLy9MFi1GxTQ+pdZ+eE6uXpOkr0qgq0Q
	5KIY+yhhlGRFPW1p/4Nl8bK9ASGA9WZjR62oW79v0Me42dC7EedkUnsJ5X43t+I3zZMg31lShHok5
	w21neyvFX/1ouG+ThDeMM2ZOaVf0wy+0pFzfZu54DsErVZZminU29kDjPIJOpvtUKvHKj8V+HR1p8
	/ZGya4ABstew+ab2TYtvHhuSoDTzasL+mYLBamCUDsK9SW3DRX0AuFP8s0sRHI7jQxF5UGGv32BL8
	u4VgMPg5cGPNkIfwIJtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOLva-0006TH-CT; Sat, 26 Oct 2019 13:16:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOLvV-0006SJ-HW
 for linux-nvme@lists.infradead.org; Sat, 26 Oct 2019 13:16:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B4DF214DA;
 Sat, 26 Oct 2019 13:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572095777;
 bh=gr1+NPhVim/8WT4tXIGJW3bwKLIyO44ri2y1KKXTKok=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wJj6O8pDdjmKb2i1h8p3TEuW1wxVTYbWve79Fxqz4L5bbhIFIEzOBThNBBMGAtNgk
 vGDcDSk4pTHyWTXT2k4L1D4M7JB9XbGMRP85SChDRqH06h9pWh7ru+hRgKD3Z0A9JR
 zAGSjCj8h3A/ILAb+LkLnA4ROGDaw9wshR9fxhgg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 08/99] nvme: fix possible deadlock when
 nvme_update_formats fails
Date: Sat, 26 Oct 2019 09:14:29 -0400
Message-Id: <20191026131600.2507-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191026131600.2507-1-sashal@kernel.org>
References: <20191026131600.2507-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_061617_601724_09401A1C 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Judy Brock <judy.brock@samsung.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 6abff1b9f7b8884a46b7bd80b49e7af0b5625aeb ]

nvme_update_formats may fail to revalidate the namespace and
attempt to remove the namespace. This may lead to a deadlock
as nvme_ns_remove will attempt to acquire the subsystem lock
which is already acquired by the passthru command with effects.

Move the invalid namepsace removal to after the passthru command
releases the subsystem lock.

Reported-by: Judy Brock <judy.brock@samsung.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d3d6b7bd69033..7284bee560a0f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1304,8 +1304,6 @@ static void nvme_update_formats(struct nvme_ctrl *ctrl)
 		if (ns->disk && nvme_revalidate_disk(ns->disk))
 			nvme_set_queue_dying(ns);
 	up_read(&ctrl->namespaces_rwsem);
-
-	nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
 }
 
 static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
@@ -1321,6 +1319,7 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
 		nvme_unfreeze(ctrl);
 		nvme_mpath_unfreeze(ctrl->subsys);
 		mutex_unlock(&ctrl->subsys->lock);
+		nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
 		mutex_unlock(&ctrl->scan_lock);
 	}
 	if (effects & NVME_CMD_EFFECTS_CCC)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
