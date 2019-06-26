Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B0C56997
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 14:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IaFVFT24xOxYiy/OY4E/O6zbruFe7c4rzatWFmEfnjY=; b=ki25LMnRDLl+Qz
	4GgMegZeArLBmkdZe0VA0Hb48xSOo13ZMgvBSQcRilbG/pAY6ZalpBiIbVY3fCk6zfcmmSmKQ+C8w
	RX8zNYWoMBWNKmSyvt02peyZM38TtY7kcsIxlOqLzfBJePAgzIbFDvZRFWee/8OpmYvBj+XOla5BB
	rhxpNQX/oOtjpMrWJxT+DsDDJXAxhTNHU7kSumbRwIilT+nd2DIhOXjIKwI2TghmqfNvqMoUCwk6U
	gzMLozoG3hS+phjSYPTKvJDf2xXzZc14zyEqBj8IowsXJg4i2N+892uEBYIkUZXps+K8vbSz5FRCV
	stFWX2KdO0HR7TmgFwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg7H8-0007Ou-B7; Wed, 26 Jun 2019 12:43:46 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg7Gt-0007OK-Ln
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 12:43:33 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hg7Gl-0004vr-F0; Wed, 26 Jun 2019 12:43:23 +0000
From: Colin King <colin.king@canonical.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH][next] nvme-trace: fix spelling mistake "spcecific" ->
 "specific"
Date: Wed, 26 Jun 2019 13:43:23 +0100
Message-Id: <20190626124323.5925-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_054331_853040_52A3718E 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

There are two spelling mistakes in trace_seq_printf messages, fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/nvme/host/trace.c   | 2 +-
 drivers/nvme/target/trace.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index f01ad0fd60bb..6980ab827233 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -178,7 +178,7 @@ static const char *nvme_trace_fabrics_common(struct trace_seq *p, u8 *spc)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
 
-	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
+	trace_seq_printf(p, "specific=%*ph", 24, spc);
 	trace_seq_putc(p, 0);
 	return ret;
 }
diff --git a/drivers/nvme/target/trace.c b/drivers/nvme/target/trace.c
index cdcdd14c6408..6af11d493271 100644
--- a/drivers/nvme/target/trace.c
+++ b/drivers/nvme/target/trace.c
@@ -146,7 +146,7 @@ static const char *nvmet_trace_fabrics_common(struct trace_seq *p, u8 *spc)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
 
-	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
+	trace_seq_printf(p, "specific=%*ph", 24, spc);
 	trace_seq_putc(p, 0);
 	return ret;
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
