Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2980188CA5
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uzTXLi3AdQauNQxqJGsQGL42jNf4Xdf3JEpzp+FycbM=; b=rjNbEyZ0oYMZrYFoUIPj8W0eIq
	ZVwJy1WDXs310Qsl92ElgwSiI8JEKM6XaO6fDpiVr5iDn23Ic8Cc6gqylutamvUu9NZjkKUt9b4sR
	/75Bhyye/puybuvMHZwT45++iXKXdjJ75erHhqAoURWO8iS9B8Jb4TAfA+fQWpNbqCF5NmOxi81Mu
	ep5u2tWFnQ3UpeD6YI+ftl9KN/fvBrpPxAG6lCF2+kRSJK2A9CPM7zL657UnqF6Ey8RaDRnlxpBSh
	G01q3R3NlggoNodoVefcfCIPiEbsuaGK5i5L19FvzqOch/qL9yQc1n2otiR8TgH2Iqh/t6itgQPW+
	so9j5ZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVb1-00083x-TQ; Sat, 10 Aug 2019 17:56:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVaX-0007t7-3c
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so47692897pfq.0
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PmIPB6mpwRGbhjpdu5g6+bYsqRrGPw+jzXIFXUmiX/4=;
 b=rMGTB26PZzfQPjNuaOz1PdVTNvl4YlNb3nNq+dBmEXUUSO8ucQNXpLW4shoe951H3P
 6yCKP0PSCTWBRnKy7o4IK6gwovXK/d2QLrhcWsjTP2cGXcQq+sM/58F9EdDQ2clvT5ry
 SJ8R9bFfWst6IIF80FlA2Y3/Fowj24in5ZRNe4fvXdVYYhkVROe3F7ZWNAGYfssRcxwg
 xpp47M0pJIIuQO1anLt3/e054VFNN7fpYadCxE/pwVfUvP1lBo9sUCOq5h3cxnSuL5I1
 RRimwqdNeuCPKvCzi+PytMffNGxBAhQD4oS4mbv83P2kGz7domnO/UbQy9ROhy715XtB
 t6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PmIPB6mpwRGbhjpdu5g6+bYsqRrGPw+jzXIFXUmiX/4=;
 b=ICcrNaqZnVHas19i5L2v+YIlk83GlAeoqQZ2tIiYMM9lGhFWe4b3/lZwPdMGy5t+Ae
 8nC4s3YRPvXYvdaA/LkUrLaHqb2+2Xuwyi7ze3ETtO5uLvNY+NP2oUInS8oJvVu3+/KG
 R/jVeEeyhyMHOhGmiCAtfNtq/RyBMNYfOmQ3hqIIMuiWq0cAO2a+TW/qxOSGSH3EQrop
 27OqQT7Tm3wGZciLqVMxnqZFLi9m9sWmqeEZG6uhFmfegX2YO32y1crrBwptoMyZN0O/
 8rPVcfqFez1JNCyk6QBjCf+tVsltlwtovhHFRv8lkQBaTN6w488ZmQN6v8DlgC2FiOgN
 8DOw==
X-Gm-Message-State: APjAAAVQu+oExgf1mM1hQErtEPHPfVKDJba8kWgxu86MhZadMrV+hzr6
 g215rhuV6y14Cv6/eZ26u/8=
X-Google-Smtp-Source: APXvYqxwUrt6hrxviYyAAYYiew/16nbDXI4MNwzMURXf4jbdSSAQHJNWRuXnfFIOoaIUD0liPM7N+Q==
X-Received: by 2002:a17:90a:7788:: with SMTP id
 v8mr15933812pjk.132.1565459732302; 
 Sat, 10 Aug 2019 10:55:32 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:31 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 1/6] block: umem: rename LED_* macros to MEMCTRL_LED_*
Date: Sun, 11 Aug 2019 02:54:58 +0900
Message-Id: <1565459703-30513-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105533_296850_D2124A03 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The umem driver defines LED_* macros for MEMCTRLCMD_LEDCTRL register
values.  The LED_OFF and LED_ON macros conflict with the LED subsystem's
LED_OFF and LED_ON enums.

This renames these LED_* macros to MEMCTRL_LED_* in umem driver.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/block/umem.c | 20 ++++++++++----------
 drivers/block/umem.h | 20 ++++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/block/umem.c b/drivers/block/umem.c
