Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B61A01A801
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 15:43:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C0+z6A0b0gjhu2LPcY4TBVR2nC35Tv+MevenvMEBf1I=; b=ZaqBINl79hBigbC51R/O23Tplw
	yrU7exwDp05XeZmwqjPDVuHSeAI79MjOGBZwDW9VAGJGHtLW99+5pudxpx76B2VOc+7wufAP4slcH
	iHN0SE5aKOUDcrlu56pXJMJqEhWMvX2pTeZ2CQAjOSoyNXtS5S0M0beGUcyhKQG/UBPcqOX29euoC
	0GaFl65Q88/ZbHMfnlKJGbVXvKe8Q8Cw5DD+IGygL8P01zwdYpVGN8AkFNUjp+ie7mrdoQaWGjYyY
	Jp8nqyw7ZHpd60k7zI1IPvNx9W+lx970TWjZa9HvLcTFfq6ghW1rvU4KMxsPzEbfvRh5Cqt57gtpu
	xwm6BKCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPSHc-0002sd-IU; Sat, 11 May 2019 13:43:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPSHT-0002nW-4Z
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 13:43:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id 13so4716525pfw.9
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 06:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=axdCBtR1ddGQT02q59ylJWeVCOQt/lb7/Zwjpjlw9qg=;
 b=Cff0uX+J4oaMgRHjmIZVGFSBbUWwqrC1DFvbngx9Yob7moV72GBDAW6ZgFCsL4O6gE
 BFLJtaYsLdaXNeC3Svp/O3ixFRvGuzwskUoHhcyi3XUAJ3riMli370A1IFUUNYdkaOQ5
 ykqveWFWuqRJq0mAY0Zn/xMKZtbSYxGPXno5vq2t52ownPCeMXjjRoZUzUGDGX3N2BH2
 x1KuThXXuabsI1HBBUVlmO+0pen2tRcsxdB0XFIE+XBpzy8lKVsMpmlfbtQf3OuCeBaQ
 7Pw5NMGb0o8UprgaSkTRdHNoqGgiedjVHF3Ca7FbsYFnybN0xxrdHy9Hj8nF4/LqSJDV
 IEeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=axdCBtR1ddGQT02q59ylJWeVCOQt/lb7/Zwjpjlw9qg=;
 b=OCOBydE4f0ww8BTYjKY6OT22o+cOHmBnmglOxDKOT80EXDQyLA9e7R9qqzJPVEDPc+
 JX8lMD0fgRfiFHd23JFgdYkoASEErligcHGw+6O08dEh2RxanilZup8LjJHQPL4M7aW+
 lp0axAQnh5zoh0Yb2im6zYurdK750tAMYszAz5lWh+CJwgifNMBRp6PrNjW0PSIMDtuF
 XBf/MBJrgQ4UD+eDS6FnRpofiQFKhzsYCTXVU7Hrl9snTq/7NFKYKXEErPhLky726lJj
 EHVxEK3l8VanUii9ia9hcwm3g2Zw0F6nmqnlY+1C+SHAOb95dEmOW10oRjKji1PkXH4C
 uX8Q==
X-Gm-Message-State: APjAAAUGCxRCrQ7sVMN3ead3RNyMohHchl6kFn/i6lXgmO204MmRsWDh
 5TlLa6L/Z5FEN8lUygEKKJ2VGcdefu0=
X-Google-Smtp-Source: APXvYqwH536ErKHbQ2BSz+ElfS6QddwFU2JYgcm/YnlYsjhi/F2+tz398p1F33sYF9IDSKE3f7DYFA==
X-Received: by 2002:a63:8949:: with SMTP id v70mr21153690pgd.196.1557582194164; 
 Sat, 11 May 2019 06:43:14 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i17sm11118004pfo.103.2019.05.11.06.43.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 06:43:13 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme: Fix typos in nvme status code values
Date: Sat, 11 May 2019 22:42:54 +0900
Message-Id: <20190511134255.6790-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
References: <20190511134255.6790-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_064315_360047_BCC3F747 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix typos in enumeration names for nvme status:
  s/ACIVATE/ACTIVATE
  s/INSUFFICENT/INSUFFICIENT

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 include/linux/nvme.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index c40720cb59ac..8028adacaff3 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -1246,9 +1246,9 @@ enum {
 	NVME_SC_FW_NEEDS_SUBSYS_RESET	= 0x110,
 	NVME_SC_FW_NEEDS_RESET		= 0x111,
 	NVME_SC_FW_NEEDS_MAX_TIME	= 0x112,
-	NVME_SC_FW_ACIVATE_PROHIBITED	= 0x113,
+	NVME_SC_FW_ACTIVATE_PROHIBITED	= 0x113,
 	NVME_SC_OVERLAPPING_RANGE	= 0x114,
-	NVME_SC_NS_INSUFFICENT_CAP	= 0x115,
+	NVME_SC_NS_INSUFFICIENT_CAP	= 0x115,
 	NVME_SC_NS_ID_UNAVAILABLE	= 0x116,
 	NVME_SC_NS_ALREADY_ATTACHED	= 0x118,
 	NVME_SC_NS_IS_PRIVATE		= 0x119,
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
