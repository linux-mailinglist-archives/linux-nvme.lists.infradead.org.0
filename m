Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DC111F6E3
	for <lists+linux-nvme@lfdr.de>; Sun, 15 Dec 2019 09:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9QTRNfoYKmc71qmbtONyuUK1bMl+ZOmVLGY8onqf+08=; b=CbTAWe0Oh6r7vu4wxDHlVZjoV0
	v/IRfS3xx7K4ZMlZ0BAijTza+d25tOfMCW2yHSy4oNYcMC+k1b1Kf+K1wE/jnHAy5Bykk0BdIcVI2
	EwK0W+4s62/pzFfxBSUjNHDhBqeygubDUns+cv/A+ux+6I63u9kBvi4OOSsUCBTThZH0CddpNshet
	nOX7HqX64zrTF3KAb4rD2RyP5RkjWQZKp9+xPn/SvqkahU3vbV6nBUZkfKjiF98/z3r2wUUDKn6Cs
	CtEYamdL9CxHFvUQmwY00Tz1hJ73YRAjWXUCu9dnuYuchW+FEPnyAci696Bm90cyRKmmFGQzZru2J
	mLxWKZrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igPcL-0000I9-38; Sun, 15 Dec 2019 08:51:09 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igMGx-0001V8-6N
 for linux-nvme@lists.infradead.org; Sun, 15 Dec 2019 05:16:57 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w23so1531018pjd.2
 for <linux-nvme@lists.infradead.org>; Sat, 14 Dec 2019 21:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n0KhyDCT2TCIrEIHc5SljPjq7/DPKAvuDMKsxr9T9Ug=;
 b=lgIq0zqICEGkShIiMlrRjg7wcHEI9dK51w0R58Dh9CwsqNaakn38i5+2w5nWs5CH7X
 w2EKVfs7d8XmlDi3EvBlHgX4T/0wVMtgsl0hwYaEz0Aqe0B6GRB0D9xdckPZCrNzQG2f
 v2x4eesrgQGuTq/s1TIoLj7PEJqYcFbmeSZYPe3p7W6DSo/IPcTtI3k6cv3OjCI/Frs/
 pHc+af0QUGv3Oj0XSK7fAtkIUrtuyNcs50ocYSusYWnBTqaCDN6CN7wrY0nNgiwLscBG
 LJ7lG7D5f/5pbURcyx8x4ZqGsBr7/1kpP2jYiui9QXPdmr95VB/CrW+WuX2GkhpC23s+
 ZI+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n0KhyDCT2TCIrEIHc5SljPjq7/DPKAvuDMKsxr9T9Ug=;
 b=p9w8ZdUv4W1IoW7IxepDLZftjZDIuvAB8bP2NurDeRoqUjsWPYI4go+7piRT0h3yy0
 9UxVUUqrqAXES6rEausSVP0UD/hNnX1cCGO+ENhdhyDed/xDwY137U+fYWA2k5VIhomL
 EiCWG0rGzNnznwNIduCAcwysu/gVDd2FiCsyZkb1iK3fi4deFGygLX1o68K6TWKslAi5
 rQEVG2DpD2Wl6cO7Qt6z0MSWd3Mdg5XbKzRgPy/UBQ7Rvoolx4V9E5IUw+QlZuEdeXkP
 y/4zQ2ao825gpOGf83v2ST5Um5hbiuwTlTbsuI9BkSg14dwPHoyA4ZWz9KetIa8disZm
 mzmg==
X-Gm-Message-State: APjAAAV5ASe++gd7ptKEdmP4YtXlyPBMIs3ls3alXd62Mo0Gea8pYZex
 XdtfAQ4AZJEUFV0SGlekgKnEBxER35erVQ==
X-Google-Smtp-Source: APXvYqx/G9Lcdyqm7bOXicjyPxETdKBX/bMleOf2pzp/lJbLyACAZhxo8XIP/QCbx34gj5XMJ7UO5w==
X-Received: by 2002:a17:902:a516:: with SMTP id
 s22mr9160425plq.89.1576387010091; 
 Sat, 14 Dec 2019 21:16:50 -0800 (PST)
Received: from localhost.localdomain ([240f:34:212d:1:368e:e048:68f1:84e7])
 by smtp.gmail.com with ESMTPSA id u10sm16596528pgg.41.2019.12.14.21.16.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 14 Dec 2019 21:16:49 -0800 (PST)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org
