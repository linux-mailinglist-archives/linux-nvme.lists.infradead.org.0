Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655FA88CA8
	for <lists+linux-nvme@lfdr.de>; Sat, 10 Aug 2019 19:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vc6hBxwgGvv4nqVued0o0Vcr3PkmqA9uaD8A0A9kGn0=; b=pnNyIv05SoxJPO3Gd2kAm0kFRZ
	gq/VOr83TpZKjcfeFEOq3b7YOkjsW9qOhMOSWuzLLek1WYpMYO9gcJ/ACQLnkiD2lasnRIQTh2zSd
	1/6JnF92WhzxVNhQz8bixp3eXJX/UT9evs41NhqA2i8CynaMnmNW+WzXVYTz7u6SfD6d4adr4LZI4
	+LT2dpvKBjP4DtEzfEgk3HooP0TQWOuH6Tk/a3kyaZE26sNTe0F/gC7iaFezga9Sb2pm2n7u4CVUf
	J5oquJKwxxfhUqO0/JuC2PWVVdSWMeYWdKVsccvBsfUnJZdSQMyfc2J0+D1CNtR10WreV2CeF5TH8
	AT1EZNGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwVbo-0000EH-I9; Sat, 10 Aug 2019 17:56:52 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwVaj-00080Q-GP
 for linux-nvme@lists.infradead.org; Sat, 10 Aug 2019 17:55:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id o70so2342779pfg.5
 for <linux-nvme@lists.infradead.org>; Sat, 10 Aug 2019 10:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BOPdeTQtkqBw3W9t11SGA8PB1LPWuWz/oWm3mXmZWoY=;
 b=PhWSj40mbjaEGaaeM9yBQa+jfcVKjQ++yncGp0IH8mO6qVYi0v43XydxX0lyCBUV5T
 08Ba17qZiDR4vK6MVGqiq3LKUFfEh/dwFSO7v6lXB3oKAZBm1+H4Jv7c5u7IOcr3ZWYt
 gALGYdP+SBXSFTrCXPMTyJzuNXWQTYDh7HZLW6zEsBif2/3LBSGoWCNX0rijcvBkANkn
 o5B0psfOzhJMCa1bNeS5xDZTbdTLR0hDTwSn5kyKEfnQloKeTtdKiqPd08s8RiDLxmJE
 cbwo/pj4kEKdRPg1HuC0BasM7b7LKii/I8o2gEGlL9aYlVg90V72YNoQUj2vL6kGgb4H
 8oMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BOPdeTQtkqBw3W9t11SGA8PB1LPWuWz/oWm3mXmZWoY=;
 b=cuig3SOKiipLHeyHsAHW5ejWOa9pAf2VM3+26JIj7Qb6R2jRT78zIuKrBzcko8DIvM
 +2iCog9cOkjbJLkWLgrJUiGH9ZJSA3ixFSfEAMnGpOS7k7QwrM0WShVZCjsorknMdlMI
 OYSUpRmVL4htFsx1CX2csY25HgVp6oZwFj0flARoNZyAtdU5Wav0T52f3cGNyGP0W/Tl
 7HYSgVm+W1U6WFWAnKZ9r1fgEyCMnm9ssF6UKMZrx1Q7gIGX+Cf/HGvQaKpiIkacV2LY
 D2CIz2jsLxCumLfKCXG/msrb+YkxMGTN4oqygTDIApvEGMzVMRkMnmQEFceFWyMFqGo7
 l9Mg==
X-Gm-Message-State: APjAAAVnrQgBKSNzM66pmbaM3UmdDL/5IBJ61WTawMtvR0JvMENFAYgk
 0CDd6W3pvyIqNthAa3BIHA5SwAEdrPE=
X-Google-Smtp-Source: APXvYqyURb3iARdiIfNtdRWD3b3+Ezcml3cik17aswgFiwYZL4/hyWKaJJXPqw3bTwZxrn49F7E2Lw==
X-Received: by 2002:a65:64c5:: with SMTP id t5mr23664573pgv.168.1565459744629; 
 Sat, 10 Aug 2019 10:55:44 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:a137:2bda:e96e:808])
 by smtp.gmail.com with ESMTPSA id 185sm102146544pfd.125.2019.08.10.10.55.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 10 Aug 2019 10:55:44 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-block@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org
