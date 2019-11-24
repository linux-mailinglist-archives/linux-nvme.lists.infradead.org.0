Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79D1083C0
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 15:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XMznX3twkZoIbcCVCBNLdSpkbbvS4Kcyg6uo0YvpQ1U=; b=MbvS0zNnmoFFLDYgrg1W3JIwha
	/LDeCsJr7HPQiZB7fl9/lVm0Gb4Qc4BXPjlp+xjUiHxowWNMehASQgECnB16DIlvN8SJE+g1Bl1vP
	ZePHtTKa/atLqooQQlciV6wl4exVv8D+HfrhPFH8zoFgc6qqH56oFPQKs/xOnc9h+NFamXG2/zKAY
	0w113F1BEQOKGjVnldSKP2vCm7sjenibYNfMSfyw155Ai2Yt2Q48xy8IfnuBbANJmLk2bk5mhm4Ma
	Iy83BFuXhLdEc2pIppheGDu8vfP/N52NfBFY17Wtdi+E9jjRsTQHj3yLcc6mchioZcD0g/wiJPC2o
	6D39q/7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYsbd-0005uB-S5; Sun, 24 Nov 2019 14:11:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYsaE-0003mf-IR
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 14:10:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id d199so1331320pfd.11
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 06:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HlZyESYLe6A5DAq1XkhuEkfPsYgeQ0ev4dh7nFf6DlA=;
 b=aF+EL/uaBuy3BwpoI2oa5LtqP9+p1sZ6VjixxtI6M70GSLCINBULaM3WNiSvJ1WIrZ
 xIp52aIi0nJQeAktwdoDbbpWpUGRijeoTLe1MAm4hB4Z4WYl9NAkew4iN56rugjskot4
 yt0PkQGxQXJReAVRmTDpxgmvwAEprEGHPYHel8zMm9c4Pbf0nfdxKiEAsstWT0AfLR8r
 bDsPU9XMtHOa1IO5HUXITzT66ktxxcPF+Z9kAYhRpX5dnnkPp6PRQV0tZTGgJfpG2Hcz
 Q8Q4/16zkCk9xffjh+a8YQwbn/z/50qSQu4mMZdfby+ch8XiXZOg7GCvCrNQfdl2VLIo
 mnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HlZyESYLe6A5DAq1XkhuEkfPsYgeQ0ev4dh7nFf6DlA=;
 b=n4sf/aAaNjUKUePCn32Ew/yfIRhUuapcxmBsI6t/cMfri14Bz8lEl0PuPZeiUL+Kgz
 xEEZ+0EwyfD48UNJgfr8PBSpFCEF0DXeT4I3CNMmgPhmJPA+DWqEbuL7xX7aVCznKKxG
 zNgxEPgRe5580eVCYgZIzUMcRpKkO/vfKn1sZmSnjATasxwei0GqCKTD4sqNtczHK0Ek
 wvuDee2M3ZCBz7PXaTOrhO48PSscMwk3v8BsqRzfwmykTN1aDILWQTAN1mO6e/N7XyV+
 lRxDlljul8tdvcIDVDPy2LepNYdfeWjsO9zazKHjvzoWnY14Xt+hEPFRFlB+Irb7kdBG
 FPTg==
X-Gm-Message-State: APjAAAXx70COsGs3m78j3kYVr6k6j1X2vqOJYUyHFHnXWIJzg5vsyuxc
 Di/qCfeFjGZ6yZ3SfeAjZ/y0CU0wc/Y=
X-Google-Smtp-Source: APXvYqx7K4Gt18amX+hLKSOMgjI0zyd/A3QfgpeceRkltPJbTjqHafxczzSCZqTAx0AlbO7TqjQWng==
X-Received: by 2002:a62:8789:: with SMTP id
 i131mr28078223pfe.221.1574604589140; 
 Sun, 24 Nov 2019 06:09:49 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id a3sm4816326pgh.91.2019.11.24.06.09.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 24 Nov 2019 06:09:48 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] thermal: remove kelvin to/from Celsius conversion helpers
 from <linux/thermal.h>
Date: Sun, 24 Nov 2019 23:08:50 +0900
Message-Id: <1574604530-9024-9-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_060950_755067_5C8D30BD 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Jean Delvare <jdelvare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Eduardo Valentin <edubezval@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>, Keith Busch <kbusch@kernel.org>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>, Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This removes the kelvin to/from Celsius conversion helpers in
<linux/thermal.h> which were switched to <linux/temperature.h> helpers.

DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET() is only used by ACPI thermal
zone driver and the usage is specific to the driver.  So this macro
is moved to the ACPI thermal driver rather than generic header.

Cc: Sujith Thomas <sujith.thomas@intel.com>
Cc: Darren Hart <dvhart@infradead.org>
Cc: Andy Shevchenko <andy@infradead.org>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Eduardo Valentin <edubezval@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amit.kucheria@verdurent.com>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
 drivers/acpi/thermal.c  |  2 ++
 include/linux/thermal.h | 11 -----------
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index bd9b6eb..370e114 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -42,6 +42,8 @@
 #define ACPI_THERMAL_MAX_ACTIVE	10
 #define ACPI_THERMAL_MAX_LIMIT_STR_LEN 65
 
+#define DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(t, off) (((t) - (off)) * 100)
+
 #define _COMPONENT		ACPI_THERMAL_COMPONENT
 ACPI_MODULE_NAME("thermal");
 
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index ed549e4..06e1695 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -33,17 +33,6 @@
 /* use value, which < 0K, to indicate an invalid/uninitialized temperature */
 #define THERMAL_TEMP_INVALID	-274000
 
-/* Unit conversion macros */
-#define DECI_KELVIN_TO_CELSIUS(t)	({			\
-	long _t = (t);						\
-	((_t-2732 >= 0) ? (_t-2732+5)/10 : (_t-2732-5)/10);	\
-})
-#define CELSIUS_TO_DECI_KELVIN(t)	((t)*10+2732)
-#define DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(t, off) (((t) - (off)) * 100)
-#define DECI_KELVIN_TO_MILLICELSIUS(t) DECI_KELVIN_TO_MILLICELSIUS_WITH_OFFSET(t, 2732)
-#define MILLICELSIUS_TO_DECI_KELVIN_WITH_OFFSET(t, off) (((t) / 100) + (off))
-#define MILLICELSIUS_TO_DECI_KELVIN(t) MILLICELSIUS_TO_DECI_KELVIN_WITH_OFFSET(t, 2732)
-
 /* Default Thermal Governor */
 #if defined(CONFIG_THERMAL_DEFAULT_GOV_STEP_WISE)
 #define DEFAULT_THERMAL_GOVERNOR       "step_wise"
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
