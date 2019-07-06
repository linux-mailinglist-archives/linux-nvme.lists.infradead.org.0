Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739BA61287
	for <lists+linux-nvme@lfdr.de>; Sat,  6 Jul 2019 20:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JbB6+0Ad7R30th9usyd1hCjqRVGEEZ/vaMYtK+0Sh1U=; b=hzEokdONp+XgPXcx0Xa8l7kX13
	GODmN0VnSU7jAAk9sCGyCYXlA6F9YraUYNnpZDbbZllcdcftTh897wL45a61zqJXqAp/bI8wYyScH
	4jr4kHRvrs4nE9Ci4sScopmc0mO4IA3uZi5qQ7pyzVnZqiWyiztFM3ldYz1xxOadS71bm4ck5zxA7
	RojCG0CYLenVb+1HiZi9qi9FNWrPVPNr0LwO0eFX6L04ESdp5gRtPrScqe+fBMpayQowhe7Y2WmrM
	tUW/Q9PoUGM5jjmvJbQytGemEJFIdhjVQPgH4UfTOTijX+WX9JF5bYkk/tGZGKXMI94TauDt7g/vT
	bQcKXNBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjoyz-0001fZ-5d; Sat, 06 Jul 2019 18:00:21 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjoy4-0001C1-MT
 for linux-nvme@lists.infradead.org; Sat, 06 Jul 2019 17:59:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id c73so959479pfb.13
 for <linux-nvme@lists.infradead.org>; Sat, 06 Jul 2019 10:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MKPqD+627nJjW9lPF1ZZQ2GzyS3eqERC5b0zjyo4PCg=;
 b=pqEM5sljLVT+ej4a5afr5R1lt1glE+jS4FfSFBwcozX3CxX4bKsiG4PODmABX0mRkC
 GFSfcj1RkaSB4ovI8M3N61On65u63Wk4B6BquTZrbg79hGzkuDJzlRXo7RIKWRZ9e+JB
 cZpubHZ2YPBrKnsrfMWdrYYoxRce+fDcU8aXk6o1EcuMYiEudquJeLg/2SsW2ETSTagh
 qmf/nTRICcxYqgUk/ZlMcc05SNPVLvePrbvBPekIPjWigwsjrNMaYCkGNsqi5IT1KEf2
 reuEk+2RceyoxuuezchvKDrUZh6eW5kaw1yu7pTefUhkS5bm/W9k43W8xmJxdLdK8jjd
 D5+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MKPqD+627nJjW9lPF1ZZQ2GzyS3eqERC5b0zjyo4PCg=;
 b=tqJfAqc+Vnv58lAIGpc6t15Y9slFQ6Z/EZum7RBvUJUBepmbiekpAtUjxxgHNpilET
 +PtrBX8IVac3rCic7j3556u6vKufKof78QHpu3APZwBeG5liT9hfxEoHhsaJWxRuY4UM
 qfcQW8YQ28sz72gxuPL/jzJwrRA4DciK4BgmdJexGcz08gblJBC3yXgEKsUv+i7DHi54
 HtMR8rpc7LbldLNPgp0VgjyVA3FcJtmoLkRvxatwH3qsYzAjlGKEVa/s6VqpGdm8T8To
 J3eB2nHbIJBhP0/zHVIGq8NURhLAorKGV6Y2r8wRtFeDpAFhZo2zWeh+C6oE7GziU4lS
 FHlQ==
X-Gm-Message-State: APjAAAW4yKdQ718z6vwl0ND3OdLwPfGCxkavs2Nqgo4k7Ylx69oCTjJC
 bmZpEoqlMuNeoN7PZJQxdTo=
X-Google-Smtp-Source: APXvYqyefaPxo4nQI6I3PIsmRoW739gCOyVpaq9T/pbhqBPLrjTnDIKxHFMbxGSnHqiGLbIik6mw9g==
X-Received: by 2002:a63:f44a:: with SMTP id p10mr12278870pgk.148.1562435963777; 
 Sat, 06 Jul 2019 10:59:23 -0700 (PDT)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id h6sm11967528pfn.79.2019.07.06.10.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 06 Jul 2019 10:59:23 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] block: introduce LED block device activity trigger
