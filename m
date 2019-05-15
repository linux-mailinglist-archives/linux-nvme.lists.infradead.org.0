Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8BE1F748
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 17:18:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MeYO56antDNYOTUzY7ZJNkvMO1jJzepRHkJkgeIfPZw=; b=QKpkjTrdG1nXNb/ZkIEGjXLBj4
	O50aMaAcXNtPktNZkFwnUXsUWmSx4+eyoHhxGqccECtBVDqODYt+K5URKol/k6edLwjHjHwTKBFn6
	lhZo0AdbEjUDhkWbwtiaterP4rVx+oXKNxKnugVqZPqoWa6HKh13fP8kxpfIMHSSIbF40WqMxxCUL
	bMWDeX837oFTwd2kpOmoeTTqYEqz8ei0j1lHG2xpa238jFLgd1lc3UPhTLd5Qa4pvoCheA1uTkUxH
	XgCfDG6E9KbhGnzI0t6M0S4cxHxz+NZdUu6Bjn/svk8aFoa0ywDNGLpEAB2f+grYAv6BDwwJR4nic
	xwne0GaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvfQ-0001Lr-Co; Wed, 15 May 2019 15:18:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvfF-0001EN-SH
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 15:17:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id b76so139251pfb.5
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 08:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wi6D0Qey49kwh/eem+QaImnJxrJ9up2gx6KT7+GMO8A=;
 b=ZMdUmWTJd19uIlswOYbh9xVkxqPGxSzIXnDD7qY2UquDCaFjOAqF0porkwS5C3ckUl
 bZsZDgBZUFFI71qA+5luNownnBMOV3jiMI4wh6kVBFaU87XZApziuwgg8nA6YbCgMStT
 EcgcIUcY3uEAZrB0bNIasoAj1H4xOYq8sPxdB9JLLInPHlHgp7n/bPqt9C9mdkO1+W/7
 ACq/SRDSAamWHR4zV5XndvE3VsEXntgjciywmKSe6rFHMA4SJwr5jP/he4eojgy8E3l0
 I8DLNQvhB0UJvvXrMMFl1ViLVpb485eDOV9PSxv7xf4aQMILYdyBeyIDGOgyDLovrgXu
 pJgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wi6D0Qey49kwh/eem+QaImnJxrJ9up2gx6KT7+GMO8A=;
 b=MBDyBq10NpHnJhzCg42NSoHHGhdQdtSBnZAP5BPUnVjRcXxHLn1HrgzuA4/fNT9wGI
 1i1M6OT7XqTaHZ6wXlcMQyTYNjllBDd0OAsirFRWGdYXqduOF+YwvlwPO5MI8fezjyWP
 qVQCurtESJelpARyMlBx1DexUygC7aCVe2+Q0GqNp2IxirHvtKFQJjF1gGzEO/fpmNHF
 On7Sp8fQtxQHges57dAST/mXdZjehUySlJMkaWmvtM5nZ6/foAQqE+VrCl/Dy/WPUp5U
 Tt3921nC3+UNCFC+LcFPZ4l7+tgbIAtoIUrHB4Qqrc9ORAPc1dhQafVthZ5YvihzJxY9
 3q2g==
X-Gm-Message-State: APjAAAVU9q3miErp3OeL4QcnRwrj1K5b17qQEv5kXIr40y8hiKf8ylPA
 dgcMoNUq4aJDdWxKcnM9818HD9wv
X-Google-Smtp-Source: APXvYqw8ovcfCM5XJ8MOx58+ZuFh9YGgtodJL7mu6PWCyjfaVg2w5QbD11LvMM7GpomSjRtjofN7Eg==
X-Received: by 2002:a63:5211:: with SMTP id g17mr15826446pgb.405.1557933473042; 
 Wed, 15 May 2019 08:17:53 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:b16d:d4:d5a2:4dca])
 by smtp.gmail.com with ESMTPSA id 85sm5544888pgb.52.2019.05.15.08.17.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 08:17:52 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 1/2] nvme: add thermal zone infrastructure
Date: Thu, 16 May 2019 00:17:16 +0900
Message-Id: <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_081753_950150_92AADF85 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jens Axboe <axboe@fb.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The NVMe controller reports up to nine temperature values in the SMART /
Health log page (the composite temperature and temperature sensor 1 through
temperature sensor 8).
The temperature threshold feature (Feature Identifier 04h) configures the
asynchronous event request command to complete when the temperature is
crossed its correspoinding temperature threshold.