Subject: [PATCH v3 4/6] block: introduce LED block device activity trigger
Date: Sun, 11 Aug 2019 02:55:01 +0900
Message-Id: <1565459703-30513-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_105545_757758_5368EBD5 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: "James E.J. Bottomley" <jejb@linux.ibm.com>
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Hannes Reinecke <hare@suse.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- Add ABI documentation
- Add more detail to Kconfig help text

 .../ABI/testing/sysfs-class-led-trigger-blk        |  37 ++++
 block/genhd.c                                      |   2 +
 drivers/leds/trigger/Kconfig                       |   9 +
 drivers/leds/trigger/Makefile                      |   1 +
 drivers/leds/trigger/ledtrig-blk.c                 | 225 +++++++++++++++++++++
 include/linux/genhd.h                              |   3 +
 include/linux/leds.h                               |  27 +++
 7 files changed, 304 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-class-led-trigger-blk
 create mode 100644 drivers/leds/trigger/ledtrig-blk.c

diff --git a/Documentation/ABI/testing/sysfs-class-led-trigger-blk b/Documentation/ABI/testing/sysfs-class-led-trigger-blk
new file mode 100644
index 0000000..73472c3
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-led-trigger-blk
@@ -0,0 +1,37 @@
+What:		/sys/class/leds/<led>/interval
+Date:		Aug 2019
+KernelVersion:	5.4
+Contact:	linux-leds@vger.kernel.org
+Description:
+		Specifies the duration of the LED blink in milliseconds.
+		Defaults to 50 ms.
+
+What:		/sys/class/leds/<led>/read
+Date:		Aug 2019
+KernelVersion:	5.4
+Contact:	linux-leds@vger.kernel.org
+Description:
+		Signal data read on the block device.
+		If set to 0, the LED will not blink on data read.
+		If set to 1 (default), the LED will blink for the milliseconds
+		specified in interval to signal data read.
+
+What:		/sys/class/leds/<led>/write
+Date:		Aug 2019
+KernelVersion:	5.4
+Contact:	linux-leds@vger.kernel.org
+Description:
+		Signal data written on the block device.
+		If set to 0, the LED will not blink on data written.
+		If set to 1 (default), the LED will blink for the milliseconds
+		specified in interval to signal data written.
+
+What:		/sys/class/leds/<led>/discard
+Date:		Aug 2019
+KernelVersion:	5.4
+Contact:	linux-leds@vger.kernel.org
+Description:
+		Signal data discarded on the block device.
+		If set to 0, the LED will not blink on data discarded.
+		If set to 1 (default), the LED will blink for the milliseconds
+		specified in interval to signal data discarded.
diff --git a/block/genhd.c b/block/genhd.c
index 54f1f0d3..1c68861 100644
--- a/block/genhd.c
+++ b/block/genhd.c
@@ -745,6 +745,7 @@ static void __device_add_disk(struct device *parent, struct gendisk *disk,
 
 	disk_add_events(disk);
 	blk_integrity_add(disk);
+	ledtrig_blk_register(disk);
 }
 
 void device_add_disk(struct device *parent, struct gendisk *disk,
@@ -766,6 +767,7 @@ void del_gendisk(struct gendisk *disk)
 	struct disk_part_iter piter;
 	struct hd_struct *part;
 
+	ledtrig_blk_unregister(disk);
 	blk_integrity_del(disk);
 	disk_del_events(disk);
 
diff --git a/drivers/leds/trigger/Kconfig b/drivers/leds/trigger/Kconfig
index ce9429c..e399a11 100644
--- a/drivers/leds/trigger/Kconfig
+++ b/drivers/leds/trigger/Kconfig
@@ -144,4 +144,13 @@ config LEDS_TRIGGER_AUDIO
 	  the audio mute and mic-mute changes.
 	  If unsure, say N
 
+config LEDS_TRIGGER_BLOCK
+	bool "LED Block device Trigger"
+	depends on BLOCK
+	help
+	  This allows LEDs to be controlled by block device activity.
+	  This trigger doesn't require the lower level drivers to have any
+	  instrumentation. The activity is collected by polling the disk stats.
+	  If unsure, say Y.
+
 endif # LEDS_TRIGGERS
diff --git a/drivers/leds/trigger/Makefile b/drivers/leds/trigger/Makefile
index 733a83e..60200eb 100644
--- a/drivers/leds/trigger/Makefile
+++ b/drivers/leds/trigger/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_LEDS_TRIGGER_PANIC)	+= ledtrig-panic.o
 obj-$(CONFIG_LEDS_TRIGGER_NETDEV)	+= ledtrig-netdev.o
 obj-$(CONFIG_LEDS_TRIGGER_PATTERN)	+= ledtrig-pattern.o
 obj-$(CONFIG_LEDS_TRIGGER_AUDIO)	+= ledtrig-audio.o
