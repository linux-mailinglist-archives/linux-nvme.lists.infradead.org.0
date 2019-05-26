Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBC82AB31
	for <lists+linux-nvme@lfdr.de>; Sun, 26 May 2019 18:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EtOXnKEb5at27bQJAT/BS98I9oiyMaguQ5DQzbsYXJ0=; b=YEI1UCPQMcxjTZFRQcO1BRsODV
	xsYoZyn7A2LrNAqDx808gg301b60Tef8QnCBV/sPWKkSjkLfZxWCcOh4MlyNcfJmvl7jNnlzBz0iS
	iqRuAKO4UN8DEOB5+8P7KOTFSuStEys2ExI6sif3P45ExSU6trbKxC2vukk5IzDyDIR+CduIQHxEQ
	evn3P+yakY9R0z5n0k4kQWJTrEgqQ+YDXHPIiduvd9PyPt/8PE63nVu5e4JSc3fG9XztSV77AJrPO
	yENKnyUNEKIars2vO1052Q8Lef3RC8Ok73ubRjR79P13o2pOEq1QBstSefscEu8jCI8hhYpOGMBME
	XLFxRV9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUw22-0001p5-Em; Sun, 26 May 2019 16:29:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUw1j-0001ZD-T1
 for linux-nvme@lists.infradead.org; Sun, 26 May 2019 16:29:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id go2so6058797plb.9
 for <linux-nvme@lists.infradead.org>; Sun, 26 May 2019 09:29:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Z/7N3FhP/XzlTmVfCMWtwNrEmlfytpQrFSZU3h+cIgs=;
 b=E5SFvFP3Ji3dUkDY7ebCzwaQwEkRBw33dRHN0X1k9yq7BQQt9n8dDcZw39SGJWqHn7
 3BrppduoJrgl5TqOznW4UOnwfuZ2+GtbbySH11xthBBN5crgl4d5aSnoaZV8BKQm3FoI
 Cxv9CyH8rfVaDTcO+qffPzk9DW1rZsDlz1lhbSmg7O9sCkfD3NpEYeBaUdqzvwG9bXU/
 +Fgal2CaSmU6tjVuwTu1kbOOQs9TB/QF5iQLXJLp52eZG2tv5+03Yjen80ck0zdCePe3
 2isyNjjIU1hf8w6p+p94QQcdBNGLVyLRx2rNmruhQ9DEDxLpqlUsYXXTnws/6TgGVqHM
 ft8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Z/7N3FhP/XzlTmVfCMWtwNrEmlfytpQrFSZU3h+cIgs=;
 b=LwPtXA+GTTqYxLY2drZEoH0Vv/9I9JwUJEmMsR4/Z2XgrO/0e5E+MRB03iUQnOBecs
 6e5G5+IHYtxS/Vq7MpWU3UF6nyuEZd2YDWh7qoFbF6BFBG1JkZQxi9DHYQztFrpBzb0B
 ZpO5eHI2IZ6od9XkiZqyHu5KXmy+Kt9oDttYqVHu0Lp+rYXQXp8FcnXlENeD7+zLInnw
 a5jgZmg2ZV1BXlGVpjUbHNwQKVHtWCBoCNmfL9rYhLr+MTfMAkPeb7RWX94mUPDusJs9
 OsHS+6XuOjeepDQdKZZ7tJaZTSVME5jgCGZ1CV7yi1A+Brg8dXrzrKKZFDX06D1J7oKt
 Mkog==
X-Gm-Message-State: APjAAAWsDwia0AUgPQQ5QSFwDWhtcRBUjldw0zwWKcqik52c27wKe4Tk
 rkz0UC2OrhO6yS3RLSthyPjEXz39vqY=
X-Google-Smtp-Source: APXvYqyugbUHAtukgyvI2u8HFF5I8sQ5OK/HnG4TQfh9k2Xvmzor2nfbk87/fIDuPe8SAxAW/zQjeQ==
X-Received: by 2002:a17:902:8a8f:: with SMTP id
 p15mr28616390plo.157.1558888179086; 
 Sun, 26 May 2019 09:29:39 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:3427:8c7f:94e8:c445])
 by smtp.gmail.com with ESMTPSA id a11sm8671107pff.128.2019.05.26.09.29.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 26 May 2019 09:29:38 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 2/3] nvme: add thermal zone devices
