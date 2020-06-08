Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB21F239B
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 01:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMokwrNCNm65PtK+OLCuvPLgGoI9/vB8D9JncY8EwN4=; b=tFGtn0DuBPSxBr
	sV0JGoON8laVSFr77YT6ycgcuLbIYbQbdhEwIvlc7vFIrS+UJf3IhXC8UoLtv+DSG33VXzGqXlNX4
	akryuEUuJC9z9enfARZXNhN36rBr3uCSZDripAT4RT5OK5T65u5vwlTBSa6kfzN157ItSeUSiZc/5
	7IUy8yaQPkSO1D2b3yufAEfnMVChGGpb7voU4AjHLz8C16bqaq1j49vACSBuRnYNfwCiap0oVc8dY
	yATWqiXNmDN1z4JOwmLI4jwcQBgYEQKfejYtsp/cz9fSLJwtIbDJBtrtGkZvR1byfTkvN+qRiuBHR
	WJfLWz2+0wIn1qbzzbEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQzu-0002s5-2N; Mon, 08 Jun 2020 23:16:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQu6-0001Xj-NH
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 23:10:09 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7CC7720897;
 Mon,  8 Jun 2020 23:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657804;
 bh=65ENYAQRWakhPRgaNzD0irL6QZnR+Xw7OGN49opy4QQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=03m8R1XDD8wN4ItpDJXJpe/KgYF2BVkPFbVhPoGg96Xf89uiJ+IMmrW6clsLNhHsQ
 jONdHRIdcdgKWzmHTZha2Nub0COj/c6PgRpdB38cayAWxvUi0GJiR2LnXtuudfPsrw
 q+2gkQLZ30kfS5MUUpmo3r7bcoTVnu3sq0Hb9QEA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 181/274] nvme-fc: avoid gcc-10 zero-length-bounds
 warning
Date: Mon,  8 Jun 2020 19:04:34 -0400
Message-Id: <20200608230607.3361041-181-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161007_431134_5D135C05 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 3add1d93d9919b6de94aa47900d4904adffbc976 ]

When CONFIG_ARCH_NO_SG_CHAIN is set, op->sgl[0] cannot be dereferenced,
as gcc-10 now points out:

drivers/nvme/host/fc.c: In function 'nvme_fc_init_request':
drivers/nvme/host/fc.c:1774:29: warning: array subscript 0 is outside the bounds of an interior zero-length array 'struct scatterlist[0]' [-Wzero-length-bounds]
 1774 |  op->op.fcp_req.first_sgl = &op->sgl[0];
      |                             ^~~~~~~~~~~
drivers/nvme/host/fc.c:98:21: note: while referencing 'sgl'
   98 |  struct scatterlist sgl[NVME_INLINE_SG_CNT];
      |                     ^~~

I don't know if this is a legitimate warning or a false-positive.
If this is just a false alarm, the warning is easily suppressed
by interpreting the array as a pointer.

Fixes: b1ae1a238900 ("nvme-fc: Avoid preallocating big SGL for data")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/fc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 7dfc4a2ecf1e..5ef4a84c442a 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1771,7 +1771,7 @@ nvme_fc_init_request(struct blk_mq_tag_set *set, struct request *rq,
 	res = __nvme_fc_init_request(ctrl, queue, &op->op, rq, queue->rqcnt++);
 	if (res)
 		return res;
-	op->op.fcp_req.first_sgl = &op->sgl[0];
+	op->op.fcp_req.first_sgl = op->sgl;
 	op->op.fcp_req.private = &op->priv[0];
 	nvme_req(rq)->ctrl = &ctrl->ctrl;
 	return res;
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
