Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC1F5BDCB
	for <lists+linux-nvme@lfdr.de>; Mon,  1 Jul 2019 16:13:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ppeh5npaXHx6IhITEsCu1VR2mBwLI21U6VK8rD68An8=; b=cc2bPn5O0aD5/PcjWBaDEjeKM3
	Ye8IUNAlHmluTjsgadBJur2mAcau1mYEKtblVuuAt20wfWAwAtbSXx5lIGYSnTU4M0J2+FBq9icLL
	3sn+P0MpZtrGhZgyvLK1ngPbBZ8fFuTxvx0BgdM8rBwiCWnFrnys4DO+j7S8NVcq3JMcnHBidljN9
	eJFwUdxffMUJtVvkHdqpi1H/TNATiJSUQxaworkBnMSkWESx0KtsWS5dAket3pA6wZDmCQ3sQRR3G
	VqJ9ZaXaT5rDaKn2Gm2ELnPt3ixppchdOL29M0uRWvWsASxVXRjqUX9aBpx+YRIQpsXtwySIE7CYC
	OXQlG5FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhx3Z-0000rW-Vd; Mon, 01 Jul 2019 14:13:22 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhx3H-0000hS-UQ
 for linux-nvme@lists.infradead.org; Mon, 01 Jul 2019 14:13:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so7406906pls.13
 for <linux-nvme@lists.infradead.org>; Mon, 01 Jul 2019 07:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AnlgTuGujDxzy0eHE2Og0hS/t0+f3QQYuc7fTjKJRAI=;
 b=F3ozY9ik2LVzZCNPwy6M1bgthVbgHMEcl4Mp/lNeEPJPNQAL8izrbs4WCaCy7n6Qy+
 gE1kyE+uJ2wL652MDljYaTVXaMykpbAOZYx0grE7P7xRGHGHXtTw5vxsFsi8mAsHPGII
 Yp4twPwXyBYjzq4IXX8/bFkGbnBTMOQu6AE9W8r1VpI4nEyhiFwVa/yDn8wXWojRv5TN
 Tg1/L+RfFwgLKE6l/mO1i9kGeg8R2duLczTwKnScJRXnKs/vxccg+lDbrQg3Zbx3p955
 qpbizHp0lMwdyWdad30b3gjl7SvRNImN7tThqnnQC8uM9q7hWT4EoaA4am6utOt+oH/E
 kSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AnlgTuGujDxzy0eHE2Og0hS/t0+f3QQYuc7fTjKJRAI=;
 b=ZdbFOQb5aPiLL8YWpy6f+LY4u21EDl3LaInvcmNtYLNQWN+lVrF+XGRNBlY3oWFaPp
 Q3oc4sa6tnCwW91Irk3bUZSADdiO4Hr3YF2XTrW5ph+V+bnFXPjtuiVopVRd56un7v/J
 XA0ejwzwaKPHFBcamvNf8UQmNJkgeiOEPLN9daU7gxpn0p5quweYSFnEOjxUlhLET5Y5
 +BgraeKPELBXth06dpgZ9DTltuU9oquIrZ/3QANiZlvd27RGegz3X5SlgumbBIfdHCc0
 IetEQR6rNnBpTVn+OJrQa1E9dGqOg65aDckAX/xZFCR8knM44qsnrkVwkjridy/pcYRR
 o/mw==
X-Gm-Message-State: APjAAAXKwuSpv/A/zqPda624fILu4je5aFh3DJ88TtUtFyQybLp/bwFr
 5SLDo8wbiw/m3nRHxkjZwgcuQumX
X-Google-Smtp-Source: APXvYqz8eID/ry/sEhqnAIoTBgF4UxL/CGMPrqfe9lihRfNy7+qFa+9wbuAmjpJk4vXTtNxgS8CoSA==
X-Received: by 2002:a17:902:70cc:: with SMTP id
 l12mr29371594plt.87.1561990382981; 
 Mon, 01 Jul 2019 07:13:02 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id n19sm11383871pfa.11.2019.07.01.07.12.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 07:13:02 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v5 1/4] nvme: add thermal zone devices
Date: Mon,  1 Jul 2019 23:12:31 +0900
Message-Id: <1561990354-4084-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
References: <1561990354-4084-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_071304_009943_70B167C3 
X-CRM114-Status: GOOD (  28.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, Jens Axboe <axboe@fb.com>,
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

Once the controller is identified, the thermal zone devices is created for
each implemented temperature sensors including the composite temperature.

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

Cc: Rob Herring <robh@kernel.org>
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
* v5
- split the DT thermal zone support into separate patch
- round up temperature when writing trip point

 drivers/nvme/host/Kconfig   |   1 +
 drivers/nvme/host/Makefile  |   1 +
 drivers/nvme/host/core.c    |   5 +
 drivers/nvme/host/nvme.h    |  34 ++++++
 drivers/nvme/host/thermal.c | 291 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/nvme.h        |   5 +
 6 files changed, 337 insertions(+)
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
index 179f7cf..1d84685 100644
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
index ea45d7d..49dd59ec 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -15,6 +15,7 @@
 #include <linux/sed-opal.h>
 #include <linux/fault-inject.h>
 #include <linux/rcupdate.h>
+#include <linux/thermal.h>
 
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
@@ -155,6 +156,12 @@ struct nvme_fault_inject {
 #endif
 };
 
+struct nvme_tz {
+	struct thermal_zone_params params;
+	struct thermal_zone_device *dev;
+	unsigned int sensor;
+};
+
 struct nvme_ctrl {
 	bool comp_seen;
 	enum nvme_ctrl_state state;
@@ -258,6 +265,15 @@ struct nvme_ctrl {
 	unsigned long discard_page_busy;
 
 	struct nvme_fault_inject fault_inject;
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
@@ -590,4 +606,22 @@ static inline struct nvme_ns *nvme_get_ns_from_dev(struct device *dev)
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
index 0000000..c3608f6
--- /dev/null
+++ b/drivers/nvme/host/thermal.c
@@ -0,0 +1,291 @@
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
+#define KELVIN_TO_MILLICELSIUS(t) (((t) * 1000) - 273150)
+#define MILLICELSIUS_TO_KELVIN(t) (((t) + 273150) / 1000)
+#define MILLICELSIUS_TO_KELVIN_ROUNDUP(t) MILLICELSIUS_TO_KELVIN((t) + 999)
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
+	temp = MILLICELSIUS_TO_KELVIN_ROUNDUP(temp);
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
+	tz->sensor = sensor;
+	tz->params = nvme_tz_params;
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
+	snprintf(name, sizeof(name), "temp%d", sensor);
+	ret = sysfs_create_link(&ctrl->ctrl_device.kobj, &tzdev->device.kobj,
+				name);
+	if (ret)
+		goto device_unregister;
+
+	ret = sysfs_create_link(&tzdev->device.kobj,
+				&ctrl->ctrl_device.kobj, "device");
+	if (ret)
+		goto remove_sensor_link;
+
+	tz->dev = tzdev;
+
+	return 0;
+
+remove_sensor_link:
+	sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+device_unregister:
+	thermal_zone_device_unregister(tzdev);
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
+
+		if (tz->dev) {
+			char name[20];
+
+			sysfs_remove_link(&tz->dev->device.kobj, "device");
+			snprintf(name, sizeof(name), "temp%d", i);
+			sysfs_remove_link(&ctrl->ctrl_device.kobj, name);
+			thermal_zone_device_unregister(tz->dev);
+			tz->dev = NULL;
+		}
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
