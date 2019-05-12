Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9561F1ADE2
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 20:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6avTKCYmPoR3th7r1+VpoAdF/hcyBmnIbUffh2WH+P0=; b=bXnr4U5WtGFyDu4dr2meEAmf6k
	YCWV6R4froghGnBJ5Glo+4A6+S3PTJs4bGDyxWXGx5rmTD35dTWvQms4oyVHOp/a7a81BM4eO6jaX
	+dPwiPOar22cdiFWDNC1tE/5xfxgZQeVh/aluOoOY/G+FDojFvIE6CD/MoG+OOmNE4bQtyS2VB2UG
	7Ic4/zdqlAw28Ljw4/6pdZ5cO3c+PzEEIIwWOHZ2wUWk1Lso44Rin93nDfowP/0kR/LHeRZPU0jKk
	2O4+tf9mwdUimOEV9wDxLsgIF/oUBtA/SC+8v3jw8+uOIR6zC/RqudROyJtnRfL44VQx7BMHa64jK
	SPnR16tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPtgw-0005u8-Tu; Sun, 12 May 2019 18:59:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtgk-0005la-9l
 for linux-nvme@bombadil.infradead.org; Sun, 12 May 2019 18:59:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lD52FjNHFY7BqsGNDTvZ5c7HvMyPOjvYEFhcy4XRWdA=; b=jeHedPNn81iMyKotpMGjrWNnz
 kVdAjB9HNoe2Z6KrwduPH39xmzZyIatkaCcVSAOp5tJiEYvV/ZIRn9C/iXAOSZKKf8NzOsN8oJWa5
 eyAN+WuT1YiEICkO9YFhgJ0PoDtQ1QsEVmHeYRhyi2cXMLG5AVS3sg5sa6HzxBsi+EilKmQ/Z4Kvt
 GzNlSoveAmzC3xxsjpvGjMuc5UVYgZNsHelCfkAP5IhkWNV1rQ8J1Id2Ir3yf5wGrolFgacoAOjeA
 kKpUC+G0qpoYZHD1Y4WFtcG3Da7XW/3Z4Kvz11+fVuq3Gh+Te5wDCddL4cXMYioZxbALjaApmD+Hi
 FKU5V+jPQ==;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPtge-0005Nt-5a
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 18:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1557687625; x=1589223625;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=LGszpRao7xcLbAMuznCtXwvd/dm3ZDrHmgrdqH/hyIQ=;
 b=msN6tGqfY02W1Dj5JG797iSyI8JB8582TgyhzaEj3uQOJEJHpvxL7926
 3W8VQvFry6WzlNO/5DAYctW8Ve4oDXqCR9VuRnWXH3BYQCmR1ofQVEVgn
 f3KbZn9Wj+EfNOYY0ewkTuCtaYbsk45Wt+JAqFdoGph5AOObbvTeUA8/j
 x0t8fqjnqeyd4JFr4asHtJihz6ZX/fZ3XjiTluPVi/7czQU5aiqxm7x/4
 n/XG/jSXERvCSw56qvSgA4OnlbbrD0aDkdHfR2ViRlP0sYNI7nIyW7C61
 WBXaIp41AaXZVyWQwHpQMJh38HNAMZIIli6dmrm9c01yFIHIU1DO2io2X w==;
X-IronPort-AV: E=Sophos;i="5.60,462,1549900800"; d="scan'208";a="207452174"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 13 May 2019 03:00:18 +0800
IronPort-SDR: 3OY14OOiovdl2EM164i01cIdKFol68tzJ50SvIhu6+wdS5lkwwJJK+qMgNNGYwLrpi+vy4MELh
 EnDlcEhonddQhS+zoZ2TDE0EEohtl7atu8BdSD6YiBfYDyUVM6fRGRPNQOuzPGCFVserM4KFLg
 Kcfovtmi3JoiHWx5fFyGWB2mgOXGxLUABXdTcCLi9vvigW68RzBx9Dq02F3++B1qbvHIbshFNw
 35TGu9ebGWWXpF/427YjVrv4cX1Yizroz5HVGbvSoUvHcxMP4+zNM5yuwsTqy1QMW7CGcGxHph
 k/lPypPwtQxUtQvAJPrAo3Pj
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 May 2019 11:37:03 -0700
IronPort-SDR: QpvpH+Ky00fnnJyHHszvvv+GtknNUhaMdGznHiV/pJB6l/6mR5x+EPa4CSWoNkCItHeu8xu4F1
 sY8BPnXYqAfztWHoWejDe3q+KpqweKAciDt/ifwFoXHxaXWug7CKvxIRjpKS7snzENSuqXoBVj
 A0UNuNuuCQt3iIt0w+CiRdYpoQOWNlHpTsFnjg9CGGOblG+BrSFTIOBiEVLVXZ2QQAngzGwyE6
 wd2bXitDEIbFudnwZoz/YMK1/cJd9yYtdg14oSwrSUXVEbmRbt8wYoqLUG1ucIN500ROh1n+Li
 tlk=
Received: from qemuexp.hgst.com (HELO qemu.hgst.com) ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 May 2019 11:58:59 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 6/6] nvme-cli: use uniform if .. else format
Date: Sun, 12 May 2019 11:58:20 -0700
Message-Id: <20190512185820.20098-7-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
References: <20190512185820.20098-1-chaitanya.kulkarni@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_195904_837090_A6CD9DE7 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 nvme-lightnvm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index 37bd24b..ee21d6b 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -459,8 +459,7 @@ int lnvm_do_id_ns(int fd, int nsid, unsigned int flags)
 			d_raw((unsigned char *)&nvm_id, sizeof(nvm_id));
 		else
 			show_lnvm_id_ns(&nvm_id, flags);
-	}
-	else if (err > 0)
+	} else if (err > 0)
 		fprintf(stderr, "NVMe Status:%s(%x) NSID:%d\n",
 			nvme_status_to_string(err), err, nsid);
 	return err;
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
