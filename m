Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09431ADE0
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y81pfiRCCpcSgV8rD+PX9bz/rI/xL23sML3FNt2Oy7A=; b=uaFAc66Pc55gJ3w/lzi1i2Nn+S
	UkGMkN8p13KWtiurraAV97FtLGRHwN6rTBbT1fiaf6bG9GQj3jFWYSvY6k+OUupzGQL2m1mmun6Ao
	6dI9isAbJ7hMuVbA8Ti/NYRzeOWwWT9qR5MTHdzIzLfIUaQ1rpG2rHwpYYDaH3cPnDuoVGZ8JLq0W
	idyt3WIqOptslD0ahVMVnxAC2/1or1OiVFrP9jL2vYgmupZs+ckPHAfmyERdLmYMW7Ve7klNnVIwh
	37ieLoAqLB9ZjxtRi2xdV0S9GtY/mExjLLeyB6eVkygG0oCI6rCYmnOIlmGOZ1rDRckwXrdJYl1d3
	ZBn3l0Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgb-0005aP-Ny; Sun, 12 May 2019 18:59:01 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgO-0005KG-6d
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:58:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687601; x=1589223601;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=5b0Z84SMRvUeut1yv9NAhNuad9184fdFGRReMISXtQE=;
 b=Z6aqcARGgoFdxX0sZ6nL3B04+qe1UfLWqPND2Hq2xEvL09raHno5zWnd
 HO4VK4LlRd5YpGR/THriViUVeemuj5DqSr6q2UG9atkSAictBEPbQiTEr
 2uHy9KBI8kemr7jiREKjlZHXHDS8682eugEqhLJhOdUHPHqba33VtwAtm
 4czpL26ESfldAlUhUbtF8vacYYhUGe9zV71PyhqRE9SDAR3ncNubT2vQc
 c64aUPtslJhupWhhbJrsDJnHHG/3QSOwfvNxcEO2YaSv1dqb99dNOdVmR
 GSorfumO2r9wwbwQ2NjoD9X1pQDjUeu2x+C+ZCpSp4N3zkMoZUeYQmB3c Q==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207452158"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 02:59:58 +0800
IronPort-SDR: 8eaOSMXejmcX5oIgNO5YMwgzmZp2yBTLXF7XXv2y8oAiLAHlMGIbUouMLgnxUhVYxwKiFBuwor
 bwFFvLLlxF6DvSWF3zVj0p+wXPU9u2YQ7HalGozuhkjLPocytwOZn+Qvn6USxBYyK1CvlnuYlw
 9TdeDLtu6ES4gH2lmsstw1aGz9rH7XnqDHUeZPawfTPRNTo51WKyN438dpbg2SpVt3gIxjOnqA
 4KtmndW/i3uZaLVnR6CrmffGeGjLc4B0Qlo7idGj4vuG6uSVcNU65wQsM8V8dnHNf0R49bqI15
 xSQHKMdQDX4vpWb9WI4HceS5
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 May 2019 11:36:49 -0700
IronPort-SDR: kA+BVhb1X8k7slICH6I4sO9OHYeYpsJ7WN9R7Rms8rBnJTVOGN9idfg6Fleva1QOvATaxs9acR
 5rlRNzjkuaf+wrq1TTwBGrDQ9Jc7+DuT+i/bqpaZCqZ3iDfrlzyKxUtAmL6bXjnaLldrC3j0Uv
 aY6dw9bSY4lsDlbr4h3cceMjgS7G4+/lM2by8F6dbVJqlGF/2vhOQnSMigne/XZrFr8/jpNJ6I
 jci5E7MPvLT7WaqaEx2hll+EUUURSOgZfP0EHue0MLNGAfurhzNFKfMEBr08CMxWz4vDwicrK7
 2gg=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:46 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/6] nvme-cli: remove trailing space
Date: Sun, 12 May 2019 11:58:17 -0700
Message-Id: <20190512185820.20098-4-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115848_904370_79A76F25 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme-print.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index d9512c8..ae22a5b 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -3035,7 +3035,7 @@ static void show_registers_cmbloc(__u32 cmbloc, __u32 cmbsz)
 	}
 	printf("\tOffset                 (OFST): %x (See cmbsz.szu for granularity)\n",
 			(cmbloc & 0xfffff000) >> 12);
-	printf("\tBase Indicator Register (BIR): %x\n\n", cmbloc & 0x00000007 );
+	printf("\tBase Indicator Register (BIR): %x\n\n", cmbloc & 0x00000007);
 }
 
 static const char *nvme_register_szu_to_string(__u8 szu)
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
