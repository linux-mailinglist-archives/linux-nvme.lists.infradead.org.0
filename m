Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B119043A7C
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 17:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wb65kkkGT6MC/L6etUtMPkB8dhQmxp1drfn5sfRhiV4=; b=lz9Gm6i8DAZuIx8+wpgMwxjmJm
	7E1Pd4kt2Cg4YyJrGS4yyMsawX0ca2yUAMKataw2oaHO/Vkxr6ZriEuRUQ9aMH1QX0RPq8aCM5GD5
	E5z/aeal4AUt9XXvGiv80nz9abL7GQew2eyf2j4Hm20yqB8H01xiU+HLQcLBH3zDLsD2rbXtwXeU8
	mE9ntH4ZQzMP9pLmLbj1EGWiG7Zvcy0ue8wfXlchxM3s1EZsZrnh2W+PaLTVRYLwWQ85JcNWeDrsy
	SGS+OT11CmXOrSyo2WhD2rU2z4yfQA/ftC1WzOiOmlkBUyLnYUZUgwRXGwPlkRxiqYtKtZWBGcM6L
	B/7erqng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRXk-0007H3-MY; Thu, 13 Jun 2019 15:21:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRX9-0006xc-VV
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 15:21:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id f21so5128056pgi.3
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 08:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=miVnfcMW7xeV5A0V6gdNVxHODa/F79LrLk1WU/5vuHs=;
 b=I+iDOUkMM7ZWb++pibE42R7T7APsoXm+MzUBI1rkaZQqxCmq19FPdbkI+lf3dgcr6G
 WhkJt/cnzGTYnBuBoYUlCi7nzXO/nhLR5/WtUNhlN+68P6U5U3pLC2lJ+BD49UHS2Uq3
 L+t60VZ9pD+9KNK8QdqHgk7nmuLATnGcZQefJeO1Ypr8ezMCrF9Mt7wkJoK30UMY3SgW
 ju+Ap8y0+1JHjCNEiP8FhyF/xNmVQACZGbfZSnX0fswzpOWUnVqF7k4Sh4bJj6HVP+kv
 jSTXb2qjhuumYZBLJJWNkIfNOZfDNpPE/1N7l2ksyqWJGNPcnRBuMPRYh4u8j5eXTExq
 YN7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=miVnfcMW7xeV5A0V6gdNVxHODa/F79LrLk1WU/5vuHs=;
 b=Y5Ln++WKjZqs3GhYOFW44/Jl6buxr5uyW3QASAvtj8ezPwXWyz3IaJJqVCubSfiS0L
 6aFHit20nbj5k+rkgSiQYk5twmxyeSUf+d2/pM+nZDyjUBJ5jdNyw8+MjYBt88Q0QCdk
 PDxUUNWg2S/hJ09vtaSByLEFgq9gehG2tPId/+UL2AGX3Hu98GSsrk6gSnh9Oo/kkigL
 BT4XIlIsE9TF9HsLs6+e9UbC5LvuU1e7jOmF50zWzXhlcRobbDZQnG9EH7lz0evlIx5h
 d7eZbJ0em/ipFPhpgnaNGVngc3ItaAoxXtPRD8U/SBQrMOzeAoqaXsxaZ/y3lqhZN16x
 BE1w==
X-Gm-Message-State: APjAAAUZ9pf0chAt6QjCuOsKRI+h7u9LZPbM5QbtiERWLYxAfXEi/Vef
 eEkOOnSCnQMbOtXc4e8GzrlLiZLHIkY=
X-Google-Smtp-Source: APXvYqw/6S5xHbIztO1eofywFVL39fbIHsDE59llrTNgSGlLz/7TjZDkOO3jDEMhfceD6qnp3GsvSw==
X-Received: by 2002:a63:292:: with SMTP id 140mr29982pgc.88.1560439258644;
 Thu, 13 Jun 2019 08:20:58 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:1b24:991b:df50:ea3f])
 by smtp.gmail.com with ESMTPSA id n66sm40988pfn.52.2019.06.13.08.20.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 13 Jun 2019 08:20:58 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v4 2/3] nvme: add thermal zone devices
