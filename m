Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6D58F175
	for <lists+linux-nvme@lfdr.de>; Thu, 15 Aug 2019 19:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zAg3bxSgB10HeXIxw5SHoHWoYQIaWikwnjhht8vRRJc=; b=Ci7s8QUJMB3C1malCKbKYFFidr
	FDMA8mF1CZT3O+HxBLm21GytasGpcxcMTuwMlgvlJZKCntMNjuwLEA9wGzbMkfZ0A0yx5DM31GAXS
	Gy5boIwgSBS0plavZnlC3rwmT3iiuDP5QuRcFq+jBF7V4ofk7ajl1Q8CmF12p3UKTXodb5p1SdDSg
	joFF8swF6k9/nam8qUcBX2huPi/XglmGTzc3756tqM1CUCJqX7wdLlscaUtBO/s/CNuv38wAjpxbR
	QuAXsYu1j2cm79j78nM1/4Zl4igaSQoVPR24Y6Ycx+ZoY4OL+aN8XEag9y4CVXVL8rH84R4DsMi0o
	q6Bd8PBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJ7X-0000vb-Jx; Thu, 15 Aug 2019 17:01:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJ70-00009v-GE
 for linux-nvme@lists.infradead.org; Thu, 15 Aug 2019 17:00:36 +0000
Received: by mail-pf1-x443.google.com with SMTP id 196so1609350pfz.8
 for <linux-nvme@lists.infradead.org>; Thu, 15 Aug 2019 10:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xxf/HVq1oOiY+aojPeB31TYL+w9kpCEUs73K8+rOlTU=;
 b=IKpar9/n3E44vPKBFMEBRCSPPacAA08WCi64jmrLiCYzafoWZKeT5jkmqbfwy1Vfz9
 l6q2/uqdeiqcbEhc9OKpxSHmi88ufvosCfllwVLWVOLup0q9OuEvT/JQ9mMmO0tkbuGg
 qJK3NhMD7R0w5caFyNt2QpCfnFAciclDH+HZLpb1MJxl9g66qdlOyBIGLHtoUzFUChXy
 RgU3vHu0aNUhS0YdoddUQ/Ep6sbgGDf00kV/zxu+n3ttQ+V6SPey8W+lIvgh8lxqiG3+
 I7qEA9fWep6u0HmRfL5CrzyJ17X7FuvNKXErE7wat8oxuMQqdkSJZ6eAiROZp/vzWGym
 5caw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xxf/HVq1oOiY+aojPeB31TYL+w9kpCEUs73K8+rOlTU=;
 b=hejC0HRJFxqXe0Mz34U1VVrghTk4DfZSzR6bFLDJ9G71iuS/bd7K6BLd4vuJ7HRBMH
 Ucne4a4U1HCU9B8BfZdu2QEpxqExrnywyISjhabxuy5L0VVR9rz2PHfCLQ3arwQ7IXqu
 www/0FEWZIdTXPLWn/MvNrbNh+QDo771ZXgGWHAjMmhrqQvyHnOy0HjzxhlPFmx55JuW
 +Rt7B5QDDHgw/piM/gckj+509pB3C3Y0ctIAJFaZeeYeH4i2tJ8ZMHZSf6WCvMzaMFni
 HoUIxYfsA2ZTiw/o/D6ZSRlL5i8WhEDSkJDybsc/rBCyqmC740y3ALmr1HofGJTNSzfl
 GbUQ==
X-Gm-Message-State: APjAAAWpAyJM4ibIayFNvfwD6kuKApjmm+Sw1IXg/TfoAWdpfaQYbsdR
 NrX2xlFs+e1vo5Zfwi824/c=
