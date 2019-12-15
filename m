Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 681B611F5F5
	for <lists+linux-nvme@lfdr.de>; Sun, 15 Dec 2019 06:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ePzskqysJyHg+HJQFN7mn0FC5LRiorMR2M3wHVRdIGU=; b=RRSZKoRupK1NRHzZxi9mNA5Va+
	UPRW43oSBcUuHOTMaVZTEY+dlCgMdLKmsemuSdVCwk4GfzCbSs9asJwa5BtX0tiUk57LQRqE3pkfr
	CvpPdhCXuOtKm5/5B+DXJFbzsHsRaGT8l6dt8SLTvrVrzJrd0c/RUQ561aTGT5je2bqf40TQtg8ue
	ckkapPY/8gqRoCU9NFSfbgVkBdmmZDSGGbeatJbQbOJOFTWuRl0bY+eUUHbc7Viqw0cgagRt91/gc
	FWRZ/b2qEZv17bJzXSeChsIOn6S+k++V6mv54Vrb/j64b0PBu2O14ok7ckP/7kLUgPwW9zkodTEcM
	kn6cRghQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igMHl-000221-Ey; Sun, 15 Dec 2019 05:17:41 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igMHE-0001k0-BI
 for linux-nvme@lists.infradead.org; Sun, 15 Dec 2019 05:17:11 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep17so1527228pjb.4
 for <linux-nvme@lists.infradead.org>; Sat, 14 Dec 2019 21:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3my8RP+3u7n3veq9PtxCL/LXumnZQKbolrNqeQogkFY=;
 b=raWQVX5OuOc2bkMiheKyKPwiClD8x0+EfjKFf0qMGEo02vguYoQC8ljPwoMX+4CxO4
 vciGC7KJx8rxr6LPTal0qb/QPClRVMM1DzL436GYGp7hk17/XWGuH+bFCvc6dslVRPvU
 Nm1JdWz2Dn7wwGVYEFRWyFZ/BnALUs8vorqsQzt1kkAxHtVuACbCxT51IiLUXbTig2sy
 Oy4242wsqTyNwxEioMiTl82h607aQcWJ2H9jyGm4msb+IK5FjYiGaOvzRPMqGXuv+08Z
 2oB76QVhTlJU8vJtOdFjrQkUhBNR/DNhkv8dy0dyxNZvqhjKtCRkcVLyaXaFboKOZi7n
 MRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3my8RP+3u7n3veq9PtxCL/LXumnZQKbolrNqeQogkFY=;
 b=QaZEdY6yqqyCQ5/hk2oeEMKwlKmjjFGCB0CKTGGfhGaWwT5fWGHL0kE7ho/U+L2ooe
 33UH/Pll+yUDAFYmLE37dkjKo/3b/8DqY/TX9NodrApadweGue+l2uzfZtUG07ToXFEg
 tRfestuPz02RDKxBlGBwXRPlACr3DIbjjC1kXZROj0n38KMplYprbBJIXkePNuMjrhdP
 hen9Au74x9xl89vcEu19qezjrFg8cpvlRGf5AoYzlcNquzkaSfeUlsPWF3VJ0lycTP+g
 RkfsdoR1wAreUJQSY0XrLXF17dEnmlIrTmrfs1FygunphwihXHyGOrhUwZylnPiZ796A
 gjWQ==
X-Gm-Message-State: APjAAAUPyKE8qY7+C0//Rjh7qSy29QHPJ8FX9EhU1wdeXNBv/xUAXIBR
 /WHBcENNcBiGA8Oe3V6yfs+nvLpR5jI=
X-Google-Smtp-Source: APXvYqwQKHV1f9EJqmr0sZGc75iS/LgVRptZfafPMXcin6IZi+sZoqSA1EcyfrXp8opQVtB8978ijw==
X-Received: by 2002:a17:90a:b94b:: with SMTP id
 f11mr10518148pjw.5.1576387027338; 
 Sat, 14 Dec 2019 21:17:07 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id u10sm16596528pgg.41.2019.12.14.21.17.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 14 Dec 2019 21:17:06 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Subject: [PATCH v4 04/12] platform/x86: intel_menlow: switch to use
 <linux/units.h> helpers
Date: Sun, 15 Dec 2019 14:16:07 +0900
Message-Id: <1576386975-7941-5-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_211708_402615_139BB36A 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This switches the intel_menlow driver to use deci_kelvin_to_celsius() and
celsius_to_deci_kelvin() in <linux/units.h> instead of helpers in
<linux/thermal.h>.

This is preparation for centralizing the kelvin to/from Celsius conversion
helpers in <linux/units.h>.

This also removes a trailing space, while we're at it.

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
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* No changes from v3

 drivers/platform/x86/intel_menlow.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/platform/x86/intel_menlow.c b/drivers/platform/x86/intel_menlow.c
index b102f6d..101d7e7 100644
--- a/drivers/platform/x86/intel_menlow.c
+++ b/drivers/platform/x86/intel_menlow.c
@@ -22,6 +22,7 @@
 #include <linux/slab.h>
 #include <linux/thermal.h>
 #include <linux/types.h>
+#include <linux/units.h>
 
 MODULE_AUTHOR("Thomas Sujith");
 MODULE_AUTHOR("Zhang Rui");
@@ -302,8 +303,10 @@ static ssize_t aux_show(struct device *dev, struct device_attribute *dev_attr,
 	int result;
 
 	result = sensor_get_auxtrip(attr->handle, idx, &value);
+	if (result)
+		return result;
 
-	return result ? result : sprintf(buf, "%lu", DECI_KELVIN_TO_CELSIUS(value));
+	return sprintf(buf, "%lu", deci_kelvin_to_celsius(value));
 }
 
 static ssize_t aux0_show(struct device *dev,
@@ -332,8 +335,8 @@ static ssize_t aux_store(struct device *dev, struct device_attribute *dev_attr,
 	if (value < 0)
 		return -EINVAL;
 
-	result = sensor_set_auxtrip(attr->handle, idx, 
-				    CELSIUS_TO_DECI_KELVIN(value));
+	result = sensor_set_auxtrip(attr->handle, idx,
+				    celsius_to_deci_kelvin(value));
 	return result ? result : count;
 }
 
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