+obj-$(CONFIG_LEDS_TRIGGER_BLOCK)	+= ledtrig-blk.o
diff --git a/drivers/leds/trigger/ledtrig-blk.c b/drivers/leds/trigger/ledtrig-blk.c
new file mode 100644
index 0000000..d5808c9
--- /dev/null
+++ b/drivers/leds/trigger/ledtrig-blk.c
@@ -0,0 +1,225 @@
+// SPDX-License-Identifier: GPL-2.0
+// LED Kernel Blockdev Trigger
+// Derived from ledtrig-netdev.c
+
+#include <linux/atomic.h>
+#include <linux/genhd.h>
+#include <linux/leds.h>
+#include <linux/workqueue.h>
+#include "../leds.h"
+
+enum ledtrig_blk_attr {
+	LEDTRIG_BLK_READ,
+	LEDTRIG_BLK_WRITE,
+	LEDTRIG_BLK_DISCARD
+};
+
+struct ledtrig_blk_data {
+	struct delayed_work work;
+	struct led_classdev *led_cdev;
+
+	atomic_t interval;
+	u64 last_activity;
+
+	unsigned long mode;
+};
+
+static ssize_t ledtrig_blk_attr_show(struct device *dev, char *buf,
+				     enum ledtrig_blk_attr attr)
+{
+	struct ledtrig_blk_data *trig_data = led_trigger_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", test_bit(attr, &trig_data->mode));
+}
+
+static ssize_t ledtrig_blk_attr_store(struct device *dev, const char *buf,
+				      size_t size, enum ledtrig_blk_attr attr)
+{
+	struct ledtrig_blk_data *trig_data = led_trigger_get_drvdata(dev);
+	unsigned long state;
+	int ret;
+
+	ret = kstrtoul(buf, 0, &state);
+	if (ret)
+		return ret;
+
+	if (state)
+		set_bit(attr, &trig_data->mode);
+	else
+		clear_bit(attr, &trig_data->mode);
+
+	return size;
+}
+
+static ssize_t read_show(struct device *dev, struct device_attribute *attr,
+			 char *buf)
+{
+	return ledtrig_blk_attr_show(dev, buf, LEDTRIG_BLK_READ);
+}
+static ssize_t read_store(struct device *dev, struct device_attribute *attr,
+			  const char *buf, size_t size)
+{
+	return ledtrig_blk_attr_store(dev, buf, size, LEDTRIG_BLK_READ);
+}
+static DEVICE_ATTR_RW(read);
+
+static ssize_t write_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	return ledtrig_blk_attr_show(dev, buf, LEDTRIG_BLK_WRITE);
+}
+static ssize_t write_store(struct device *dev, struct device_attribute *attr,
+			   const char *buf, size_t size)
+{
+	return ledtrig_blk_attr_store(dev, buf, size, LEDTRIG_BLK_WRITE);
+}
+static DEVICE_ATTR_RW(write);
+
+static ssize_t discard_show(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	return ledtrig_blk_attr_show(dev, buf, LEDTRIG_BLK_DISCARD);
+}
+static ssize_t discard_store(struct device *dev, struct device_attribute *attr,
+			     const char *buf, size_t size)
+{
+	return ledtrig_blk_attr_store(dev, buf, size, LEDTRIG_BLK_DISCARD);
+}
+static DEVICE_ATTR_RW(discard);
+
+static ssize_t interval_show(struct device *dev, struct device_attribute *attr,
+			     char *buf)
+{
+	struct ledtrig_blk_data *trig_data = led_trigger_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n",
+		       jiffies_to_msecs(atomic_read(&trig_data->interval)));
+}
+static ssize_t interval_store(struct device *dev, struct device_attribute *attr,
+			      const char *buf, size_t size)
+{
+	struct ledtrig_blk_data *trig_data = led_trigger_get_drvdata(dev);
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
+static struct attribute *ledtrig_blk_attrs[] = {
+	&dev_attr_read.attr,
+	&dev_attr_write.attr,
+	&dev_attr_discard.attr,
+	&dev_attr_interval.attr,
+	NULL
+};
+ATTRIBUTE_GROUPS(ledtrig_blk);
+
+static void ledtrig_blk_work(struct work_struct *work)
+{
+	struct ledtrig_blk_data *trig_data =
+		container_of(work, struct ledtrig_blk_data, work.work);
+	struct gendisk *disk = container_of(trig_data->led_cdev->trigger,
+					    struct gendisk, led.trig);
+	u64 activity = 0;
+
+	if (test_bit(LEDTRIG_BLK_READ, &trig_data->mode))
+		activity += part_stat_read(&disk->part0, ios[STAT_READ]);
+	if (test_bit(LEDTRIG_BLK_WRITE, &trig_data->mode))
+		activity += part_stat_read(&disk->part0, ios[STAT_WRITE]);
+	if (test_bit(LEDTRIG_BLK_DISCARD, &trig_data->mode))
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
+static int ledtrig_blk_activate(struct led_classdev *led_cdev)
+{
+	struct ledtrig_blk_data *trig_data;
+
+	trig_data = kzalloc(sizeof(*trig_data), GFP_KERNEL);
+	if (!trig_data)
+		return -ENOMEM;
+
+	trig_data->mode = BIT(LEDTRIG_BLK_READ) | BIT(LEDTRIG_BLK_WRITE) |
+			  BIT(LEDTRIG_BLK_DISCARD);
+
+	atomic_set(&trig_data->interval, msecs_to_jiffies(50));
+	trig_data->last_activity = 0;
+	trig_data->led_cdev = led_cdev;
+
+	INIT_DELAYED_WORK(&trig_data->work, ledtrig_blk_work);
+
+	led_set_trigger_data(led_cdev, trig_data);
+
+	schedule_delayed_work(&trig_data->work,
+			      atomic_read(&trig_data->interval) * 2);
+
+	return 0;
+}
+
+static void ledtrig_blk_deactivate(struct led_classdev *led_cdev)
+{
+	struct ledtrig_blk_data *trig_data = led_get_trigger_data(led_cdev);
+
+	cancel_delayed_work_sync(&trig_data->work);
+	kfree(trig_data);
+}
+
+int ledtrig_blk_register(struct gendisk *disk)
+{
+	int ret;
+
+	disk->led.trig.name = kasprintf(GFP_KERNEL, "block-%s",
+					disk->disk_name);
+	if (!disk->led.trig.name)
+		return -ENOMEM;
+
+	disk->led.trig.activate = ledtrig_blk_activate;
+	disk->led.trig.deactivate = ledtrig_blk_deactivate;
+	disk->led.trig.groups = ledtrig_blk_groups;
+
+	ret = led_trigger_register(&disk->led.trig);
+	if (ret) {
+		kfree(disk->led.trig.name);
+		disk->led.trig.name = NULL;
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_register);
+
+void ledtrig_blk_unregister(struct gendisk *disk)
+{
+	if (!disk->led.trig.name)
+		return;
+
+	led_trigger_unregister(&disk->led.trig);
+	kfree(disk->led.trig.name);
+	disk->led.trig.name = NULL;
+}
+EXPORT_SYMBOL_GPL(ledtrig_blk_unregister);
diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 8b5330d..b2c934e 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -17,6 +17,7 @@
 #include <linux/percpu-refcount.h>
 #include <linux/uuid.h>
 #include <linux/blk_types.h>
+#include <linux/leds.h>
 #include <asm/local.h>
 
 #ifdef CONFIG_BLOCK
@@ -219,6 +220,8 @@ struct gendisk {
 	int node_id;
 	struct badblocks *bb;
 	struct lockdep_map lockdep_map;
+
+	struct ledtrig_blk led;
 };
 
 static inline struct gendisk *part_to_disk(struct hd_struct *part)
diff --git a/include/linux/leds.h b/include/linux/leds.h
index 9b2bf57..395fa61 100644
--- a/include/linux/leds.h
+++ b/include/linux/leds.h
@@ -517,4 +517,31 @@ static inline void ledtrig_audio_set(enum led_audio type,
 }
 #endif
 
+struct gendisk;
+
+#ifdef CONFIG_LEDS_TRIGGER_BLOCK
+
+struct ledtrig_blk {
+	struct led_trigger trig;
+};
+
+int ledtrig_blk_register(struct gendisk *disk);
+void ledtrig_blk_unregister(struct gendisk *disk);
+
+#else
+
+struct ledtrig_blk {
+};
+
+static inline int ledtrig_blk_register(struct gendisk *disk)
+{
+	return 0;
+}
+
+static inline void ledtrig_blk_unregister(struct gendisk *disk)
+{
+}
+
+#endif /* CONFIG_LEDS_TRIGGER_BLOCK */
+
 #endif		/* __LINUX_LEDS_H_INCLUDED */
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
