Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3476011F613
	for <lists+linux-nvme@lfdr.de>; Sun, 15 Dec 2019 06:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PfxdY+5go1vhk9o7MiDQMqsPcvnDsk4iE36uy7mhEeM=; b=iiQ3sJOQpUT7+12dygpO2DfbNm
	viVzArDF8T4cI57jW6aH1NQWSwfzwC13Sm9CK7cs7LMkGwjyP+e4KdG9dKIMzL7eYNqMAcpT2Spod
	9dh9SAHjRJWcQfcGYMaeb2CsIqn+fKdtrHG91ndHoxqcOzNcZeYL7EPSC8MDX1inhnUzXfgvieqjU
	9DdH/JOMgvDi+LL2ZL97CH4Fl/PtUVD4UmBppWAXxi2exIgvadzo3dkiohdlz/dTY0ZBSO7K5msKi
	W5mtzKW58qDLEKEqa6GaFK/G9el+ZLRvRI1XYA5hQlLmNu6HR2EzQp9laGaWYff6YP51j19j92FsK
	XeKM7khg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igMIY-0002hk-Df; Sun, 15 Dec 2019 05:18:30 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igMHV-00020T-Nv
 for linux-nvme@lists.infradead.org; Sun, 15 Dec 2019 05:17:43 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so3759737pfc.5
 for <linux-nvme@lists.infradead.org>; Sat, 14 Dec 2019 21:17:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yyoE/kJT7Za8oOamE8LAfuYOwDLTmHlQFdtd0CuJ34k=;
 b=N4CbPu6fl9qY4tyGJ0tQFP8vj5OWJLuktbW6f/YyYtElFDPg0L6iPbWlqQakJuy8e7
 tTzV3KjkXuGVcoQt5Emmir0+p/P7qL/ZZBZhJmhwP6oL1nwdkjxUMHjusjoJPgdRGx9z
 /XQVX5oH5xkWXa9NBmnAYiU/+CrOqduGAcw2UeJvDaYOirsO0IyoYt1Wt/e+Zs1JUNly
 xLiu7BZXozvgfoYzc8bdKq3Rg+il2wTHFloMdTvVHeTEFZ7tUQZ3w5JHXt5ZMpYdDCn8
 6UsGDqNo/rYSrt05bQT6p21UdUXssIDE92iyshielrqWwUEdSC/qQvE1gmRAixv4nl51
 e1RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yyoE/kJT7Za8oOamE8LAfuYOwDLTmHlQFdtd0CuJ34k=;
 b=j63qM0zOzAi7mXqvFJn7ULABWlX4rBBd1BN+rHa+Ojjzn4xaDOlm+iXgZMrM6N4XiX
 2kdacX1lo87GqGi9WAlD+IZL/N/xe0lzWnA3c+/Au6UrehrC2a3I+wMSed++l18AmIA2
 5ObQ174L7s0icehgjavglA3/+K0ByWk9KCqR19/PpIt8nYYUo5K9bapINTXXF4R3fFkh
 jSeGZBMt23om3Hx1QNLRHcAcwAMcvx62wPKl9EwtMZKlKGI45sqhVK4T5MIzYrzFWuQE
 yXnCSv1aqr2BXB9ch53Kz07iy+AcPYjj16wtqTxVetBgdnRpmCNTDOQFMbEZpgG9N7Cl
 8jRQ==
X-Gm-Message-State: APjAAAWuNhCuaQ9nsn2zCs5M/k3/7Oijt3uKDKZKS06YW89nuH8mnYjD
 HwYWhRLjr4Y3uIZ3VOF3w+hF5m/u790=
X-Google-Smtp-Source: APXvYqx3VkY0cSg/7bN0Y0W5G2/U6JBARCdKWa0nOQSgon43lbz4BsIfhgC4OCM7Owt5n+zvtJvdnQ==
X-Received: by 2002:a63:cc4f:: with SMTP id q15mr10235784pgi.159.1576387044564; 
 Sat, 14 Dec 2019 21:17:24 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id u10sm16596528pgg.41.2019.12.14.21.17.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 14 Dec 2019 21:17:23 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Subject: [PATCH v4 07/12] nvme: hwmon: switch to use <linux/units.h> helpers
Date: Sun, 15 Dec 2019 14:16:10 +0900
Message-Id: <1576386975-7941-8-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_211725_816442_9A3DE58F 
X-CRM114-Status: GOOD (  15.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Guenter Roeck <linux@roeck-us.net>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This switches the nvme driver to use kelvin_to_millicelsius() and
millicelsius_to_kelvin() in <linux/units.h>.

Cc: Sujith Thomas <sujith.thomas@intel.com>
Cc: Darren Hart <dvhart@infradead.org>
Cc: Andy Shevchenko <andy@infradead.org>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amit.kucheria@verdurent.com>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- add Reviewed-by tags

 drivers/nvme/host/hwmon.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/hwmon.c b/drivers/nvme/host/hwmon.c
index a5af21f..2e6477e 100644
--- a/drivers/nvme/host/hwmon.c
+++ b/drivers/nvme/host/hwmon.c
@@ -5,14 +5,11 @@
  */
 
 #include <linux/hwmon.h>
+#include <linux/units.h>
 #include <asm/unaligned.h>
 
 #include "nvme.h"
 
-/* These macros should be moved to linux/temperature.h */
-#define MILLICELSIUS_TO_KELVIN(t) DIV_ROUND_CLOSEST((t) + 273150, 1000)
-#define KELVIN_TO_MILLICELSIUS(t) ((t) * 1000L - 273150)
-
 struct nvme_hwmon_data {
 	struct nvme_ctrl *ctrl;
 	struct nvme_smart_log log;
@@ -35,7 +32,7 @@ static int nvme_get_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
 		return -EIO;
 	if (ret < 0)
 		return ret;
-	*temp = KELVIN_TO_MILLICELSIUS(status & NVME_TEMP_THRESH_MASK);
+	*temp = kelvin_to_millicelsius(status & NVME_TEMP_THRESH_MASK);
 
 	return 0;
 }
@@ -46,7 +43,7 @@ static int nvme_set_temp_thresh(struct nvme_ctrl *ctrl, int sensor, bool under,
 	unsigned int threshold = sensor << NVME_TEMP_THRESH_SELECT_SHIFT;
 	int ret;
 
-	temp = MILLICELSIUS_TO_KELVIN(temp);
+	temp = millicelsius_to_kelvin(temp);
 	threshold |= clamp_val(temp, 0, NVME_TEMP_THRESH_MASK);
 
 	if (under)
@@ -88,7 +85,7 @@ static int nvme_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 	case hwmon_temp_min:
 		return nvme_get_temp_thresh(data->ctrl, channel, true, val);
 	case hwmon_temp_crit:
-		*val = KELVIN_TO_MILLICELSIUS(data->ctrl->cctemp);
+		*val = kelvin_to_millicelsius(data->ctrl->cctemp);
 		return 0;
 	default:
 		break;
@@ -105,7 +102,7 @@ static int nvme_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 			temp = get_unaligned_le16(log->temperature);
 		else
 			temp = le16_to_cpu(log->temp_sensor[channel - 1]);
-		*val = KELVIN_TO_MILLICELSIUS(temp);
+		*val = kelvin_to_millicelsius(temp);
 		break;
 	case hwmon_temp_alarm:
 		*val = !!(log->critical_warning & NVME_SMART_CRIT_TEMPERATURE);
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