Date: Fri, 14 Jun 2019 00:20:37 +0900
Message-Id: <1560439238-4054-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
References: <1560439238-4054-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_082100_273604_1772265C 
X-CRM114-Status: GOOD (  28.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
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

In addition to the standard thermal zone device, this also adds support for
registering the DT thermal zone device.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- add thermal.c to hold thermal zone related code
- add 'use_thermal_zone' module parameter
- add CONFIG_THERMAL_WRITABLE_TRIPS dependency
- add comment about the return value of nvme_thermal_zones_register()
- support DT thermal zone device.
- use bitmap to iterate over implemented sensors

 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/Makefile  |   1 +
 drivers/nvme/host/core.c    |   5 +
 drivers/nvme/host/nvme.h    |  35 +++++
 drivers/nvme/host/thermal.c | 311 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/nvme.h        |   5 +
 6 files changed, 358 insertions(+)
 create mode 100644 drivers/nvme/host/thermal.c

diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index ec43ac9..90429f8 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config NVME_CORE
 	tristate
+	select THERMAL_WRITABLE_TRIPS if THERMAL
 
 config BLK_DEV_NVME
 	tristate "NVM Express block device"
diff --git a/drivers/nvme/host/Makefile b/drivers/nvme/host/Makefile
index 8a4b671..6018668 100644
--- a/drivers/nvme/host/Makefile
+++ b/drivers/nvme/host/Makefile
@@ -14,6 +14,7 @@ nvme-core-$(CONFIG_TRACING)		+= trace.o
 nvme-core-$(CONFIG_NVME_MULTIPATH)	+= multipath.o
 nvme-core-$(CONFIG_NVM)			+= lightnvm.o
 nvme-core-$(CONFIG_FAULT_INJECTION_DEBUG_FS)	+= fault_inject.o
+nvme-core-$(CONFIG_THERMAL)		+= thermal.o
 
 nvme-y					+= pci.o
 
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7e3c786..4be339b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2696,6 +2696,10 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 	if (ret < 0)
 		return ret;
 
+	ret = nvme_thermal_zones_register(ctrl);
+	if (ret)
+		return ret;
+
 	ctrl->identified = true;
 
 	return 0;
@@ -3699,6 +3703,7 @@ void nvme_stop_ctrl(struct nvme_ctrl *ctrl)
 {
 	nvme_mpath_stop(ctrl);
 	nvme_stop_keep_alive(ctrl);
+	nvme_thermal_zones_unregister(ctrl);
 	flush_work(&ctrl->async_event_work);
 	cancel_work_sync(&ctrl->fw_act_work);
 }
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 038b893..a9c63ea 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -15,6 +15,7 @@
 #include <linux/sed-opal.h>
 #include <linux/fault-inject.h>
 #include <linux/rcupdate.h>
+#include <linux/thermal.h>
 
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
@@ -146,6 +147,13 @@ enum nvme_ctrl_state {
 	NVME_CTRL_DEAD,
 };
 
+struct nvme_tz {
+	struct thermal_zone_params params;
+	struct thermal_zone_device *dev;
+	struct thermal_zone_device *of_dev;
+	unsigned int sensor;
+};
+
 struct nvme_ctrl {
 	bool comp_seen;
 	enum nvme_ctrl_state state;
@@ -247,6 +255,15 @@ struct nvme_ctrl {
 
 	struct page *discard_page;
 	unsigned long discard_page_busy;
+
+#ifdef CONFIG_THERMAL
+	/*
+	 * tz[0]: composite temperature
+	 * tz[1-8]: temperature sensor 1 through 8
+	 */
+	struct nvme_tz tz[9];
+	DECLARE_BITMAP(tz_enabled, 9);
+#endif
 };
 
 enum nvme_iopolicy {
@@ -584,4 +601,22 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
 	return dev_to_disk(dev)->private_data;
 }
 
+#ifdef CONFIG_THERMAL
+
+int nvme_thermal_zones_register(struct nvme_ctrl *ctrl);
+void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl);
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
 #endif /* _NVME_H */
diff --git a/drivers/nvme/host/thermal.c b/drivers/nvme/host/thermal.c
new file mode 100644
index 0000000..18d0e4c
--- /dev/null
+++ b/drivers/nvme/host/thermal.c
@@ -0,0 +1,311 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/moduleparam.h>
+#include <asm/unaligned.h>
+
+#include "nvme.h"
+
+static bool use_thermal_zone = true;
+module_param(use_thermal_zone, bool, 0444);
+MODULE_PARM_DESC(use_thermal_zone,
+	"Export nvme temperature via generic thermal interface");
+
+static int nvme_get_temp(struct nvme_ctrl *ctrl, unsigned int sensor, int *temp)
+{
+	struct nvme_smart_log *log;
+	int ret;
+
+	BUILD_BUG_ON(ARRAY_SIZE(log->temp_sensor) + 1 != ARRAY_SIZE(ctrl->tz));
+
+	if (WARN_ON_ONCE(sensor > ARRAY_SIZE(log->temp_sensor)))
+		return -EINVAL;
+
+	log = kzalloc(sizeof(*log), GFP_KERNEL);
+	if (!log)
+		return -ENOMEM;
+
+	ret = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0, log,
+			   sizeof(*log), 0);
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
+#define KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS((t) * 10)
+#define MILLICELSIUS_TO_KELVIN(t) ((MILLICELSIUS_TO_DECI_KELVIN(t) + 5) / 10)
+
+static int nvme_tz_of_get_temp(void *data, int *temp)
+{
+	struct nvme_tz *tz = data;
+	unsigned int sensor = tz->sensor;
+	struct nvme_ctrl *ctrl = container_of(tz, struct nvme_ctrl, tz[sensor]);
+	int ret;
+
+	ret = nvme_get_temp(ctrl, sensor, temp);
+	if (!ret)
+		*temp = KELVIN_TO_MILLICELSIUS(*temp);
+
+	return ret;
+}
+
+static int nvme_tz_get_temp(struct thermal_zone_device *tzdev, int *temp)
+{
+	return nvme_tz_of_get_temp(tzdev->devdata, temp);
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
+	if (WARN_ON_ONCE(sensor >= ARRAY_SIZE(ctrl->tz)))
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
+	if (WARN_ON_ONCE(sensor >= ARRAY_SIZE(ctrl->tz)))
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
+	struct nvme_tz *tz = tzdev->devdata;
+	unsigned int sensor = tz->sensor;
+	struct nvme_ctrl *ctrl = container_of(tz, struct nvme_ctrl, tz[sensor]);
+	int ret;
+
+	ret = nvme_get_over_temp_thresh(ctrl, sensor, temp);
+	if (!ret)
+		*temp = KELVIN_TO_MILLICELSIUS(*temp);
+
+	return ret;
+}
+
+static int nvme_tz_of_set_trip_temp(void *data, int trip, int temp)
+{
+	struct nvme_tz *tz = data;
+	unsigned int sensor = tz->sensor;
+	struct nvme_ctrl *ctrl = container_of(tz, struct nvme_ctrl, tz[sensor]);
+
+	temp = MILLICELSIUS_TO_KELVIN(temp);
+
+	return nvme_set_over_temp_thresh(ctrl, sensor, temp);
+}
+
+static int nvme_tz_set_trip_temp(struct thermal_zone_device *tzdev,
+				 int trip, int temp)
+{
+	return nvme_tz_of_set_trip_temp(tzdev->devdata, trip, temp);
+}
+
+static struct thermal_zone_device_ops nvme_tz_ops = {
+	.get_temp = nvme_tz_get_temp,
+	.get_trip_type = nvme_tz_get_trip_type,
+	.get_trip_temp = nvme_tz_get_trip_temp,
+	.set_trip_temp = nvme_tz_set_trip_temp,
+};
+
+static struct thermal_zone_of_device_ops nvme_tz_of_ops = {
+	.get_temp = nvme_tz_of_get_temp,
+	.set_trip_temp = nvme_tz_of_set_trip_temp,
+};
+
+static const struct thermal_zone_params nvme_tz_params = {
+	.governor_name = "user_space",
+	.no_hwmon = true,
+};
+
+static int nvme_thermal_zone_register(struct nvme_ctrl *ctrl,
+				      unsigned int sensor)
+{
+	struct thermal_zone_device *tzdev;
+	struct nvme_tz *tz = &ctrl->tz[sensor];
+	char name[THERMAL_NAME_LENGTH];
+	int ret;
+
+	tz->params = nvme_tz_params;
+	tz->sensor = sensor;
+	snprintf(name, sizeof(name), "nvme%d_temp%u", ctrl->instance, sensor);
+
+	tzdev = thermal_zone_device_register(name, 1, 1, tz, &nvme_tz_ops,
+					     &tz->params, 0, 0);
+	if (IS_ERR(tzdev)) {
+		dev_err(ctrl->device,
+			"Failed to register thermal zone device: %ld\n",
+			PTR_ERR(tzdev));
+		return PTR_ERR(tzdev);
+	}
+
+	tz->dev = tzdev;
+
+	snprintf(name, sizeof(name), "temp%d", sensor);
+	ret = sysfs_create_link(&ctrl->ctrl_device.kobj, &tz->dev->device.kobj,
+				name);
+	if (ret)
+		goto device_unregister;
+
+	ret = sysfs_create_link(&tz->dev->device.kobj,
+				&ctrl->ctrl_device.kobj, "device");
+	if (ret)
+		goto remove_sensor_link;
+
+	tzdev = thermal_zone_of_sensor_register(ctrl->dev, sensor, tz,
+						&nvme_tz_of_ops);
+	if (!IS_ERR(tzdev)) {
+		tz->of_dev = tzdev;
+	} else if (PTR_ERR(tzdev) != -ENODEV) {
+		ret = PTR_ERR(tzdev);
+		dev_err(ctrl->device,
+			"Failed to register thermal zone of sensor: %d\n", ret);
+		goto remove_device_link;
+	}
+
+	return 0;
+
+remove_device_link:
+	sysfs_remove_link(&tz->dev->device.kobj, "device");
+remove_sensor_link:
+	sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+device_unregister:
+	thermal_zone_device_unregister(tz->dev);
+	tz->dev = NULL;
+
+	return ret;
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
+ * A negative value is returned when the device doesn't respond to the host
+ * and won't be able to continue initialization.
+ */
+int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
+{
+	struct nvme_smart_log *log;
+	int ret = 0;
+	int err;
+	int i;
+
+	if (!use_thermal_zone)
+		return 0;
+
+	log = kzalloc(sizeof(*log), GFP_KERNEL);
+	if (!log)
+		return 0;
+
+	err = nvme_get_log(ctrl, NVME_NSID_ALL, NVME_LOG_SMART, 0, log,
+			   sizeof(*log), 0);
+	if (err) {
+		dev_err(ctrl->device, "Failed to get SMART log: %d\n", err);
+		/* If the device provided a response, then it's non-fatal */
+		ret = (err > 0) ? 0 : err;
+		goto out;
+	}
+
+	for_each_clear_bit(i, ctrl->tz_enabled, ARRAY_SIZE(ctrl->tz)) {
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
+
+		err = nvme_thermal_zone_register(ctrl, i);
+		if (err)
+			goto out;
+
+		__set_bit(i, ctrl->tz_enabled);
+	}
+out:
+	if (err)
+		nvme_thermal_zones_unregister(ctrl);
+
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
+void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for_each_set_bit(i, ctrl->tz_enabled, ARRAY_SIZE(ctrl->tz)) {
+		struct nvme_tz *tz = &ctrl->tz[i];
+		char name[20];
+
+		thermal_zone_of_sensor_unregister(ctrl->dev, tz->of_dev);
+		tz->of_dev = NULL;
+
+		sysfs_remove_link(&tz->dev->device.kobj, "device");
+
+		snprintf(name, sizeof(name), "temp%d", i);
+		sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+
+		thermal_zone_device_unregister(tz->dev);
+		tz->dev = NULL;
+
+		__clear_bit(i, ctrl->tz_enabled);
+	}
+}
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 8028ada..f29728b 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -749,6 +749,11 @@ struct nvme_write_zeroes_cmd {
 
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
