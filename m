Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20DB61286
	for <lists+linux-nvme@lfdr.de>; Sat,  6 Jul 2019 20:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xoCBk6VHgu/ViwzqK6p4mPHM3SS+y8CO7wkATIxY+TE=; b=XcL6lqSs1MPON9vVw9VOEb6x0W
	MpsUxl+zkLvRB6orjr4PnBR2ZYR0eega2Eee51W/eiVEzvRc1qeez8b/1/TH1U/e5Ho+RRJfXBHDH
	IoLYKIOPFOrpQmrNMchZULDkLp/n7R7+CWDon2PubU/85kcKMKNTO+btXTDlpQD7aBCF+7BNXrKEh
	zhu5jU41Zsh4s2bYA3a1QebXNpT+aReNZGNE+f427vHlIMLxNu1yEF+r9xhLT9cIgH85FTtlWWkPP
	jmkdbw8YENqzOFJdArhnaepdQgxGqyvPimdERAs0PrpSpcscigIgn7+ry51RwnPccnbSuYy9D2eet
	2N+uagFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjoye-0001MS-K8; Sat, 06 Jul 2019 18:00:00 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjoy1-0001Ah-O9
 for linux-nvme@lists.infradead.org; Sat, 06 Jul 2019 17:59:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so6081554plp.2
 for <linux-nvme@lists.infradead.org>; Sat, 06 Jul 2019 10:59:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JFIRLjxFpbq29Bt/7lF1zXV+hZag6ARLVLfe11BEZgA=;
 b=Cyq87AEqOrA37eqMi5Y+AQeL9QM8qLJ5EqA0lIWIVz3qH0ol5IXi6Vo5CvAedF1rK8
 AfzOjVby0zBQYSb3EvjfgxNp6w/JKXKCvXBxZnihnxE2FyRVxjXbd/2+m8uPow+T/84i
 AK80rHfguUI6bKACIw+RzLykgFjZjLQj3pRh2LOg3EgDalLVlpvo1rghc/bIvSMgfRu3
 BJK4jTwNyEB8AQXuZRkBG+MSCxrBQ98rR01nHUk/7yA7UkO/zM49HwNIIT1XEhC7t+6D
 wMF964qbpGaemOIO4ZWX3NvgQBx1pNA1lzXepwWzAlp1aQVpI7UbyKsh3rID/nU7Ip0/
 zgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JFIRLjxFpbq29Bt/7lF1zXV+hZag6ARLVLfe11BEZgA=;
 b=pyTMV7tIZFLXLsanQ+/DZ3B2DJW7tKCXZ36/7KiMup59EzgbU6EQOcjRdwrFYwGIUn
 +MeOpxFK1B2OERokLPC5XPDOxvbN5qZxAbnrOxROvudBmBbzIMB6xY4X3MdJoXZuVKRJ
 eQTBqbU+dYwMJrqKPiIrbfVJtdWPq0752KHjw7mp/CSbC0ftJYCDk/ovry/HZWFUVopM
 CFGwJsVUGdiwTsHLFFV6Dxse9gdGRVVObGd4ziMUoLpEwY76TWreUBjeJXSL6YO3qg+5
 uccW3UCQiI56wOPd3tB1gLGqsG9Dg0HvUadRM23lXJ+Igx4U+YHvq27+MeCz642otb8c
 J04Q==
X-Gm-Message-State: APjAAAXwtMXK/gxbA8iS2O/0942w7h4fmBDDhq1xm8j0DB3toL/WCCtZ
 ow5yTr0fzb3oYNEo4ZMQvcA=
X-Google-Smtp-Source: APXvYqxFU353UaSEQZgQ3A0F+jfvvCebDV1WEg1co0jQrT+tmY9Fj9m79YsvZdwoOMf/93rxOH3uZQ==
X-Received: by 2002:a17:902:7c96:: with SMTP id
 y22mr12818522pll.39.1562435960895; 
 Sat, 06 Jul 2019 10:59:20 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id h6sm11967528pfn.79.2019.07.06.10.59.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 06 Jul 2019 10:59:20 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] leds: move declaration of led_stop_software_blink() to
 linux/leds.h
Date: Sun,  7 Jul 2019 02:58:58 +0900
Message-Id: <1562435939-15466-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
References: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_105921_792216_E3742732 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Jens Axboe <axboe@kernel.dk>, Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>,
 Akinobu Mita <akinobu.mita@gmail.com>, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, Jacek Anaszewski <jacek.anaszewski@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation for adding LED block device activity trigger, expose
led_stop_software_blink() to outside the leds subsystem.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/leds/leds.h  | 1 -
 include/linux/leds.h | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/leds/leds.h b/drivers/leds/leds.h
index 47b2294..64fe774 100644
--- a/drivers/leds/leds.h
+++ b/drivers/leds/leds.h
@@ -18,7 +18,6 @@ static inline int led_get_brightness(struct led_classdev *led_cdev)
 }
 
 void led_init_core(struct led_classdev *led_cdev);
-void led_stop_software_blink(struct led_classdev *led_cdev);
 void led_set_brightness_nopm(struct led_classdev *led_cdev,
 				enum led_brightness value);
 void led_set_brightness_nosleep(struct led_classdev *led_cdev,
diff --git a/include/linux/leds.h b/include/linux/leds.h
index 9b2bf57..6aeda4f 100644
--- a/include/linux/leds.h
+++ b/include/linux/leds.h
@@ -189,6 +189,8 @@ extern void led_blink_set_oneshot(struct led_classdev *led_cdev,
 extern void led_set_brightness(struct led_classdev *led_cdev,
 			       enum led_brightness brightness);
 
+extern void led_stop_software_blink(struct led_classdev *led_cdev);
+
 /**
  * led_set_brightness_sync - set LED brightness synchronously
  * @led_cdev: the LED to set
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
