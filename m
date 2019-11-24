Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF501083B6
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 15:09:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PHpgSx+XC15lfzwFZRHNtGhLJIBoNOttj+xj5MPyuxk=; b=OdYcWPGVtsmQzsTGbReG4ZwmY0
	xevpOulKL9LBtW730Tf9fyR0SkLSDfGh3ntutzALcfeyR1CYdikKcYWc9eFfKyt1CsZmGIhgX6VIf
	s8MOxaJJZY/MrLSizsMcU0D/Ma44Ig6YLZEyCsS0Y4ql0BJXTHzq/WE7B0TzEhRz/eJ2hc1Xutv5A
	rijzjAFQmyuPqYNbJvvVv8FZRe7wPYiWEW9361oYE9cuA2wd/N3F47kseerVqs6MLPA1he2kBoG6V
	ZByjwBMNEfyzBy0J8XhxDdnCU7GjhLmHgA8kW2E1/RU/QK+lxqJ2ZjA8SE9W5Ix0rt48eOF6vTdmm
	B1CYxSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYsaA-0003YH-Ta; Sun, 24 Nov 2019 14:09:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYsZj-0003Js-AJ
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 14:09:21 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so5984341pfd.3
 for <linux-nvme@lists.infradead.org>; Sun, 24 Nov 2019 06:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=czC6nSQ5Mc9CJVDHU8aRwsMtho/ZtmD5fWxjP8fTWFQ=;
 b=GtT9zO/ttEp5EBxeDarWq2F13mveIYiDxKZ+MRPLPaXmXvU0VbpaI+P7v8Y3ikAyBS
 TFvreqga/+8htA8ez08lE8xi7POJ9OOpHQ6t6Jcn8oVr+EFKYcfbyS8pp5zB/c0A1Jk9
 lvvfUmieleCnquwCneIlKLcCcROA4HGk40h21iUwvZFb00MvAfbxehG4CrGcVENsG7Wq
 IHWqhzhWmc8k2RT129cEMiNI2xhfxyrP7GzYg3wc5mifpsg+NSpVVZQ8tPFwKBuIveQx
 amy6ltiZRgfG1VR6PJy6KcADSBkSsUpyDhLEtFAZ2b/EaDg69FUZIXIGyCM5/FZmdN/g
 hhtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=czC6nSQ5Mc9CJVDHU8aRwsMtho/ZtmD5fWxjP8fTWFQ=;
 b=LyHbKimZtJgZNswVA4Jimmm4VvjncaPiKhWykZ7l3sQdF0/nPCE6yTia9+rv+WyiUD
 TE/xR54GnTJzN7aVpDvsU10iMK5vahxWeK8Y6IGY39TsWzgq+hLZRXkM7koY0/X5vtdl
 5iRdJBWtyu7DWrf437b79FALpogsllvZE92LiSy695GSjOaaQlBywjPk5zhf69S1R5Nj
 ljUQiHnzz41UmnfUERf6QUPIAF5qPaiutnlgRc3rLXnzP1Tkw6Y85SU2ANODgrL2KXzX
 jLr4VG+IYtIpega/x8n1X4ZxpBvmQ+qx0UWMM++wYAIHrT7Dq5SbFVhRaLxybWA78fxO
 nlaA==
X-Gm-Message-State: APjAAAUEknPGz4KlLOYFqJ8RWmaTvvrsYkhSrzH7JchvgFoxsp++KSfR
 xxJaceHtHtrm2MQ8fPacoxOeHHrgkCE=
X-Google-Smtp-Source: APXvYqxcacdLA/j7CmvnEt1MVmIqsOc+mODcqUPaCaS2Ilz2oZL6AlDj6CpF8oRmisR4xhh9U5fpBg==
X-Received: by 2002:a63:1718:: with SMTP id x24mr24924884pgl.1.1574604558045; 
 Sun, 24 Nov 2019 06:09:18 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id a3sm4816326pgh.91.2019.11.24.06.09.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 24 Nov 2019 06:09:17 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/8] ACPI: thermal: switch to use <linux/temperature.h> helpers
Date: Sun, 24 Nov 2019 23:08:44 +0900
Message-Id: <1574604530-9024-3-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
References: <1574604530-9024-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_060919_385810_8B162F5F 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

This switches the ACPI thermal zone driver to use celsius_to_deci_kelvin()
and deci_kelvin_to_celsius() in <linux/temperature.h> instead of helpers
in <linux/thermal.h>.

This is preparation for centralizing the kelvin to/from Celsius conversion
helpers in <linux/temprature.h>.

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
 drivers/acpi/thermal.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index d831a61..bd9b6eb 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -297,7 +297,9 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
 			if (crt == -1) {
 				tz->trips.critical.flags.valid = 0;
 			} else if (crt > 0) {
-				unsigned long crt_k = CELSIUS_TO_DECI_KELVIN(crt);
+				unsigned long crt_k =
+					celsius_to_deci_kelvin(crt);
+
 				/*
 				 * Allow override critical threshold
 				 */
@@ -333,7 +335,7 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
 		if (psv == -1) {
 			status = AE_SUPPORT;
 		} else if (psv > 0) {
-			tmp = CELSIUS_TO_DECI_KELVIN(psv);
+			tmp = celsius_to_deci_kelvin(psv);
 			status = AE_OK;
 		} else {
 			status = acpi_evaluate_integer(tz->device->handle,
@@ -413,7 +415,7 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
 					break;
 				if (i == 1)
 					tz->trips.active[0].temperature =
-						CELSIUS_TO_DECI_KELVIN(act);
+						celsius_to_deci_kelvin(act);
 				else
 					/*
 					 * Don't allow override higher than
@@ -421,9 +423,9 @@ static int acpi_thermal_trips_update(struct acpi_thermal *tz, int flag)
 					 */
 					tz->trips.active[i - 1].temperature =
 						(tz->trips.active[i - 2].temperature <
-						CELSIUS_TO_DECI_KELVIN(act) ?
+						celsius_to_deci_kelvin(act) ?
 						tz->trips.active[i - 2].temperature :
-						CELSIUS_TO_DECI_KELVIN(act));
+						celsius_to_deci_kelvin(act));
 				break;
 			} else {
 				tz->trips.active[i].temperature = tmp;
@@ -1087,7 +1089,8 @@ static int acpi_thermal_add(struct acpi_device *device)
 	INIT_WORK(&tz->thermal_check_work, acpi_thermal_check_fn);
 
 	pr_info(PREFIX "%s [%s] (%ld C)\n", acpi_device_name(device),
-		acpi_device_bid(device), DECI_KELVIN_TO_CELSIUS(tz->temperature));
+		acpi_device_bid(device),
+		deci_kelvin_to_celsius(tz->temperature));
 	goto end;
 
 free_memory:
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
