Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA8910615F
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 06:56:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZYaJG2KnZIOnmSrlZgVm3IyxTBhzLHFhnIO644pD4E=; b=KEMbidDrfKtie2
	TafvF3VWz3DJ67b2+tI5YQ/IBfZ7BiHl0/Rod6RdSDp0l262SfKXmQBHLBdn5pPtnM2tXG0ooY1eT
	q3r5Sn31QSyqBwm2yMolOVjoijnXImxVhSZD9CkT+2Lo+9wBZ1luIRzVZj2uhK6BELYV2eiKDDgyp
	vl8Hj80mAULr+ayWLa4o7gALLdWP9ugLnkWljZxpV7H1yFsrMUKskv/cQ4+8E1hXRJgaE5lPYsPcl
	nSVIvS6mdwYvSU+ogaSBcrGfxTSl5uCbRakMF/i95Uy8yZ6x/aN5L8aTT2zy3zrxEVFrwYU2MdBcN
	Axpx8rcAXjxwFl0pPoEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1vY-0008QS-K2; Fri, 22 Nov 2019 05:56:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1pY-0001Fs-67
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 05:50:11 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBA2920718;
 Fri, 22 Nov 2019 05:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574401807;
 bh=Iv17XI1kZ8i57PKzy5lnBJCIm6Eq4Cz/eJFS8PDWT7c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GxmPgbxBRBWp5A0/CqqS69CwtMDiYZmKYT3RCL9H7VHEIMam+mHqrzGVDxgxYqGi5
 ffsYt+AAFV37B5VbdIPi2ZpwKvs9lskmD+v6LL1x3P5AtGkuqiCQT2AJXyn0ZiYDvr
 SjHaBAaHXvLxD39EnnfXcFS57XhIHZWwh8FRu0CM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 052/219] nvme: fix kernel paging oops
Date: Fri, 22 Nov 2019 00:46:24 -0500
Message-Id: <20191122054911.1750-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122054911.1750-1-sashal@kernel.org>
References: <20191122054911.1750-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_215008_289384_394C6E38 
X-CRM114-Status: GOOD (  10.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 092ff0520070fad8407b196f3bb6156ce77a6f98 ]

free the controller discard_page correctly.

Fixes: cb5b7262b011 ("nvme: provide fallback for discard alloc failure")
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ced70d37e0f9b..e9060317c1a7b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3569,7 +3569,7 @@ static void nvme_free_ctrl(struct device *dev)
 	ida_simple_remove(&nvme_instance_ida, ctrl->instance);
 	kfree(ctrl->effects);
 	nvme_mpath_uninit(ctrl);
-	kfree(ctrl->discard_page);
+	__free_page(ctrl->discard_page);
 
 	if (subsys) {
 		mutex_lock(&subsys->lock);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