This adds infrastructure to provide these temperatures and thresholds via
thermal zone devices.

The nvme_thermal_zones_register() creates up to nine thermal zone devices
for valid temperature sensors including composite temperature.

/sys/class/thermal/thermal_zone[0-*]:
    |---temp: Temperature
    |---trip_point_0_temp: Over temperature threshold
    |---trip_point_0_hyst: Under temperature threshold

The thermal_zone[0-*] contains a symlink to the correspoinding nvme device.
On the other hand, the following symlinks to the thermal zone devices are
created in the nvme device sysfs directory.

- nvme_temp0: Composite temperature
- nvme_temp1: Temperature sensor 1
...
- nvme_temp8: Temperature sensor 8

The nvme_thermal_zones_unregister() removes the registered thermal zone
devices and symlinks.

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/nvme/host/core.c | 368 ++++++++++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  24 ++++
 include/linux/nvme.h     |   4 +
 3 files changed, 392 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 172551b..a915c6b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1113,15 +1113,16 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	return id;
 }
 
-static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword11,
-		      void *buffer, size_t buflen, u32 *result)
+static int nvme_features(struct nvme_ctrl *dev, u8 opcode, unsigned int fid,
+			 unsigned int dword11, void *buffer, size_t buflen,
+			 u32 *result)
 {
 	struct nvme_command c;
 	union nvme_result res;
 	int ret;
 
 	memset(&c, 0, sizeof(c));
-	c.features.opcode = nvme_admin_set_features;
+	c.features.opcode = opcode;
 	c.features.fid = cpu_to_le32(fid);
 	c.features.dword11 = cpu_to_le32(dword11);
 
@@ -1132,6 +1133,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+static int nvme_get_features(struct nvme_ctrl *dev, unsigned int fid,
+			     unsigned int dword11, void *buffer, size_t buflen,
+			     u32 *result)
+{
+	return nvme_features(dev, nvme_admin_get_features, fid, dword11, buffer,
+			     buflen, result);
+}
+
+static int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
+			     unsigned int dword11, void *buffer, size_t buflen,
+			     u32 *result)
+{
+	return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
+			     buflen, result);
+}
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count = (*count - 1) | ((*count - 1) << 16);
@@ -1168,6 +1185,9 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	u32 result, supported_aens = ctrl->oaes & NVME_AEN_SUPPORTED;
 	int status;
 
+	if (IS_ENABLED(CONFIG_THERMAL))
+		supported_aens |= NVME_SMART_CRIT_TEMPERATURE;
+
 	if (!supported_aens)
 		return;
 
@@ -2164,6 +2184,334 @@ static void nvme_set_latency_tolerance(struct device *dev, s32 val)
 	}
 }
 
