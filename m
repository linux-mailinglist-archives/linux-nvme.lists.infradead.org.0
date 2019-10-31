Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 614D3EAC95
	for <lists+linux-nvme@lfdr.de>; Thu, 31 Oct 2019 10:36:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JtfTJzi9V0BsJHWXdORR8xaoMvtSKMetRW2wSq72SHI=; b=G1tv6TF78LavOz
	aRpE4fCvQchu6D/la2jSZendIE5XtfTmPdNNxbiHBx89i/pECd4r8JNUgZLV8v8GZfGrTVKVq2vwl
	DeZxN75oGWPztqzqXzQTb2186dCBXHlQyqRj2i8CFstNjt6muxScabUSRgDnXvxy5epl3U5Ejjy7e
	evrfGOJCLSHK3VFhfoZjTQlS3ZcG7OJNNR2GF0YYxJfuhf8DvC0R32wmG1d1ND6td3uUJVsat33IX
	M1OS+nHQwIwLZ2vU5HKdC7OFH6kMjQ1V4AkgZ3HIXezLNb5Z8Cm5Fx6BJSvBedeSWGKrBl9mZSNPe
	h32M2R/uOvQMhPZ4Pl8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ6s7-0007bu-5y; Thu, 31 Oct 2019 09:36:03 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ6s2-0007bW-Mv
 for linux-nvme@lists.infradead.org; Thu, 31 Oct 2019 09:36:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id e3so349901plt.7
 for <linux-nvme@lists.infradead.org>; Thu, 31 Oct 2019 02:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DpBkpuyfEz89me+buFs+WwtT8XRjvBF3yFBftzqlsQk=;
 b=JdLYApaHHSdUFo4j1OUWJrbghTLy5sNyEB5YolVD7rb4pjkaCXORZ6YsgpbuJrlo/V
 tvEBmGb12tib+aqhP4RKjJlaJURPv05T12dWome0EoDMZk6g2GiuCOLpyreiYTFdP8bq
 +xMNuDjKk97ONXGcpxwQQ2atL3vymdgSlRC2fqUwrH3+/m605N+EH8wvpFfCfltDOyEh
 AlAVWF4FLDs9arQtYXkNFDNZyzLcnc68HEV4e5RUxtvpfuXI5feUTnUgM5YwuURQfidK
 W1Ct8JUM3rdyYYHN2IYoDYqXYZLhWkIn+uZ3HuSvTlU4m/K1RMEm/URF2xTfWTUYBXYx
 xciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DpBkpuyfEz89me+buFs+WwtT8XRjvBF3yFBftzqlsQk=;
 b=R3lXou94Gn0BZ+CvE/oO6INv+xPlV5BkVBDi6jmBDSClC0dgWIINTCU32QH0rcRh8U
 M8dmgtbj0CxUjwYxvAH1jf3Z3+f8nGQ24jGEF/rCHrFzZTiSCsv5lELVKIBPwtrOXHpX
 CKMlTQiLRYWYsvYOKAjMBs5rMk/Ct9PY+4nfT2izvHElFagpqZzEmcMpIrypA7XG0xgx
 0RZbgg78Z8kuAOdnSVDEuWuj7EvDFxmR3FG7H2ZoV/OvGjGeOn1c4K3pFhgIa4xzd6Uu
 LGaoTgk+QPK0fvzvarOI7NooqlPDvKh71Q1Wy/0e+hCbEm3neF/w/vEzjsXuHwQuojTJ
 L3Aw==
X-Gm-Message-State: APjAAAXuLN7qD1JCZXCqrP7tO0B/cibvIVVWzRqIVvIjry2pLqfCUBrA
 GY3utNcXZtSlJSL0A8GCslrLUA==
X-Google-Smtp-Source: APXvYqwnFWHm7nPbOa+XzFm1q9aR2vjbqEZF/KUN16CVmZa8X1+clj8plDglCup4NMBtOxDqkW3Y3A==
X-Received: by 2002:a17:902:9347:: with SMTP id
 g7mr5320801plp.291.1572514557950; 
 Thu, 31 Oct 2019 02:35:57 -0700 (PDT)
Received: from starnight.endlessm-sf.com (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id b23sm5240079pju.16.2019.10.31.02.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 02:35:57 -0700 (PDT)
From: Jian-Hong Pan <jian-hong@endlessm.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Bjorn Helgaas <helgaas@kernel.org>
Subject: [PATCH v2] Revert "nvme: Add quirk for Kingston NVME SSD running FW
 E8FK11.T"
Date: Thu, 31 Oct 2019 17:34:09 +0800
Message-Id: <20191031093408.9322-1-jian-hong@endlessm.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_023558_750940_5599B6BF 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-nvme@lists.infradead.org,
 Jian-Hong Pan <jian-hong@endlessm.com>, linux@endlessm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since commit 253eaf4faaaa ("PCI/MSI: Fix incorrect MSI-X masking on
resume") is merged, we can revert the previous quirk now.

This reverts commit 19ea025e1d28c629b369c3532a85b3df478cc5c6.

Fixes: 19ea025e1d28 ("nvme: Add quirk for Kingston NVME SSD running FW E8FK11.T")
Buglink: https://bugzilla.kernel.org/show_bug.cgi?id=204887
Signed-off-by: Jian-Hong Pan <jian-hong@endlessm.com>
Cc: stable@vger.kernel.org
---
v2:
  Re-send for mailing failure

 drivers/nvme/host/core.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fa7ba09dca77..94bfbee1e5f7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2404,16 +2404,6 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x14a4,
 		.fr = "22301111",
 		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
-	},
-	{
-		/*
-		 * This Kingston E8FK11.T firmware version has no interrupt
-		 * after resume with actions related to suspend to idle
-		 * https://bugzilla.kernel.org/show_bug.cgi?id=204887
-		 */
-		.vid = 0x2646,
-		.fr = "E8FK11.T",
-		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
 	}
 };
 
-- 
2.23.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