Date: Sun,  7 Jul 2019 02:58:59 +0900
Message-Id: <1562435939-15466-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
References: <1562435939-15466-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_105925_607023_5DC82E83 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

This allows LEDs to be controlled by block device activity.

We already have ledtrig-disk (LED disk activity trigger), but the lower
level disk drivers need to utilize ledtrig_disk_activity() to make the
LED blink.

The LED block device trigger doesn't require the lower level drivers to
have any instrumentation. The activity is collected by polling the disk
stats.

Example:

echo block-nvme0n1 > /sys/class/leds/diy/trigger

Cc: Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 block/Makefile        |   1 +
 block/blk-ledtrig.c   | 219 ++++++++++++++++++++++++++++++++++++++++++++++++++
 block/blk.h           |  13 +++
 block/genhd.c         |   2 +
 include/linux/genhd.h |   4 +
 5 files changed, 239 insertions(+)
 create mode 100644 block/blk-ledtrig.c

diff --git a/block/Makefile b/block/Makefile
index eee1b4c..c74d84e6 100644
--- a/block/Makefile
+++ b/block/Makefile
@@ -35,3 +35,4 @@ obj-$(CONFIG_BLK_DEBUG_FS)	+= blk-mq-debugfs.o
 obj-$(CONFIG_BLK_DEBUG_FS_ZONED)+= blk-mq-debugfs-zoned.o
 obj-$(CONFIG_BLK_SED_OPAL)	+= sed-opal.o
 obj-$(CONFIG_BLK_PM)		+= blk-pm.o