+#ifdef CONFIG_THERMAL
+
+static int nvme_get_temp(struct nvme_ctrl *ctrl, int sensor, int *temp)
+{
+	struct nvme_smart_log *log;
+	int ret;
+
+	if (sensor >= ARRAY_SIZE(log->temp_sensor))
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
+	if (!*temp)
+		ret = -EINVAL;
+
+free_log:
+	kfree(log);
+
+	return ret;
+}
+
+static int nvme_tz_type_to_sensor(const char *type)
+{
+	int sensor;
+
+	if (sscanf(type, "nvme_temp%d", &sensor) != 1)
+		return -EINVAL;
+
+	if (sensor < 0 || sensor > 8)
+		return -EINVAL;
+
+	return sensor;
+}
+
+#define KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS((t) * 10)
+#define MILLICELSIUS_TO_KELVIN(t) ((MILLICELSIUS_TO_DECI_KELVIN(t) + 5) / 10)
+
+static int nvme_tz_get_temp(struct thermal_zone_device *tzdev,
+			    int *temp)
+{
+	int sensor = nvme_tz_type_to_sensor(tzdev->type);
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
+static int nvme_get_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
+				int *temp)
+{
+	unsigned int threshold = sensor << 16;
+	int status;
+	int ret;
+
+	if (under)
+		threshold |= 0x100000;
+
+	ret = nvme_get_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
+				&status);
+	if (!ret)
+		*temp = status & 0xffff;
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static int nvme_get_over_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
+				     int *temp)
+{
+	return nvme_get_temp_thresh(ctrl, sensor, false, temp);
+}
+
+static int nvme_get_under_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
+				     int *temp)
+{
+	return nvme_get_temp_thresh(ctrl, sensor, true, temp);
+}
+
+static int nvme_set_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
+				int temp)
+{
+	unsigned int threshold = (sensor << 16) | temp;
+	int status;
+	int ret;
+
+	if (temp > 0xffff)
+		return -EINVAL;
+
+	if (under)
+		threshold |= 0x100000;
+
+	ret = nvme_set_features(ctrl, NVME_FEAT_TEMP_THRESH, threshold, NULL, 0,
+				&status);
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static int nvme_set_over_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
+				     int temp)
+{
+	return nvme_set_temp_thresh(ctrl, sensor, false, temp);
+}
+
+static int nvme_set_under_temp_thresh(struct nvme_ctrl *ctrl, int sensor,
+				     int temp)
+{
+	return nvme_set_temp_thresh(ctrl, sensor, true, temp);
+}
+
+static int nvme_tz_get_trip_temp(struct thermal_zone_device *tzdev,
+				 int trip, int *temp)
+{
+	int sensor = nvme_tz_type_to_sensor(tzdev->type);
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
+	int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+	int ret;
+
+	temp = MILLICELSIUS_TO_KELVIN(temp);
+
+	ret = nvme_set_over_temp_thresh(ctrl, sensor, temp);
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static int nvme_tz_get_trip_hyst(struct thermal_zone_device *tzdev,
+				 int trip, int *hyst)
+{
+	int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+	int ret;
+
+	ret = nvme_get_under_temp_thresh(ctrl, sensor, hyst);
+	if (!ret)
+		*hyst = KELVIN_TO_MILLICELSIUS(*hyst);
+
+	return ret;
+}
+
+static int nvme_tz_set_trip_hyst(struct thermal_zone_device *tzdev,
+				 int trip, int hyst)
+{
+	int sensor = nvme_tz_type_to_sensor(tzdev->type);
+	struct nvme_ctrl *ctrl = tzdev->devdata;
+	int ret;
+
+	hyst = MILLICELSIUS_TO_KELVIN(hyst);
+
+	ret = nvme_set_under_temp_thresh(ctrl, sensor, hyst);
+
+	return ret > 0 ? -EINVAL : ret;
+}
+
+static struct thermal_zone_device_ops nvme_tz_ops = {
+	.get_temp = nvme_tz_get_temp,
+	.get_trip_type = nvme_tz_get_trip_type,
+	.get_trip_temp = nvme_tz_get_trip_temp,
+	.set_trip_temp = nvme_tz_set_trip_temp,
+	.get_trip_hyst = nvme_tz_get_trip_hyst,
+	.set_trip_hyst = nvme_tz_set_trip_hyst,
+};
+
+static struct thermal_zone_params nvme_tz_params = {
+	.governor_name = "user_space",
+	.no_hwmon = true,
+};
+
+static struct thermal_zone_device *
+nvme_thermal_zone_register(struct nvme_ctrl *ctrl, int sensor)
+{
+	struct thermal_zone_device *tzdev;
+	char type[THERMAL_NAME_LENGTH];
+	int ret;
+
+	snprintf(type, sizeof(type), "nvme_temp%d", sensor);
+
+	tzdev = thermal_zone_device_register(type, 1, 1, ctrl, &nvme_tz_ops,
+					     &nvme_tz_params, 0, 0);
+	if (IS_ERR(tzdev))
+		return tzdev;
+
+	ret = sysfs_create_link(&ctrl->ctrl_device.kobj,
+				&tzdev->device.kobj, type);
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
+	sysfs_remove_link(&ctrl->ctrl_device.kobj, type);
+device_unregister:
+	thermal_zone_device_unregister(tzdev);
+
+	return ERR_PTR(ret);
+}
+
+int nvme_thermal_zones_register(struct nvme_ctrl *ctrl)
+{
+	struct nvme_smart_log *log;
+	int ret;
+	int i;
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
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		struct thermal_zone_device *tzdev;
+
+		if (i && !le16_to_cpu(log->temp_sensor[i - 1]))
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
+EXPORT_SYMBOL_GPL(nvme_thermal_zones_register);
+
+void nvme_thermal_zones_unregister(struct nvme_ctrl *ctrl)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		struct thermal_zone_device *tzdev = ctrl->tzdev[i];
+
+		if (!tzdev)
+			continue;
+
+		sysfs_remove_link(&tzdev->device.kobj, "device");
+		sysfs_remove_link(&ctrl->ctrl_device.kobj, tzdev->type);
+		thermal_zone_device_unregister(tzdev);
+
+		ctrl->tzdev[i] = NULL;
+	}
+}
+EXPORT_SYMBOL_GPL(nvme_thermal_zones_unregister);
+
+static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+	queue_work(nvme_wq, &ctrl->thermal_work);
+}
+
+static void nvme_thermal_work(struct work_struct *work)
+{
+	struct nvme_ctrl *ctrl =
+		container_of(work, struct nvme_ctrl, thermal_work);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ctrl->tzdev); i++) {
+		if (ctrl->tzdev[i])
+			thermal_notify_framework(ctrl->tzdev[i], 0);
+	}
+}
+
+static void nvme_thermal_init(struct nvme_ctrl *ctrl)
+{
+	INIT_WORK(&ctrl->thermal_work, nvme_thermal_work);
+}
+
+#else
+
+static void nvme_thermal_notify_framework(struct nvme_ctrl *ctrl)
+{
+}
+
+static void nvme_thermal_init(struct nvme_ctrl *ctrl)
+{
+}
+
+#endif /* CONFIG_THERMAL */
+
 struct nvme_core_quirk_entry {
 	/*
 	 * NVMe model and firmware strings are padded with spaces.  For
@@ -3630,6 +3978,14 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 	}
 }
 
+static void nvme_handle_aen_smart(struct nvme_ctrl *ctrl, u32 result)
+{
+	u32 aer_smart_type = (result & 0xff00) >> 8;
+
+	if (aer_smart_type == NVME_AER_SMART_TEMP_THRESH)
+		nvme_thermal_notify_framework(ctrl);
+}
+
 void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
 		volatile union nvme_result *res)
 {
@@ -3643,8 +3999,10 @@ void nvme_complete_async_event(struct nvme_ctrl *ctrl, __le16 status,
 	case NVME_AER_NOTICE:
 		nvme_handle_aen_notice(ctrl, result);
 		break;
-	case NVME_AER_ERROR:
 	case NVME_AER_SMART:
+		nvme_handle_aen_smart(ctrl, result);
+		/* fallthrough */
+	case NVME_AER_ERROR:
 	case NVME_AER_CSS:
 	case NVME_AER_VS:
 		trace_nvme_async_event(ctrl, aer_type);
@@ -3776,6 +4134,8 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
 		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
 
+	nvme_thermal_init(ctrl);
+
 	return 0;
 out_free_name:
 	kfree_const(ctrl->device->kobj.name);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 7f6f1fc..ff7bd8f 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -15,6 +15,7 @@
 #include <linux/sed-opal.h>
 #include <linux/fault-inject.h>
 #include <linux/rcupdate.h>
+#include <linux/thermal.h>
 
 extern unsigned int nvme_io_timeout;
 #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
@@ -248,6 +249,11 @@ struct nvme_ctrl {
 
 	struct page *discard_page;
 	unsigned long discard_page_busy;
+
+#ifdef CONFIG_THERMAL
+	struct thermal_zone_device *tzdev[9];
+	struct work_struct thermal_work;
+#endif
 };
 
 enum nvme_iopolicy {
@@ -553,6 +559,24 @@ static inline void nvme_mpath_stop(struct nvme_ctrl *ctrl)
 }
 #endif /* CONFIG_NVME_MULTIPATH */
 
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
 #ifdef CONFIG_NVM
 int nvme_nvm_register(struct nvme_ns *ns, char *disk_name, int node);
 void nvme_nvm_unregister(struct nvme_ns *ns);
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 8c0b29d..7acc77d 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -500,6 +500,10 @@ enum {
 };
 
 enum {
+	NVME_AER_SMART_TEMP_THRESH	= 0x01,
+};
+
+enum {
 	NVME_AER_NOTICE_NS_CHANGED	= 0x00,
 	NVME_AER_NOTICE_FW_ACT_STARTING = 0x01,
 	NVME_AER_NOTICE_ANA		= 0x03,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
