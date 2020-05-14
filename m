Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5A41D285A
	for <lists+linux-nvme@lfdr.de>; Thu, 14 May 2020 08:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vSxfbm7u38mukJh9XNCgmOVLCGHiLk1Ir7H3wuqB8U=; b=PJBidlOPgCazNe
	CqlVuJ/zpPs5aHQQbkwc5MD5fnyIMr9lEyEdtI3kn7/e4V573P4fjJTdpmhPZFeNlimbiqHbgp8Xi
	N9ngXPqJtjUAxaitYb5vPVi2ZeTyyXvgVqSa95s0fRU4wQ9I4QAfA7G5RBmUgxixFk3Nqz6h7RsfX
	mPzFrw4UZ6iDaRnyHcWdAJ7RpBoAFFYv/ImuBihPDZms7cw8jUVgSDiQSL8Ak5qj5C9NREtZ7Pigi
	98eRwZdNv5WJRbfCHt/qW1mDfyt8UUhY03sIjW0Ah72m5AtlaDhpvKmzR5LNaCXVPcy2TzPoT0r+A
	oeVUJGQ6iqT0Nsxg0thA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ7p7-000860-RT; Thu, 14 May 2020 06:58:29 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ7p4-00085V-7K
 for linux-nvme@lists.infradead.org; Thu, 14 May 2020 06:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589439506; x=1620975506;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2arxs2HAmOYTbkwwFQ2/QyeKUxTgRPfSGeWkxUNfrd8=;
 b=BjFA5SKuElI+j6EDqCwrPchsJo/67WNNygNkogzDj1AV7UqJ9WwQvbCM
 HYK/ebG0g6RBRW7GPgavc8NHEHlQUXCSojxaukfbWbmvlRH2+abhpBG8o
 yAiPdq5KXNGdOFxcV5TeIE8xdHapJguDPR3b5cgpf/nfLZGeoTcsz5LsS
 TgseQJvHQjpuqLRGgRtfCmw4kbkmCBlf/yo+9dbgPSaFKQJ2LFNBnCU1s
 yy5FEfnsStZsVeQeFECyTkW1++g8x9CwBOrhR7Y3lkYKY0C8kz3Vn2TDd
 dGzhmPYF3nZ0+hfWI3fSo6H86eZaF/O4usszeU+KDnJt++IbzJkWqYT4F g==;
IronPort-SDR: oPZtMtP2+u+/sXuvXoH9uEVhzmXGMCxELIK6ztYHX7kjMExDAq/BUzVgqUN8+vCdjcP6VnvCcD
 fAsgVgFqxon/Jz/ygpDjioMmcFN372eMSk3jdu8v0fgq/nLSzrkv7RF1TfnE9rIaaqby2PiEK8
 xM6zmJSlNH/mVs3c82ZaRv9NclOdZnN/1/A8roahz1PfLMZPssZB/WI/tATPLUwQ5JxLWcj0OT
 brdS+hhxDokG/8JRvohjdlEXEUjVfy1ekdepbvWt9f5E3LiZf19WheT46XjqMMBytrQZAz4/C9
 qQM=
X-IronPort-AV: E=Sophos;i="5.73,390,1583164800"; d="scan'208";a="139081842"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 May 2020 14:58:21 +0800
IronPort-SDR: jhBSvl3I2FMU8U2nWeEHS72GexRlQQkcBWLtk8QwdAEifks1UyWiQPTwupl1ovV02giV+7YWRJ
 5b66uVXH9EXP5bcrHPugmTpSHLNGA4HCw=
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 23:48:00 -0700
IronPort-SDR: 3muka8KvTa6xnEWniJ3JmJeimalLxxDU9I8aUCRbikqGt289fABnOEaqtp4neE1Rev4pzOxI6t
 5lXzgtCl2A0g==
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
 by uls-op-cesaip01.wdc.com with ESMTP; 13 May 2020 23:58:19 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-block@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 dm-devel@redhat.com, Mike Snitzer <snitzer@redhat.com>
Subject: [PATCH] block: Improve io_opt limit stacking
Date: Thu, 14 May 2020 15:58:19 +0900
Message-Id: <20200514065819.1113949-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_235826_318321_263DF8C8 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When devices with different physical sector sizes are stacked, the
largest value is used as the stacked device physical sector size. For
the optimal IO size, the lowest common multiple (lcm) of the underlying
devices is used for the stacked device. In this scenario, if only one of
the underlying device reports an optimal IO size, that value is used as
is for the stacked device but that value may not be a multiple of the
stacked device physical sector size. In this case, blk_stack_limits()
returns an error resulting in warnings being printed on device mapper
startup (observed with dm-zoned dual drive setup combining a 512B
sector SSD with a 4K sector HDD).

To fix this, rather than returning an error, the optimal IO size limit
for the stacked device can be adjusted to the lowest common multiple
(lcm) of the stacked physical sector size and optimal IO size, resulting
in a value that is a multiple of the physical sector size while still
being an optimal size for the underlying devices.

This patch is complementary to the patch "nvme: Fix io_opt limit
setting" which prevents the nvme driver from reporting an optimal IO
size equal to a namespace sector size for a device that does not report
an optimal IO size.

Suggested-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 block/blk-settings.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/block/blk-settings.c b/block/blk-settings.c
index 9a2c23cd9700..9a2b017ff681 100644
--- a/block/blk-settings.c
+++ b/block/blk-settings.c
@@ -561,11 +561,8 @@ int blk_stack_limits(struct queue_limits *t, struct queue_limits *b,
 	}
 
 	/* Optimal I/O a multiple of the physical block size? */
-	if (t->io_opt & (t->physical_block_size - 1)) {
-		t->io_opt = 0;
-		t->misaligned = 1;
-		ret = -1;
-	}
+	if (t->io_opt & (t->physical_block_size - 1))
+		t->io_opt = lcm(t->io_opt, t->physical_block_size);
 
 	t->raid_partial_stripes_expensive =
 		max(t->raid_partial_stripes_expensive,
-- 
2.25.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
