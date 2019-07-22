Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB8702ED
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RangsqtWNdRtwTyxty33P7WDPirKpw0npswYEFvuipA=; b=Rl8tKS+Si6dsiQWuyNo7+lSQq8
	Hsy+Hi1kxHcVZNbcTFlKm6xCzQ30WJpJ2WfctnI7J9hO5Jg8qrvZRtmfl2Cq4iIikf+2Swdah3ExC
	zHtOv/TcYk1fFF3QQV4qCJ/oCskmPAsG4AqvttOJb34uXb/yfyGYr3NLBLrLlMIP5SZzzdMDK9LZC
	ddPEgbQPVZLCxwRnocpV9bYUV5xgI7eCvk+Mcxsda4LAp0Aw45BdI1Of+7HYXyfPmdlfHh+f50Ob4
	seG+FEteX5PBpV8pQNCC1QC6vJYT/g38Rpt9wjZqJWRHcxggI2LBUtHaFlAyrs6IPz79x6QlRs0XM
	93U1p3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZoV-0006Xh-VD; Mon, 22 Jul 2019 15:01:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZn4-0004wP-IK
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 14:59:52 +0000
Received: by mail-pl1-x643.google.com with SMTP id a93so19279416pla.7
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 07:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KA1oHbf5AMmxiV0udJaNL+9jpzt1sO1/94tgTVwHPuU=;
 b=HTBPjmcCLPRJk5zA/PwD52IgrOZz5DgvIPTBdD1fyePEgBUWP7doAm8VdR3PGw1fA7
 NJile9oMFoHdWtGpD2w68+44WHdla5npQDnFEiFm8hgyyiSOUTXCPazPenVZd+NdEFYw
 PRbd8B1nFOHd5wMjBzjZk+Ydkou60Z0edwdNm9EoFn3v8J3mmdvdUBb2akL6uhbd4d0c
 tpYV3QFUWY/Wc665JGiXHMzYB0N2gGY7VpxWDxjyNBgOMRbmDeeifSwpCPCIZOh8jYp/
 ZHvTV0DXNZkEcDqE2y6t3LC6IMDaZi3BXIQkjRdm4TFzp/fTP17bRuMk+9DjlsJe5nD+
 /5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KA1oHbf5AMmxiV0udJaNL+9jpzt1sO1/94tgTVwHPuU=;
 b=ggysJd8cfbjAogJKDSeowfxILC7jKDxSbu6HVL23y8BzNMXZqXOU43T0Ooj3XGBdne
 7lxQd/UlGnnUbGbyVMCoPYcN3l5MZQxq0xID958Oy7XAu4tBrNyjkMwFe0Qkb3fh2Qeh
 Px5ENe9sN+KgGsId4jsI/KkXcwJ8CQlFdYPyawqhVwPmj9eCbLyCI5R2euhVrvHsxoaQ
 GJGiXbUn/7FYyEnw3Uah4hlrMpZ6OXINE3RUzrx2803O6bG+3M2HaRMYK29pYYYbrcja
 VnQtAyZ2TMV89EY8bISxzNXe1paaI1vHSKsflo0sjLR+1YICss3oRX4qscSaF/8UOpeC
 pnNA==
X-Gm-Message-State: APjAAAX5yhT0yoW2b5tfwoBU88u6K/TnRK6pnoy44gD5xh7bWjUbAvJW
 BlRD6rQ90NEgoaQ6HN6TZms=
X-Google-Smtp-Source: APXvYqwhqAhgaFbhJQ1eHJw8AEBtYiAZ8bPwNSOU0oXSkMOCIcnFBI4r/zMG23rwhQXF4p3wLDeQbg==
X-Received: by 2002:a17:902:8509:: with SMTP id
 bj9mr76505337plb.79.1563807589710; 
 Mon, 22 Jul 2019 07:59:49 -0700 (PDT)
Received: from mita-MS-7A45.lan (KD027092233113.ppp-bb.dion.ne.jp.
 [27.92.233.113])
 by smtp.gmail.com with ESMTPSA id a16sm42533174pfd.68.2019.07.22.07.59.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 22 Jul 2019 07:59:49 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v2 2/3] ledtrig-blk: add interface to stop and restart polling
 disk stats
