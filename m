Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C798D10CAD6
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 15:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NEaPH8g67GJgpos1CJiOB0uplkRCbrvoam/E8PueoKk=; b=tLxGwynbUxgRNnkJGivJnK3DbM
	C8u+a2y101FbF3CVjcN8hqlnglYonZqszrTmEhMj2yHxB6ZlrMneSfXU0LFCHa1LXriuf//yUFr8T
	35ZUNQNhuUQ9a+leme9nIhucSHiV6jwf+uEKsPR5wTyXdV1BA08I2Ja6oLjoKywjDf22jbbqsPruc
	nz8jkUjP0txoNGAyUjVH+RJt23pzWMo1R3+TxIVEJZzyHE4QvxpHeXG7m924VUwXS7o+t8i20jBqh
	irdMSLt2nJDDgi3EQtelwAi7q/6KqWy+N3+OZgbdyvoCkqNJ8/265t5FY7A0rvgXq8LfutADRbg16
	Ma8bNaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLDA-000886-DI; Thu, 28 Nov 2019 14:56:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLCJ-0006Pc-0q
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 14:55:15 +0000
Received: by mail-pf1-x441.google.com with SMTP id q13so13274219pff.2
 for <linux-nvme@lists.infradead.org>; Thu, 28 Nov 2019 06:55:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7KKKKjGEFkR1SZnk4/a5jY9T/FwK0zSdmITwZXojgTQ=;
 b=b+A0daFBKQNfri8HQ2Q7cGR8yVFHZWPi34/Bisw6NXiroctpWAIBBZSMjDUC0UffkD
 UbqbJlDUILM6iU2yQwiVi1CYPlyPzIYxQ5nsy+/uU8fWwl+TvDucXD3st6juFY+osGra
 DFG03yi9evpjwIYOWp1eGgzpoGt3D3ziBlGQJrYW2c5PYSSwbQgbVnJFCFTRVnXAEJDc
 0Gzv+YdPsqL0v79gY9JlbwCsRdyUgqqrNy3PT/srXpDXsg3ZJk13/zngvaxr/UssAavP
 mD47472O5gmTBa4mRxze8atPA9zWNOTvyzxFpOaS4o8z/mVGkN+mSjmRtwCa+JVGfqYq
 jXhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7KKKKjGEFkR1SZnk4/a5jY9T/FwK0zSdmITwZXojgTQ=;
 b=Yl9CbGhIcJdJAxFj7oqsOdUfr4CAOdVXO5Hip9KwJOmdF6DU7Wy4KnvDiSpGhfw+oR
 iL9XOtIOihjJRgsjtGhvK520Pl/GqaVkF1l9t7v73zU+bK/VuYV7ipxPVqn0p0VWP/76
 XopTVP7jOxtgcWjs1O/2ZwOxo1HndeFW2cYyZoOWjQ2J8cFqgOAzAPFPBkaBMXTmqLq0
 V0egg+DXRHVrq2wwJaPbczVRprvOPLMHWHt8NJLAybpShqjun3rhTDjanNN4rybgTqIs
 vJXSisqWKYI9pUnesn6sPaS7zL0H6vI1XArtYpcqTQCS/WKj7BgP9sodWEwHqHNQpbK6
 hfOg==
X-Gm-Message-State: APjAAAVyl6FEJoNo6/NWRqHV6Gevz9BIVkPBVNs+3wPLHk1kvcbv1JyF
 bPNpbKh0dzmhmhPXZtWCJUKRIFR2y84=
X-Google-Smtp-Source: APXvYqypnawADf67Fr6UMIh3dr5nN4MKDxVHUVaoWAhJayCpe2CG3j8GYcbi5A395taCn6KVEARtOg==
X-Received: by 2002:a65:62cc:: with SMTP id m12mr11002643pgv.397.1574952909701; 
 Thu, 28 Nov 2019 06:55:09 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:8015:e854:5ef0:f52e])
 by smtp.gmail.com with ESMTPSA id z11sm22282563pfg.117.2019.11.28.06.55.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 28 Nov 2019 06:55:08 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/8] platform/x86: asus-wmi: switch to use
 <linux/temperature.h> helpers
Date: Thu, 28 Nov 2019 23:54:34 +0900
Message-Id: <1574952879-7200-4-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
References: <1574952879-7200-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065511_104055_36E7B79B 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

The asus-wmi driver doesn't implement the thermal device functionality
directly, so including <linux/thermal.h> just for DECI_KELVIN_TO_CELSIUS()
is a bit odd.

This switches the asus-wmi driver to use deci_kelvin_to_millicelsius() in
<linux/temperature.h>.

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
* v2
- add Acked-by tag

 drivers/platform/x86/asus-wmi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/x86/asus-wmi.c b/drivers/platform/x86/asus-wmi.c
index 821b08e..6a1a2f9 100644
--- a/drivers/platform/x86/asus-wmi.c
+++ b/drivers/platform/x86/asus-wmi.c
@@ -33,7 +33,7 @@
 #include <linux/seq_file.h>
 #include <linux/platform_data/x86/asus-wmi.h>
 #include <linux/platform_device.h>
-#include <linux/thermal.h>
+#include <linux/temperature.h>
 #include <linux/acpi.h>
 #include <linux/dmi.h>
 
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
