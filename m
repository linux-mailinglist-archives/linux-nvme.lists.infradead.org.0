Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F034DBC516
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Sep 2019 11:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bdPF+uBaSb3xtBDWVzAdAMxM9XY2eKNGHDmEN+pWKmg=; b=CwYWyR2ef/KnM/
	/ACcCqyB4Kt8tXvVPEjnWhtCYBQ5HASeLo3d8wyaLrBJZ/vh1ncUGUhAyQQ32uZGSVtDzJM0dzIFD
	GL0drtwKwequxkG4z6lo20JsNYX/PBMhXYK0SbwnYEgWE4iOteotoFT1yxC6FNdJxvt/4sMpSs314
	e0SomWdxxz62LAFlu1r+gseAeU0Uoztepab+1LYkrtcqS+h11k8aFzFTSQB73hcOen6rd4QoSXSF3
	grJGiY5/eUVO3QOpJT7BgSSw3739oxtBB+uECsRlMi1H3isTaIXR65CcZeCMVk8NQ10JoCm7GvBnX
	/59beIw+e3v6g9ukc1dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iChMd-0008Rn-Ec; Tue, 24 Sep 2019 09:44:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iChMO-0008R7-MR
 for linux-nvme@lists.infradead.org; Tue, 24 Sep 2019 09:43:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id y22so1015606pfr.3
 for <linux-nvme@lists.infradead.org>; Tue, 24 Sep 2019 02:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rIHPogPc/o59rHSt2l9XbYMbKfUpR3e59gO3GQ/onCQ=;
 b=aPR/75icPGm6xIHo1YTPQvp9lqYOOOfvk5TERkZNRmdFPrI+fSmjOMd2fTIJOiQG5d
 rnfBnfzy55NuxKZz8sbMOn46X74IGCOtRxAzjU1Web4A7g7Z96ZuQwZjQPRu60RCyxga
 DQIh8j8l6leABrCiURHZm2sugLqHPhicL7TJbIukzEn+GHRP33R44zwTFQxGvn0qlAJy
 v13b36qwQLk95NmwEa/mGSbOtXtjn019p2QNXQ8i5y/3Pfhu9Mu7H9lVcut76rYvei5/
 HuA3tuy8XFfRDbbnLGVsOrdfqotCoBKriAmc0O+sSz9H0GlVnArOtpnriCGbpWJ/BRs4
 +qgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rIHPogPc/o59rHSt2l9XbYMbKfUpR3e59gO3GQ/onCQ=;
 b=XI6u2YIPOZvJhpZGsRVZaQdZkSUiNoGbokqZDErDeEpJm+CeCBg24XgCRB150BzLOT
 9GPYHt82w6XeARSfIKUVZa6Q6ZSqVe3FiG0ds9NBXE0M2bKSGl4Zz3avSiJTHucTarfH
 912UmdP7ebHXVsxvHwDK7KvfDqmekcJBcMncr9b6rXyGu9VmGGcisOlhtG3i8zxjzpOt
 QDoCATAQFblwURXP1MEeU7RgHZ5N4YZ8m4Fc52wnZnA6Pa14lya2e/lMFBkQ99M1HeK7
 5oX5nOcASmtiRt25fSuNbvoFJ6ZSHoJ6FtHLPGg3/B8ASmpdoiTizo4xQV8mmYGFgXJP
 AcBQ==
X-Gm-Message-State: APjAAAVLnZHCx4e5xOWSVjuoOIN1Xq2APL9OvHA/G2ws9fr806yvgl6d
 aGo7LWTdUDSuujp7RzgEgL+EMSyhX5w=
X-Google-Smtp-Source: APXvYqw573NEC4ww2bP389KiYOxULpT0MuqvZXde9Af08N+ecpZLzb2zyyNU2c6HiCB5ewdNh4PujA==
X-Received: by 2002:a05:6a00:8c:: with SMTP id
 c12mr2260846pfj.200.1569318231135; 
 Tue, 24 Sep 2019 02:43:51 -0700 (PDT)
Received: from localhost.localdomain (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id g202sm2481746pfb.155.2019.09.24.02.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 02:43:50 -0700 (PDT)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvme: Add quirk for Kingston NVME SSD running FW E8FK11.T
Date: Tue, 24 Sep 2019 17:42:41 +0800
Message-Id: <20190924094240.5975-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_024352_781542_E2FD188C 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jian-Hong Pan <jian-hong@endlessm.com>, linux@endlessm.com,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Kingston NVME SSD with firmware version E8FK11.T has no interrupt after
resume with actions related to suspend to idle. This patch applied
NVME_QUIRK_SIMPLE_SUSPEND quirk to fix this issue.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Buglink: https://bugzilla.kernel.org/show_bug.cgi?id=204887
Signed-off-by: Jian-Hong Pan <jian-hong@endlessm.com>
---
 drivers/nvme/host/core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1ede1763a5ee..84fe3c4059a2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2298,6 +2298,16 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x14a4,
 		.fr = "22301111",
 		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
+	},
+	{
+		/*
+		 * This Kingston E8FK11.T firmware version has no interrupt
+		 * after resume with actions related to suspend to idle
+		 * https://bugzilla.kernel.org/show_bug.cgi?id=204887
+		 */
+		.vid = 0x2646,
+		.fr = "E8FK11.T",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
 	}
 };
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
