Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B83FED24
	for <lists+linux-nvme@lfdr.de>; Sat, 16 Nov 2019 16:42:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOf78aM5SvELJmESzGXZ5Zm0fPid5r3rIvCtpZ8izrk=; b=G06X6lf5QJi28/
	FyPIbuD7Lwqc6OLr9/zDB9tnwZ0lKDUeyv6PO5qFSkzrjPbL6EKGnArjvDntHJI9bZsE7L4khQ5mQ
	t3NgCquDZzzuynJg+zEpqb8xjLKwHusNHDzt+S+SZXbRkO3p3eDq02NSqfKb5yllh+tpsiAKUHJ9+
	j/sHTX9H8B6v6hE2ENmLHUsu4XW6O/PxfL4XJUJVYNnMbjfBPD88FItzrqM+wO9dhaCiqqtgDXqWg
	7JlC1jFx49z9NnbU0EZnrymkfOveei3hvyOcMZz95ybi45QhBCHQfmLBWWYpxEUOUTD/sTMj8TCu+
	ubsk6dXAgjsBYSVK0xIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0DS-0007ag-4y; Sat, 16 Nov 2019 15:42:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0DC-0007Uf-Pa
 for linux-nvme@lists.infradead.org; Sat, 16 Nov 2019 15:42:12 +0000
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C90892075E;
 Sat, 16 Nov 2019 15:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573918930;
 bh=Qu4UXCaOZOleywbTOQooncLWSu1yX+qQ4EtAGc3XE4c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TVfMaCZcp/C5cr4yZQe+mE2Xj3pRVEM6afsnqHMWn3/JNWdtWgRKT4c6cWMBd6M4H
 Oau0VHSRCYqmfGVHQAAeHaDKyjpndlRwWExLi+f3AQTYP+K2uhPxxbeLiZTR74tsgl
 8QResSjiYLnu7AfT2NnlN/VhXnL0uNXY8duyK/hA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 057/237] nvmet-fcloop: suppress a compiler warning
Date: Sat, 16 Nov 2019 10:38:12 -0500
Message-Id: <20191116154113.7417-57-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154113.7417-1-sashal@kernel.org>
References: <20191116154113.7417-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_074210_845223_65DC6F4E 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Sasha Levin <sashal@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit 1216e9ef18b84f4fb5934792368fb01eb3540520 ]

Building with W=1 enables the compiler warning -Wimplicit-fallthrough=3. That
option does not recognize the fall-through comment in the fcloop driver. Add
a fall-through comment that is recognized for -Wimplicit-fallthrough=3. This
patch avoids that the compiler reports the following warning when building
with W=1:

drivers/nvme/target/fcloop.c:647:6: warning: this statement may fall through [-Wimplicit-fallthrough=]
   if (op == NVMET_FCOP_READDATA)
      ^

Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/fcloop.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/nvme/target/fcloop.c b/drivers/nvme/target/fcloop.c
index 5251689a1d9ac..291f4121f516a 100644
--- a/drivers/nvme/target/fcloop.c
+++ b/drivers/nvme/target/fcloop.c
@@ -648,6 +648,7 @@ fcloop_fcp_op(struct nvmet_fc_target_port *tgtport,
 			break;
 
 		/* Fall-Thru to RSP handling */
+		/* FALLTHRU */
 
 	case NVMET_FCOP_RSP:
 		if (fcpreq) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