+obj-$(CONFIG_LEDS_TRIGGERS)	+= blk-ledtrig.o
diff --git a/block/blk-ledtrig.c b/block/blk-ledtrig.c
new file mode 100644
index 0000000..da93b06
--- /dev/null
+++ b/block/blk-ledtrig.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0
+// LED Kernel Blockdev Trigger
+// Derived from ledtrig-netdev.c
+
+#include <linux/atomic.h>
+#include <linux/genhd.h>
+#include <linux/leds.h>
+#include <linux/workqueue.h>
+
+struct blk_ledtrig_data {
+	struct delayed_work work;
+	struct led_classdev *led_cdev;
+
+	atomic_t interval;
+	u64 last_activity;
+
+	unsigned long mode;
+#define BLK_LEDTRIG_READ BIT(0)
+#define BLK_LEDTRIG_WRITE BIT(1)
+#define BLK_LEDTRIG_DISCARD BIT(2)
+};
+
+static ssize_t blk_ledtrig_attr_show(struct device *dev, char *buf,
+				     unsigned long blk_ledtrig)
+{
+	struct blk_ledtrig_data *trig_data = led_trigger_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", test_bit(blk_ledtrig, &trig_data->mode));
+}
+
+static ssize_t blk_ledtrig_attr_store(struct device *dev, const char *buf,
+				      size_t size, unsigned long blk_ledtrig)
+{
+	struct blk_ledtrig_data *trig_data = led_trigger_get_drvdata(dev);
+	unsigned long state;
+	int ret;
+
+	ret = kstrtoul(buf, 0, &state);
+	if (ret)
+		return ret;
+
+	if (state)
+		set_bit(blk_ledtrig, &trig_data->mode);
+	else
+		clear_bit(blk_ledtrig, &trig_data->mode);
+
+	return size;
+}
+
+static ssize_t read_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	return blk_ledtrig_attr_show(dev, buf, BLK_LEDTRIG_READ);
+}
+static ssize_t read_store(struct device *dev, struct device_attribute *attr,
+			  const char *buf, size_t size)
+{
+	return blk_ledtrig_attr_store(dev, buf, size, BLK_LEDTRIG_READ);
+}
+static DEVICE_ATTR_RW(read);
+
+static ssize_t write_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	return blk_ledtrig_attr_show(dev, buf, BLK_LEDTRIG_WRITE);
+}
+static ssize_t write_store(struct device *dev, struct device_attribute *attr,
+			   const char *buf, size_t size)
+{
+	return blk_ledtrig_attr_store(dev, buf, size, BLK_LEDTRIG_WRITE);
+}
+static DEVICE_ATTR_RW(write);
+
+static ssize_t discard_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	return blk_ledtrig_attr_show(dev, buf, BLK_LEDTRIG_DISCARD);
+}
+static ssize_t discard_store(struct device *dev, struct device_attribute *attr,
+			     const char *buf, size_t size)
+{
+	return blk_ledtrig_attr_store(dev, buf, size, BLK_LEDTRIG_DISCARD);
+}
+static DEVICE_ATTR_RW(discard);
+
+static ssize_t interval_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct blk_ledtrig_data *trig_data = led_trigger_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n",
+		       jiffies_to_msecs(atomic_read(&trig_data->interval)));
+}
+static ssize_t interval_store(struct device *dev, struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	struct blk_ledtrig_data *trig_data = led_trigger_get_drvdata(dev);
+	unsigned long value;
+	int ret;
+
+	ret = kstrtoul(buf, 0, &value);
+	if (ret)
+		return ret;
+
+	/* impose some basic bounds on the timer interval */
+	if (value >= 5 && value <= 10000) {
+		cancel_delayed_work_sync(&trig_data->work);
+		atomic_set(&trig_data->interval, msecs_to_jiffies(value));
+		schedule_delayed_work(&trig_data->work,
+				      atomic_read(&trig_data->interval) * 2);
+	}
+
+	return size;
+}
+static DEVICE_ATTR_RW(interval);
+
+static struct attribute *blk_ledtrig_attrs[] = {
+	&dev_attr_read.attr,
+	&dev_attr_write.attr,
+	&dev_attr_discard.attr,
+	&dev_attr_interval.attr,
+	NULL
+};
+ATTRIBUTE_GROUPS(blk_ledtrig);
+
+static void blk_ledtrig_work(struct work_struct *work)
+{
+	struct blk_ledtrig_data *trig_data =
+		container_of(work, struct blk_ledtrig_data, work.work);
+	struct gendisk *disk = container_of(trig_data->led_cdev->trigger,
+					    struct gendisk, led_trig);
+	u64 activity = 0;
+
+	if (test_bit(BLK_LEDTRIG_READ, &trig_data->mode))
+		activity += part_stat_read(&disk->part0, ios[STAT_READ]);
+	if (test_bit(BLK_LEDTRIG_WRITE, &trig_data->mode))
+		activity += part_stat_read(&disk->part0, ios[STAT_WRITE]);
+	if (test_bit(BLK_LEDTRIG_DISCARD, &trig_data->mode))
+		activity += part_stat_read(&disk->part0, ios[STAT_DISCARD]);
+
+	if (trig_data->last_activity != activity) {
+		unsigned long interval;
+
+		led_stop_software_blink(trig_data->led_cdev);
+		interval = jiffies_to_msecs(atomic_read(&trig_data->interval));
+		led_blink_set_oneshot(trig_data->led_cdev, &interval, &interval,
+				      0);
+
+		trig_data->last_activity = activity;
+	}
+
+	schedule_delayed_work(&trig_data->work,
+			      atomic_read(&trig_data->interval) * 2);
+}
+
+static int blk_ledtrig_activate(struct led_classdev *led_cdev)
+{
+	struct blk_ledtrig_data *trig_data;
+
+	trig_data = kzalloc(sizeof(*trig_data), GFP_KERNEL);
+	if (!trig_data)
+		return -ENOMEM;
+
+	trig_data->mode = BLK_LEDTRIG_READ | BLK_LEDTRIG_WRITE |
+			  BLK_LEDTRIG_DISCARD;
+
+	atomic_set(&trig_data->interval, msecs_to_jiffies(50));
+	trig_data->last_activity = 0;
+	trig_data->led_cdev = led_cdev;
+
+	INIT_DELAYED_WORK(&trig_data->work, blk_ledtrig_work);
+
+	led_set_trigger_data(led_cdev, trig_data);
+
+	schedule_delayed_work(&trig_data->work,
+			      atomic_read(&trig_data->interval) * 2);
+
+	return 0;
+}
+
+static void blk_ledtrig_deactivate(struct led_classdev *led_cdev)
+{
+	struct blk_ledtrig_data *trig_data = led_get_trigger_data(led_cdev);
+
+	cancel_delayed_work_sync(&trig_data->work);
+	kfree(trig_data);
+}
+
+int blk_ledtrig_register(struct gendisk *disk)
+{
+	int ret;
+
+	disk->led_trig.name = kasprintf(GFP_KERNEL, "block-%s",
+					disk->disk_name);
+	if (!disk->led_trig.name)
+		return -ENOMEM;
+
+	disk->led_trig.activate = blk_ledtrig_activate;
+	disk->led_trig.deactivate = blk_ledtrig_deactivate;
+	disk->led_trig.groups = blk_ledtrig_groups;
+
+	ret = led_trigger_register(&disk->led_trig);
+	if (ret) {
+		kfree(disk->led_trig.name);
+		disk->led_trig.name = NULL;
+	}
+
+	return ret;
+}
+
+void blk_ledtrig_unregister(struct gendisk *disk)
+{
+	if (!disk->led_trig.name)
+		return;
+
+	led_trigger_unregister(&disk->led_trig);
+	kfree(disk->led_trig.name);
+	disk->led_trig.name = NULL;
+}
diff --git a/block/blk.h b/block/blk.h
index 7814aa2..dd4c230a 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -331,4 +331,17 @@ void blk_queue_free_zone_bitmaps(struct request_queue *q);
 static inline void blk_queue_free_zone_bitmaps(struct request_queue *q) {}
 #endif
 
