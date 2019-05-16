Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E0C20D3D
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 18:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xSElVlNFnctVI5z2x2yYAxlJFDQnIVHpwPHlYjH4rNI=; b=N7v
	qR3L+h3n9pF0kyOxrjOJNflY5MKbr6f1Ms+vgBwxVXMecctDO4Qgdgf7nipGrdAM9raDNkxtklF4x
	jY/dNqDeky79btD62RETd7BmsWQO2euHIn4rXs7ZfzaZJWDHGwlcWGeIJ5M370N6hgLjFBGInM/va
	6RN7zV4bUpVdkxQxm9gtjxq2Xgim/XPvNCNSrJQS55lrF0LsD5z42/tFuIK/Jpiet9ZAI+xJYVj++
	Buy916GhKMZomTAa+1T3d1YnFZfs8mqg+gpYgMmObiclDEp9Ow6Clmcwxdam9CLpnX7yrBVSgxuGM
	LcGpWArKklIiPn58PzBvP7tl0jXy+UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJRy-0008Sh-4I; Thu, 16 May 2019 16:41:46 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJRr-0008Qi-EE
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 16:41:41 +0000
Received: by mail-pl1-x642.google.com with SMTP id n8so1880525plp.10
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 09:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=K3tePlFL1/RW+aashl8D9Zvm+C58RHJz8eZUR4x92qY=;
 b=DKNfSR79OKoKt451J3Bldf2c2nYR6rFWNsZyFB4AVgJ0inWJe10F0Xx+Kw4KbESwgF
 jbsz26EwHVR6//m2EAvfFN6ggLsnsdPI1vMSayH3YjXxyg0CeTq//duuBCynGx9KEXvB
 qOcXdHjAkbZf5owzX4cpNVqVKcpZDRxU0boxCjTxsm5I8EptqLyyZPHsngKWhaWBcL+b
 n+VLrTlHoU+soKxD2ko8F2MPajdgStbpGdXQvgVG5LNOY1IxRlNjPiKuUX88F2o0efPU
 vVV4mqq9ZM6Z2gTnu9FNnlUKXQcr9xi5+zCqVrEWl2EOLGeSMMgtJOsuhsOJb3pcRdy1
 KyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=K3tePlFL1/RW+aashl8D9Zvm+C58RHJz8eZUR4x92qY=;
 b=jJwvFbO9ERs4sJbei92nzc+WHGeiWHAHWuIknsI6r53mS1+NaBnvt+hkxhskESDVkL
 XDp7fRR7eOH3b3mLimouSYapwLlevYpkBzUNih5hH7VNWsbJqM44eCbQbTA5WVO0tYZQ
 Zy1vIUAlE5GmsH/TiMlXlqeKbVCnlrA+itPDpnIFab4fIy9a/mpFDWm7g+S6vfpaptMM
 xeFzVPU4tlxDtQg98DOfJ15495qKq5mYLPA4agHiIgGo5TtBog+eLUePQfxXYXObme60
 dAXxYRtaRupVV2kEHuLWr7/Lw7HH6rSOHcBj5M4zYynGxkoNM9qm7rtDXFsAEuo0QACG
 BxVw==
X-Gm-Message-State: APjAAAVDf9Thzv4np3RlPYuvbr54eiqzw91BfSMOehfWjtzsAecgCoGK
 n9wzaK9Q0xmFV1Ik7tzJWwLX/rUn
X-Google-Smtp-Source: APXvYqyadRy9OwAuQ306hL07huf0IZcLIENSAfKy1UE/yPiSHauNiPRvci+T+ML9x0ZBMY+Ktdd9DQ==
X-Received: by 2002:a17:902:758b:: with SMTP id
 j11mr52431713pll.87.1558024898713; 
 Thu, 16 May 2019 09:41:38 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:25a3:512f:3aff:cdaa])
 by smtp.gmail.com with ESMTPSA id i17sm8706452pfo.103.2019.05.16.09.41.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 09:41:38 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: remove unused NVME_AER_NOTICE_*
Date: Fri, 17 May 2019 01:41:29 +0900
Message-Id: <1558024889-9474-1-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_094139_805479_09B7B184 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Akinobu Mita <akinobu.mita@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVME_AER_NOTICE_* are unused and these values conflict with the values
defined in the kernel nvme.h.

Cc: Keith Busch <keith.busch@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 linux/nvme.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index cac4d19..13fa52a 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -589,9 +589,6 @@ enum {
 	NVME_AER_SMART			= 1,
 	NVME_AER_CSS			= 6,
 	NVME_AER_VS			= 7,
-	NVME_AER_NOTICE_NS_CHANGED	= 0x0002,
-	NVME_AER_NOTICE_ANA		= 0x0003,
-	NVME_AER_NOTICE_FW_ACT_STARTING = 0x0102,
 };
 
 struct nvme_lba_range_type {
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
