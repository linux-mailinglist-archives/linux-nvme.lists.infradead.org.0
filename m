Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947DEA2367
	for <lists+linux-nvme@lfdr.de>; Thu, 29 Aug 2019 20:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s6veNuDORJj6RV4hQ/DF0zKGc0wJYf5ACslxs4/58K0=; b=lCyL27Knkbb87t
	Roi/AS7Hn3aW6YfL3fhEbUMLyEG+mB7XY1S8xTJACSRm9D5f/v6SI/p43XX/j+CFObQ6M2i09P3Zr
	S82dqEBHo2R20wWqY+L8B1LH7P31CWc9+RtqvHEBHnzrW3brjLXVXhGXjgLIkhQZ5dYAFqUTPC++g
	AmC5B14AQDYWqeAPACetsZRyATE07cjyGbVwptUYVnGu7IuGMksDfgM50Qey3x4xskG3oY0YyGich
	uaUZkBght5VVG8AvDQh/6uOHtSKV0WDRd27eGS+XM5EbWuG9XkL+8VatnvRJgO5AanmYz6y/pbVsm
	VTqVUaCSFKSoXGyj2bhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OxI-0006l5-Tt; Thu, 29 Aug 2019 18:15:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Owt-0006VP-CR
 for linux-nvme@lists.infradead.org; Thu, 29 Aug 2019 18:15:08 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58FFD23407;
 Thu, 29 Aug 2019 18:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567102507;
 bh=ZuIUC6IsQVsuToBGxQ468oPKs3JC4O7eQPHO/n+rARg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IjK1dCNizTWs/64teXanEf5d3U66QOeWyHKanaMuTYMH/eAYI9r71o9W2QxD8bn54
 kTuzA7oUkb9rTE+wK8S7d/o6YRupLiUeL1HC/7d30hwoXPHvoGeW+n8mymy9RIjfzL
 9px4wZtTlfxMq7QS8Imxr95aGJf4YIo3icTjiizU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 57/76] nvme: Fix cntlid validation when not using
 NVMEoF
Date: Thu, 29 Aug 2019 14:12:52 -0400
Message-Id: <20190829181311.7562-57-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190829181311.7562-1-sashal@kernel.org>
References: <20190829181311.7562-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_111507_444467_CD09D959 
X-CRM114-Status: GOOD (  12.19  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 "Guilherme G. Piccoli" <gpiccoli@canonical.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: "Guilherme G. Piccoli" <gpiccoli@canonical.com>

[ Upstream commit a89fcca8185633993018dc081d6b021d005e6d0b ]

Commit 1b1031ca63b2 ("nvme: validate cntlid during controller initialisation")
introduced a validation for controllers with duplicate cntlid that runs
on nvme_init_subsystem(). The problem is that the validation relies on
ctrl->cntlid, and this value is assigned (from id_ctrl value) after the
call for nvme_init_subsystem() in nvme_init_identify() for non-fabrics
scenario. That leads to ctrl->cntlid always being 0 in case we have a
physical set of controllers in the same subsystem.

This patch fixes that by loading the discovered cntlid id_ctrl value into
ctrl->cntlid before the subsystem initialization, only for the non-fabrics
case. The patch was tested with emulated nvme devices (qemu) having two
controllers in a single subsystem. Without the patch, we couldn't make
it work failing in the duplicate check; when running with the patch, we
could see the subsystem holding both controllers.

For the fabrics case we see ctrl->cntlid has a more intricate relation
with the admin connect, so we didn't change that.

Fixes: 1b1031ca63b2 ("nvme: validate cntlid during controller initialisation")
Signed-off-by: Guilherme G. Piccoli <gpiccoli@canonical.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5deb4deb38209..c40b807c667ed 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2543,6 +2543,9 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 			goto out_free;
 	}
 
+	if (!(ctrl->ops->flags & NVME_F_FABRICS))
+		ctrl->cntlid = le16_to_cpu(id->cntlid);
+
 	if (!ctrl->identified) {
 		int i;
 
@@ -2643,7 +2646,6 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 			goto out_free;
 		}
 	} else {
-		ctrl->cntlid = le16_to_cpu(id->cntlid);
 		ctrl->hmpre = le32_to_cpu(id->hmpre);
 		ctrl->hmmin = le32_to_cpu(id->hmmin);
 		ctrl->hmminds = le32_to_cpu(id->hmminds);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