Date: Mon, 27 May 2019 01:29:02 +0900
Message-Id: <1558888143-5121-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
References: <1558888143-5121-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_092940_088524_6BBA2F7F 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The NVMe controller reports up to nine temperature values in the SMART /
Health log page (the composite temperature and temperature sensor 1 through
temperature sensor 8).

This provides these temperatures via thermal zone devices.

Once the controller is identified, the thermal zone devices are created for
all implemented temperature sensors including the composite temperature.

/sys/class/thermal/thermal_zone[0-*]:
    |---type: 'nvme<instance>-temp<sensor>'
    |---temp: Temperature
    |---trip_point_0_temp: Over temperature threshold

The thermal_zone[0-*] contains a 'device' symlink to the corresponding nvme
device.

On the other hand, the following symlinks to the thermal zone devices are
created in the nvme device sysfs directory.

- temp0: Composite temperature
- temp1: Temperature sensor 1
...
- temp8: Temperature sensor 8

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- Change the type name of thermal zone devices from 'nvme_temp<sensor>' to
  'nvme<instance>_temp<sensor>'
- Pass a NULL to the status argument of nvme_set_feature()
- Change the name of symbolic link from 'nvme_temp<sensor>' to 'temp<sensor>'
- Don't make it fatal error if the device provides a response
- Don't register thermal zone for composite temperature if smart log reports
  zero value
- Move the thermal zones registration and unregistration into the core module.

 drivers/nvme/host/core.c | 288 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/nvme.h |   9 ++
 include/linux/nvme.h     |   5 +
 3 files changed, 302 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c950916..4c8271a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2200,6 +2200,289 @@ static void nvme_set_latency_tolerance(struct device *dev, s32 val)
 	}
 }
 
