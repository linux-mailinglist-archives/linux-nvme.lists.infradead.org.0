Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628FB10ECB1
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 16:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GjCOvQZEk0Uowvf5p5+rsqrqJE/gnSyBEHzHpBMK20o=; b=GyWYRItlny72un
	7o7WQH0gbuVGe63JiecvCU2lvev4NUmUUD1hW8aJG/DQ3g/CALBTJUUR2sxHHe2bvgBnO2pr1oPRp
	g//wr+HJRw5TCWxN46/5qfJIgf+ft5FcUsseCNrFaNLbD6VgvKJwU4mjS0XxbLF6wdnMzI7ayWrQ9
	anWpCy/8J14AnlXXYHhHbXOv0kIP2Mc0DGp2Ho6Vkxnmj009LOOMjev0noggmIf9DxTKsQFJk9PCh
	L74zB4aIs6uuAT9r1JbfquNYJTGgItbRsOLzBn0K7fbvjBREE0LWAGYUqFj5Xrzv+zvPUhk/43oI/
	72NPVeBA8JfbjlcwmXWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibo3w-0001Nl-RF; Mon, 02 Dec 2019 15:56:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibo3s-0001NI-EX
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 15:56:33 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AF3B2071F;
 Mon,  2 Dec 2019 15:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575302192;
 bh=AkCSgQ9Hq3k6AKyOXWqFtNkWeUGQz+Bli6BIB5jGAeY=;
 h=From:To:Cc:Subject:Date:From;
 b=HtG4m0fLsm8b4hl/TZjXU0Uh93wrGBOzUvMxxwIwPAYhGENjMmQzqcE0bes0FNPJ+
 n/bgOuAJ5Qqgx2fkhQGPP9YboRFETXRwhm1znT3fmbWDjG8ycpjyDPWGnicCarbwmH
 iXEUHmlR309hc8ajr3IAYxw0NA8tk0GlZaQNVCS4=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Namepace identification descriptor list is optional
Date: Tue,  3 Dec 2019 00:56:11 +0900
Message-Id: <20191202155611.21549-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_075632_506745_140D69EE 
X-CRM114-Status: GOOD (  11.93  )
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
Cc: Keith Busch <kbusch@kernel.org>, Ingo Brunberg <ingo_brunberg@web.de>,
 hch@lst.de, stable@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Despite NVM Express specification 1.3 requires a controller claiming to
be 1.3 or higher implement Identify CNS 03h (Namespace Identification
Descriptor list), the driver doesn't really need this identification in
order to use a namespace. The code had already documented in comments
that we're not to consider an error to this command.

Return success if the controller provided any response to an
namespace identification descriptors command.

Fixes: 538af88ea7d9de24 ("nvme: make nvme_report_ns_ids propagate error back")
Reported-by: Ingo Brunberg <ingo_brunberg@web.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: stable@vger.kernel.org # 5.4+
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e6ee34376c5e..2a84e1402244 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1735,6 +1735,8 @@ static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
 		if (ret)
 			dev_warn(ctrl->device,
 				 "Identify Descriptors failed (%d)\n", ret);
+		if (ret > 0)
+			ret = 0;
 	}
 	return ret;
 }
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
