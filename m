Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B3B3534C
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y/QxxaVJF8GplIAjKIKA865+KT/VYRaLkXyB/9RbBw=; b=JUOMt9COMoU5ms
	JnUUng/sKdzCWsGu4uMy/NdM9HaN0GKClAHOtG5eXFJY0S/vUfOiKRG1uXYNEHYlKexa/YSU4sous
	nFvjzxAbkIBU+6gP2zwL/lyiHVuvS9n5/iZConB9py49tZu4xYYWcHRPCuvmOCdn14iX+sjo3Lu01
	sNh+reiJ1rYWAOvw1LUbgDP0OBDQTB8WJklgBG86GoBSuvl8WOrBp6tEZqJroCn2+ib9ngILjP5XW
	l0mxGTTXNzrWQBhWxcWCOOx7rdYpkHSQo2zaIn7zKpN2/czdHRNGvSHo1B2bURFgWTbd5KnIexfr9
	tDAXUJBSfBKNTjP44xjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYInF-0002eA-23; Tue, 04 Jun 2019 23:24:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYIml-00029W-LU
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:24:10 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F6192085A;
 Tue,  4 Jun 2019 23:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690647;
 bh=kChrSNIcXK0ycoxtm2AM0NIG8iR3/Ztr7GjHH/Ai/+w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iO7/2iJGEyPg7fqAR+2fQ1TZ7gIbxI5ziFvHCSJMz5LNItIjV5Mu/nUjZ+828rXJV
 XAd5pL+n19AmXg+NsXO0XgDw0YpNBRRQxPK5JlVmpAcLZjC3GTXrVJF3nM7Nxx5xHz
 0a/lnw+OhK2O5nVAYmbFZ/Wr8NNDWnK4yNcHZFwg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 20/36] nvme: release namespace SRCU protection
 before performing controller ioctls
Date: Tue,  4 Jun 2019 19:23:15 -0400
Message-Id: <20190604232333.7185-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232333.7185-1-sashal@kernel.org>
References: <20190604232333.7185-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162407_905739_260A3B8A 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 5fb4aac756acacf260b9ebd88747251effa3a2f2 ]

Holding the SRCU critical section protecting the namespace list can
cause deadlocks when using the per-namespace admin passthrough ioctl to
delete as namespace.  Release it earlier when performing per-controller
ioctls to avoid that.

Reported-by: Kenneth Heitke <kenneth.heitke@intel.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 82f5f1d030d4..818788275406 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1310,14 +1310,31 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	if (unlikely(!ns))
 		return -EWOULDBLOCK;
 
+	/*
+	 * Handle ioctls that apply to the controller instead of the namespace
+	 * seperately and drop the ns SRCU reference early.  This avoids a
+	 * deadlock when deleting namespaces using the passthrough interface.
+	 */
+	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
+		struct nvme_ctrl *ctrl = ns->ctrl;
+
+		nvme_get_ctrl(ns->ctrl);
+		nvme_put_ns_from_disk(head, srcu_idx);
+
+		if (cmd == NVME_IOCTL_ADMIN_CMD)
+			ret = nvme_user_cmd(ctrl, NULL, argp);
+		else
+			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
+
+		nvme_put_ctrl(ctrl);
+		return ret;
+	}
+
 	switch (cmd) {
 	case NVME_IOCTL_ID:
 		force_successful_syscall_return();
 		ret = ns->head->ns_id;
 		break;
-	case NVME_IOCTL_ADMIN_CMD:
-		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
-		break;
 	case NVME_IOCTL_IO_CMD:
 		ret = nvme_user_cmd(ns->ctrl, ns, argp);
 		break;
@@ -1327,8 +1344,6 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	default:
 		if (ns->ndev)
 			ret = nvme_nvm_ioctl(ns, cmd, arg);
-		else if (is_sed_ioctl(cmd))
-			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
 		else
 			ret = -ENOTTY;
 	}
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