X-Google-Smtp-Source: APXvYqygZQaoBkNFKnu6+kJdA4Cp0uFcK7UCbZ8o2eiLuEO382GKfs4l97MbwVEoly7Aw+BlD5Kt8w==
X-Received: by 2002:a17:90a:f484:: with SMTP id
 bx4mr3115007pjb.61.1565888429737; 
 Thu, 15 Aug 2019 10:00:29 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:12:b19f:559d:7305])
 by smtp.gmail.com with ESMTPSA id b30sm3943942pfr.117.2019.08.15.10.00.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 15 Aug 2019 10:00:29 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v4 2/5] scsi: mvsas: rename LED_* enums to SGPIO_LED_*
Date: Fri, 16 Aug 2019 01:59:56 +0900
Message-Id: <1565888399-21550-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
References: <1565888399-21550-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_100030_552093_853814A3 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The mvsas driver declares LED_* enums for enum sgpio_led_status. The
LED_OFF and LED_ON enums cause redeclaration of enumerator with the
LED subsystem's LED_OFF and LED_ON enums.

This adds 'SGPIO_' prefix to these enums in mvsas driver.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Acked-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/scsi/mvsas/mv_94xx.c |  2 +-
 drivers/scsi/mvsas/mv_94xx.h | 24 ++++++++++++------------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/mvsas/mv_94xx.c b/drivers/scsi/mvsas/mv_94xx.c
index fc0b8eb..3558a625 100644
--- a/drivers/scsi/mvsas/mv_94xx.c
+++ b/drivers/scsi/mvsas/mv_94xx.c
@@ -1085,7 +1085,7 @@ static int mvs_94xx_gpio_write(struct mvs_prv_info *mvs_prv,
 				block &= ~((0x7 << MVS_SGPIO_DCTRL_ACT_SHIFT)
 					<< driveshift);
 					/* hardwire activity bit to SOF */
-				block |= LED_BLINKA_SOF << (
+				block |= SGPIO_LED_BLINKA_SOF << (
 					MVS_SGPIO_DCTRL_ACT_SHIFT +
 					driveshift);
 				break;
diff --git a/drivers/scsi/mvsas/mv_94xx.h b/drivers/scsi/mvsas/mv_94xx.h
index a243182..2c96ff1 100644
--- a/drivers/scsi/mvsas/mv_94xx.h
+++ b/drivers/scsi/mvsas/mv_94xx.h
@@ -275,23 +275,23 @@ enum sgpio_registers {
 };
 
 enum sgpio_led_status {
-	LED_OFF	= 0,
-	LED_ON	= 1,
-	LED_BLINKA	= 2,
-	LED_BLINKA_INV	= 3,
-	LED_BLINKA_SOF	= 4,
-	LED_BLINKA_EOF	= 5,
-	LED_BLINKB	= 6,
-	LED_BLINKB_INV	= 7,
+	SGPIO_LED_OFF		= 0,
+	SGPIO_LED_ON		= 1,
+	SGPIO_LED_BLINKA	= 2,
+	SGPIO_LED_BLINKA_INV	= 3,
+	SGPIO_LED_BLINKA_SOF	= 4,
+	SGPIO_LED_BLINKA_EOF	= 5,
+	SGPIO_LED_BLINKB	= 6,
+	SGPIO_LED_BLINKB_INV	= 7,
 };
 
-#define DEFAULT_SGPIO_BITS ((LED_BLINKA_SOF << \
+#define DEFAULT_SGPIO_BITS ((SGPIO_LED_BLINKA_SOF << \
 				MVS_SGPIO_DCTRL_ACT_SHIFT) << (8 * 3) | \
-			(LED_BLINKA_SOF << \
+			(SGPIO_LED_BLINKA_SOF << \
 				MVS_SGPIO_DCTRL_ACT_SHIFT) << (8 * 2) | \
-			(LED_BLINKA_SOF << \
+			(SGPIO_LED_BLINKA_SOF << \
 				MVS_SGPIO_DCTRL_ACT_SHIFT) << (8 * 1) | \
-			(LED_BLINKA_SOF << \
+			(SGPIO_LED_BLINKA_SOF << \
 				MVS_SGPIO_DCTRL_ACT_SHIFT) << (8 * 0))
 
 /*
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
