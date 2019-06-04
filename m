Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D3435349
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:24:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjdB+PV1P22ouTIhYSYrzJvhrS+Jbe5R784U5ETwzks=; b=Nl1zBRRVujZc3f
	1Q9td7tSJpE+LZX5FQrXqU0aSBWzE0kdSCE/ONyhuI9IMGG5ELNQsYNzvxSGmFfp70mA/lhh3bG4J
	v4Osn/iwqvryptORryeaZqg6BJW6tswXFRLMBamZpxCGmoTCHZrjc/3xQ4xEuN9k89y+gc8cDUFb9
	S/YgoDxmbJ/8UhTEljfL+kFrbPRRjxcLPjI7iPjCeEAgonCG6/GXMyXFwGGFVzsItaB8Y/MFDUGRJ
	i8ApLUha8j8wR0VdGKDNW9h0kDsoCc1/JdMDaJVqo2Yy5dq+E2zYrbWnYe5wwUFYyr9CXM34Y166q
	wdZ4G4ChPAc9LOFlw/TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYIn1-0002JF-Ai; Tue, 04 Jun 2019 23:24:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYImj-00028D-9G
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:24:06 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48E2C20866;
 Tue,  4 Jun 2019 23:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690645;
 bh=gdp1gQtM2ceiyjQvm9vbN7CyP+I+8rGZ6ccZ02bLGLk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=13etlnz65dgoNHnwEbbAn711jhHhf/QfmSRdaN7CelQYFryLWN4+mzB5ifGqDXH+h
 2/pfOfJVp1aqs9tWoyM/HJUjDtUHmyJltTT68Kn3FLxw/nxt6Xj3szE8HH+Z7Tb2AQ
 zSfMuRFMxkdwDj0CFVvHG2a1Y+POlWqLJyw9YATo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 18/36] nvme: remove the ifdef around
 nvme_nvm_ioctl
Date: Tue,  4 Jun 2019 19:23:13 -0400
Message-Id: <20190604232333.7185-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232333.7185-1-sashal@kernel.org>
References: <20190604232333.7185-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162405_336197_762714B5 
X-CRM114-Status: GOOD (  10.97  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 3f98bcc58cd5f1e4668db289dcab771874cc0920 ]

We already have a proper stub if lightnvm is not enabled, so don't bother
with the ifdef.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 44d8077fbe95..1cdfea3c094a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1311,10 +1311,8 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
 	case NVME_IOCTL_SUBMIT_IO:
 		return nvme_submit_io(ns, (void __user *)arg);
 	default:
-#ifdef CONFIG_NVM
 		if (ns->ndev)
 			return nvme_nvm_ioctl(ns, cmd, arg);
-#endif
 		if (is_sed_ioctl(cmd))
 			return sed_ioctl(ns->ctrl->opal_dev, cmd,
 					 (void __user *) arg);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
