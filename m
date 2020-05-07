Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 322D81C8E94
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 16:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhCezuxvsnQaJwr+gGBJYQ56kT7zRNENKh9UJ/WkFlI=; b=HURozOpIpmt1aP
	d0Izg1v1C+cIx0RfdOS2FBveK3xBGAldPthHyEPkRtyzM923TsF9vHc5SZmoSgj8XBWoOn7Mq2NAo
	mfDBInEzZemt9JpcwLy5cwbUvDyFR3SleActTeqyFYO2Mt1mcK85EvgF7qUVMohVXC8lmWDl3/hJm
	Wbn8DK/VamngwaIiZcszP/d2ICZT4+YPOagYVeF0tNNe2YEaHSPbmp02qhhtVVez/TNpVm7fCrnHH
	mWYQ4O6jDp1DdgBAFVTmlmtUmlozCnRbyy8Ou2ovppVzGfuDyYTLxc09bllVnSA1zadHhjHBlQchd
	0BahHf4wKY6aNU4go1pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhWd-0002gl-Hu; Thu, 07 May 2020 14:29:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhWD-0002Vs-2u
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 14:28:58 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9839B2145D;
 Thu,  7 May 2020 14:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588861736;
 bh=VRow/RYNyGiN/xbCnoVo/KMBjw3N6M1fbQIfSiFNdYI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sMOtloB1Vj/iLrat/qx83zfLISbcs/2vqsMRC0XTiYWj6ickjNRXL7T9GsNI6j3IY
 3H523iKlse0jhKhpoaG2d0n9G3/bBcaEIpatP8i4ft9LbbUsxms9Jkvvh8m+LMVUmn
 BMhDjaTYySnH330XD9zjOZwPG77UlA2O+zfSEz0U=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 20/35] nvme: prevent double free in
 nvme_alloc_ns() error handling
Date: Thu,  7 May 2020 10:28:14 -0400
Message-Id: <20200507142830.26239-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507142830.26239-1-sashal@kernel.org>
References: <20200507142830.26239-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_072857_235680_84C806C5 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Niklas Cassel <niklas.cassel@wdc.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Niklas Cassel <niklas.cassel@wdc.com>

[ Upstream commit 132be62387c7a72a38872676c18b0dfae264adb8 ]

When jumping to the out_put_disk label, we will call put_disk(), which will
trigger a call to disk_release(), which calls blk_put_queue().

Later in the cleanup code, we do blk_cleanup_queue(), which will also call
blk_put_queue().

Putting the queue twice is incorrect, and will generate a KASAN splat.

Set the disk->queue pointer to NULL, before calling put_disk(), so that the
first call to blk_put_queue() will not free the queue.

The second call to blk_put_queue() uses another pointer to the same queue,
so this call will still free the queue.

Fixes: 85136c010285 ("lightnvm: simplify geometry enumeration")
Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f97c48fd3edae..31b7dcd791c20 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3566,6 +3566,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	return 0;
  out_put_disk:
+	/* prevent double queue cleanup */
+	ns->disk->queue = NULL;
 	put_disk(ns->disk);
  out_unlink_ns:
 	mutex_lock(&ctrl->subsys->lock);
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
