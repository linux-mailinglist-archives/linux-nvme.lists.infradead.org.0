Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EE410CADC
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 15:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iloyj2GDNggEHAKXym2VF/q+sGs9lak+0QirEHyHsy0=; b=H+WH+iifAMaSbF9MNU7sSnbx76
	3kf76PaYpP1i/vErKg9HTofFFrN8y7vF/WHuMFvsAo05wkmUzt3B3blGS+fXz6MOHU9Yx8XAa8qkn
	Hi4UPocYiRLGD2a9wvcmV8d93nswtLacSjsukyedqAyQu5KhYbTV05Yb8RwxO4D2hQl3yiCitt/hV
	OZxY4qWdX76hn4qIPr6weEPIagEJqmC1yKOW+kizFUqtYx9aUoN1Q8oqwMapaq98ssh+Qba8AT3pm
	9MHHzZjddppUnmf8DqJpztJb0g4+/rxljOQIg7GWo9bSDVQfr3JlrXGpnc5vqEjimeflzr9d9jUZD
	vSBhCdUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLE2-0000IN-V7; Thu, 28 Nov 2019 14:56:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLCW-0006tz-T2
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 14:55:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id ay6so11729430plb.0
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 06:55:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KOk1Zu1Ql454tFPs2kZw5FfHjnyPTzMrmCfexC/lRs8=;
 b=PUx6zKO3n9KG7pm9Qk5LBg/cFVNRMxPNChPn/sB7wL8qLgLFBctSNutljHfYN60Uzj
 6z+GKH89YGgLqCEzGu5GAw7Z6kdiScXCHYIav+6bXSRzfMz5qr43OBlvdbLH0uTZfvT1
 KqMC854IvMpRm2UaBumtVDBNTF8qTtOyC50qjHeAwpNHLfIXyY12rX2f0PrYRSA3O03R
 POQCifcpPOoiUbUIhmcrfSUMMv3Sgraxn/v34nM6/767YYyTUB6qetrVpIuAfIIsSW+z
 CM7K11Jey8gqcjfknmDVk1zui1u3VzlQU+me6AXnOQ76YCFa13zhDnuc31Q9kh8fvOS/
 jflw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KOk1Zu1Ql454tFPs2kZw5FfHjnyPTzMrmCfexC/lRs8=;
 b=pNWgLnMeUNT7bVJqbo8MLTZJAqcJ2HeG3lw7D4LROSrstDyCjRbWijH++gQGAz5BrZ
 VjfBVOGOhB+JnHxZN29hebx7mtRxXm6WfKEql2U0Jjoa9UNk8L+iwSrZ2lTnT8n5WLT9
 SKZquFpG+g1Wep3cHbULav5poU6BoGpOOFMtRmqmtvJF1XEj/gEp0256xldWtbPFp/ma
 WfeBqcomsAvsQh+SKeqJErlvRnLd2C8htko9Us0zV2dsLKtidaCLz+wzR37NzfrpAfcx
 33gkZ6GOcFr3+bKib71L4faFTm6b59yS2RebJG01rx94ErIvjlAtTQD6+m7cp258AVLf
 IRVQ==
X-Gm-Message-State: APjAAAXDQUkXncOthanZJR/c3Z2DQuOoNEDU9+s3uWtb+Vs4Z5H142xI
 oO9K4ZzLTG1M1aGmB/Pu62twaobOYqk=
X-Google-Smtp-Source: APXvYqz4ojDDuagtER2KZtGw/qJt9x/inm9T4ft8+dEsuEU1iGQ6cYCvDasNxYdsCl3BC1bGnjHbNg==
X-Received: by 2002:a17:902:8d81:: with SMTP id
 v1mr9881555plo.289.1574952922811; 
 Thu, 28 Nov 2019 06:55:22 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:8015:e854:5ef0:f52e])
 by smtp.gmail.com with ESMTPSA id z11sm22282563pfg.117.2019.11.28.06.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 28 Nov 2019 06:55:21 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/8] thermal: intel_pch: switch to use
 <linux/temperature.h> helpers
Date: Thu, 28 Nov 2019 23:54:37 +0900
Message-Id: <1574952879-7200-7-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065524_992939_8902C569 
X-CRM114-Status: GOOD (  15.09  )
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

This switches the intel pch thermal driver to use
deci_kelvin_to_millicelsius() in <linux/temperature.h> instead of helpers
in <linux/thermal.h>.

This is preparation for centralizing the kelvin to/from Celsius conversion
helpers in <linux/temperature.h>.

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
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v2
- include <linux/temperature.h> explicitly from thermal drivers
- fix s/temprature/temperature/ typo in commit log

 drivers/thermal/intel/intel_pch_thermal.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/intel/intel_pch_thermal.c b/drivers/thermal/intel/intel_pch_thermal.c
index 4f0bb8f..505a5d2 100644
--- a/drivers/thermal/intel/intel_pch_thermal.c
+++ b/drivers/thermal/intel/intel_pch_thermal.c
@@ -13,6 +13,7 @@
 #include <linux/pci.h>
 #include <linux/acpi.h>
 #include <linux/thermal.h>
+#include <linux/temperature.h>
 #include <linux/pm.h>
 
 /* Intel PCH thermal Device IDs */
@@ -92,7 +93,7 @@ static void pch_wpt_add_acpi_psv_trip(struct pch_thermal_device *ptd,
 		if (ACPI_SUCCESS(status)) {
 			unsigned long trip_temp;
 
-			trip_temp = DECI_KELVIN_TO_MILLICELSIUS(r);
+			trip_temp = deci_kelvin_to_millicelsius(r);
 			if (trip_temp) {
 				ptd->psv_temp = trip_temp;
 				ptd->psv_trip_id = *nr_trips;
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