index 1f3f9e0..1109308 100644
--- a/drivers/block/umem.c
+++ b/drivers/block/umem.c
@@ -167,14 +167,14 @@ static int set_userbit(struct cardinfo *card, int bit, unsigned char state)
 }
 
 /*
- * NOTE: For the power LED, use the LED_POWER_* macros since they differ
+ * NOTE: For the power LED, use the MEMCTRL_LED_POWER_* macros since they differ
  */
 static void set_led(struct cardinfo *card, int shift, unsigned char state)
 {
 	unsigned char led;
 
 	led = readb(card->csr_remap + MEMCTRLCMD_LEDCTRL);
-	if (state == LED_FLIP)
+	if (state == MEMCTRL_LED_FLIP)
 		led ^= (1<<shift);
 	else {
 		led &= ~(0x03 << shift);
@@ -268,7 +268,7 @@ static void mm_start_io(struct cardinfo *card)
 
 
 	if (debug & DEBUG_LED_ON_TRANSFER)
-		set_led(card, LED_REMOVE, LED_ON);
+		set_led(card, MEMCTRL_LED_REMOVE, MEMCTRL_LED_ON);
 
 	desc = &page->desc[page->headcnt];
 	writel(0, card->csr_remap + DMA_PCI_ADDR);
@@ -477,7 +477,7 @@ static void process_page(unsigned long data)
 	}
 
 	if (debug & DEBUG_LED_ON_TRANSFER)
-		set_led(card, LED_REMOVE, LED_OFF);
+		set_led(card, MEMCTRL_LED_REMOVE, MEMCTRL_LED_OFF);
 
 	if (card->check_batteries) {
 		card->check_batteries = 0;
@@ -652,13 +652,13 @@ HW_TRACE(0x36);
 static void set_fault_to_battery_status(struct cardinfo *card)
 {
 	if (card->battery[0].good && card->battery[1].good)
-		set_led(card, LED_FAULT, LED_OFF);
+		set_led(card, MEMCTRL_LED_FAULT, MEMCTRL_LED_OFF);
 	else if (card->battery[0].warned || card->battery[1].warned)
-		set_led(card, LED_FAULT, LED_ON);
+		set_led(card, MEMCTRL_LED_FAULT, MEMCTRL_LED_ON);
 	else if (!card->battery[0].good && !card->battery[1].good)
-		set_led(card, LED_FAULT, LED_FLASH_7_0);
+		set_led(card, MEMCTRL_LED_FAULT, MEMCTRL_LED_FLASH_7_0);
 	else
-		set_led(card, LED_FAULT, LED_FLASH_3_5);
+		set_led(card, MEMCTRL_LED_FAULT, MEMCTRL_LED_FLASH_3_5);
 }
 
 static void init_battery_timer(void);
@@ -919,8 +919,8 @@ static int mm_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	}
 
 	/* Clear the LED's we control */
-	set_led(card, LED_REMOVE, LED_OFF);
-	set_led(card, LED_FAULT, LED_OFF);
+	set_led(card, MEMCTRL_LED_REMOVE, MEMCTRL_LED_OFF);
+	set_led(card, MEMCTRL_LED_FAULT, MEMCTRL_LED_OFF);
 
 	batt_status = readb(card->csr_remap + MEMCTRLSTATUS_BATTERY);
 
diff --git a/drivers/block/umem.h b/drivers/block/umem.h
index 5838497..cc9cb37 100644
--- a/drivers/block/umem.h
+++ b/drivers/block/umem.h
@@ -32,16 +32,16 @@
 #define  MEM_2_GB		0xe0
 
 #define MEMCTRLCMD_LEDCTRL	0x08
-#define  LED_REMOVE		2
-#define  LED_FAULT		4
-#define  LED_POWER		6
-#define	 LED_FLIP		255
-#define  LED_OFF		0x00
-#define  LED_ON			0x01
-#define  LED_FLASH_3_5		0x02
-#define  LED_FLASH_7_0		0x03
-#define  LED_POWER_ON		0x00
-#define  LED_POWER_OFF		0x01
+#define  MEMCTRL_LED_REMOVE	2
+#define  MEMCTRL_LED_FAULT	4
+#define  MEMCTRL_LED_POWER	6
+#define  MEMCTRL_LED_FLIP	255
+#define  MEMCTRL_LED_OFF	0x00
+#define  MEMCTRL_LED_ON		0x01
+#define  MEMCTRL_LED_FLASH_3_5	0x02
+#define  MEMCTRL_LED_FLASH_7_0	0x03
+#define  MEMCTRL_LED_POWER_ON	0x00
+#define  MEMCTRL_LED_POWER_OFF	0x01
 #define  USER_BIT1		0x01
 #define  USER_BIT2		0x02
 
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