Subject: [PATCH v4 01/12] add helpers for kelvin to/from Celsius conversion
Date: Sun, 15 Dec 2019 14:16:04 +0900
Message-Id: <1576386975-7941-2-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
References: <1576386975-7941-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_211651_251967_B00EC383 
X-CRM114-Status: GOOD (  15.07  )
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
X-Mailman-Approved-At: Sun, 15 Dec 2019 00:51:02 -0800
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Stanislaw Gruszka <sgruszka@redhat.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Christoph Hellwig <hch@lst.de>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Sagi Grimberg <sagi@grimberg.me>,
 Sujith Thomas <sujith.thomas@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Guenter Roeck <linux@roeck-us.net>,
 Jean Delvare <jdelvare@suse.com>, Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 Andy Shevchenko <andy@infradead.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Jonathan Cameron <jic23@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

There are several helper macros to convert kelvin to/from Celsius in
<linux/thermal.h> for thermal drivers.  These are useful for any other
drivers or subsystems, but it's odd to include <linux/thermal.h> just for
the helpers.

This adds a new <linux/units.h> that provides the equivalent inline
functions for any drivers or subsystems.  It is intended to replace the
helpers in <linux/thermal.h>.

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
Cc: Kalle Valo <kvalo@codeaurora.org>
Cc: Stanislaw Gruszka <sgruszka@redhat.com>
Cc: Johannes Berg <johannes.berg@intel.com>
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Intel Linux Wireless <linuxwifi@intel.com>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Hartmut Knaack <knaack.h@gmx.de>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- add Reviewed-by tag

 include/linux/units.h | 84 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100644 include/linux/units.h

diff --git a/include/linux/units.h b/include/linux/units.h
new file mode 100644
index 0000000..aaf7163
--- /dev/null
+++ b/include/linux/units.h
@@ -0,0 +1,84 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_UNITS_H
+#define _LINUX_UNITS_H
+
+#include <linux/kernel.h>
+
+#define ABSOLUTE_ZERO_MILLICELSIUS -273150
+
+static inline long milli_kelvin_to_millicelsius(long t)
+{
+	return t + ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+static inline long millicelsius_to_milli_kelvin(long t)
+{
+	return t - ABSOLUTE_ZERO_MILLICELSIUS;
+}
+
+#define MILLIDEGREE_PER_DEGREE 1000
+#define MILLIDEGREE_PER_DECIDEGREE 100
+
+static inline long kelvin_to_millicelsius(long t)
+{
+	return milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long millicelsius_to_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long deci_kelvin_to_celsius(long t)
+{
+	t = milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DECIDEGREE);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long celsius_to_deci_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t * MILLIDEGREE_PER_DEGREE);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DECIDEGREE);
+}
+
+/**
+ * deci_kelvin_to_millicelsius_with_offset - convert Kelvin to Celsius
+ * @t: temperature value in decidegrees Kelvin
+ * @offset: difference between Kelvin and Celsius in millidegrees
+ *
+ * Return: temperature value in millidegrees Celsius
+ */
+static inline long deci_kelvin_to_millicelsius_with_offset(long t, long offset)
+{
+	return t * MILLIDEGREE_PER_DECIDEGREE - offset;
+}
+
+static inline long deci_kelvin_to_millicelsius(long t)
+{
+	return milli_kelvin_to_millicelsius(t * MILLIDEGREE_PER_DECIDEGREE);
+}
+
+static inline long millicelsius_to_deci_kelvin(long t)
+{
+	t = millicelsius_to_milli_kelvin(t);
+
+	return DIV_ROUND_CLOSEST(t, MILLIDEGREE_PER_DECIDEGREE);
+}
+
+static inline long kelvin_to_celsius(long t)
+{
+	return t + DIV_ROUND_CLOSEST(ABSOLUTE_ZERO_MILLICELSIUS,
+				     MILLIDEGREE_PER_DEGREE);
+}
+
+static inline long celsius_to_kelvin(long t)
+{
+	return t - DIV_ROUND_CLOSEST(ABSOLUTE_ZERO_MILLICELSIUS,
+				     MILLIDEGREE_PER_DEGREE);
+}
+
+#endif /* _LINUX_UNITS_H */
-- 
2.7.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