Date: Mon, 22 Jul 2019 23:59:11 +0900
Message-Id: <1563807552-23498-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
References: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_075950_749723_C01F99AE 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>,
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

The LED block device activity trigger periodically polls the disk stats
to collect the activity.  However, it is pointless to poll while the
block device is in quiescent state.

This provides an optional interface to stop and restart polling disk stats
for the lower-level block drivers.

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/leds/trigger/ledtrig-blk.c | 37 +++++++++++++++++++++++++++++++++++--
 include/linux/leds.h               | 11 +++++++++++
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/leds/trigger/ledtrig-blk.c b/drivers/leds/trigger/ledtrig-blk.c
index d5808c9..6b826ed 100644
--- a/drivers/leds/trigger/ledtrig-blk.c
+++ b/drivers/leds/trigger/ledtrig-blk.c
@@ -153,8 +153,9 @@ static void ledtrig_blk_work(struct work_struct *work)
 		trig_data->last_activity = activity;
 	}
 
-	schedule_delayed_work(&trig_data->work,
-			      atomic_read(&trig_data->interval) * 2);
+	if (atomic_read(&disk->led.enable_count))
+		schedule_delayed_work(&trig_data->work,
+				      atomic_read(&trig_data->interval) * 2);
 }
 
 static int ledtrig_blk_activate(struct led_classdev *led_cdev)
@@ -190,6 +191,36 @@ static void ledtrig_blk_deactivate(struct led_classdev *led_cdev)
 	kfree(trig_data);
 }
 
+void ledtrig_blk_disable(struct gendisk *disk)
+{
+	if (disk)
+		atomic_dec(&disk->led.enable_count);
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_disable);
+
+void ledtrig_blk_enable(struct gendisk *disk)
+{
+	struct led_classdev *led_cdev;
+
+	if (!disk)
+		return;
+
+	atomic_inc(&disk->led.enable_count);
+
+	read_lock(&disk->led.trig.leddev_list_lock);
+
+	list_for_each_entry(led_cdev, &disk->led.trig.led_cdevs, trig_list) {
+		struct ledtrig_blk_data *trig_data =
+			led_get_trigger_data(led_cdev);
+
+		schedule_delayed_work(&trig_data->work,
+				      atomic_read(&trig_data->interval) * 2);
+	}
+
+	read_unlock(&disk->led.trig.leddev_list_lock);
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_enable);
+
 int ledtrig_blk_register(struct gendisk *disk)
 {
 	int ret;
@@ -203,6 +234,8 @@ int ledtrig_blk_register(struct gendisk *disk)
 	disk->led.trig.deactivate = ledtrig_blk_deactivate;
 	disk->led.trig.groups = ledtrig_blk_groups;
 
+	atomic_set(&disk->led.enable_count, 1);
+
 	ret = led_trigger_register(&disk->led.trig);
 	if (ret) {
 		kfree(disk->led.trig.name);
diff --git a/include/linux/leds.h b/include/linux/leds.h
index 395fa61..fd2eb7c 100644
--- a/include/linux/leds.h
+++ b/include/linux/leds.h
@@ -523,8 +523,11 @@ struct gendisk;
 
 struct ledtrig_blk {
 	struct led_trigger trig;
+	atomic_t enable_count;
 };
 
+void ledtrig_blk_enable(struct gendisk *disk);
+void ledtrig_blk_disable(struct gendisk *disk);
 int ledtrig_blk_register(struct gendisk *disk);
 void ledtrig_blk_unregister(struct gendisk *disk);
 
@@ -533,6 +536,14 @@ void ledtrig_blk_unregister(struct gendisk *disk);
 struct ledtrig_blk {
 };
 
+static inline void ledtrig_blk_enable(struct gendisk *disk)
+{
+}
+
+static inline void ledtrig_blk_disable(struct gendisk *disk)
+{
+}
+
 static inline int ledtrig_blk_register(struct gendisk *disk)
 {
 	return 0;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
