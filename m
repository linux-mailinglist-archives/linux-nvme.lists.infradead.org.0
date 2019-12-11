Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C1911ADF3
	for <lists+linux-nvme@lfdr.de>; Wed, 11 Dec 2019 15:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jDoZWn7pZycdkgTFVg0EKIuTf/idHnsSdhTvLB5P0Xc=; b=Y9AiIKLdyEh+xx7lm7wmrb+ySq
	I/jTnVYYqOFb1tlcCix7tEn0F4PVecwuAe0SxNZlLvtQfCTopXZpODFTGKdtxRXifwf6j58YJm7kz
	f4/TA3GbSBuKlyEDEooLNI9YuoCP4XArd2H8I0ifkCh+6+1WlEoUittPpOaL8xsEJrvicDxH+1jr9
	K/Ap78TYffi82aSS+voqEFjuH8vJb6HHb63o5oVR1Y0OiM8q82dD1MEryUEnAjDSSuapNOYDksvGt
	HU9JdNN8X8PWLRR3Pi1yeuOBA9x5+81HXoyaXJpYdg03JoI+/MenNB4U7phfNoyD1bONdIYhfn5jE
	2D0dRIaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3AD-00005G-GU; Wed, 11 Dec 2019 14:40:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if394-0006dF-PJ
 for linux-nvme@lists.infradead.org; Wed, 11 Dec 2019 14:39:32 +0000
Received: by mail-pg1-x541.google.com with SMTP id k3so10223439pgc.3
 for <linux-nvme@lists.infradead.org>; Wed, 11 Dec 2019 06:39:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LkssNv9xnqcTUQeW4rk5Aqaqz7M0e85np77FGc2j2Og=;
 b=lKwtyK3LHvPbGuZ5gO2dFqSx3FVmSA3+UiU4qNpfKyLsdS77OrGXzcH5/Tf+cPV7Of
 lSSfjD2joW9Id/QtOjlQMvFEMrCKuiL4KE9Z9Q13/OFjaFSEQEbclJzZ3YFB89hNEa7W
 udzJM2daCneUwMoMb1f1+X//b3YXnOI4rzAi3J8kjldYrNBEjIhzHvgilXdXZ3yFD4wX
 jV92IL3P3Dj9SAge1bXWpRKrim0kDLhQrMvJ3/NLNVufEMdMuC84jcv/nLfxdoPl0tmn
 vLhyuJcPNcQXhSV8cRKclty8GvISXuY2EMyGo7d8RZgOeJEqVTpXhOnO1r9A5iqFLzqj
 TYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LkssNv9xnqcTUQeW4rk5Aqaqz7M0e85np77FGc2j2Og=;
 b=LzeKERA1XgtZTxkZf/HNP60wZC3vsSyrv/SHJwa4UDSbD1Eyu4FSYcDYyRal2W2/C9
 5Lbuvavgx52SYwsGMinc1/NmCwFBpMujL6m9o28BF8H/1wEFHWJJsN6nXDRQCccJbvxN
 nbLLriRr0JCMpSaVIDMJMseDbwBwybzUG/N34Y45fes+HcyDDZuasg/IxF3VVhJp7Gej
 FVy5+m7pHbiv1wAwOqatHnzGwfitzBXXaUyjEGm6fj8iyNcPIDaGTFrJ8AwKyd4Crqwz
 gBGSgVIebZNue8L9e+97Dnsr9AAHApp+BpvuIuGzZYpGas2kWiE+f5rRJeJQLCxvwPmq
 Cj1A==
X-Gm-Message-State: APjAAAVV6/1JWXqk0YohPp6T8yKhrW0ruvmr/d5gGurNOoq8xs+sIQfn
 gQxdK3VIG/Tvnf9znyr1dqmixjpQvAE=
X-Google-Smtp-Source: APXvYqxX+IBGqxdzlhJQ/pgZQaqQCCBZodhkOhhvQDd4JZ7+cFq4k8qS4IF5R/U8Rwdx9yb93TYpZg==
X-Received: by 2002:aa7:951c:: with SMTP id b28mr3997505pfp.97.1576075157829; 
 Wed, 11 Dec 2019 06:39:17 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id q11sm3444239pff.111.2019.12.11.06.39.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Dec 2019 06:39:16 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/12] thermal: int340x: switch to use <linux/units.h>
 helpers
Date: Wed, 11 Dec 2019 23:38:12 +0900
Message-Id: <1576075099-3441-6-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
References: <1576075099-3441-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_063918_888740_98F9E509 
X-CRM114-Status: GOOD (  14.40  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This switches the int340x thermal zone driver to use
deci_kelvin_to_millicelsius() and millicelsius_to_deci_kelvin() in
<linux/units.h> instead of helpers in <linux/thermal.h>.

This is preparation for centralizing the kelvin to/from Celsius conversion
helpers in <linux/units.h>.

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
* v3
- rename new header name from <linux/temperature.h> to <linux/units.h>

 drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c b/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
index 75484d6..4322132 100644
--- a/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
+++ b/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
@@ -8,6 +8,7 @@
 #include <linux/init.h>
 #include <linux/acpi.h>
 #include <linux/thermal.h>
+#include <linux/units.h>
 #include "int340x_thermal_zone.h"
 
 static int int340x_thermal_get_zone_temp(struct thermal_zone_device *zone,
@@ -34,7 +35,7 @@ static int int340x_thermal_get_zone_temp(struct thermal_zone_device *zone,
 		*temp = (unsigned long)conv_temp * 10;
 	} else
 		/* _TMP returns the temperature in tenths of degrees Kelvin */
-		*temp = DECI_KELVIN_TO_MILLICELSIUS(tmp);
+		*temp = deci_kelvin_to_millicelsius(tmp);
 
 	return 0;
 }
@@ -116,7 +117,7 @@ static int int340x_thermal_set_trip_temp(struct thermal_zone_device *zone,
 
 	snprintf(name, sizeof(name), "PAT%d", trip);
 	status = acpi_execute_simple_method(d->adev->handle, name,
-			MILLICELSIUS_TO_DECI_KELVIN(temp));
+			millicelsius_to_deci_kelvin(temp));
 	if (ACPI_FAILURE(status))
 		return -EIO;
 
@@ -163,7 +164,7 @@ static int int340x_thermal_get_trip_config(acpi_handle handle, char *name,
 	if (ACPI_FAILURE(status))
 		return -EIO;
 
-	*temp = DECI_KELVIN_TO_MILLICELSIUS(r);
+	*temp = deci_kelvin_to_millicelsius(r);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
