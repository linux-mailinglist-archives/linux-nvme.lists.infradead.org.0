Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0313488CA6
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zAg3bxSgB10HeXIxw5SHoHWoYQIaWikwnjhht8vRRJc=; b=M+Mu2N5a+QuOvR5zjQCzBOnQDn
	BPU4djWHqN1ORCb7cC2i9szq82g64sQ2NlsA2jFi5B590qZ7b3Y6I6PWSstPEeGBO6citlUMbSNsn
	dMzuapGcKoBgsPpW6FZFaGw2R05jd3ZN3BOz0tr+oW8sxkQOhZkJB/3omjWTUSWg22NRanvh2yOSc
	Cb7HK2WiXhVJoNOvVmCknoeiUJXJWpb84iCRu/BDc4a8GZvtu/xE3yXHttQZheEWJDNB60S/BVwJ3
	n6IRO1lGq52rZGxYZS05LmeIG/QgPf7DLWmA5/dptY6gUchymfdORaIbFY549dhbm1VBCRQyBXrV5
	LqMKeFgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVbD-0008FD-B7; Sat, 10 Aug 2019 17:56:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVac-0007ul-0V
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:39 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so47407224pgm.3
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xxf/HVq1oOiY+aojPeB31TYL+w9kpCEUs73K8+rOlTU=;
 b=XgQKdFPyq4/igad3UxcEd6J37M+Y3GDA6fYhzatJ2Z3doFBBfkLiwl8BI4vNCEj+UH
 O5C2UnDadOqsHpU9g2NnRnGAN9jnaeMGwekCFzRWGOCZzKlqx/a/kdSLPRTmvyNcPun1
 jsdnrC7IAtv8PA/xem6DhQI3k7anZ3eb59tzBQDD6BJg2PrLYP7c7F+gLhyhiJaXrGcp
 GrZByG5YwWhcvlCSckJQ/aCxKkeeUJ/EKMVdVJn0M/DlxZRzEQIEP6ka6vfkmXdNLrGv
 vSDhGM6tR85W7UBuQsUlmGuCUUAeDoXgjiaSn4AvVIOT3GT5GC/boqsObuqQk09z/h/m
 UuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xxf/HVq1oOiY+aojPeB31TYL+w9kpCEUs73K8+rOlTU=;
 b=XdVtjbL/v22Tt1/OaLcr1c5d3MbhG334pXn5DBDrl7cKV3PL1ZgYxKbP+xi+hNX6RK
 tjFP3JekWlA1vAojl+svzWUbeL+9tWF5JfMqu6x+j3KCgTAZc0Sll2Wpb7KmRXHnc8ey
 NcyMJ5g4A3iCxdObxmU1Ic9rdo8YgE2wZfbi8mICamdHh1pxrnRpRJQwBgi2SVX38lcZ
 vBI8YQcf3rotEDhmafnjdM9Ao+hyeaE4KVhbWyqtzbTg4/J//ElfP/Zr8usTxHV6g/6s
 3lbFPUqm+H8bKYYDO0neIn9RISCksK31XJgFPoKbJLnKD2BuawtrrNAxG1i5x00A6GVy
 cspw==
X-Gm-Message-State: APjAAAWuGyLF0GPjrLewcpNehXWVDBHBsdOjNa77ud7i/7taLLtJ8UZq
 hX5p9Qn2WnYz0MjGCqPnh94=
X-Google-Smtp-Source: APXvYqx+qII4lVboFkSeKu2D27nWV5kO0BFoKHrSQGrW/XAkxubiMEeV9ski/vlVYOFvqdOAEOddUQ==
X-Received: by 2002:a65:5144:: with SMTP id g4mr23027005pgq.202.1565459737248; 
 Sat, 10 Aug 2019 10:55:37 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:36 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 2/6] scsi: mvsas: rename LED_* enums to SGPIO_LED_*
Date: Sun, 11 Aug 2019 02:54:59 +0900
Message-Id: <1565459703-30513-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105538_377770_E5FD6096 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
