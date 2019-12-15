Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3308911F5F4
	for <lists+linux-nvme@lfdr.de>; Sun, 15 Dec 2019 06:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WgATYfTEZd82+8y00ol8UUDiIjC9R2OiJOZj6Xe4w0U=; b=ISAsEkISvINPieu4cWxilDirv/
	e8+kEBhAWZht0Tu6bj+kQhqaVzfvBEj+/1kkvUa2w6vRQOM7DWxorLaBgatoBTXhk+JMbfr2kL1jV
	Cr0ZcDP72SATxpj7NEGJ9ss0sSWl7Kg059uQIhiK97ABf/pwsEfYl8g2OQgAD9KnBU/84lH858EfS
	uzB6rsP/MoUec2GHkC8lmfXXy6M0ZHbE2hqn8xdYlglRW3Zk2n2ak0sDgovmv597NIoVWOlk8Kf3i
	ctUhsmh7Abw/ryWTT4HM7Ty2UzZ6yqLdtMttjriedsHi9wxLg7VDGReKllMYoV/QSNfNSfWmzrc8f
	y6PbBO3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igMHW-0001n4-98; Sun, 15 Dec 2019 05:17:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igMH8-0001ep-To
 for linux-nvme@lists.infradead.org; Sun, 15 Dec 2019 05:17:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id h14so1859938pfe.10
 for <linux-nvme@lists.infradead.org>; Sat, 14 Dec 2019 21:17:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s9X4iPd0KnMa5KIyBgavR+hocptaY6HIdK2blzLDzaA=;
 b=FPmAVeP2mdUVq6DwLRYvd9CvKLYcTHemjyCqjRrlXZl9WEmrF1z0xAHiQoxS9gc67/
 zhyEge0e40HIR579wURSSHamNti6CIEe7Gosq5ThBuDc4iSqL+Bqd0yPAIjDCq9rnlI6
 8PwmLVKxAwFVNQtYO4DHbtwS8NuO/oTO8cTsrj17hfr0YVizOwfT7bcMGxj581fLb4fF
 Q+EBHdUwJJKg5IUx05aEP4gRRpMp/8AI+/qxNIwj/N2wI5FJzbeULUdGFDd3Js5WUsL0
 hgFLna4w1PwiOvokEp3QJXp1owK24s/6XM+zZMa90nP8X+GQhl06fAkKxNhLc4Orehyf
 TpZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s9X4iPd0KnMa5KIyBgavR+hocptaY6HIdK2blzLDzaA=;
 b=X4MKCniBlaj5coGjrxYreLwEz7WCHqYQkuQzhg1WM15oI9Csf9AVQPL0Xb5vturg4r
 DGxdCa6cEBMCaiVPWEPwWmDeoV/lGy4xvta+wST3D22g6F5exZzaNODXhMc0eIQMHv9b
 mMfUv+u6BWGd3YRjvhLgNJ0jtbkL7uGk1+mwzeUrt8qYtPyxPh8gqBZe0LSyeGT4hIkC
 uCL+hgVbM76rYb0wpTYSFgnO3/hQgfsfXHeIFVHt97b91dVeWvQHBBPnDCXqN48XKdi+
 +fgbd9fhqVaUjmVksE8EXr+USRK8pyoURZ6lTHHITh6QdyyOtummHYYUXqy0VCJKakRt
 FhPA==
X-Gm-Message-State: APjAAAXtC7PM3HrN4DE3lrjyWvt8+9ynfIrmDBX8JEbUakSdyHdso7V1
 zsBiKlWovBSDD0uig3ffbH2Lb61UP3E=
X-Google-Smtp-Source: APXvYqwaYLWaptacVXVwa4TActC1oLxGg8wUZKowyGri7WYpGP5PtlqW2c8tyhGBSdvFWauo1nBjCw==
X-Received: by 2002:a63:a53:: with SMTP id z19mr10191253pgk.267.1576387021783; 
 Sat, 14 Dec 2019 21:17:01 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id u10sm16596528pgg.41.2019.12.14.21.16.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 14 Dec 2019 21:17:01 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Subject: [PATCH v4 03/12] platform/x86: asus-wmi: switch to use
 <linux/units.h> helpers
Date: Sun, 15 Dec 2019 14:16:06 +0900
Message-Id: <1576386975-7941-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_211702_985013_607B2CDE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

The asus-wmi driver doesn't implement the thermal device functionality
directly, so including <linux/thermal.h> just for DECI_KELVIN_TO_CELSIUS()
is a bit odd.

This switches the asus-wmi driver to use deci_kelvin_to_millicelsius() in
<linux/units.h>.

The format string is changed from %d to %ld due to function returned type.

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
Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- change include order

 drivers/platform/x86/asus-wmi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
index 821b08e..b254f9f 100644
--- a/drivers/platform/x86/asus-wmi.c
+++ b/drivers/platform/x86/asus-wmi.c
@@ -33,9 +33,9 @@
 #include <linux/seq_file.h>
 #include <linux/platform_data/x86/asus-wmi.h>
 #include <linux/platform_device.h>
-#include <linux/thermal.h>
 #include <linux/acpi.h>
 #include <linux/dmi.h>
+#include <linux/units.h>
 
 #include <acpi/battery.h>
 #include <acpi/video.h>
@@ -1512,9 +1512,8 @@ static ssize_t asus_hwmon_temp1(struct device *dev,
 	if (err < 0)
 		return err;
 
-	value = DECI_KELVIN_TO_CELSIUS((value & 0xFFFF)) * 1000;
-
-	return sprintf(buf, "%d\n", value);
+	return sprintf(buf, "%ld\n",
+		       deci_kelvin_to_millicelsius(value & 0xFFFF));
 }
 
 /* Fan1 */
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