+#ifdef CONFIG_LEDS_TRIGGERS
+int blk_ledtrig_register(struct gendisk *disk);
+void blk_ledtrig_unregister(struct gendisk *disk);
+#else
+static inline int blk_ledtrig_register(struct gendisk *disk)
+{
+	return 0;
+}
+static inline void blk_ledtrig_unregister(struct gendisk *disk)
+{
+}
+#endif /* CONFIG_LEDS_TRIGGERS */
+
 #endif /* BLK_INTERNAL_H */
diff --git a/block/genhd.c b/block/genhd.c
index 24654e1..dfd210c 100644
--- a/block/genhd.c
+++ b/block/genhd.c
@@ -745,6 +745,7 @@ static void __device_add_disk(struct device *parent, struct gendisk *disk,
 
 	disk_add_events(disk);
 	blk_integrity_add(disk);
+	blk_ledtrig_register(disk);
 }
 
 void device_add_disk(struct device *parent, struct gendisk *disk,
@@ -766,6 +767,7 @@ void del_gendisk(struct gendisk *disk)
 	struct disk_part_iter piter;
 	struct hd_struct *part;
 
+	blk_ledtrig_unregister(disk);
 	blk_integrity_del(disk);
 	disk_del_events(disk);
 
diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 8b5330d..9250e9c 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -17,6 +17,7 @@
 #include <linux/percpu-refcount.h>
 #include <linux/uuid.h>
 #include <linux/blk_types.h>
+#include <linux/leds.h>
 #include <asm/local.h>
 
 #ifdef CONFIG_BLOCK
@@ -219,6 +220,9 @@ struct gendisk {
 	int node_id;
 	struct badblocks *bb;
 	struct lockdep_map lockdep_map;
+#ifdef CONFIG_LEDS_TRIGGERS
+	struct led_trigger led_trig;
+#endif
 };
 
 static inline struct gendisk *part_to_disk(struct hd_struct *part)
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