+#ifdef CONFIG_THERMAL
+
+static int nvme_get_temp(struct nvme_ctrl *ctrl, unsigned int sensor, int *temp)
+{
+	struct nvme_smart_log *log;
+	int ret;
+
+	BUILD_BUG_ON(ARRAY_SIZE(log->temp_sensor) + 1 !=
+		     ARRAY_SIZE(ctrl->tzdev));
+
+	if (WARN_ON_ONCE(sensor > ARRAY_SIZE(log->temp_sensor)))
+		return -EINVAL;
+
+	log = kzalloc(sizeof(*log), GFP_KERNEL);
+	if (!log)
+		return -ENOMEM;
+
+	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
+			   log, sizeof(*log), 0);
+	if (ret) {
+		ret = ret > 0 ? -EINVAL : ret;
+		goto free_log;
+	}
+
+	if (sensor)
+		*temp = le16_to_cpu(log->temp_sensor[sensor - 1]);
+	else
+		*temp = get_unaligned_le16(log->temperature);
+
+free_log:
+	kfree(log);
+
+	return ret;
+}
+
+static unsigned int nvme_tz_type_to_sensor(const char *type)
+{
+	int instance;
+	unsigned int sensor;
+
+	if (sscanf(type, "nvme%d_temp%u", &instance, &sensor) != 2)
+		return UINT_MAX;
+
+	return sensor;
+}
+
+#define KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS((t) * 10)
+#define MILLICELSIUS_TO_KELVIN(t) ((MILLICELSIUS_TO_DECI_KELVIN(t) + 5) / 10)
+
+static int nvme_tz_get_temp(struct thermal_zone_device *tzdev, int *temp)
+{
+	unsigned int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+	int ret;
+
+	ret = nvme_get_temp(ctrl, sensor, temp);
+	if (!ret)
+		*temp = KELVIN_TO_MILLICELSIUS(*temp);
+
+	return ret;
+}
+
+static int nvme_tz_get_trip_type(struct thermal_zone_device *tzdev,
+				 int trip, enum thermal_trip_type *type)
+{
+	*type = THERMAL_TRIP_ACTIVE;
+
+	return 0;
+}
+
+static int nvme_get_over_temp_thresh(struct nvme_ctrl *ctrl,
+				     unsigned int sensor, int *temp)
+{
+	unsigned int threshold = sensor << NVME_TEMP_THRESH_SELECT_SHIFT;
+	int status;
+	int ret;
+
+	if (WARN_ON_ONCE(sensor >= ARRAY_SIZE(ctrl->tzdev)))
+		return -EINVAL;
+
+	ret = nvme_get_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
+				&status);
+	if (!ret)
+		*temp = status & NVME_TEMP_THRESH_MASK;
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static int nvme_set_over_temp_thresh(struct nvme_ctrl *ctrl,
+				     unsigned int sensor, int temp)
+{
+	unsigned int threshold = sensor << NVME_TEMP_THRESH_SELECT_SHIFT;
+	int ret;
+
+	if (WARN_ON_ONCE(sensor >= ARRAY_SIZE(ctrl->tzdev)))
+		return -EINVAL;
+
+	if (temp > NVME_TEMP_THRESH_MASK)
+		return -EINVAL;
+
+	threshold |= temp & NVME_TEMP_THRESH_MASK;
+
+	ret = nvme_set_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
+				NULL);
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static int nvme_tz_get_trip_temp(struct thermal_zone_device *tzdev,
+				 int trip, int *temp)
+{
+	unsigned int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+	int ret;
+
+	ret = nvme_get_over_temp_thresh(ctrl, sensor, temp);
+	if (!ret)
+		*temp = KELVIN_TO_MILLICELSIUS(*temp);
+
+	return ret;
+}
+
+static int nvme_tz_set_trip_temp(struct thermal_zone_device *tzdev,
+				 int trip, int temp)
+{
+	unsigned int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+
+	temp = MILLICELSIUS_TO_KELVIN(temp);
+
+	return nvme_set_over_temp_thresh(ctrl, sensor, temp);
+}
+
+static struct thermal_zone_device_ops nvme_tz_ops = {
+	.get_temp = nvme_tz_get_temp,
+	.get_trip_type = nvme_tz_get_trip_type,
+	.get_trip_temp = nvme_tz_get_trip_temp,
+	.set_trip_temp = nvme_tz_set_trip_temp,
+};
+
+static struct thermal_zone_params nvme_tz_params = {
+	.governor_name = "user_space",
+	.no_hwmon = true,
+};
+
+static struct thermal_zone_device *
+nvme_thermal_zone_register(struct nvme_ctrl *ctrl, unsigned int sensor)
+{
+	struct thermal_zone_device *tzdev;
+	char name[THERMAL_NAME_LENGTH];
+	int ret;
+
+	snprintf(name, sizeof(name), "nvme%d_temp%u", ctrl->instance, sensor);
+
+	tzdev = thermal_zone_device_register(name, 1, 1, ctrl, &nvme_tz_ops,
+					     &nvme_tz_params, 0, 0);
+	if (IS_ERR(tzdev)) {
+		dev_err(ctrl->device,
+			"Failed to register thermal zone device: %ld\n",
+			PTR_ERR(tzdev));
+		return tzdev;
+	}
+
+	snprintf(name, sizeof(name), "temp%d", sensor);
+	ret = sysfs_create_link(&ctrl->ctrl_device.kobj, &tzdev->device.kobj,
+				name);
+	if (ret)
+		goto device_unregister;
+
+	ret = sysfs_create_link(&tzdev->device.kobj,
+				&ctrl->ctrl_device.kobj, "device");
+	if (ret)
+		goto remove_link;
+
+	return tzdev;
+
+remove_link:
+	sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+device_unregister:
+	thermal_zone_device_unregister(tzdev);
+
+	return ERR_PTR(ret);
+}
+
+/**
+ * nvme_thermal_zones_register() - register nvme thermal zone devices
+ * @ctrl: controller instance
+ *
+ * This function creates up to nine thermal zone devices for all implemented
+ * temperature sensors including the composite temperature.
+ * Each thermal zone device provides a single trip point temperature that is
+ * associated with an over temperature threshold.
+ */
+static int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
+{
+	struct nvme_smart_log *log;
+	int ret;
+	int i;
+
+	log = kzalloc(sizeof(*log), GFP_KERNEL);
+	if (!log)
+		return 0; /* non-fatal error */
+
+	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0,
+			   log, sizeof(*log), 0);
+	if (ret) {
+		dev_err(ctrl->device, "Failed to get SMART log: %d\n", ret);
+		/* If the device provided a response, then it's non-fatal */
+		if (ret > 0)
+			ret = 0;
+		goto free_log;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		struct thermal_zone_device *tzdev;
+		int temp;
+
+		if (i)
+			temp = le16_to_cpu(log->temp_sensor[i - 1]);
+		else
+			temp = get_unaligned_le16(log->temperature);
+
+		/*
+		 * All implemented temperature sensors report a non-zero value
+		 * in temperature sensor fields in the smart log page.
+		 */
+		if (!temp)
+			continue;
+		if (ctrl->tzdev[i])
+			continue;
+
+		tzdev = nvme_thermal_zone_register(ctrl, i);
+		if (!IS_ERR(tzdev))
+			ctrl->tzdev[i] = tzdev;
+	}
+
+free_log:
+	kfree(log);
+
+	return ret;
+}
+
+/**
+ * nvme_thermal_zones_unregister() - unregister nvme thermal zone devices
+ * @ctrl: controller instance
+ *
+ * This function removes the registered thermal zone devices and symlinks.
+ */
+static void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		struct thermal_zone_device *tzdev = ctrl->tzdev[i];
+		char name[20];
+
+		if (!tzdev)
+			continue;
+
+		sysfs_remove_link(&tzdev->device.kobj, "device");
+
+		snprintf(name, sizeof(name), "temp%d", i);
+		sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+
+		thermal_zone_device_unregister(tzdev);
+
+		ctrl->tzdev[i] = NULL;
+	}
+}
+
+#else
+
+static inline int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
+{
+	return 0;
+}
+
+static inline void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
+{
+}
+
+#endif /* CONFIG_THERMAL */
+
 struct nvme_core_quirk_entry {
 	/*
 	 * NVMe model and firmware strings are padded with spaces.  For
@@ -2754,6 +3037,10 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 	if (ret < 0)
 		return ret;
 
+	ret = nvme_thermal_zones_register(ctrl);
+	if (ret < 0)
+		return ret;
+
 	ctrl->identified = true;
 
 	return 0;
@@ -3756,6 +4043,7 @@ void nvme_stop_ctrl(struct nvme_ctrl *ctrl)
 {
 	nvme_mpath_stop(ctrl);
 	nvme_stop_keep_alive(ctrl);
+	nvme_thermal_zones_unregister(ctrl);
 	flush_work(&ctrl->async_event_work);
 	cancel_work_sync(&ctrl->fw_act_work);
 }
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 802aa19..53f0b24 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -15,6 +15,7 @@
 #include <linux/sed-opal.h>
 #include <linux/fault-inject.h>
 #include <linux/rcupdate.h>
+#include <linux/thermal.h>
 
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
@@ -248,6 +249,14 @@ struct nvme_ctrl {
 
 	struct page *discard_page;
 	unsigned long discard_page_busy;
+
+#ifdef CONFIG_THERMAL
+	/*
+	 * tzdev[0]: composite temperature
+	 * tzdev[1-8]: temperature sensor 1 through 8
+	 */
+	struct thermal_zone_device *tzdev[9];
+#endif
 };
 
 enum nvme_iopolicy {
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 658ac75..54f0a13 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -780,6 +780,11 @@ struct nvme_write_zeroes_cmd {
 
 /* Features */
 
+enum {
+	NVME_TEMP_THRESH_MASK		= 0xffff,
+	NVME_TEMP_THRESH_SELECT_SHIFT	= 16,
+};
+
 struct nvme_feat_auto_pst {
 	__le64 entries[32];
 };
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
